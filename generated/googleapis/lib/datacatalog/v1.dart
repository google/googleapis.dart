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

/// Google Cloud Data Catalog API - v1
///
/// A fully managed and highly scalable data discovery and metadata management
/// service.
///
/// For more information, see <https://cloud.google.com/data-catalog/docs/>
///
/// Create an instance of [DataCatalogApi] to access these resources:
///
/// - [CatalogResource]
/// - [EntriesResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEntryGroupsResource]
///       - [ProjectsLocationsEntryGroupsEntriesResource]
///         - [ProjectsLocationsEntryGroupsEntriesTagsResource]
///       - [ProjectsLocationsEntryGroupsTagsResource]
///     - [ProjectsLocationsTagTemplatesResource]
///       - [ProjectsLocationsTagTemplatesFieldsResource]
///         - [ProjectsLocationsTagTemplatesFieldsEnumValuesResource]
///     - [ProjectsLocationsTaxonomiesResource]
///       - [ProjectsLocationsTaxonomiesPolicyTagsResource]
library datacatalog.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// A fully managed and highly scalable data discovery and metadata management
/// service.
class DataCatalogApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  CatalogResource get catalog => CatalogResource(_requester);
  EntriesResource get entries => EntriesResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  DataCatalogApi(http.Client client,
      {core.String rootUrl = 'https://datacatalog.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CatalogResource {
  final commons.ApiRequester _requester;

  CatalogResource(commons.ApiRequester client) : _requester = client;

  /// Searches Data Catalog for multiple resources like entries and tags that
  /// match a query.
  ///
  /// This is a
  /// [Custom Method](https://cloud.google.com/apis/design/custom_methods) that
  /// doesn't return all information on a resource, only its ID and high level
  /// fields. To get more information, you can subsequently call specific get
  /// methods. Note: Data Catalog search queries don't guarantee full recall.
  /// Results that match your query might not be returned, even in subsequent
  /// result pages. Additionally, returned (and not returned) results can vary
  /// if you repeat search queries. For more information, see
  /// [Data Catalog search syntax](https://cloud.google.com/data-catalog/docs/how-to/search-reference).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1SearchCatalogResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1SearchCatalogResponse> search(
    GoogleCloudDatacatalogV1SearchCatalogRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/catalog:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1SearchCatalogResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EntriesResource {
  final commons.ApiRequester _requester;

  EntriesResource(commons.ApiRequester client) : _requester = client;

  /// Gets an entry by its target resource name.
  ///
  /// The resource name comes from the source Google Cloud Platform service.
  ///
  /// Request parameters:
  ///
  /// [fullyQualifiedName] - Fully qualified name (FQN) of the resource. FQNs
  /// take two forms: * For non-regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For
  /// regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}`
  /// Example for a DPMS table:
  /// `dataproc_metastore:{PROJECT_ID}.{LOCATION_ID}.{INSTANCE_ID}.{DATABASE_ID}.{TABLE_ID}`
  ///
  /// [linkedResource] - The full name of the Google Cloud Platform resource the
  /// Data Catalog entry represents. For more information, see
  /// [Full Resource Name](https://cloud.google.com/apis/design/resource_names#full_resource_name).
  /// Full names are case-sensitive. For example: *
  /// `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  /// * `//pubsub.googleapis.com/projects/{PROJECT_ID}/topics/{TOPIC_ID}`
  ///
  /// [sqlResource] - The SQL name of the entry. SQL names are case-sensitive.
  /// Examples: * `pubsub.topic.{PROJECT_ID}.{TOPIC_ID}` *
  /// `pubsub.topic.{PROJECT_ID}.`\``{TOPIC.ID.SEPARATED.WITH.DOTS}`\` *
  /// `bigquery.table.{PROJECT_ID}.{DATASET_ID}.{TABLE_ID}` *
  /// `bigquery.dataset.{PROJECT_ID}.{DATASET_ID}` *
  /// `datacatalog.entry.{PROJECT_ID}.{LOCATION_ID}.{ENTRY_GROUP_ID}.{ENTRY_ID}`
  /// Identifiers (`*_ID`) should comply with the
  /// [Lexical structure in Standard SQL](https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Entry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Entry> lookup({
    core.String? fullyQualifiedName,
    core.String? linkedResource,
    core.String? sqlResource,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fullyQualifiedName != null)
        'fullyQualifiedName': [fullyQualifiedName],
      if (linkedResource != null) 'linkedResource': [linkedResource],
      if (sqlResource != null) 'sqlResource': [sqlResource],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/entries:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Entry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntryGroupsResource get entryGroups =>
      ProjectsLocationsEntryGroupsResource(_requester);
  ProjectsLocationsTagTemplatesResource get tagTemplates =>
      ProjectsLocationsTagTemplatesResource(_requester);
  ProjectsLocationsTaxonomiesResource get taxonomies =>
      ProjectsLocationsTaxonomiesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsEntryGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntryGroupsEntriesResource get entries =>
      ProjectsLocationsEntryGroupsEntriesResource(_requester);
  ProjectsLocationsEntryGroupsTagsResource get tags =>
      ProjectsLocationsEntryGroupsTagsResource(_requester);

  ProjectsLocationsEntryGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an entry group.
  ///
  /// An entry group contains logically related entries together with \[Cloud
  /// Identity and Access Management\](/data-catalog/docs/concepts/iam)
  /// policies. These policies specify users who can create, edit, and view
  /// entries within entry groups. Data Catalog automatically creates entry
  /// groups with names that start with the `@` symbol for the following
  /// resources: * BigQuery entries (`@bigquery`) * Pub/Sub topics (`@pubsub`) *
  /// Dataproc Metastore services (`@dataproc_metastore_{SERVICE_NAME_HASH}`)
  /// You can create your own entry groups for Cloud Storage fileset entries and
  /// custom entries together with the corresponding IAM policies. User-created
  /// entry groups can't contain the `@` symbol, it is reserved for
  /// automatically created groups. Entry groups, like entries, can be searched.
  /// A maximum of 10,000 entry groups may be created per organization across
  /// all locations. You must enable the Data Catalog API in the project
  /// identified by the `parent` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The names of the project and location that the new
  /// entry group belongs to. Note: The entry group itself and its child
  /// resources might not be stored in the location specified in its name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [entryGroupId] - Required. The ID of the entry group to create. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// must start with a letter or underscore. The maximum size is 64 bytes when
  /// encoded in UTF-8.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1EntryGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1EntryGroup> create(
    GoogleCloudDatacatalogV1EntryGroup request,
    core.String parent, {
    core.String? entryGroupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (entryGroupId != null) 'entryGroupId': [entryGroupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entryGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1EntryGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an entry group.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry group to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [force] - Optional. If true, deletes all entries in the entry group.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an entry group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry group to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [readMask] - The fields to return. If empty or omitted, all fields are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1EntryGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1EntryGroup> get(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1EntryGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// May return: * A`NOT_FOUND` error if the resource doesn't exist or you
  /// don't have the permission to view it. * An empty policy if the resource
  /// exists but doesn't have a set policy. Supported resources are: - Tag
  /// templates - Entry groups Note: This method doesn't get policies from
  /// Google Cloud Platform resources ingested into Data Catalog. To call this
  /// method, you must have the following Google IAM permissions: -
  /// `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates.
  /// - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists entry groups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the location that contains the entry
  /// groups to list. Can be provided as a URL.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. Default is
  /// 10. Maximum limit is 1000. Throws an invalid argument if `page_size` is
  /// greater than 1000.
  ///
  /// [pageToken] - Optional. Pagination token that specifies the next page to
  /// return. If empty, returns the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListEntryGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListEntryGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entryGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListEntryGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an entry group.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `entry_group.name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the entry group in URL format. Note: The
  /// entry group itself and its child resources might not be stored in the
  /// location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [updateMask] - Names of fields whose values to overwrite on an entry
  /// group. If this parameter is absent or empty, all modifiable fields are
  /// overwritten. If such fields are non-required and omitted in the request
  /// body, their values are emptied.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1EntryGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1EntryGroup> patch(
    GoogleCloudDatacatalogV1EntryGroup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1EntryGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets an access control policy for a resource.
  ///
  /// Replaces any existing policy. Supported resources are: - Tag templates -
  /// Entry groups Note: This method sets policies only within Data Catalog and
  /// can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore,
  /// and any external Google Cloud Platform resources synced with the Data
  /// Catalog. To call this method, you must have the following Google IAM
  /// permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on
  /// tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on
  /// entry groups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets your permissions on a resource.
  ///
  /// Returns an empty set of permissions if the resource doesn't exist.
  /// Supported resources are: - Tag templates - Entry groups Note: This method
  /// gets policies only within Data Catalog and can't be used to get policies
  /// from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud
  /// Platform resources ingested into Data Catalog. No Google IAM permissions
  /// are required to call this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEntryGroupsEntriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntryGroupsEntriesTagsResource get tags =>
      ProjectsLocationsEntryGroupsEntriesTagsResource(_requester);

  ProjectsLocationsEntryGroupsEntriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an entry.
  ///
  /// You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM', or
  /// custom types. Data Catalog automatically creates entries with other types
  /// during metadata ingestion from integrated systems. You must enable the
  /// Data Catalog API in the project identified by the `parent` parameter. For
  /// more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  /// An entry group can have a maximum of 100,000 entries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entry group this entry belongs to.
  /// Note: The entry itself and its child resources might not be stored in the
  /// location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [entryId] - Required. The ID of the entry to create. The ID must contain
  /// only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum
  /// size is 64 bytes when encoded in UTF-8.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Entry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Entry> create(
    GoogleCloudDatacatalogV1Entry request,
    core.String parent, {
    core.String? entryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (entryId != null) 'entryId': [entryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Entry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing entry.
  ///
  /// You can delete only the entries created by the CreateEntry method. You
  /// must enable the Data Catalog API in the project identified by the `name`
  /// parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an entry.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Entry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Entry> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Entry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// May return: * A`NOT_FOUND` error if the resource doesn't exist or you
  /// don't have the permission to view it. * An empty policy if the resource
  /// exists but doesn't have a set policy. Supported resources are: - Tag
  /// templates - Entry groups Note: This method doesn't get policies from
  /// Google Cloud Platform resources ingested into Data Catalog. To call this
  /// method, you must have the following Google IAM permissions: -
  /// `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates.
  /// - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists entries.
  ///
  /// Note: Currently, this method can list only custom entries. To get a list
  /// of both custom and automatically created entries, use SearchCatalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the entry group that contains the entries
  /// to list. Can be provided in URL format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Default is 10. Maximum
  /// limit is 1000. Throws an invalid argument if `page_size` is more than
  /// 1000.
  ///
  /// [pageToken] - Pagination token that specifies the next page to return. If
  /// empty, the first page is returned.
  ///
  /// [readMask] - The fields to return for each entry. If empty or omitted, all
  /// fields are returned. For example, to return a list of entries with only
  /// the `name` field, set `read_mask` to only one path with the `name` value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListEntriesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListEntriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies contacts, part of the business context of an Entry.
  ///
  /// To call this method, you must have the
  /// `datacatalog.entries.updateContacts` IAM permission on the corresponding
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the entry.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Contacts].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Contacts> modifyEntryContacts(
    GoogleCloudDatacatalogV1ModifyEntryContactsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':modifyEntryContacts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Contacts.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies entry overview, part of the business context of an Entry.
  ///
  /// To call this method, you must have the
  /// `datacatalog.entries.updateOverview` IAM permission on the corresponding
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the entry.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1EntryOverview].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1EntryOverview> modifyEntryOverview(
    GoogleCloudDatacatalogV1ModifyEntryOverviewRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':modifyEntryOverview';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1EntryOverview.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing entry.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `entry.name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of an entry in URL format. Note:
  /// The entry itself and its child resources might not be stored in the
  /// location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [updateMask] - Names of fields whose values to overwrite on an entry. If
  /// this parameter is absent or empty, all modifiable fields are overwritten.
  /// If such fields are non-required and omitted in the request body, their
  /// values are emptied. You can modify only the fields listed below. For
  /// entries with type `DATA_STREAM`: * `schema` For entries with type
  /// `FILESET`: * `schema` * `display_name` * `description` *
  /// `gcs_fileset_spec` * `gcs_fileset_spec.file_patterns` For entries with
  /// `user_specified_type`: * `schema` * `display_name` * `description` *
  /// `user_specified_type` * `user_specified_system` * `linked_resource` *
  /// `source_system_timestamps`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Entry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Entry> patch(
    GoogleCloudDatacatalogV1Entry request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Entry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks an Entry as starred by the current user.
  ///
  /// Starring information is private to each user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry to mark as starred.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1StarEntryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1StarEntryResponse> star(
    GoogleCloudDatacatalogV1StarEntryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':star';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1StarEntryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets your permissions on a resource.
  ///
  /// Returns an empty set of permissions if the resource doesn't exist.
  /// Supported resources are: - Tag templates - Entry groups Note: This method
  /// gets policies only within Data Catalog and can't be used to get policies
  /// from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud
  /// Platform resources ingested into Data Catalog. No Google IAM permissions
  /// are required to call this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks an Entry as NOT starred by the current user.
  ///
  /// Starring information is private to each user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entry to mark as **not** starred.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1UnstarEntryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1UnstarEntryResponse> unstar(
    GoogleCloudDatacatalogV1UnstarEntryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unstar';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1UnstarEntryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEntryGroupsEntriesTagsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntryGroupsEntriesTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a tag and assigns it to: * An Entry if the method name is
  /// `projects.locations.entryGroups.entries.tags.create`.
  ///
  /// * Or EntryGroupif the method name is
  /// `projects.locations.entryGroups.tags.create`. Note: The project identified
  /// by the `parent` parameter for the
  /// [tag](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters)
  /// and the
  /// [tag template](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters)
  /// used to create the tag must be in the same organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the resource to attach this tag to. Tags
  /// can be attached to entries or entry groups. An entry can have up to 1000
  /// attached tags. Note: The tag and its child resources might not be stored
  /// in the location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Tag> create(
    GoogleCloudDatacatalogV1Tag request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Tag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a tag.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+/tags/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tags assigned to an Entry.
  ///
  /// The columns in the response are lowercased.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the Data Catalog resource to list the
  /// tags of. The resource can be an Entry or an EntryGroup (without
  /// `/entries/{entries}` at the end).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of tags to return. Default is 10. Maximum
  /// limit is 1000.
  ///
  /// [pageToken] - Pagination token that specifies the next page to return. If
  /// empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListTagsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the tag in URL format where tag ID is a
  /// system-generated identifier. Note: The tag itself might not be stored in
  /// the location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/entries/\[^/\]+/tags/\[^/\]+$`.
  ///
  /// [updateMask] - Names of fields whose values to overwrite on a tag.
  /// Currently, a tag has the only modifiable field with the name `fields`. In
  /// general, if this parameter is absent or empty, all modifiable fields are
  /// overwritten. If such fields are non-required and omitted in the request
  /// body, their values are emptied.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Tag> patch(
    GoogleCloudDatacatalogV1Tag request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Tag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEntryGroupsTagsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntryGroupsTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a tag and assigns it to: * An Entry if the method name is
  /// `projects.locations.entryGroups.entries.tags.create`.
  ///
  /// * Or EntryGroupif the method name is
  /// `projects.locations.entryGroups.tags.create`. Note: The project identified
  /// by the `parent` parameter for the
  /// [tag](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters)
  /// and the
  /// [tag template](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters)
  /// used to create the tag must be in the same organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the resource to attach this tag to. Tags
  /// can be attached to entries or entry groups. An entry can have up to 1000
  /// attached tags. Note: The tag and its child resources might not be stored
  /// in the location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Tag> create(
    GoogleCloudDatacatalogV1Tag request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Tag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a tag.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/tags/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tags assigned to an Entry.
  ///
  /// The columns in the response are lowercased.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the Data Catalog resource to list the
  /// tags of. The resource can be an Entry or an EntryGroup (without
  /// `/entries/{entries}` at the end).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of tags to return. Default is 10. Maximum
  /// limit is 1000.
  ///
  /// [pageToken] - Pagination token that specifies the next page to return. If
  /// empty, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListTagsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the tag in URL format where tag ID is a
  /// system-generated identifier. Note: The tag itself might not be stored in
  /// the location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/entryGroups/\[^/\]+/tags/\[^/\]+$`.
  ///
  /// [updateMask] - Names of fields whose values to overwrite on a tag.
  /// Currently, a tag has the only modifiable field with the name `fields`. In
  /// general, if this parameter is absent or empty, all modifiable fields are
  /// overwritten. If such fields are non-required and omitted in the request
  /// body, their values are emptied.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Tag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Tag> patch(
    GoogleCloudDatacatalogV1Tag request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Tag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTagTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTagTemplatesFieldsResource get fields =>
      ProjectsLocationsTagTemplatesFieldsResource(_requester);

  ProjectsLocationsTagTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a tag template.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `parent` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project and the template location
  /// [region](https://cloud.google.com/data-catalog/docs/concepts/regions).
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [tagTemplateId] - Required. The ID of the tag template to create. The ID
  /// must contain only lowercase letters (a-z), numbers (0-9), or underscores
  /// (_), and must start with a letter or underscore. The maximum size is 64
  /// bytes when encoded in UTF-8.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplate> create(
    GoogleCloudDatacatalogV1TagTemplate request,
    core.String parent, {
    core.String? tagTemplateId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tagTemplateId != null) 'tagTemplateId': [tagTemplateId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tagTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a tag template and all tags that use it.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag template to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
  ///
  /// [force] - Required. If true, deletes all tags that use this template.
  /// Currently, `true` is the only supported value.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a tag template.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag template to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// May return: * A`NOT_FOUND` error if the resource doesn't exist or you
  /// don't have the permission to view it. * An empty policy if the resource
  /// exists but doesn't have a set policy. Supported resources are: - Tag
  /// templates - Entry groups Note: This method doesn't get policies from
  /// Google Cloud Platform resources ingested into Data Catalog. To call this
  /// method, you must have the following Google IAM permissions: -
  /// `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates.
  /// - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a tag template.
  ///
  /// You can't update template fields with this method. These fields are
  /// separate resources with their own create, update, and delete methods. You
  /// must enable the Data Catalog API in the project identified by the
  /// `tag_template.name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the tag template in URL format. Note: The
  /// tag template itself and its child resources might not be stored in the
  /// location specified in its name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
  ///
  /// [updateMask] - Names of fields whose values to overwrite on a tag
  /// template. Currently, only `display_name` and `is_publicly_readable` can be
  /// overwritten. If this parameter is absent or empty, all modifiable fields
  /// are overwritten. If such fields are non-required and omitted in the
  /// request body, their values are emptied. Note: Updating the
  /// `is_publicly_readable` field may require up to 12 hours to take effect in
  /// search results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplate> patch(
    GoogleCloudDatacatalogV1TagTemplate request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets an access control policy for a resource.
  ///
  /// Replaces any existing policy. Supported resources are: - Tag templates -
  /// Entry groups Note: This method sets policies only within Data Catalog and
  /// can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore,
  /// and any external Google Cloud Platform resources synced with the Data
  /// Catalog. To call this method, you must have the following Google IAM
  /// permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on
  /// tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on
  /// entry groups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets your permissions on a resource.
  ///
  /// Returns an empty set of permissions if the resource doesn't exist.
  /// Supported resources are: - Tag templates - Entry groups Note: This method
  /// gets policies only within Data Catalog and can't be used to get policies
  /// from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud
  /// Platform resources ingested into Data Catalog. No Google IAM permissions
  /// are required to call this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTagTemplatesFieldsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTagTemplatesFieldsEnumValuesResource get enumValues =>
      ProjectsLocationsTagTemplatesFieldsEnumValuesResource(_requester);

  ProjectsLocationsTagTemplatesFieldsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a field in a tag template.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `parent` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project and the template location
  /// [region](https://cloud.google.com/data-catalog/docs/concepts/regions).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+$`.
  ///
  /// [tagTemplateFieldId] - Required. The ID of the tag template field to
  /// create. Note: Adding a required field to an existing template is *not*
  /// allowed. Field IDs can contain letters (both uppercase and lowercase),
  /// numbers (0-9), underscores (_) and dashes (-). Field IDs must be at least
  /// 1 character long and at most 128 characters long. Field IDs must also be
  /// unique within their template.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplateField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplateField> create(
    GoogleCloudDatacatalogV1TagTemplateField request,
    core.String parent, {
    core.String? tagTemplateFieldId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tagTemplateFieldId != null)
        'tagTemplateFieldId': [tagTemplateFieldId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fields';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplateField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a field in a tag template and all uses of this field from the tags
  /// based on this template.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag template field to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [force] - Required. If true, deletes this field from any tags that use it.
  /// Currently, `true` is the only supported value.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a field in a tag template.
  ///
  /// You can't update the field type with this method. You must enable the Data
  /// Catalog API in the project identified by the `name` parameter. For more
  /// information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag template field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Names of fields whose values to overwrite on an
  /// individual field of a tag template. The following fields are modifiable: *
  /// `display_name` * `type.enum_type` * `is_required` If this parameter is
  /// absent or empty, all modifiable fields are overwritten. If such fields are
  /// non-required and omitted in the request body, their values are emptied
  /// with one exception: when updating an enum type, the provided values are
  /// merged with the existing values. Therefore, enum values can only be added,
  /// existing enum values cannot be deleted or renamed. Additionally, updating
  /// a template field from optional to required is *not* allowed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplateField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplateField> patch(
    GoogleCloudDatacatalogV1TagTemplateField request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplateField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renames a field in a tag template.
  ///
  /// You must enable the Data Catalog API in the project identified by the
  /// `name` parameter. For more information, see
  /// [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tag template field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplateField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplateField> rename(
    GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rename';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplateField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTagTemplatesFieldsEnumValuesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTagTemplatesFieldsEnumValuesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Renames an enum value in a tag template.
  ///
  /// Within a single enum field, enum values must be unique.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the enum field value.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tagTemplates/\[^/\]+/fields/\[^/\]+/enumValues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1TagTemplateField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1TagTemplateField> rename(
    GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rename';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1TagTemplateField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTaxonomiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTaxonomiesPolicyTagsResource get policyTags =>
      ProjectsLocationsTaxonomiesPolicyTagsResource(_requester);

  ProjectsLocationsTaxonomiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a taxonomy in a specified project.
  ///
  /// The taxonomy is initially empty, that is, it doesn't contain policy tags.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project that the taxonomy will
  /// belong to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Taxonomy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Taxonomy> create(
    GoogleCloudDatacatalogV1Taxonomy request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/taxonomies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Taxonomy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a taxonomy, including all policy tags in this taxonomy, their
  /// associated policies, and the policy tags references from BigQuery columns.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the taxonomy to delete. Note: All
  /// policy tags in this taxonomy are also deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports taxonomies in the requested type and returns them, including their
  /// policy tags.
  ///
  /// The requested taxonomies must belong to the same project. This method
  /// generates `SerializedTaxonomy` protocol buffers with nested policy tags
  /// that can be used as input for `ImportTaxonomies` calls.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project that the exported
  /// taxonomies belong to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [serializedTaxonomies] - Serialized export taxonomies that contain all the
  /// policy tags as nested protocol buffers.
  ///
  /// [taxonomies] - Required. Resource names of the taxonomies to export.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ExportTaxonomiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ExportTaxonomiesResponse> export(
    core.String parent, {
    core.bool? serializedTaxonomies,
    core.List<core.String>? taxonomies,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (serializedTaxonomies != null)
        'serializedTaxonomies': ['${serializedTaxonomies}'],
      if (taxonomies != null) 'taxonomies': taxonomies,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/taxonomies:export';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ExportTaxonomiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a taxonomy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the taxonomy to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Taxonomy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Taxonomy> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Taxonomy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy for a policy tag or a taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates new taxonomies (including their policy tags) in a given project by
  /// importing from inlined or cross-regional sources.
  ///
  /// For a cross-regional source, new taxonomies are created by copying from a
  /// source in another region. For an inlined source, taxonomies and policy
  /// tags are created in bulk using nested protocol buffer structures.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of project that the imported taxonomies
  /// will belong to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ImportTaxonomiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ImportTaxonomiesResponse> import(
    GoogleCloudDatacatalogV1ImportTaxonomiesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/taxonomies:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ImportTaxonomiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all taxonomies in a project in a particular location that you have a
  /// permission to view.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project to list the taxonomies
  /// of.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Must be a value
  /// between 1 and 1000 inclusively. If not set, defaults to 50.
  ///
  /// [pageToken] - The pagination token of the next results page. If not set,
  /// the first page is returned. The token is returned in the response to a
  /// previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListTaxonomiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListTaxonomiesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/taxonomies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListTaxonomiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a taxonomy, including its display name, description, and activated
  /// policy types.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this taxonomy in URL format. Note:
  /// Policy tag manager generates unique taxonomy IDs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies fields to update. If not set, defaults to all
  /// fields you can update. For more information, see
  /// [FieldMask](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Taxonomy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Taxonomy> patch(
    GoogleCloudDatacatalogV1Taxonomy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Taxonomy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces (updates) a taxonomy and all its policy tags.
  ///
  /// The taxonomy and its entire hierarchy of policy tags must be represented
  /// literally by `SerializedTaxonomy` and the nested `SerializedPolicyTag`
  /// messages. This operation automatically does the following: - Deletes the
  /// existing policy tags that are missing from the `SerializedPolicyTag`. -
  /// Creates policy tags that don't have resource names. They are considered
  /// new. - Updates policy tags with valid resources names accordingly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the taxonomy to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1Taxonomy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1Taxonomy> replace(
    GoogleCloudDatacatalogV1ReplaceTaxonomyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':replace';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1Taxonomy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy for a policy tag or a taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns your permissions on a specified policy tag or taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTaxonomiesPolicyTagsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTaxonomiesPolicyTagsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a policy tag in a taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the taxonomy that the policy tag
  /// will belong to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1PolicyTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1PolicyTag> create(
    GoogleCloudDatacatalogV1PolicyTag request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policyTags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1PolicyTag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a policy tag together with the following: * All of its descendant
  /// policy tags, if any * Policies associated with the policy tag and its
  /// descendants * References from BigQuery table schema of the policy tag and
  /// its descendants
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the policy tag to delete. Note: All of
  /// its descendant policy tags are also deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a policy tag.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the policy tag.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1PolicyTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1PolicyTag> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1PolicyTag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy for a policy tag or a taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all policy tags in a taxonomy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the taxonomy to list the policy tags
  /// of.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Must be a value
  /// between 1 and 1000 inclusively. If not set, defaults to 50.
  ///
  /// [pageToken] - The pagination token of the next results page. If not set,
  /// returns the first page. The token is returned in the response to a
  /// previous list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1ListPolicyTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1ListPolicyTagsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policyTags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1ListPolicyTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a policy tag, including its display name, description, and parent
  /// policy tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this policy tag in the URL format.
  /// The policy tag manager generates unique taxonomy IDs and policy tag IDs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
  ///
  /// [updateMask] - Specifies the fields to update. You can update only display
  /// name, description, and parent policy tag. If not set, defaults to all
  /// updatable fields. For more information, see
  /// [FieldMask](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatacatalogV1PolicyTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatacatalogV1PolicyTag> patch(
    GoogleCloudDatacatalogV1PolicyTag request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDatacatalogV1PolicyTag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy for a policy tag or a taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns your permissions on a specified policy tag or taxonomy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/taxonomies/\[^/\]+/policyTags/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
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
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
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
typedef Expr = $Expr;

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Specification for the BigQuery connection.
class GoogleCloudDatacatalogV1BigQueryConnectionSpec {
  /// Specification for the BigQuery connection to a Cloud SQL instance.
  GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec? cloudSql;

  /// The type of the BigQuery connection.
  /// Possible string values are:
  /// - "CONNECTION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "CLOUD_SQL" : Cloud SQL connection.
  core.String? connectionType;

  /// True if there are credentials attached to the BigQuery connection; false
  /// otherwise.
  core.bool? hasCredential;

  GoogleCloudDatacatalogV1BigQueryConnectionSpec({
    this.cloudSql,
    this.connectionType,
    this.hasCredential,
  });

  GoogleCloudDatacatalogV1BigQueryConnectionSpec.fromJson(core.Map json_)
      : this(
          cloudSql: json_.containsKey('cloudSql')
              ? GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec.fromJson(
                  json_['cloudSql'] as core.Map<core.String, core.dynamic>)
              : null,
          connectionType: json_.containsKey('connectionType')
              ? json_['connectionType'] as core.String
              : null,
          hasCredential: json_.containsKey('hasCredential')
              ? json_['hasCredential'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSql != null) 'cloudSql': cloudSql!,
        if (connectionType != null) 'connectionType': connectionType!,
        if (hasCredential != null) 'hasCredential': hasCredential!,
      };
}

/// Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD`
/// name pattern.
///
/// For more information, see
/// [Introduction to partitioned tables](https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
class GoogleCloudDatacatalogV1BigQueryDateShardedSpec {
  /// The Data Catalog resource name of the dataset entry the current table
  /// belongs to.
  ///
  /// For example:
  /// `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
  ///
  /// Output only.
  core.String? dataset;

  /// BigQuery resource name of the latest shard.
  ///
  /// Output only.
  core.String? latestShardResource;

  /// Total number of shards.
  ///
  /// Output only.
  core.String? shardCount;

  /// The table name prefix of the shards.
  ///
  /// The name of any given shard is `[table_prefix]YYYYMMDD`. For example, for
  /// the `MyTable20180101` shard, the `table_prefix` is `MyTable`.
  ///
  /// Output only.
  core.String? tablePrefix;

  GoogleCloudDatacatalogV1BigQueryDateShardedSpec({
    this.dataset,
    this.latestShardResource,
    this.shardCount,
    this.tablePrefix,
  });

  GoogleCloudDatacatalogV1BigQueryDateShardedSpec.fromJson(core.Map json_)
      : this(
          dataset: json_.containsKey('dataset')
              ? json_['dataset'] as core.String
              : null,
          latestShardResource: json_.containsKey('latestShardResource')
              ? json_['latestShardResource'] as core.String
              : null,
          shardCount: json_.containsKey('shardCount')
              ? json_['shardCount'] as core.String
              : null,
          tablePrefix: json_.containsKey('tablePrefix')
              ? json_['tablePrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (latestShardResource != null)
          'latestShardResource': latestShardResource!,
        if (shardCount != null) 'shardCount': shardCount!,
        if (tablePrefix != null) 'tablePrefix': tablePrefix!,
      };
}

/// Fields specific for BigQuery routines.
class GoogleCloudDatacatalogV1BigQueryRoutineSpec {
  /// Paths of the imported libraries.
  core.List<core.String>? importedLibraries;

  GoogleCloudDatacatalogV1BigQueryRoutineSpec({
    this.importedLibraries,
  });

  GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromJson(core.Map json_)
      : this(
          importedLibraries: json_.containsKey('importedLibraries')
              ? (json_['importedLibraries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (importedLibraries != null) 'importedLibraries': importedLibraries!,
      };
}

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1BigQueryTableSpec {
  /// The table source type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TABLE_SOURCE_TYPE_UNSPECIFIED" : Default unknown type.
  /// - "BIGQUERY_VIEW" : Table view.
  /// - "BIGQUERY_TABLE" : BigQuery native table.
  /// - "BIGQUERY_MATERIALIZED_VIEW" : BigQuery materialized view.
  core.String? tableSourceType;

  /// Specification of a BigQuery table.
  ///
  /// Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  GoogleCloudDatacatalogV1TableSpec? tableSpec;

  /// Table view specification.
  ///
  /// Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  GoogleCloudDatacatalogV1ViewSpec? viewSpec;

  GoogleCloudDatacatalogV1BigQueryTableSpec({
    this.tableSourceType,
    this.tableSpec,
    this.viewSpec,
  });

  GoogleCloudDatacatalogV1BigQueryTableSpec.fromJson(core.Map json_)
      : this(
          tableSourceType: json_.containsKey('tableSourceType')
              ? json_['tableSourceType'] as core.String
              : null,
          tableSpec: json_.containsKey('tableSpec')
              ? GoogleCloudDatacatalogV1TableSpec.fromJson(
                  json_['tableSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          viewSpec: json_.containsKey('viewSpec')
              ? GoogleCloudDatacatalogV1ViewSpec.fromJson(
                  json_['viewSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tableSourceType != null) 'tableSourceType': tableSourceType!,
        if (tableSpec != null) 'tableSpec': tableSpec!,
        if (viewSpec != null) 'viewSpec': viewSpec!,
      };
}

/// Business Context of the entry.
class GoogleCloudDatacatalogV1BusinessContext {
  /// Contact people for the entry.
  GoogleCloudDatacatalogV1Contacts? contacts;

  /// Entry overview fields for rich text descriptions of entries.
  GoogleCloudDatacatalogV1EntryOverview? entryOverview;

  GoogleCloudDatacatalogV1BusinessContext({
    this.contacts,
    this.entryOverview,
  });

  GoogleCloudDatacatalogV1BusinessContext.fromJson(core.Map json_)
      : this(
          contacts: json_.containsKey('contacts')
              ? GoogleCloudDatacatalogV1Contacts.fromJson(
                  json_['contacts'] as core.Map<core.String, core.dynamic>)
              : null,
          entryOverview: json_.containsKey('entryOverview')
              ? GoogleCloudDatacatalogV1EntryOverview.fromJson(
                  json_['entryOverview'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null) 'contacts': contacts!,
        if (entryOverview != null) 'entryOverview': entryOverview!,
      };
}

/// Specification for the BigQuery connection to a Cloud SQL instance.
class GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec {
  /// Database name.
  core.String? database;

  /// Cloud SQL instance ID in the format of `project:location:instance`.
  core.String? instanceId;

  /// Type of the Cloud SQL database.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Unspecified database type.
  /// - "POSTGRES" : Cloud SQL for PostgreSQL.
  /// - "MYSQL" : Cloud SQL for MySQL.
  core.String? type;

  GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec({
    this.database,
    this.instanceId,
    this.type,
  });

  GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec.fromJson(
      core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (type != null) 'type': type!,
      };
}

/// A column within a schema.
///
/// Columns can be nested inside other columns.
class GoogleCloudDatacatalogV1ColumnSchema {
  /// Name of the column.
  ///
  /// Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.
  ///
  /// Required.
  core.String? column;

  /// Description of the column.
  ///
  /// Default value is an empty string. The description must be a UTF-8 string
  /// with the maximum size of 2000 bytes.
  ///
  /// Optional.
  core.String? description;

  /// Garbage collection policy for the column or column family.
  ///
  /// Applies to systems like Cloud Bigtable.
  ///
  /// Optional.
  core.String? gcRule;

  /// A column's mode indicates whether values in this column are required,
  /// nullable, or repeated.
  ///
  /// Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default
  /// mode is `NULLABLE`.
  ///
  /// Optional.
  core.String? mode;

  /// Schema of sub-columns.
  ///
  /// A column can have zero or more sub-columns.
  ///
  /// Optional.
  core.List<GoogleCloudDatacatalogV1ColumnSchema>? subcolumns;

  /// Type of the column.
  ///
  /// Must be a UTF-8 string with the maximum size of 128 bytes.
  ///
  /// Required.
  core.String? type;

  GoogleCloudDatacatalogV1ColumnSchema({
    this.column,
    this.description,
    this.gcRule,
    this.mode,
    this.subcolumns,
    this.type,
  });

  GoogleCloudDatacatalogV1ColumnSchema.fromJson(core.Map json_)
      : this(
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          gcRule: json_.containsKey('gcRule')
              ? json_['gcRule'] as core.String
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          subcolumns: json_.containsKey('subcolumns')
              ? (json_['subcolumns'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1ColumnSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (description != null) 'description': description!,
        if (gcRule != null) 'gcRule': gcRule!,
        if (mode != null) 'mode': mode!,
        if (subcolumns != null) 'subcolumns': subcolumns!,
        if (type != null) 'type': type!,
      };
}

/// Contact people for the entry.
class GoogleCloudDatacatalogV1Contacts {
  /// The list of contact people for the entry.
  core.List<GoogleCloudDatacatalogV1ContactsPerson>? people;

  GoogleCloudDatacatalogV1Contacts({
    this.people,
  });

  GoogleCloudDatacatalogV1Contacts.fromJson(core.Map json_)
      : this(
          people: json_.containsKey('people')
              ? (json_['people'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1ContactsPerson.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (people != null) 'people': people!,
      };
}

/// A contact person for the entry.
class GoogleCloudDatacatalogV1ContactsPerson {
  /// Designation of the person, for example, Data Steward.
  core.String? designation;

  /// Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  core.String? email;

  GoogleCloudDatacatalogV1ContactsPerson({
    this.designation,
    this.email,
  });

  GoogleCloudDatacatalogV1ContactsPerson.fromJson(core.Map json_)
      : this(
          designation: json_.containsKey('designation')
              ? json_['designation'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (designation != null) 'designation': designation!,
        if (email != null) 'email': email!,
      };
}

/// Cross-regional source used to import an existing taxonomy into a different
/// region.
class GoogleCloudDatacatalogV1CrossRegionalSource {
  /// The resource name of the source taxonomy to import.
  ///
  /// Required.
  core.String? taxonomy;

  GoogleCloudDatacatalogV1CrossRegionalSource({
    this.taxonomy,
  });

  GoogleCloudDatacatalogV1CrossRegionalSource.fromJson(core.Map json_)
      : this(
          taxonomy: json_.containsKey('taxonomy')
              ? json_['taxonomy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taxonomy != null) 'taxonomy': taxonomy!,
      };
}

/// Physical location of an entry.
class GoogleCloudDatacatalogV1DataSource {
  /// Full name of a resource as defined by the service.
  ///
  /// For example:
  /// `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  core.String? resource;

  /// Service that physically stores the data.
  /// Possible string values are:
  /// - "SERVICE_UNSPECIFIED" : Default unknown service.
  /// - "CLOUD_STORAGE" : Google Cloud Storage service.
  /// - "BIGQUERY" : BigQuery service.
  core.String? service;

  /// Data Catalog entry name, if applicable.
  ///
  /// Output only.
  core.String? sourceEntry;

  /// Detailed properties of the underlying storage.
  GoogleCloudDatacatalogV1StorageProperties? storageProperties;

  GoogleCloudDatacatalogV1DataSource({
    this.resource,
    this.service,
    this.sourceEntry,
    this.storageProperties,
  });

  GoogleCloudDatacatalogV1DataSource.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          sourceEntry: json_.containsKey('sourceEntry')
              ? json_['sourceEntry'] as core.String
              : null,
          storageProperties: json_.containsKey('storageProperties')
              ? GoogleCloudDatacatalogV1StorageProperties.fromJson(
                  json_['storageProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
        if (service != null) 'service': service!,
        if (sourceEntry != null) 'sourceEntry': sourceEntry!,
        if (storageProperties != null) 'storageProperties': storageProperties!,
      };
}

/// Specification that applies to a data source connection.
///
/// Valid only for entries with the `DATA_SOURCE_CONNECTION` type. Only one of
/// internal specs can be set at the time, and cannot be changed later.
class GoogleCloudDatacatalogV1DataSourceConnectionSpec {
  /// Fields specific to BigQuery connections.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1BigQueryConnectionSpec? bigqueryConnectionSpec;

  GoogleCloudDatacatalogV1DataSourceConnectionSpec({
    this.bigqueryConnectionSpec,
  });

  GoogleCloudDatacatalogV1DataSourceConnectionSpec.fromJson(core.Map json_)
      : this(
          bigqueryConnectionSpec: json_.containsKey('bigqueryConnectionSpec')
              ? GoogleCloudDatacatalogV1BigQueryConnectionSpec.fromJson(
                  json_['bigqueryConnectionSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryConnectionSpec != null)
          'bigqueryConnectionSpec': bigqueryConnectionSpec!,
      };
}

/// Specification that applies to a table resource.
///
/// Valid only for entries with the `TABLE` type.
class GoogleCloudDatacatalogV1DatabaseTableSpec {
  /// Fields specific to a Dataplex table and present only in the Dataplex table
  /// entries.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1DataplexTableSpec? dataplexTable;

  /// Type of this table.
  /// Possible string values are:
  /// - "TABLE_TYPE_UNSPECIFIED" : Default unknown table type.
  /// - "NATIVE" : Native table.
  /// - "EXTERNAL" : External table.
  core.String? type;

  GoogleCloudDatacatalogV1DatabaseTableSpec({
    this.dataplexTable,
    this.type,
  });

  GoogleCloudDatacatalogV1DatabaseTableSpec.fromJson(core.Map json_)
      : this(
          dataplexTable: json_.containsKey('dataplexTable')
              ? GoogleCloudDatacatalogV1DataplexTableSpec.fromJson(
                  json_['dataplexTable'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataplexTable != null) 'dataplexTable': dataplexTable!,
        if (type != null) 'type': type!,
      };
}

/// External table registered by Dataplex.
///
/// Dataplex publishes data discovered from an asset into multiple other systems
/// (BigQuery, DPMS) in form of tables. We call them "external tables". External
/// tables are also synced into the Data Catalog. This message contains pointers
/// to those external tables (fully qualified name, resource name et cetera)
/// within the Data Catalog.
class GoogleCloudDatacatalogV1DataplexExternalTable {
  /// Name of the Data Catalog entry representing the external table.
  core.String? dataCatalogEntry;

  /// Fully qualified name (FQN) of the external table.
  core.String? fullyQualifiedName;

  /// Google Cloud resource name of the external table.
  core.String? googleCloudResource;

  /// Service in which the external table is registered.
  /// Possible string values are:
  /// - "INTEGRATED_SYSTEM_UNSPECIFIED" : Default unknown system.
  /// - "BIGQUERY" : BigQuery.
  /// - "CLOUD_PUBSUB" : Cloud Pub/Sub.
  /// - "DATAPROC_METASTORE" : Dataproc Metastore.
  /// - "DATAPLEX" : Dataplex.
  core.String? system;

  GoogleCloudDatacatalogV1DataplexExternalTable({
    this.dataCatalogEntry,
    this.fullyQualifiedName,
    this.googleCloudResource,
    this.system,
  });

  GoogleCloudDatacatalogV1DataplexExternalTable.fromJson(core.Map json_)
      : this(
          dataCatalogEntry: json_.containsKey('dataCatalogEntry')
              ? json_['dataCatalogEntry'] as core.String
              : null,
          fullyQualifiedName: json_.containsKey('fullyQualifiedName')
              ? json_['fullyQualifiedName'] as core.String
              : null,
          googleCloudResource: json_.containsKey('googleCloudResource')
              ? json_['googleCloudResource'] as core.String
              : null,
          system: json_.containsKey('system')
              ? json_['system'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogEntry != null) 'dataCatalogEntry': dataCatalogEntry!,
        if (fullyQualifiedName != null)
          'fullyQualifiedName': fullyQualifiedName!,
        if (googleCloudResource != null)
          'googleCloudResource': googleCloudResource!,
        if (system != null) 'system': system!,
      };
}

/// Entry specyfication for a Dataplex fileset.
class GoogleCloudDatacatalogV1DataplexFilesetSpec {
  /// Common Dataplex fields.
  GoogleCloudDatacatalogV1DataplexSpec? dataplexSpec;

  GoogleCloudDatacatalogV1DataplexFilesetSpec({
    this.dataplexSpec,
  });

  GoogleCloudDatacatalogV1DataplexFilesetSpec.fromJson(core.Map json_)
      : this(
          dataplexSpec: json_.containsKey('dataplexSpec')
              ? GoogleCloudDatacatalogV1DataplexSpec.fromJson(
                  json_['dataplexSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataplexSpec != null) 'dataplexSpec': dataplexSpec!,
      };
}

/// Common Dataplex fields.
class GoogleCloudDatacatalogV1DataplexSpec {
  /// Fully qualified resource name of an asset in Dataplex, to which the
  /// underlying data source (Cloud Storage bucket or BigQuery dataset) of the
  /// entity is attached.
  core.String? asset;

  /// Compression format of the data, e.g., zip, gzip etc.
  core.String? compressionFormat;

  /// Format of the data.
  GoogleCloudDatacatalogV1PhysicalSchema? dataFormat;

  /// Project ID of the underlying Cloud Storage or BigQuery data.
  ///
  /// Note that this may not be the same project as the correspondingly Dataplex
  /// lake / zone / asset.
  core.String? projectId;

  GoogleCloudDatacatalogV1DataplexSpec({
    this.asset,
    this.compressionFormat,
    this.dataFormat,
    this.projectId,
  });

  GoogleCloudDatacatalogV1DataplexSpec.fromJson(core.Map json_)
      : this(
          asset:
              json_.containsKey('asset') ? json_['asset'] as core.String : null,
          compressionFormat: json_.containsKey('compressionFormat')
              ? json_['compressionFormat'] as core.String
              : null,
          dataFormat: json_.containsKey('dataFormat')
              ? GoogleCloudDatacatalogV1PhysicalSchema.fromJson(
                  json_['dataFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (compressionFormat != null) 'compressionFormat': compressionFormat!,
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Entry specification for a Dataplex table.
class GoogleCloudDatacatalogV1DataplexTableSpec {
  /// Common Dataplex fields.
  GoogleCloudDatacatalogV1DataplexSpec? dataplexSpec;

  /// List of external tables registered by Dataplex in other systems based on
  /// the same underlying data.
  ///
  /// External tables allow to query this data in those systems.
  core.List<GoogleCloudDatacatalogV1DataplexExternalTable>? externalTables;

  /// Indicates if the table schema is managed by the user or not.
  core.bool? userManaged;

  GoogleCloudDatacatalogV1DataplexTableSpec({
    this.dataplexSpec,
    this.externalTables,
    this.userManaged,
  });

  GoogleCloudDatacatalogV1DataplexTableSpec.fromJson(core.Map json_)
      : this(
          dataplexSpec: json_.containsKey('dataplexSpec')
              ? GoogleCloudDatacatalogV1DataplexSpec.fromJson(
                  json_['dataplexSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          externalTables: json_.containsKey('externalTables')
              ? (json_['externalTables'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1DataplexExternalTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userManaged: json_.containsKey('userManaged')
              ? json_['userManaged'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataplexSpec != null) 'dataplexSpec': dataplexSpec!,
        if (externalTables != null) 'externalTables': externalTables!,
        if (userManaged != null) 'userManaged': userManaged!,
      };
}

/// Entry metadata.
///
/// A Data Catalog entry represents another resource in Google Cloud Platform
/// (such as a BigQuery dataset or a Pub/Sub topic) or outside of it. You can
/// use the `linked_resource` field in the entry resource to refer to the
/// original resource ID of the source system. An entry resource contains
/// resource details, for example, its schema. Additionally, you can attach
/// flexible metadata to an entry in the form of a Tag.
class GoogleCloudDatacatalogV1Entry {
  /// Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD`
  /// name pattern.
  ///
  /// For more information, see
  /// [Introduction to partitioned tables](https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
  ///
  /// Output only.
  GoogleCloudDatacatalogV1BigQueryDateShardedSpec? bigqueryDateShardedSpec;

  /// Specification that applies to a BigQuery table.
  ///
  /// Valid only for entries with the `TABLE` type.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1BigQueryTableSpec? bigqueryTableSpec;

  /// Business Context of the entry.
  ///
  /// Not supported for BigQuery datasets
  GoogleCloudDatacatalogV1BusinessContext? businessContext;

  /// Physical location of the entry.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1DataSource? dataSource;

  /// Specification that applies to a data source connection.
  ///
  /// Valid only for entries with the `DATA_SOURCE_CONNECTION` type.
  GoogleCloudDatacatalogV1DataSourceConnectionSpec? dataSourceConnectionSpec;

  /// Specification that applies to a table resource.
  ///
  /// Valid only for entries with the `TABLE` type.
  GoogleCloudDatacatalogV1DatabaseTableSpec? databaseTableSpec;

  /// Entry description that can consist of several sentences or paragraphs that
  /// describe entry contents.
  ///
  /// The description must not contain Unicode non-characters as well as C0 and
  /// C1 control codes except tabs (HT), new lines (LF), carriage returns (CR),
  /// and page breaks (FF). The maximum size is 2000 bytes when encoded in
  /// UTF-8. Default value is an empty string.
  core.String? description;

  /// Display name of an entry.
  ///
  /// The name must contain only Unicode letters, numbers (0-9), underscores
  /// (_), dashes (-), spaces ( ), and can't start or end with spaces. The
  /// maximum size is 200 bytes when encoded in UTF-8. Default value is an empty
  /// string.
  core.String? displayName;

  /// Specification that applies to a fileset resource.
  ///
  /// Valid only for entries with the `FILESET` type.
  GoogleCloudDatacatalogV1FilesetSpec? filesetSpec;

  /// Fully qualified name (FQN) of the resource.
  ///
  /// Set automatically for entries representing resources from synced systems.
  /// Settable only during creation and read-only afterwards. Can be used for
  /// search and lookup of the entries. FQNs take two forms: * For
  /// non-regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For
  /// regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}`
  /// Example for a DPMS table:
  /// `dataproc_metastore:{PROJECT_ID}.{LOCATION_ID}.{INSTANCE_ID}.{DATABASE_ID}.{TABLE_ID}`
  core.String? fullyQualifiedName;

  /// Specification that applies to a Cloud Storage fileset.
  ///
  /// Valid only for entries with the `FILESET` type.
  GoogleCloudDatacatalogV1GcsFilesetSpec? gcsFilesetSpec;

  /// Indicates the entry's source system that Data Catalog integrates with,
  /// such as BigQuery, Pub/Sub, or Dataproc Metastore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATED_SYSTEM_UNSPECIFIED" : Default unknown system.
  /// - "BIGQUERY" : BigQuery.
  /// - "CLOUD_PUBSUB" : Cloud Pub/Sub.
  /// - "DATAPROC_METASTORE" : Dataproc Metastore.
  /// - "DATAPLEX" : Dataplex.
  core.String? integratedSystem;

  /// Cloud labels attached to the entry.
  ///
  /// In Data Catalog, you can create and modify labels attached only to custom
  /// entries. Synced entries have unmodifiable labels that come from the source
  /// system.
  core.Map<core.String, core.String>? labels;

  /// The resource this metadata entry refers to.
  ///
  /// For Google Cloud Platform resources, `linked_resource` is the
  /// [Full Resource Name](https://cloud.google.com/apis/design/resource_names#full_resource_name).
  /// For example, the `linked_resource` for a table resource from BigQuery is:
  /// `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}`
  /// Output only when the entry is one of the types in the `EntryType` enum.
  /// For entries with a `user_specified_type`, this field is optional and
  /// defaults to an empty string. The resource string must contain only letters
  /// (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:),
  /// slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes
  /// when encoded in UTF-8.
  core.String? linkedResource;

  /// The resource name of an entry in URL format.
  ///
  /// Note: The entry itself and its child resources might not be stored in the
  /// location specified in its name.
  ///
  /// Output only.
  core.String? name;

  /// Additional information related to the entry.
  ///
  /// Private to the current user.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1PersonalDetails? personalDetails;

  /// Specification that applies to a user-defined function or procedure.
  ///
  /// Valid only for entries with the `ROUTINE` type.
  GoogleCloudDatacatalogV1RoutineSpec? routineSpec;

  /// Schema of the entry.
  ///
  /// An entry might not have any schema attached to it.
  GoogleCloudDatacatalogV1Schema? schema;

  /// Timestamps from the underlying resource, not from the Data Catalog entry.
  ///
  /// Output only when the entry has a system listed in the `IntegratedSystem`
  /// enum. For entries with `user_specified_system`, this field is optional and
  /// defaults to an empty timestamp.
  GoogleCloudDatacatalogV1SystemTimestamps? sourceSystemTimestamps;

  /// The type of the entry.
  ///
  /// Only used for entries with types listed in the `EntryType` enum.
  /// Currently, only `FILESET` enum value is allowed. All other entries created
  /// in Data Catalog must use the `user_specified_type`.
  /// Possible string values are:
  /// - "ENTRY_TYPE_UNSPECIFIED" : Default unknown type.
  /// - "TABLE" : The entry type that has a GoogleSQL schema, including logical
  /// views.
  /// - "MODEL" : Output only. The type of models. For more information, see
  /// [Supported models in BigQuery ML](https://cloud.google.com/bigquery-ml/docs/introduction#supported_models_in).
  /// - "DATA_STREAM" : An entry type for streaming entries. For example, a
  /// Pub/Sub topic.
  /// - "FILESET" : An entry type for a set of files or objects. For example, a
  /// Cloud Storage fileset.
  /// - "CLUSTER" : A group of servers that work together. For example, a Kafka
  /// cluster.
  /// - "DATABASE" : A database.
  /// - "DATA_SOURCE_CONNECTION" : Output only. Connection to a data source. For
  /// example, a BigQuery connection.
  /// - "ROUTINE" : Output only. Routine, for example, a BigQuery routine.
  /// - "LAKE" : A Dataplex lake.
  /// - "ZONE" : A Dataplex zone.
  /// - "SERVICE" : A service, for example, a Dataproc Metastore service.
  core.String? type;

  /// Resource usage statistics.
  GoogleCloudDatacatalogV1UsageSignal? usageSignal;

  /// Indicates the entry's source system that Data Catalog doesn't
  /// automatically integrate with.
  ///
  /// The `user_specified_system` string has the following limitations: * Is
  /// case insensitive. * Must begin with a letter or underscore. * Can only
  /// contain letters, numbers, and underscores. * Must be at least 1 character
  /// and at most 64 characters long.
  core.String? userSpecifiedSystem;

  /// Custom entry type that doesn't match any of the values allowed for input
  /// and listed in the `EntryType` enum.
  ///
  /// When creating an entry, first check the type values in the enum. If there
  /// are no appropriate types for the new entry, provide a custom value, for
  /// example, `my_special_type`. The `user_specified_type` string has the
  /// following limitations: * Is case insensitive. * Must begin with a letter
  /// or underscore. * Can only contain letters, numbers, and underscores. *
  /// Must be at least 1 character and at most 64 characters long.
  core.String? userSpecifiedType;

  GoogleCloudDatacatalogV1Entry({
    this.bigqueryDateShardedSpec,
    this.bigqueryTableSpec,
    this.businessContext,
    this.dataSource,
    this.dataSourceConnectionSpec,
    this.databaseTableSpec,
    this.description,
    this.displayName,
    this.filesetSpec,
    this.fullyQualifiedName,
    this.gcsFilesetSpec,
    this.integratedSystem,
    this.labels,
    this.linkedResource,
    this.name,
    this.personalDetails,
    this.routineSpec,
    this.schema,
    this.sourceSystemTimestamps,
    this.type,
    this.usageSignal,
    this.userSpecifiedSystem,
    this.userSpecifiedType,
  });

  GoogleCloudDatacatalogV1Entry.fromJson(core.Map json_)
      : this(
          bigqueryDateShardedSpec: json_.containsKey('bigqueryDateShardedSpec')
              ? GoogleCloudDatacatalogV1BigQueryDateShardedSpec.fromJson(
                  json_['bigqueryDateShardedSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          bigqueryTableSpec: json_.containsKey('bigqueryTableSpec')
              ? GoogleCloudDatacatalogV1BigQueryTableSpec.fromJson(
                  json_['bigqueryTableSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          businessContext: json_.containsKey('businessContext')
              ? GoogleCloudDatacatalogV1BusinessContext.fromJson(
                  json_['businessContext']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataSource: json_.containsKey('dataSource')
              ? GoogleCloudDatacatalogV1DataSource.fromJson(
                  json_['dataSource'] as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceConnectionSpec:
              json_.containsKey('dataSourceConnectionSpec')
                  ? GoogleCloudDatacatalogV1DataSourceConnectionSpec.fromJson(
                      json_['dataSourceConnectionSpec']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          databaseTableSpec: json_.containsKey('databaseTableSpec')
              ? GoogleCloudDatacatalogV1DatabaseTableSpec.fromJson(
                  json_['databaseTableSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          filesetSpec: json_.containsKey('filesetSpec')
              ? GoogleCloudDatacatalogV1FilesetSpec.fromJson(
                  json_['filesetSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          fullyQualifiedName: json_.containsKey('fullyQualifiedName')
              ? json_['fullyQualifiedName'] as core.String
              : null,
          gcsFilesetSpec: json_.containsKey('gcsFilesetSpec')
              ? GoogleCloudDatacatalogV1GcsFilesetSpec.fromJson(
                  json_['gcsFilesetSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          integratedSystem: json_.containsKey('integratedSystem')
              ? json_['integratedSystem'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          linkedResource: json_.containsKey('linkedResource')
              ? json_['linkedResource'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          personalDetails: json_.containsKey('personalDetails')
              ? GoogleCloudDatacatalogV1PersonalDetails.fromJson(
                  json_['personalDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          routineSpec: json_.containsKey('routineSpec')
              ? GoogleCloudDatacatalogV1RoutineSpec.fromJson(
                  json_['routineSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          schema: json_.containsKey('schema')
              ? GoogleCloudDatacatalogV1Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceSystemTimestamps: json_.containsKey('sourceSystemTimestamps')
              ? GoogleCloudDatacatalogV1SystemTimestamps.fromJson(
                  json_['sourceSystemTimestamps']
                      as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          usageSignal: json_.containsKey('usageSignal')
              ? GoogleCloudDatacatalogV1UsageSignal.fromJson(
                  json_['usageSignal'] as core.Map<core.String, core.dynamic>)
              : null,
          userSpecifiedSystem: json_.containsKey('userSpecifiedSystem')
              ? json_['userSpecifiedSystem'] as core.String
              : null,
          userSpecifiedType: json_.containsKey('userSpecifiedType')
              ? json_['userSpecifiedType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDateShardedSpec != null)
          'bigqueryDateShardedSpec': bigqueryDateShardedSpec!,
        if (bigqueryTableSpec != null) 'bigqueryTableSpec': bigqueryTableSpec!,
        if (businessContext != null) 'businessContext': businessContext!,
        if (dataSource != null) 'dataSource': dataSource!,
        if (dataSourceConnectionSpec != null)
          'dataSourceConnectionSpec': dataSourceConnectionSpec!,
        if (databaseTableSpec != null) 'databaseTableSpec': databaseTableSpec!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (filesetSpec != null) 'filesetSpec': filesetSpec!,
        if (fullyQualifiedName != null)
          'fullyQualifiedName': fullyQualifiedName!,
        if (gcsFilesetSpec != null) 'gcsFilesetSpec': gcsFilesetSpec!,
        if (integratedSystem != null) 'integratedSystem': integratedSystem!,
        if (labels != null) 'labels': labels!,
        if (linkedResource != null) 'linkedResource': linkedResource!,
        if (name != null) 'name': name!,
        if (personalDetails != null) 'personalDetails': personalDetails!,
        if (routineSpec != null) 'routineSpec': routineSpec!,
        if (schema != null) 'schema': schema!,
        if (sourceSystemTimestamps != null)
          'sourceSystemTimestamps': sourceSystemTimestamps!,
        if (type != null) 'type': type!,
        if (usageSignal != null) 'usageSignal': usageSignal!,
        if (userSpecifiedSystem != null)
          'userSpecifiedSystem': userSpecifiedSystem!,
        if (userSpecifiedType != null) 'userSpecifiedType': userSpecifiedType!,
      };
}

/// Entry group metadata.
///
/// An `EntryGroup` resource represents a logical grouping of zero or more Data
/// Catalog Entry resources.
class GoogleCloudDatacatalogV1EntryGroup {
  /// Timestamps of the entry group.
  ///
  /// Default value is empty.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1SystemTimestamps? dataCatalogTimestamps;

  /// Entry group description.
  ///
  /// Can consist of several sentences or paragraphs that describe the entry
  /// group contents. Default value is an empty string.
  core.String? description;

  /// A short name to identify the entry group, for example, "analytics data -
  /// jan 2011".
  ///
  /// Default value is an empty string.
  core.String? displayName;

  /// The resource name of the entry group in URL format.
  ///
  /// Note: The entry group itself and its child resources might not be stored
  /// in the location specified in its name.
  core.String? name;

  GoogleCloudDatacatalogV1EntryGroup({
    this.dataCatalogTimestamps,
    this.description,
    this.displayName,
    this.name,
  });

  GoogleCloudDatacatalogV1EntryGroup.fromJson(core.Map json_)
      : this(
          dataCatalogTimestamps: json_.containsKey('dataCatalogTimestamps')
              ? GoogleCloudDatacatalogV1SystemTimestamps.fromJson(
                  json_['dataCatalogTimestamps']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCatalogTimestamps != null)
          'dataCatalogTimestamps': dataCatalogTimestamps!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Entry overview fields for rich text descriptions of entries.
class GoogleCloudDatacatalogV1EntryOverview {
  /// Entry overview with support for rich text.
  ///
  /// The overview must only contain Unicode characters, and should be formatted
  /// using HTML. The maximum length is 10 MiB as this value holds HTML
  /// descriptions including encoded images. The maximum length of the text
  /// without images is 100 KiB.
  core.String? overview;

  GoogleCloudDatacatalogV1EntryOverview({
    this.overview,
  });

  GoogleCloudDatacatalogV1EntryOverview.fromJson(core.Map json_)
      : this(
          overview: json_.containsKey('overview')
              ? json_['overview'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (overview != null) 'overview': overview!,
      };
}

/// Response message for ExportTaxonomies.
class GoogleCloudDatacatalogV1ExportTaxonomiesResponse {
  /// List of taxonomies and policy tags as nested protocol buffers.
  core.List<GoogleCloudDatacatalogV1SerializedTaxonomy>? taxonomies;

  GoogleCloudDatacatalogV1ExportTaxonomiesResponse({
    this.taxonomies,
  });

  GoogleCloudDatacatalogV1ExportTaxonomiesResponse.fromJson(core.Map json_)
      : this(
          taxonomies: json_.containsKey('taxonomies')
              ? (json_['taxonomies'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1SerializedTaxonomy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taxonomies != null) 'taxonomies': taxonomies!,
      };
}

class GoogleCloudDatacatalogV1FieldType {
  /// An enum type.
  GoogleCloudDatacatalogV1FieldTypeEnumType? enumType;

  /// Primitive types, such as string, boolean, etc.
  /// Possible string values are:
  /// - "PRIMITIVE_TYPE_UNSPECIFIED" : The default invalid value for a type.
  /// - "DOUBLE" : A double precision number.
  /// - "STRING" : An UTF-8 string.
  /// - "BOOL" : A boolean value.
  /// - "TIMESTAMP" : A timestamp.
  /// - "RICHTEXT" : A Richtext description.
  core.String? primitiveType;

  GoogleCloudDatacatalogV1FieldType({
    this.enumType,
    this.primitiveType,
  });

  GoogleCloudDatacatalogV1FieldType.fromJson(core.Map json_)
      : this(
          enumType: json_.containsKey('enumType')
              ? GoogleCloudDatacatalogV1FieldTypeEnumType.fromJson(
                  json_['enumType'] as core.Map<core.String, core.dynamic>)
              : null,
          primitiveType: json_.containsKey('primitiveType')
              ? json_['primitiveType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumType != null) 'enumType': enumType!,
        if (primitiveType != null) 'primitiveType': primitiveType!,
      };
}

class GoogleCloudDatacatalogV1FieldTypeEnumType {
  /// The set of allowed values for this enum.
  ///
  /// This set must not be empty and can include up to 100 allowed values. The
  /// display names of the values in this set must not be empty and must be
  /// case-insensitively unique within this set. The order of items in this set
  /// is preserved. This field can be used to create, remove, and reorder enum
  /// values. To rename enum values, use the `RenameTagTemplateFieldEnumValue`
  /// method.
  core.List<GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue>? allowedValues;

  GoogleCloudDatacatalogV1FieldTypeEnumType({
    this.allowedValues,
  });

  GoogleCloudDatacatalogV1FieldTypeEnumType.fromJson(core.Map json_)
      : this(
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
      };
}

class GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue {
  /// The display name of the enum value.
  ///
  /// Must not be an empty string. The name must contain only Unicode letters,
  /// numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or
  /// end with spaces. The maximum length is 200 characters.
  ///
  /// Required.
  core.String? displayName;

  GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue({
    this.displayName,
  });

  GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Specification that applies to a fileset.
///
/// Valid only for entries with the 'FILESET' type.
class GoogleCloudDatacatalogV1FilesetSpec {
  /// Fields specific to a Dataplex fileset and present only in the Dataplex
  /// fileset entries.
  GoogleCloudDatacatalogV1DataplexFilesetSpec? dataplexFileset;

  GoogleCloudDatacatalogV1FilesetSpec({
    this.dataplexFileset,
  });

  GoogleCloudDatacatalogV1FilesetSpec.fromJson(core.Map json_)
      : this(
          dataplexFileset: json_.containsKey('dataplexFileset')
              ? GoogleCloudDatacatalogV1DataplexFilesetSpec.fromJson(
                  json_['dataplexFileset']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataplexFileset != null) 'dataplexFileset': dataplexFileset!,
      };
}

/// Specification of a single file in Cloud Storage.
class GoogleCloudDatacatalogV1GcsFileSpec {
  /// Full file path.
  ///
  /// Example: `gs://bucket_name/a/b.txt`.
  ///
  /// Required.
  core.String? filePath;

  /// Creation, modification, and expiration timestamps of a Cloud Storage file.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1SystemTimestamps? gcsTimestamps;

  /// File size in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  GoogleCloudDatacatalogV1GcsFileSpec({
    this.filePath,
    this.gcsTimestamps,
    this.sizeBytes,
  });

  GoogleCloudDatacatalogV1GcsFileSpec.fromJson(core.Map json_)
      : this(
          filePath: json_.containsKey('filePath')
              ? json_['filePath'] as core.String
              : null,
          gcsTimestamps: json_.containsKey('gcsTimestamps')
              ? GoogleCloudDatacatalogV1SystemTimestamps.fromJson(
                  json_['gcsTimestamps'] as core.Map<core.String, core.dynamic>)
              : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePath != null) 'filePath': filePath!,
        if (gcsTimestamps != null) 'gcsTimestamps': gcsTimestamps!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
      };
}

/// Describes a Cloud Storage fileset entry.
class GoogleCloudDatacatalogV1GcsFilesetSpec {
  /// Patterns to identify a set of files in Google Cloud Storage.
  ///
  /// For more information, see
  /// [Wildcard Names](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames).
  /// Note: Currently, bucket wildcards are not supported. Examples of valid
  /// `file_patterns`: * `gs://bucket_name/dir / * `: matches all files in
  /// `bucket_name/dir` directory * `gs://bucket_name/dir / * *`: matches all
  /// files in `bucket_name/dir` and all subdirectories *
  /// `gs://bucket_name/file*`: matches files prefixed by `file` in
  /// `bucket_name` * `gs://bucket_name/??.txt`: matches files with two
  /// characters followed by `.txt` in `bucket_name` *
  /// `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel
  /// character followed by `.txt` in `bucket_name` *
  /// `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or
  /// `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a / * /b`:
  /// matches all files in `bucket_name` that match the `a / * /b` pattern, such
  /// as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches
  /// `gs://another_bucket/a.txt` You can combine wildcards to match complex
  /// sets of files, for example: `gs://bucket_name/[a-m]??.j*g`
  ///
  /// Required.
  core.List<core.String>? filePatterns;

  /// Sample files contained in this fileset, not all files contained in this
  /// fileset are represented here.
  ///
  /// Output only.
  core.List<GoogleCloudDatacatalogV1GcsFileSpec>? sampleGcsFileSpecs;

  GoogleCloudDatacatalogV1GcsFilesetSpec({
    this.filePatterns,
    this.sampleGcsFileSpecs,
  });

  GoogleCloudDatacatalogV1GcsFilesetSpec.fromJson(core.Map json_)
      : this(
          filePatterns: json_.containsKey('filePatterns')
              ? (json_['filePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sampleGcsFileSpecs: json_.containsKey('sampleGcsFileSpecs')
              ? (json_['sampleGcsFileSpecs'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1GcsFileSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePatterns != null) 'filePatterns': filePatterns!,
        if (sampleGcsFileSpecs != null)
          'sampleGcsFileSpecs': sampleGcsFileSpecs!,
      };
}

/// Request message for ImportTaxonomies.
class GoogleCloudDatacatalogV1ImportTaxonomiesRequest {
  /// Cross-regional source taxonomy to import.
  GoogleCloudDatacatalogV1CrossRegionalSource? crossRegionalSource;

  /// Inline source taxonomy to import.
  GoogleCloudDatacatalogV1InlineSource? inlineSource;

  GoogleCloudDatacatalogV1ImportTaxonomiesRequest({
    this.crossRegionalSource,
    this.inlineSource,
  });

  GoogleCloudDatacatalogV1ImportTaxonomiesRequest.fromJson(core.Map json_)
      : this(
          crossRegionalSource: json_.containsKey('crossRegionalSource')
              ? GoogleCloudDatacatalogV1CrossRegionalSource.fromJson(
                  json_['crossRegionalSource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inlineSource: json_.containsKey('inlineSource')
              ? GoogleCloudDatacatalogV1InlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crossRegionalSource != null)
          'crossRegionalSource': crossRegionalSource!,
        if (inlineSource != null) 'inlineSource': inlineSource!,
      };
}

/// Response message for ImportTaxonomies.
class GoogleCloudDatacatalogV1ImportTaxonomiesResponse {
  /// Imported taxonomies.
  core.List<GoogleCloudDatacatalogV1Taxonomy>? taxonomies;

  GoogleCloudDatacatalogV1ImportTaxonomiesResponse({
    this.taxonomies,
  });

  GoogleCloudDatacatalogV1ImportTaxonomiesResponse.fromJson(core.Map json_)
      : this(
          taxonomies: json_.containsKey('taxonomies')
              ? (json_['taxonomies'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1Taxonomy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taxonomies != null) 'taxonomies': taxonomies!,
      };
}

/// Inline source containing taxonomies to import.
class GoogleCloudDatacatalogV1InlineSource {
  /// Taxonomies to import.
  ///
  /// Required.
  core.List<GoogleCloudDatacatalogV1SerializedTaxonomy>? taxonomies;

  GoogleCloudDatacatalogV1InlineSource({
    this.taxonomies,
  });

  GoogleCloudDatacatalogV1InlineSource.fromJson(core.Map json_)
      : this(
          taxonomies: json_.containsKey('taxonomies')
              ? (json_['taxonomies'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1SerializedTaxonomy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (taxonomies != null) 'taxonomies': taxonomies!,
      };
}

/// Response message for ListEntries.
class GoogleCloudDatacatalogV1ListEntriesResponse {
  /// Entry details.
  core.List<GoogleCloudDatacatalogV1Entry>? entries;

  /// Pagination token of the next results page.
  ///
  /// Empty if there are no more items in results.
  core.String? nextPageToken;

  GoogleCloudDatacatalogV1ListEntriesResponse({
    this.entries,
    this.nextPageToken,
  });

  GoogleCloudDatacatalogV1ListEntriesResponse.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1Entry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListEntryGroups.
class GoogleCloudDatacatalogV1ListEntryGroupsResponse {
  /// Entry group details.
  core.List<GoogleCloudDatacatalogV1EntryGroup>? entryGroups;

  /// Pagination token to specify in the next call to retrieve the next page of
  /// results.
  ///
  /// Empty if there are no more items.
  core.String? nextPageToken;

  GoogleCloudDatacatalogV1ListEntryGroupsResponse({
    this.entryGroups,
    this.nextPageToken,
  });

  GoogleCloudDatacatalogV1ListEntryGroupsResponse.fromJson(core.Map json_)
      : this(
          entryGroups: json_.containsKey('entryGroups')
              ? (json_['entryGroups'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1EntryGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entryGroups != null) 'entryGroups': entryGroups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListPolicyTags.
class GoogleCloudDatacatalogV1ListPolicyTagsResponse {
  /// Pagination token of the next results page.
  ///
  /// Empty if there are no more results in the list.
  core.String? nextPageToken;

  /// The policy tags that belong to the taxonomy.
  core.List<GoogleCloudDatacatalogV1PolicyTag>? policyTags;

  GoogleCloudDatacatalogV1ListPolicyTagsResponse({
    this.nextPageToken,
    this.policyTags,
  });

  GoogleCloudDatacatalogV1ListPolicyTagsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policyTags: json_.containsKey('policyTags')
              ? (json_['policyTags'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1PolicyTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policyTags != null) 'policyTags': policyTags!,
      };
}

/// Response message for ListTags.
class GoogleCloudDatacatalogV1ListTagsResponse {
  /// Pagination token of the next results page.
  ///
  /// Empty if there are no more items in results.
  core.String? nextPageToken;

  /// Tag details.
  core.List<GoogleCloudDatacatalogV1Tag>? tags;

  GoogleCloudDatacatalogV1ListTagsResponse({
    this.nextPageToken,
    this.tags,
  });

  GoogleCloudDatacatalogV1ListTagsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1Tag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tags != null) 'tags': tags!,
      };
}

/// Response message for ListTaxonomies.
class GoogleCloudDatacatalogV1ListTaxonomiesResponse {
  /// Pagination token of the next results page.
  ///
  /// Empty if there are no more results in the list.
  core.String? nextPageToken;

  /// Taxonomies that the project contains.
  core.List<GoogleCloudDatacatalogV1Taxonomy>? taxonomies;

  GoogleCloudDatacatalogV1ListTaxonomiesResponse({
    this.nextPageToken,
    this.taxonomies,
  });

  GoogleCloudDatacatalogV1ListTaxonomiesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          taxonomies: json_.containsKey('taxonomies')
              ? (json_['taxonomies'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1Taxonomy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (taxonomies != null) 'taxonomies': taxonomies!,
      };
}

/// Request message for ModifyEntryContacts.
class GoogleCloudDatacatalogV1ModifyEntryContactsRequest {
  /// The new value for the Contacts.
  ///
  /// Required.
  GoogleCloudDatacatalogV1Contacts? contacts;

  GoogleCloudDatacatalogV1ModifyEntryContactsRequest({
    this.contacts,
  });

  GoogleCloudDatacatalogV1ModifyEntryContactsRequest.fromJson(core.Map json_)
      : this(
          contacts: json_.containsKey('contacts')
              ? GoogleCloudDatacatalogV1Contacts.fromJson(
                  json_['contacts'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null) 'contacts': contacts!,
      };
}

/// Request message for ModifyEntryOverview.
class GoogleCloudDatacatalogV1ModifyEntryOverviewRequest {
  /// The new value for the Entry Overview.
  ///
  /// Required.
  GoogleCloudDatacatalogV1EntryOverview? entryOverview;

  GoogleCloudDatacatalogV1ModifyEntryOverviewRequest({
    this.entryOverview,
  });

  GoogleCloudDatacatalogV1ModifyEntryOverviewRequest.fromJson(core.Map json_)
      : this(
          entryOverview: json_.containsKey('entryOverview')
              ? GoogleCloudDatacatalogV1EntryOverview.fromJson(
                  json_['entryOverview'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entryOverview != null) 'entryOverview': entryOverview!,
      };
}

/// Entry metadata relevant only to the user and private to them.
class GoogleCloudDatacatalogV1PersonalDetails {
  /// Set if the entry is starred; unset otherwise.
  core.String? starTime;

  /// True if the entry is starred by the user; false otherwise.
  core.bool? starred;

  GoogleCloudDatacatalogV1PersonalDetails({
    this.starTime,
    this.starred,
  });

  GoogleCloudDatacatalogV1PersonalDetails.fromJson(core.Map json_)
      : this(
          starTime: json_.containsKey('starTime')
              ? json_['starTime'] as core.String
              : null,
          starred: json_.containsKey('starred')
              ? json_['starred'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (starTime != null) 'starTime': starTime!,
        if (starred != null) 'starred': starred!,
      };
}

/// Native schema used by a resource represented as an entry.
///
/// Used by query engines for deserializing and parsing source data.
class GoogleCloudDatacatalogV1PhysicalSchema {
  /// Schema in Avro JSON format.
  GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema? avro;

  /// Marks a CSV-encoded data source.
  GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema? csv;

  /// Marks an ORC-encoded data source.
  GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema? orc;

  /// Marks a Parquet-encoded data source.
  GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema? parquet;

  /// Schema in protocol buffer format.
  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema? protobuf;

  /// Schema in Thrift format.
  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema? thrift;

  GoogleCloudDatacatalogV1PhysicalSchema({
    this.avro,
    this.csv,
    this.orc,
    this.parquet,
    this.protobuf,
    this.thrift,
  });

  GoogleCloudDatacatalogV1PhysicalSchema.fromJson(core.Map json_)
      : this(
          avro: json_.containsKey('avro')
              ? GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromJson(
                  json_['avro'] as core.Map<core.String, core.dynamic>)
              : null,
          csv: json_.containsKey('csv')
              ? GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema.fromJson(
                  json_['csv'] as core.Map<core.String, core.dynamic>)
              : null,
          orc: json_.containsKey('orc')
              ? GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema.fromJson(
                  json_['orc'] as core.Map<core.String, core.dynamic>)
              : null,
          parquet: json_.containsKey('parquet')
              ? GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema.fromJson(
                  json_['parquet'] as core.Map<core.String, core.dynamic>)
              : null,
          protobuf: json_.containsKey('protobuf')
              ? GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromJson(
                  json_['protobuf'] as core.Map<core.String, core.dynamic>)
              : null,
          thrift: json_.containsKey('thrift')
              ? GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromJson(
                  json_['thrift'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avro != null) 'avro': avro!,
        if (csv != null) 'csv': csv!,
        if (orc != null) 'orc': orc!,
        if (parquet != null) 'parquet': parquet!,
        if (protobuf != null) 'protobuf': protobuf!,
        if (thrift != null) 'thrift': thrift!,
      };
}

/// Schema in Avro JSON format.
class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema {
  /// JSON source of the Avro schema.
  core.String? text;

  GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema({
    this.text,
  });

  GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Marks a CSV-encoded data source.
typedef GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema = $Empty;

/// Marks an ORC-encoded data source.
typedef GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema = $Empty;

/// Marks a Parquet-encoded data source.
typedef GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema = $Empty;

/// Schema in protocol buffer format.
class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema {
  /// Protocol buffer source of the schema.
  core.String? text;

  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema({
    this.text,
  });

  GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Schema in Thrift format.
class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema {
  /// Thrift IDL source of the schema.
  core.String? text;

  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema({
    this.text,
  });

  GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Denotes one policy tag in a taxonomy, for example, SSN.
///
/// Policy tags can be defined in a hierarchy. For example: ``` + Geolocation +
/// LatLong + City + ZipCode ``` Where the "Geolocation" policy tag contains
/// three children.
class GoogleCloudDatacatalogV1PolicyTag {
  /// Resource names of child policy tags of this policy tag.
  ///
  /// Output only.
  core.List<core.String>? childPolicyTags;

  /// Description of this policy tag.
  ///
  /// If not set, defaults to empty. The description must contain only Unicode
  /// characters, tabs, newlines, carriage returns and page breaks, and be at
  /// most 2000 bytes long when encoded in UTF-8.
  core.String? description;

  /// User-defined name of this policy tag.
  ///
  /// The name can't start or end with spaces and must be unique within the
  /// parent taxonomy, contain only Unicode letters, numbers, underscores,
  /// dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this policy tag in the URL format.
  ///
  /// The policy tag manager generates unique taxonomy IDs and policy tag IDs.
  ///
  /// Output only.
  core.String? name;

  /// Resource name of this policy tag's parent policy tag.
  ///
  /// If empty, this is a top level tag. If not set, defaults to an empty
  /// string. For example, for the "LatLong" policy tag in the example above,
  /// this field contains the resource name of the "Geolocation" policy tag,
  /// and, for "Geolocation", this field is empty.
  core.String? parentPolicyTag;

  GoogleCloudDatacatalogV1PolicyTag({
    this.childPolicyTags,
    this.description,
    this.displayName,
    this.name,
    this.parentPolicyTag,
  });

  GoogleCloudDatacatalogV1PolicyTag.fromJson(core.Map json_)
      : this(
          childPolicyTags: json_.containsKey('childPolicyTags')
              ? (json_['childPolicyTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parentPolicyTag: json_.containsKey('parentPolicyTag')
              ? json_['parentPolicyTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childPolicyTags != null) 'childPolicyTags': childPolicyTags!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (parentPolicyTag != null) 'parentPolicyTag': parentPolicyTag!,
      };
}

/// Request message for RenameTagTemplateFieldEnumValue.
class GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest {
  /// The new display name of the enum value.
  ///
  /// For example, `my_new_enum_value`.
  ///
  /// Required.
  core.String? newEnumValueDisplayName;

  GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest({
    this.newEnumValueDisplayName,
  });

  GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest.fromJson(
      core.Map json_)
      : this(
          newEnumValueDisplayName: json_.containsKey('newEnumValueDisplayName')
              ? json_['newEnumValueDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newEnumValueDisplayName != null)
          'newEnumValueDisplayName': newEnumValueDisplayName!,
      };
}

/// Request message for RenameTagTemplateField.
class GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest {
  /// The new ID of this tag template field.
  ///
  /// For example, `my_new_field`.
  ///
  /// Required.
  core.String? newTagTemplateFieldId;

  GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest({
    this.newTagTemplateFieldId,
  });

  GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest.fromJson(core.Map json_)
      : this(
          newTagTemplateFieldId: json_.containsKey('newTagTemplateFieldId')
              ? json_['newTagTemplateFieldId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newTagTemplateFieldId != null)
          'newTagTemplateFieldId': newTagTemplateFieldId!,
      };
}

/// Request message for ReplaceTaxonomy.
class GoogleCloudDatacatalogV1ReplaceTaxonomyRequest {
  /// Taxonomy to update along with its child policy tags.
  ///
  /// Required.
  GoogleCloudDatacatalogV1SerializedTaxonomy? serializedTaxonomy;

  GoogleCloudDatacatalogV1ReplaceTaxonomyRequest({
    this.serializedTaxonomy,
  });

  GoogleCloudDatacatalogV1ReplaceTaxonomyRequest.fromJson(core.Map json_)
      : this(
          serializedTaxonomy: json_.containsKey('serializedTaxonomy')
              ? GoogleCloudDatacatalogV1SerializedTaxonomy.fromJson(
                  json_['serializedTaxonomy']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serializedTaxonomy != null)
          'serializedTaxonomy': serializedTaxonomy!,
      };
}

/// Specification that applies to a routine.
///
/// Valid only for entries with the `ROUTINE` type.
class GoogleCloudDatacatalogV1RoutineSpec {
  /// Fields specific for BigQuery routines.
  GoogleCloudDatacatalogV1BigQueryRoutineSpec? bigqueryRoutineSpec;

  /// The body of the routine.
  core.String? definitionBody;

  /// The language the routine is written in.
  ///
  /// The exact value depends on the source system. For BigQuery routines,
  /// possible values are: * `SQL` * `JAVASCRIPT`
  core.String? language;

  /// Return type of the argument.
  ///
  /// The exact value depends on the source system and the language.
  core.String? returnType;

  /// Arguments of the routine.
  core.List<GoogleCloudDatacatalogV1RoutineSpecArgument>? routineArguments;

  /// The type of the routine.
  /// Possible string values are:
  /// - "ROUTINE_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SCALAR_FUNCTION" : Non-builtin permanent scalar function.
  /// - "PROCEDURE" : Stored procedure.
  core.String? routineType;

  GoogleCloudDatacatalogV1RoutineSpec({
    this.bigqueryRoutineSpec,
    this.definitionBody,
    this.language,
    this.returnType,
    this.routineArguments,
    this.routineType,
  });

  GoogleCloudDatacatalogV1RoutineSpec.fromJson(core.Map json_)
      : this(
          bigqueryRoutineSpec: json_.containsKey('bigqueryRoutineSpec')
              ? GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromJson(
                  json_['bigqueryRoutineSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          definitionBody: json_.containsKey('definitionBody')
              ? json_['definitionBody'] as core.String
              : null,
          language: json_.containsKey('language')
              ? json_['language'] as core.String
              : null,
          returnType: json_.containsKey('returnType')
              ? json_['returnType'] as core.String
              : null,
          routineArguments: json_.containsKey('routineArguments')
              ? (json_['routineArguments'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1RoutineSpecArgument.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          routineType: json_.containsKey('routineType')
              ? json_['routineType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryRoutineSpec != null)
          'bigqueryRoutineSpec': bigqueryRoutineSpec!,
        if (definitionBody != null) 'definitionBody': definitionBody!,
        if (language != null) 'language': language!,
        if (returnType != null) 'returnType': returnType!,
        if (routineArguments != null) 'routineArguments': routineArguments!,
        if (routineType != null) 'routineType': routineType!,
      };
}

/// Input or output argument of a function or stored procedure.
class GoogleCloudDatacatalogV1RoutineSpecArgument {
  /// Specifies whether the argument is input or output.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified mode.
  /// - "IN" : The argument is input-only.
  /// - "OUT" : The argument is output-only.
  /// - "INOUT" : The argument is both an input and an output.
  core.String? mode;

  /// The name of the argument.
  ///
  /// A return argument of a function might not have a name.
  core.String? name;

  /// Type of the argument.
  ///
  /// The exact value depends on the source system and the language.
  core.String? type;

  GoogleCloudDatacatalogV1RoutineSpecArgument({
    this.mode,
    this.name,
    this.type,
  });

  GoogleCloudDatacatalogV1RoutineSpecArgument.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
class GoogleCloudDatacatalogV1Schema {
  /// The unified GoogleSQL-like schema of columns.
  ///
  /// The overall maximum number of columns and nested columns is 10,000. The
  /// maximum nested depth is 15 levels.
  core.List<GoogleCloudDatacatalogV1ColumnSchema>? columns;

  GoogleCloudDatacatalogV1Schema({
    this.columns,
  });

  GoogleCloudDatacatalogV1Schema.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => GoogleCloudDatacatalogV1ColumnSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
      };
}

/// Request message for SearchCatalog.
class GoogleCloudDatacatalogV1SearchCatalogRequest {
  /// Specifies the order of results.
  ///
  /// Currently supported case-sensitive values are: * `relevance` that can only
  /// be descending * `last_modified_timestamp [asc|desc]` with descending
  /// (`desc`) as default * `default` that can only be descending If this
  /// parameter is omitted, it defaults to the descending `relevance`.
  core.String? orderBy;

  /// Number of results to return in a single search page.
  ///
  /// Can't be negative or 0, defaults to 10 in this case. The maximum number is
  /// 1000. If exceeded, throws an "invalid argument" exception.
  core.int? pageSize;

  /// Pagination token that, if specified, returns the next page of search
  /// results.
  ///
  /// If empty, returns the first page. This token is returned in the
  /// SearchCatalogResponse.next_page_token field of the response to a previous
  /// SearchCatalogRequest call.
  ///
  /// Optional.
  core.String? pageToken;

  /// The query string with a minimum of 3 characters and specific syntax.
  ///
  /// For more information, see
  /// [Data Catalog search syntax](https://cloud.google.com/data-catalog/docs/how-to/search-reference).
  /// An empty query string returns all data assets (in the specified scope)
  /// that you have access to. A query string can be a simple `xyz` or qualified
  /// by predicates: * `name:x` * `column:y` * `description:z`
  ///
  /// Optional.
  core.String? query;

  /// The scope of this search request.
  ///
  /// The `scope` is invalid if `include_org_ids`, `include_project_ids` are
  /// empty AND `include_gcp_public_datasets` is set to `false`. In this case,
  /// the request returns an error.
  ///
  /// Required.
  GoogleCloudDatacatalogV1SearchCatalogRequestScope? scope;

  GoogleCloudDatacatalogV1SearchCatalogRequest({
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.query,
    this.scope,
  });

  GoogleCloudDatacatalogV1SearchCatalogRequest.fromJson(core.Map json_)
      : this(
          orderBy: json_.containsKey('orderBy')
              ? json_['orderBy'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          scope: json_.containsKey('scope')
              ? GoogleCloudDatacatalogV1SearchCatalogRequestScope.fromJson(
                  json_['scope'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (query != null) 'query': query!,
        if (scope != null) 'scope': scope!,
      };
}

/// The criteria that select the subspace used for query matching.
class GoogleCloudDatacatalogV1SearchCatalogRequestScope {
  /// If `true`, include Google Cloud Platform (GCP) public datasets in search
  /// results.
  ///
  /// By default, they are excluded. See \[Google Cloud Public
  /// Datasets\](/public-datasets) for more information.
  core.bool? includeGcpPublicDatasets;

  /// The list of organization IDs to search within.
  ///
  /// To find your organization ID, follow the steps from \[Creating and
  /// managing organizations\]
  /// (/resource-manager/docs/creating-managing-organization).
  core.List<core.String>? includeOrgIds;

  /// The list of project IDs to search within.
  ///
  /// For more information on the distinction between project names, IDs, and
  /// numbers, see \[Projects\](/docs/overview/#projects).
  core.List<core.String>? includeProjectIds;

  /// This field is deprecated.
  ///
  /// The search mechanism for public and private tag templates is the same.
  ///
  /// Optional.
  core.bool? includePublicTagTemplates;

  /// The list of locations to search within.
  ///
  /// If empty, all locations are searched. Returns an error if any location in
  /// the list isn't one of the
  /// [Supported regions](https://cloud.google.com/data-catalog/docs/concepts/regions#supported_regions).
  /// If a location is unreachable, its name is returned in the
  /// `SearchCatalogResponse.unreachable` field. To get additional information
  /// on the error, repeat the search request and set the location name as the
  /// value of this parameter.
  ///
  /// Optional.
  core.List<core.String>? restrictedLocations;

  /// If `true`, search only among starred entries.
  ///
  /// By default, all results are returned, starred or not.
  ///
  /// Optional.
  core.bool? starredOnly;

  GoogleCloudDatacatalogV1SearchCatalogRequestScope({
    this.includeGcpPublicDatasets,
    this.includeOrgIds,
    this.includeProjectIds,
    this.includePublicTagTemplates,
    this.restrictedLocations,
    this.starredOnly,
  });

  GoogleCloudDatacatalogV1SearchCatalogRequestScope.fromJson(core.Map json_)
      : this(
          includeGcpPublicDatasets:
              json_.containsKey('includeGcpPublicDatasets')
                  ? json_['includeGcpPublicDatasets'] as core.bool
                  : null,
          includeOrgIds: json_.containsKey('includeOrgIds')
              ? (json_['includeOrgIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeProjectIds: json_.containsKey('includeProjectIds')
              ? (json_['includeProjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePublicTagTemplates:
              json_.containsKey('includePublicTagTemplates')
                  ? json_['includePublicTagTemplates'] as core.bool
                  : null,
          restrictedLocations: json_.containsKey('restrictedLocations')
              ? (json_['restrictedLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          starredOnly: json_.containsKey('starredOnly')
              ? json_['starredOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeGcpPublicDatasets != null)
          'includeGcpPublicDatasets': includeGcpPublicDatasets!,
        if (includeOrgIds != null) 'includeOrgIds': includeOrgIds!,
        if (includeProjectIds != null) 'includeProjectIds': includeProjectIds!,
        if (includePublicTagTemplates != null)
          'includePublicTagTemplates': includePublicTagTemplates!,
        if (restrictedLocations != null)
          'restrictedLocations': restrictedLocations!,
        if (starredOnly != null) 'starredOnly': starredOnly!,
      };
}

/// Response message for SearchCatalog.
class GoogleCloudDatacatalogV1SearchCatalogResponse {
  /// Pagination token that can be used in subsequent calls to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  /// Search results.
  core.List<GoogleCloudDatacatalogV1SearchCatalogResult>? results;

  /// Unreachable locations.
  ///
  /// Search results don't include data from those locations. To get additional
  /// information on an error, repeat the search request and restrict it to
  /// specific locations by setting the
  /// `SearchCatalogRequest.scope.restricted_locations` parameter.
  core.List<core.String>? unreachable;

  GoogleCloudDatacatalogV1SearchCatalogResponse({
    this.nextPageToken,
    this.results,
    this.unreachable,
  });

  GoogleCloudDatacatalogV1SearchCatalogResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1SearchCatalogResult.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Result in the response to a search request.
///
/// Each result captures details of one entry that matches the search.
class GoogleCloudDatacatalogV1SearchCatalogResult {
  /// Entry description that can consist of several sentences or paragraphs that
  /// describe entry contents.
  core.String? description;

  /// The display name of the result.
  core.String? displayName;

  /// Fully qualified name (FQN) of the resource.
  ///
  /// FQNs take two forms: * For non-regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For
  /// regionalized resources:
  /// `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}`
  /// Example for a DPMS table:
  /// `dataproc_metastore:PROJECT_ID.LOCATION_ID.INSTANCE_ID.DATABASE_ID.TABLE_ID`
  core.String? fullyQualifiedName;

  /// The source system that Data Catalog automatically integrates with, such as
  /// BigQuery, Cloud Pub/Sub, or Dataproc Metastore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATED_SYSTEM_UNSPECIFIED" : Default unknown system.
  /// - "BIGQUERY" : BigQuery.
  /// - "CLOUD_PUBSUB" : Cloud Pub/Sub.
  /// - "DATAPROC_METASTORE" : Dataproc Metastore.
  /// - "DATAPLEX" : Dataplex.
  core.String? integratedSystem;

  /// The full name of the Google Cloud resource the entry belongs to.
  ///
  /// For more information, see \[Full Resource Name\]
  /// (/apis/design/resource_names#full_resource_name). Example:
  /// `//bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID`
  core.String? linkedResource;

  /// The last modification timestamp of the entry in the source system.
  core.String? modifyTime;

  /// The relative name of the resource in URL format.
  ///
  /// Examples: *
  /// `projects/{PROJECT_ID}/locations/{LOCATION_ID}/entryGroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`
  /// * `projects/{PROJECT_ID}/tagTemplates/{TAG_TEMPLATE_ID}`
  core.String? relativeResourceName;

  /// Sub-type of the search result.
  ///
  /// A dot-delimited full type of the resource. The same type you specify in
  /// the `type` search predicate. Examples: `entry.table`, `entry.dataStream`,
  /// `tagTemplate`.
  core.String? searchResultSubtype;

  /// Type of the search result.
  ///
  /// You can use this field to determine which get method to call to fetch the
  /// full resource.
  /// Possible string values are:
  /// - "SEARCH_RESULT_TYPE_UNSPECIFIED" : Default unknown type.
  /// - "ENTRY" : An Entry.
  /// - "TAG_TEMPLATE" : A TagTemplate.
  /// - "ENTRY_GROUP" : An EntryGroup.
  core.String? searchResultType;

  /// Custom source system that you can manually integrate Data Catalog with.
  core.String? userSpecifiedSystem;

  GoogleCloudDatacatalogV1SearchCatalogResult({
    this.description,
    this.displayName,
    this.fullyQualifiedName,
    this.integratedSystem,
    this.linkedResource,
    this.modifyTime,
    this.relativeResourceName,
    this.searchResultSubtype,
    this.searchResultType,
    this.userSpecifiedSystem,
  });

  GoogleCloudDatacatalogV1SearchCatalogResult.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          fullyQualifiedName: json_.containsKey('fullyQualifiedName')
              ? json_['fullyQualifiedName'] as core.String
              : null,
          integratedSystem: json_.containsKey('integratedSystem')
              ? json_['integratedSystem'] as core.String
              : null,
          linkedResource: json_.containsKey('linkedResource')
              ? json_['linkedResource'] as core.String
              : null,
          modifyTime: json_.containsKey('modifyTime')
              ? json_['modifyTime'] as core.String
              : null,
          relativeResourceName: json_.containsKey('relativeResourceName')
              ? json_['relativeResourceName'] as core.String
              : null,
          searchResultSubtype: json_.containsKey('searchResultSubtype')
              ? json_['searchResultSubtype'] as core.String
              : null,
          searchResultType: json_.containsKey('searchResultType')
              ? json_['searchResultType'] as core.String
              : null,
          userSpecifiedSystem: json_.containsKey('userSpecifiedSystem')
              ? json_['userSpecifiedSystem'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (fullyQualifiedName != null)
          'fullyQualifiedName': fullyQualifiedName!,
        if (integratedSystem != null) 'integratedSystem': integratedSystem!,
        if (linkedResource != null) 'linkedResource': linkedResource!,
        if (modifyTime != null) 'modifyTime': modifyTime!,
        if (relativeResourceName != null)
          'relativeResourceName': relativeResourceName!,
        if (searchResultSubtype != null)
          'searchResultSubtype': searchResultSubtype!,
        if (searchResultType != null) 'searchResultType': searchResultType!,
        if (userSpecifiedSystem != null)
          'userSpecifiedSystem': userSpecifiedSystem!,
      };
}

/// A nested protocol buffer that represents a policy tag and all its
/// descendants.
class GoogleCloudDatacatalogV1SerializedPolicyTag {
  /// Children of the policy tag, if any.
  core.List<GoogleCloudDatacatalogV1SerializedPolicyTag>? childPolicyTags;

  /// Description of the serialized policy tag.
  ///
  /// At most 2000 bytes when encoded in UTF-8. If not set, defaults to an empty
  /// description.
  core.String? description;

  /// Display name of the policy tag.
  ///
  /// At most 200 bytes when encoded in UTF-8.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the policy tag.
  ///
  /// This field is ignored when calling `ImportTaxonomies`.
  core.String? policyTag;

  GoogleCloudDatacatalogV1SerializedPolicyTag({
    this.childPolicyTags,
    this.description,
    this.displayName,
    this.policyTag,
  });

  GoogleCloudDatacatalogV1SerializedPolicyTag.fromJson(core.Map json_)
      : this(
          childPolicyTags: json_.containsKey('childPolicyTags')
              ? (json_['childPolicyTags'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1SerializedPolicyTag.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          policyTag: json_.containsKey('policyTag')
              ? json_['policyTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childPolicyTags != null) 'childPolicyTags': childPolicyTags!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (policyTag != null) 'policyTag': policyTag!,
      };
}

/// A nested protocol buffer that represents a taxonomy and the hierarchy of its
/// policy tags.
///
/// Used for taxonomy replacement, import, and export.
class GoogleCloudDatacatalogV1SerializedTaxonomy {
  /// A list of policy types that are activated per taxonomy.
  core.List<core.String>? activatedPolicyTypes;

  /// Description of the serialized taxonomy.
  ///
  /// At most 2000 bytes when encoded in UTF-8. If not set, defaults to an empty
  /// description.
  core.String? description;

  /// Display name of the taxonomy.
  ///
  /// At most 200 bytes when encoded in UTF-8.
  ///
  /// Required.
  core.String? displayName;

  /// Top level policy tags associated with the taxonomy, if any.
  core.List<GoogleCloudDatacatalogV1SerializedPolicyTag>? policyTags;

  GoogleCloudDatacatalogV1SerializedTaxonomy({
    this.activatedPolicyTypes,
    this.description,
    this.displayName,
    this.policyTags,
  });

  GoogleCloudDatacatalogV1SerializedTaxonomy.fromJson(core.Map json_)
      : this(
          activatedPolicyTypes: json_.containsKey('activatedPolicyTypes')
              ? (json_['activatedPolicyTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          policyTags: json_.containsKey('policyTags')
              ? (json_['policyTags'] as core.List)
                  .map((value) =>
                      GoogleCloudDatacatalogV1SerializedPolicyTag.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activatedPolicyTypes != null)
          'activatedPolicyTypes': activatedPolicyTypes!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (policyTags != null) 'policyTags': policyTags!,
      };
}

/// Request message for StarEntry.
typedef GoogleCloudDatacatalogV1StarEntryRequest = $Empty;

/// Response message for StarEntry.
///
/// Empty for now
typedef GoogleCloudDatacatalogV1StarEntryResponse = $Empty;

/// Details the properties of the underlying storage.
class GoogleCloudDatacatalogV1StorageProperties {
  /// Patterns to identify a set of files for this fileset.
  ///
  /// Examples of a valid `file_pattern`: * `gs://bucket_name/dir / * `: matches
  /// all files in the `bucket_name/dir` directory * `gs://bucket_name/dir / *
  /// *`: matches all files in the `bucket_name/dir` and all subdirectories
  /// recursively * `gs://bucket_name/file*`: matches files prefixed by `file`
  /// in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two
  /// characters followed by `.txt` in `bucket_name` *
  /// `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel
  /// character followed by `.txt` in `bucket_name` *
  /// `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or
  /// `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a / * /b`:
  /// matches all files in `bucket_name` that match the `a / * /b` pattern, such
  /// as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches
  /// `gs://another_bucket/a.txt`
  core.List<core.String>? filePattern;

  /// File type in MIME format, for example, `text/plain`.
  core.String? fileType;

  GoogleCloudDatacatalogV1StorageProperties({
    this.filePattern,
    this.fileType,
  });

  GoogleCloudDatacatalogV1StorageProperties.fromJson(core.Map json_)
      : this(
          filePattern: json_.containsKey('filePattern')
              ? (json_['filePattern'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePattern != null) 'filePattern': filePattern!,
        if (fileType != null) 'fileType': fileType!,
      };
}

/// Timestamps associated with this resource in a particular system.
class GoogleCloudDatacatalogV1SystemTimestamps {
  /// Creation timestamp of the resource within the given system.
  core.String? createTime;

  /// Expiration timestamp of the resource within the given system.
  ///
  /// Currently only applicable to BigQuery resources.
  ///
  /// Output only.
  core.String? expireTime;

  /// Timestamp of the last modification of the resource or its metadata within
  /// a given system.
  ///
  /// Note: Depending on the source system, not every modification updates this
  /// timestamp. For example, BigQuery timestamps every metadata modification
  /// but not data or permission changes.
  core.String? updateTime;

  GoogleCloudDatacatalogV1SystemTimestamps({
    this.createTime,
    this.expireTime,
    this.updateTime,
  });

  GoogleCloudDatacatalogV1SystemTimestamps.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Normal BigQuery table specification.
class GoogleCloudDatacatalogV1TableSpec {
  /// If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD`
  /// name pattern, this field is the Data Catalog resource name of the
  /// date-sharded grouped entry.
  ///
  /// For example:
  /// `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
  /// Otherwise, `grouped_entry` is empty.
  ///
  /// Output only.
  core.String? groupedEntry;

  GoogleCloudDatacatalogV1TableSpec({
    this.groupedEntry,
  });

  GoogleCloudDatacatalogV1TableSpec.fromJson(core.Map json_)
      : this(
          groupedEntry: json_.containsKey('groupedEntry')
              ? json_['groupedEntry'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupedEntry != null) 'groupedEntry': groupedEntry!,
      };
}

/// Tags contain custom metadata and are attached to Data Catalog resources.
///
/// Tags conform with the specification of their tag template. See
/// [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam)
/// for information on the permissions needed to create or view tags.
class GoogleCloudDatacatalogV1Tag {
  /// Resources like entry can have schemas associated with them.
  ///
  /// This scope allows you to attach tags to an individual column based on that
  /// schema. To attach a tag to a nested column, separate column names with a
  /// dot (`.`). Example: `column.nested_column`.
  core.String? column;

  /// Maps the ID of a tag field to its value and additional information about
  /// that field.
  ///
  /// Tag template defines valid field IDs. A tag must have at least 1 field and
  /// at most 500 fields.
  ///
  /// Required.
  core.Map<core.String, GoogleCloudDatacatalogV1TagField>? fields;

  /// The resource name of the tag in URL format where tag ID is a
  /// system-generated identifier.
  ///
  /// Note: The tag itself might not be stored in the location specified in its
  /// name.
  core.String? name;

  /// The resource name of the tag template this tag uses.
  ///
  /// Example:
  /// `projects/{PROJECT_ID}/locations/{LOCATION}/tagTemplates/{TAG_TEMPLATE_ID}`
  /// This field cannot be modified after creation.
  ///
  /// Required.
  core.String? template;

  /// The display name of the tag template.
  ///
  /// Output only.
  core.String? templateDisplayName;

  GoogleCloudDatacatalogV1Tag({
    this.column,
    this.fields,
    this.name,
    this.template,
    this.templateDisplayName,
  });

  GoogleCloudDatacatalogV1Tag.fromJson(core.Map json_)
      : this(
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDatacatalogV1TagField.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          template: json_.containsKey('template')
              ? json_['template'] as core.String
              : null,
          templateDisplayName: json_.containsKey('templateDisplayName')
              ? json_['templateDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (template != null) 'template': template!,
        if (templateDisplayName != null)
          'templateDisplayName': templateDisplayName!,
      };
}

/// Contains the value and additional information on a field within a Tag.
class GoogleCloudDatacatalogV1TagField {
  /// The value of a tag field with a boolean type.
  core.bool? boolValue;

  /// The display name of this field.
  ///
  /// Output only.
  core.String? displayName;

  /// The value of a tag field with a double type.
  core.double? doubleValue;

  /// The value of a tag field with an enum type.
  ///
  /// This value must be one of the allowed values listed in this enum.
  GoogleCloudDatacatalogV1TagFieldEnumValue? enumValue;

  /// The order of this field with respect to other fields in this tag.
  ///
  /// Can be set by Tag. For example, a higher value can indicate a more
  /// important field. The value can be negative. Multiple fields can have the
  /// same order, and field orders within a tag don't have to be sequential.
  ///
  /// Output only.
  core.int? order;

  /// The value of a tag field with a rich text type.
  ///
  /// The maximum length is 10 MiB as this value holds HTML descriptions
  /// including encoded images. The maximum length of the text without images is
  /// 100 KiB.
  core.String? richtextValue;

  /// The value of a tag field with a string type.
  ///
  /// The maximum length is 2000 UTF-8 characters.
  core.String? stringValue;

  /// The value of a tag field with a timestamp type.
  core.String? timestampValue;

  GoogleCloudDatacatalogV1TagField({
    this.boolValue,
    this.displayName,
    this.doubleValue,
    this.enumValue,
    this.order,
    this.richtextValue,
    this.stringValue,
    this.timestampValue,
  });

  GoogleCloudDatacatalogV1TagField.fromJson(core.Map json_)
      : this(
          boolValue: json_.containsKey('boolValue')
              ? json_['boolValue'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          enumValue: json_.containsKey('enumValue')
              ? GoogleCloudDatacatalogV1TagFieldEnumValue.fromJson(
                  json_['enumValue'] as core.Map<core.String, core.dynamic>)
              : null,
          order: json_.containsKey('order') ? json_['order'] as core.int : null,
          richtextValue: json_.containsKey('richtextValue')
              ? json_['richtextValue'] as core.String
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? json_['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (displayName != null) 'displayName': displayName!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (enumValue != null) 'enumValue': enumValue!,
        if (order != null) 'order': order!,
        if (richtextValue != null) 'richtextValue': richtextValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// An enum value.
class GoogleCloudDatacatalogV1TagFieldEnumValue {
  /// The display name of the enum value.
  core.String? displayName;

  GoogleCloudDatacatalogV1TagFieldEnumValue({
    this.displayName,
  });

  GoogleCloudDatacatalogV1TagFieldEnumValue.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// A tag template defines a tag that can have one or more typed fields.
///
/// The template is used to create tags that are attached to GCP resources.
/// [Tag template roles](https://cloud.google.com/iam/docs/understanding-roles#data-catalog-roles)
/// provide permissions to create, edit, and use the template. For example, see
/// the
/// [TagTemplate User](https://cloud.google.com/data-catalog/docs/how-to/template-user)
/// role that includes a permission to use the tag template to tag resources.
class GoogleCloudDatacatalogV1TagTemplate {
  /// Display name for this template.
  ///
  /// Defaults to an empty string. The name must contain only Unicode letters,
  /// numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or
  /// end with spaces. The maximum length is 200 characters.
  core.String? displayName;

  /// Map of tag template field IDs to the settings for the field.
  ///
  /// This map is an exhaustive list of the allowed fields. The map must contain
  /// at least one field and at most 500 fields. The keys to this map are tag
  /// template field IDs. The IDs have the following limitations: * Can contain
  /// uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must
  /// be at least 1 character and at most 64 characters long. * Must start with
  /// a letter or underscore.
  ///
  /// Required.
  core.Map<core.String, GoogleCloudDatacatalogV1TagTemplateField>? fields;

  /// Indicates whether tags created with this template are public.
  ///
  /// Public tags do not require tag template access to appear in ListTags API
  /// response. Additionally, you can search for a public tag by value with a
  /// simple search query in addition to using a ``tag:`` predicate.
  core.bool? isPubliclyReadable;

  /// The resource name of the tag template in URL format.
  ///
  /// Note: The tag template itself and its child resources might not be stored
  /// in the location specified in its name.
  core.String? name;

  GoogleCloudDatacatalogV1TagTemplate({
    this.displayName,
    this.fields,
    this.isPubliclyReadable,
    this.name,
  });

  GoogleCloudDatacatalogV1TagTemplate.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDatacatalogV1TagTemplateField.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          isPubliclyReadable: json_.containsKey('isPubliclyReadable')
              ? json_['isPubliclyReadable'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (fields != null) 'fields': fields!,
        if (isPubliclyReadable != null)
          'isPubliclyReadable': isPubliclyReadable!,
        if (name != null) 'name': name!,
      };
}

/// The template for an individual field within a tag template.
class GoogleCloudDatacatalogV1TagTemplateField {
  /// The description for this field.
  ///
  /// Defaults to an empty string.
  core.String? description;

  /// The display name for this field.
  ///
  /// Defaults to an empty string. The name must contain only Unicode letters,
  /// numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or
  /// end with spaces. The maximum length is 200 characters.
  core.String? displayName;

  /// If true, this field is required.
  ///
  /// Defaults to false.
  core.bool? isRequired;

  /// The resource name of the tag template field in URL format.
  ///
  /// Example:
  /// `projects/{PROJECT_ID}/locations/{LOCATION}/tagTemplates/{TAG_TEMPLATE}/fields/{FIELD}`
  /// Note: The tag template field itself might not be stored in the location
  /// specified in its name. The name must contain only letters (a-z, A-Z),
  /// numbers (0-9), or underscores (_), and must start with a letter or
  /// underscore. The maximum length is 64 characters.
  ///
  /// Output only.
  core.String? name;

  /// The order of this field with respect to other fields in this tag template.
  ///
  /// For example, a higher value can indicate a more important field. The value
  /// can be negative. Multiple fields can have the same order and field orders
  /// within a tag don't have to be sequential.
  core.int? order;

  /// The type of value this tag field can contain.
  ///
  /// Required.
  GoogleCloudDatacatalogV1FieldType? type;

  GoogleCloudDatacatalogV1TagTemplateField({
    this.description,
    this.displayName,
    this.isRequired,
    this.name,
    this.order,
    this.type,
  });

  GoogleCloudDatacatalogV1TagTemplateField.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          isRequired: json_.containsKey('isRequired')
              ? json_['isRequired'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          order: json_.containsKey('order') ? json_['order'] as core.int : null,
          type: json_.containsKey('type')
              ? GoogleCloudDatacatalogV1FieldType.fromJson(
                  json_['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (isRequired != null) 'isRequired': isRequired!,
        if (name != null) 'name': name!,
        if (order != null) 'order': order!,
        if (type != null) 'type': type!,
      };
}

/// A taxonomy is a collection of hierarchical policy tags that classify data
/// along a common axis.
///
/// For example, a "data sensitivity" taxonomy might contain the following
/// policy tags: ``` + PII + Account number + Age + SSN + Zipcode + Financials +
/// Revenue ``` A "data origin" taxonomy might contain the following policy
/// tags: ``` + User data + Employee data + Partner data + Public data ```
class GoogleCloudDatacatalogV1Taxonomy {
  /// A list of policy types that are activated for this taxonomy.
  ///
  /// If not set, defaults to an empty list.
  ///
  /// Optional.
  core.List<core.String>? activatedPolicyTypes;

  /// Description of this taxonomy.
  ///
  /// If not set, defaults to empty. The description must contain only Unicode
  /// characters, tabs, newlines, carriage returns, and page breaks, and be at
  /// most 2000 bytes long when encoded in UTF-8.
  ///
  /// Optional.
  core.String? description;

  /// User-defined name of this taxonomy.
  ///
  /// The name can't start or end with spaces, must contain only Unicode
  /// letters, numbers, underscores, dashes, and spaces, and be at most 200
  /// bytes long when encoded in UTF-8. The taxonomy display name must be unique
  /// within an organization.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this taxonomy in URL format.
  ///
  /// Note: Policy tag manager generates unique taxonomy IDs.
  ///
  /// Output only.
  core.String? name;

  /// Number of policy tags in this taxonomy.
  ///
  /// Output only.
  core.int? policyTagCount;

  /// Creation and modification timestamps of this taxonomy.
  ///
  /// Output only.
  GoogleCloudDatacatalogV1SystemTimestamps? taxonomyTimestamps;

  GoogleCloudDatacatalogV1Taxonomy({
    this.activatedPolicyTypes,
    this.description,
    this.displayName,
    this.name,
    this.policyTagCount,
    this.taxonomyTimestamps,
  });

  GoogleCloudDatacatalogV1Taxonomy.fromJson(core.Map json_)
      : this(
          activatedPolicyTypes: json_.containsKey('activatedPolicyTypes')
              ? (json_['activatedPolicyTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          policyTagCount: json_.containsKey('policyTagCount')
              ? json_['policyTagCount'] as core.int
              : null,
          taxonomyTimestamps: json_.containsKey('taxonomyTimestamps')
              ? GoogleCloudDatacatalogV1SystemTimestamps.fromJson(
                  json_['taxonomyTimestamps']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activatedPolicyTypes != null)
          'activatedPolicyTypes': activatedPolicyTypes!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (policyTagCount != null) 'policyTagCount': policyTagCount!,
        if (taxonomyTimestamps != null)
          'taxonomyTimestamps': taxonomyTimestamps!,
      };
}

/// Request message for UnstarEntry.
typedef GoogleCloudDatacatalogV1UnstarEntryRequest = $Empty;

/// Response message for UnstarEntry.
///
/// Empty for now
typedef GoogleCloudDatacatalogV1UnstarEntryResponse = $Empty;

/// The set of all usage signals that Data Catalog stores.
///
/// Note: Usually, these signals are updated daily. In rare cases, an update may
/// fail but will be performed again on the next day.
class GoogleCloudDatacatalogV1UsageSignal {
  /// The end timestamp of the duration of usage statistics.
  core.String? updateTime;

  /// BigQuery usage statistics over each of the predefined time ranges.
  ///
  /// Supported time ranges are `{"24H", "7D", "30D"}`.
  ///
  /// Output only.
  core.Map<core.String, GoogleCloudDatacatalogV1UsageStats>?
      usageWithinTimeRange;

  GoogleCloudDatacatalogV1UsageSignal({
    this.updateTime,
    this.usageWithinTimeRange,
  });

  GoogleCloudDatacatalogV1UsageSignal.fromJson(core.Map json_)
      : this(
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          usageWithinTimeRange: json_.containsKey('usageWithinTimeRange')
              ? (json_['usageWithinTimeRange']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDatacatalogV1UsageStats.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateTime != null) 'updateTime': updateTime!,
        if (usageWithinTimeRange != null)
          'usageWithinTimeRange': usageWithinTimeRange!,
      };
}

/// Detailed statistics on the entry's usage.
///
/// Usage statistics have the following limitations: - Only BigQuery tables have
/// them. - They only include BigQuery query jobs. - They might be
/// underestimated because wildcard table references are not yet counted. For
/// more information, see
/// [Querying multiple tables using a wildcard table](https://cloud.google.com/bigquery/docs/querying-wildcard-tables)
class GoogleCloudDatacatalogV1UsageStats {
  /// The number of cancelled attempts to use the underlying entry.
  core.double? totalCancellations;

  /// The number of successful uses of the underlying entry.
  core.double? totalCompletions;

  /// Total time spent only on successful uses, in milliseconds.
  core.double? totalExecutionTimeForCompletionsMillis;

  /// The number of failed attempts to use the underlying entry.
  core.double? totalFailures;

  GoogleCloudDatacatalogV1UsageStats({
    this.totalCancellations,
    this.totalCompletions,
    this.totalExecutionTimeForCompletionsMillis,
    this.totalFailures,
  });

  GoogleCloudDatacatalogV1UsageStats.fromJson(core.Map json_)
      : this(
          totalCancellations: json_.containsKey('totalCancellations')
              ? (json_['totalCancellations'] as core.num).toDouble()
              : null,
          totalCompletions: json_.containsKey('totalCompletions')
              ? (json_['totalCompletions'] as core.num).toDouble()
              : null,
          totalExecutionTimeForCompletionsMillis: json_
                  .containsKey('totalExecutionTimeForCompletionsMillis')
              ? (json_['totalExecutionTimeForCompletionsMillis'] as core.num)
                  .toDouble()
              : null,
          totalFailures: json_.containsKey('totalFailures')
              ? (json_['totalFailures'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalCancellations != null)
          'totalCancellations': totalCancellations!,
        if (totalCompletions != null) 'totalCompletions': totalCompletions!,
        if (totalExecutionTimeForCompletionsMillis != null)
          'totalExecutionTimeForCompletionsMillis':
              totalExecutionTimeForCompletionsMillis!,
        if (totalFailures != null) 'totalFailures': totalFailures!,
      };
}

/// Table view specification.
class GoogleCloudDatacatalogV1ViewSpec {
  /// The query that defines the table view.
  ///
  /// Output only.
  core.String? viewQuery;

  GoogleCloudDatacatalogV1ViewSpec({
    this.viewQuery,
  });

  GoogleCloudDatacatalogV1ViewSpec.fromJson(core.Map json_)
      : this(
          viewQuery: json_.containsKey('viewQuery')
              ? json_['viewQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewQuery != null) 'viewQuery': viewQuery!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

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
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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
  core.int? version;

  Policy({
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
