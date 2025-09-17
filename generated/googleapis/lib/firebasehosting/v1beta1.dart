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

/// Firebase Hosting API - v1beta1
///
/// The Firebase Hosting REST API enables programmatic and customizable
/// management and deployments to your Firebase-hosted sites. Use this REST API
/// to create and manage channels and sites as well as to deploy new or updated
/// hosting configurations and content files.
///
/// For more information, see <https://firebase.google.com/docs/hosting/>
///
/// Create an instance of [FirebaseHostingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsSitesResource]
///     - [ProjectsSitesChannelsResource]
///       - [ProjectsSitesChannelsReleasesResource]
///     - [ProjectsSitesCustomDomainsResource]
///       - [ProjectsSitesCustomDomainsOperationsResource]
///     - [ProjectsSitesDomainsResource]
///     - [ProjectsSitesReleasesResource]
///     - [ProjectsSitesVersionsResource]
///       - [ProjectsSitesVersionsFilesResource]
/// - [SitesResource]
///   - [SitesChannelsResource]
///     - [SitesChannelsReleasesResource]
///   - [SitesDomainsResource]
///   - [SitesReleasesResource]
///   - [SitesVersionsResource]
///     - [SitesVersionsFilesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http_1;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Firebase Hosting REST API enables programmatic and customizable
/// management and deployments to your Firebase-hosted sites.
///
/// Use this REST API to create and manage channels and sites as well as to
/// deploy new or updated hosting configurations and content files.
class FirebaseHostingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  SitesResource get sites => SitesResource(_requester);

  FirebaseHostingApi(
    http_1.Client client, {
    core.String rootUrl = 'https://firebasehosting.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsSitesResource get sites => ProjectsSitesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsResource get channels =>
      ProjectsSitesChannelsResource(_requester);
  ProjectsSitesCustomDomainsResource get customDomains =>
      ProjectsSitesCustomDomainsResource(_requester);
  ProjectsSitesDomainsResource get domains =>
      ProjectsSitesDomainsResource(_requester);
  ProjectsSitesReleasesResource get releases =>
      ProjectsSitesReleasesResource(_requester);
  ProjectsSitesVersionsResource get versions =>
      ProjectsSitesVersionsResource(_requester);

  ProjectsSitesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Hosting Site in the specified parent Firebase project.
  ///
  /// Note that Hosting sites can take several minutes to propagate through
  /// Firebase systems.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Firebase project in which to create a Hosting
  /// site, in the format: projects/PROJECT_IDENTIFIER Refer to the `Site`
  /// \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [siteId] - Required. Immutable. A globally unique identifier for the
  /// Hosting site. This identifier is used to construct the
  /// Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  ///
  /// [validateOnly] - Optional. If set, validates that the site_id is available
  /// and that the request would succeed, returning the expected resulting site
  /// or error.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Site> create(
    Site request,
    core.String parent, {
    core.String? siteId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (siteId != null) 'siteId': [siteId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Hosting Site from the specified parent Firebase
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting site,
  /// in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the
  /// `Site` \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified Hosting Site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting site,
  /// in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the
  /// `Site` \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values. Since a SITE_ID is a globally unique
  /// identifier, you can also use the unique sub-collection resource access
  /// pattern, in the format: projects/-/sites/SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Site> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SiteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists each Hosting Site associated with the specified parent Firebase
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Firebase project for which to list sites, in the
  /// format: projects/PROJECT_IDENTIFIER Refer to the `Site`
  /// \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of sites to return. The service
  /// may return a lower number if fewer sites exist than this maximum number.
  /// If unspecified, defaults to 40.
  ///
  /// [pageToken] - Optional. A token from a previous call to `ListSites` that
  /// tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListSitesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates attributes of the specified Hosting Site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully-qualified resource name of the Hosting
  /// site, in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID
  /// PROJECT_IDENTIFIER: the Firebase project's
  /// \[`ProjectNumber`\](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your Site that you want to
  /// update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Site> patch(
    Site request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the Hosting metadata for a specific site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to update the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+/config$`.
  ///
  /// [updateMask] - A set of field names from your \[site
  /// configuration\](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// \[`max_versions`\](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSitesChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResource get releases =>
      ProjectsSitesChannelsReleasesResource(_requester);

  ProjectsSitesChannelsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create this channel, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [channelId] - Required. Immutable. A unique ID within the site that
  /// identifies the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String? channelId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified channel of the specified site.
  ///
  /// The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves information for the specified channel of the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the channels for the specified site.
  ///
  /// All sites have a default `live` channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site for which to list channels, in the format:
  /// sites/SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of channels to return. The service may
  /// return a lower number if fewer channels exist than this maximum number. If
  /// unspecified, defaults to 10. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListChannels` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information for the specified channel of the specified site.
  ///
  /// Implicitly creates the channel if it doesn't already exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the channel, in the format:
  /// sites/ SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [updateMask] - A comma-separated list of fields to be updated in this
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesChannelsReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified release for a site or channel.
  ///
  /// When used to get a release for a site, this can get releases for both the
  /// default `live` channel and any active preview channels for the specified
  /// site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting
  /// release, in either of the following formats: -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/releases/RELEASE_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSitesCustomDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesCustomDomainsOperationsResource get operations =>
      ProjectsSitesCustomDomainsOperationsResource(_requester);

  ProjectsSitesCustomDomainsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a `CustomDomain`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The custom domain's parent, specifically a Firebase
  /// Hosting `Site`.
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [customDomainId] - Required. The ID of the `CustomDomain`, which is the
  /// domain name you'd like to use with Firebase Hosting.
  ///
  /// [validateOnly] - If true, Hosting validates that it's possible to complete
  /// your request but doesn't actually create a new `CustomDomain`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> create(
    CustomDomain request,
    core.String parent, {
    core.String? customDomainId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customDomainId != null) 'customDomainId': [customDomainId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/customDomains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified `CustomDomain`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `CustomDomain` to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+$`.
  ///
  /// [allowMissing] - If true, the request succeeds even if the `CustomDomain`
  /// doesn't exist.
  ///
  /// [etag] - A tag that represents the state of the `CustomDomain` as you know
  /// it. If present, the supplied tag must match the current value on your
  /// `CustomDomain`, or the request fails.
  ///
  /// [validateOnly] - If true, Hosting validates that it's possible to complete
  /// your request but doesn't actually delete the `CustomDomain`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified `CustomDomain`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `CustomDomain` to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDomain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<CustomDomain> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomDomain.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists each `CustomDomain` associated with the specified parent Hosting
  /// site.
  ///
  /// Returns `CustomDomain`s in a consistent, but undefined, order to
  /// facilitate pagination.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Firebase Hosting `Site` with `CustomDomain`
  /// entities you'd like to list.
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The max number of `CustomDomain` entities to return in a
  /// request. Defaults to 10.
  ///
  /// [pageToken] - A token from a previous call to `ListCustomDomains` that
  /// tells the server where to resume listing.
  ///
  /// [showDeleted] - If true, the request returns soft-deleted `CustomDomain`s
  /// that haven't been fully-deleted yet. To restore deleted `CustomDomain`s,
  /// make an `UndeleteCustomDomain` request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListCustomDomainsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/customDomains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified `CustomDomain`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully-qualified name of the `CustomDomain`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+$`.
  ///
  /// [allowMissing] - If true, Hosting creates the `CustomDomain` if it doesn't
  /// already exist.
  ///
  /// [updateMask] - The set of field names from your `CustomDomain` that you
  /// want to update. A field will be overwritten if, and only if, it's in the
  /// mask. If you don't provide a mask, Hosting updates the entire
  /// `CustomDomain`.
  ///
  /// [validateOnly] - If true, Hosting validates that it's possible to complete
  /// your request but doesn't actually create or update the `CustomDomain`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> patch(
    CustomDomain request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes the specified `CustomDomain` if it has been soft-deleted.
  ///
  /// Hosting retains soft-deleted custom domains for around 30 days before
  /// permanently deleting them.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `CustomDomain` to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteCustomDomainRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesCustomDomainsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesCustomDomainsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Use this method to poll the operation result at intervals as recommended
  /// by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/customDomains/\[^/\]+$`.
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
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSitesDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesDomainsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The page size to return. Defaults to 50.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified domain mapping, creating the mapping as if it does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to update or create,
  /// if an association doesn't already exist.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesReleasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified release for a site or channel.
  ///
  /// When used to get a release for a site, this can get releases for both the
  /// default `live` channel and any active preview channels for the specified
  /// site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting
  /// release, in either of the following formats: -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/releases/RELEASE_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSitesVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResource get files =>
      ProjectsSitesVersionsFilesResource(_requester);

  ProjectsSitesVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new version on the specified target site using the content of
  /// the specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site for the cloned version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> clone(
    CloneVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions:clone';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new version for the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create the version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [sizeBytes] - The self-reported size of the version. This value is used
  /// for a pre-emptive quota check for legacy version uploads.
  ///
  /// [versionId] - A unique id for the new version. This is was only specified
  /// for legacy version creations, and should be blank.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String? sizeBytes,
    core.String? versionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sizeBytes != null) 'sizeBytes': [sizeBytes],
      if (versionId != null) 'versionId': [versionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the specified version that has been created for the specified site.
  ///
  /// This can include versions that were created for the default `live` channel
  /// or for any active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the versions that have been created for the specified site.
  ///
  /// This list includes versions for both the default `live` channel and any
  /// active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list versions, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [filter] - A filter string used to return a subset of versions in the
  /// response. The currently supported fields for filtering are: `name`,
  /// `status`, and `create_time`. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return a lower number if fewer versions exist than this maximum number. If
  /// unspecified, defaults to 25. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListVersions` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  ///  Updates the specified metadata for the specified version.
  ///
  /// This method will fail with `FAILED_PRECONDITION` in the event of an
  /// invalid state transition. The supported
  /// \[state\](../sites.versions#versionstatus) transitions for a version are
  /// from `CREATED` to `FINALIZED`. Use \[`DeleteVersion`\](delete) to set the
  /// status of a version to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the version, in the format:
  /// sites/ SITE_ID/versions/VERSION_ID This name is provided in the response
  /// body when you call \[`CreateVersion`\](sites.versions/create).
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your
  /// \[version\](../sites.versions) that you want to update. A field will be
  /// overwritten if, and only if, it's in the mask. If a mask is not provided
  /// then a default mask of only
  /// \[`status`\](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Adds content files to the specified version.
  ///
  /// Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to which to add files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':populateFiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PopulateVersionFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSitesVersionsFilesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version for which to list files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of version files to return. The service
  /// may return a lower number if fewer version files exist than this maximum
  /// number. If unspecified, defaults to 1000.
  ///
  /// [pageToken] - A token from a previous call to `ListVersionFiles` that
  /// tells the server where to resume listing.
  ///
  /// [status] - The type of files that should be listed for the specified
  /// version.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? status,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': [status],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SitesResource {
  final commons.ApiRequester _requester;

  SitesChannelsResource get channels => SitesChannelsResource(_requester);
  SitesDomainsResource get domains => SitesDomainsResource(_requester);
  SitesReleasesResource get releases => SitesReleasesResource(_requester);
  SitesVersionsResource get versions => SitesVersionsResource(_requester);

  SitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^sites/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SiteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the Hosting metadata for a specific site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to update the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^sites/\[^/\]+/config$`.
  ///
  /// [updateMask] - A set of field names from your \[site
  /// configuration\](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// \[`max_versions`\](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SiteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SitesChannelsResource {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResource get releases =>
      SitesChannelsReleasesResource(_requester);

  SitesChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create this channel, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [channelId] - Required. Immutable. A unique ID within the site that
  /// identifies the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String? channelId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified channel of the specified site.
  ///
  /// The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves information for the specified channel of the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the channels for the specified site.
  ///
  /// All sites have a default `live` channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site for which to list channels, in the format:
  /// sites/SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of channels to return. The service may
  /// return a lower number if fewer channels exist than this maximum number. If
  /// unspecified, defaults to 10. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListChannels` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates information for the specified channel of the specified site.
  ///
  /// Implicitly creates the channel if it doesn't already exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the channel, in the format:
  /// sites/ SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [updateMask] - A comma-separated list of fields to be updated in this
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SitesChannelsReleasesResource {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified release for a site or channel.
  ///
  /// When used to get a release for a site, this can get releases for both the
  /// default `live` channel and any active preview channels for the specified
  /// site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting
  /// release, in either of the following formats: -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/releases/RELEASE_ID
  /// Value must have pattern
  /// `^sites/\[^/\]+/channels/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SitesDomainsResource {
  final commons.ApiRequester _requester;

  SitesDomainsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The page size to return. Defaults to 50.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the specified domain mapping, creating the mapping as if it does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to update or create,
  /// if an association doesn't already exist.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SitesReleasesResource {
  final commons.ApiRequester _requester;

  SitesReleasesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified release for a site or channel.
  ///
  /// When used to get a release for a site, this can get releases for both the
  /// default `live` channel and any active preview channels for the specified
  /// site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting
  /// release, in either of the following formats: -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/releases/RELEASE_ID
  /// Value must have pattern `^sites/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Release> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SitesVersionsResource {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResource get files =>
      SitesVersionsFilesResource(_requester);

  SitesVersionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new version on the specified target site using the content of
  /// the specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site for the cloned version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Operation> clone(
    CloneVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions:clone';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new version for the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create the version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [sizeBytes] - The self-reported size of the version. This value is used
  /// for a pre-emptive quota check for legacy version uploads.
  ///
  /// [versionId] - A unique id for the new version. This is was only specified
  /// for legacy version creations, and should be blank.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String? sizeBytes,
    core.String? versionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sizeBytes != null) 'sizeBytes': [sizeBytes],
      if (versionId != null) 'versionId': [versionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the specified version that has been created for the specified site.
  ///
  /// This can include versions that were created for the default `live` channel
  /// or for any active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the versions that have been created for the specified site.
  ///
  /// This list includes versions for both the default `live` channel and any
  /// active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list versions, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [filter] - A filter string used to return a subset of versions in the
  /// response. The currently supported fields for filtering are: `name`,
  /// `status`, and `create_time`. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return a lower number if fewer versions exist than this maximum number. If
  /// unspecified, defaults to 25. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListVersions` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  ///  Updates the specified metadata for the specified version.
  ///
  /// This method will fail with `FAILED_PRECONDITION` in the event of an
  /// invalid state transition. The supported
  /// \[state\](../sites.versions#versionstatus) transitions for a version are
  /// from `CREATED` to `FINALIZED`. Use \[`DeleteVersion`\](delete) to set the
  /// status of a version to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the version, in the format:
  /// sites/ SITE_ID/versions/VERSION_ID This name is provided in the response
  /// body when you call \[`CreateVersion`\](sites.versions/create).
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your
  /// \[version\](../sites.versions) that you want to update. A field will be
  /// overwritten if, and only if, it's in the mask. If a mask is not provided
  /// then a default mask of only
  /// \[`status`\](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Version.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Adds content files to the specified version.
  ///
  /// Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to which to add files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':populateFiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PopulateVersionFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SitesVersionsFilesResource {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResource(commons.ApiRequester client) : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version for which to list files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of version files to return. The service
  /// may return a lower number if fewer version files exist than this maximum
  /// number. If unspecified, defaults to 1000.
  ///
  /// [pageToken] - A token from a previous call to `ListVersionFiles` that
  /// tells the server where to resume listing.
  ///
  /// [status] - The type of files that should be listed for the specified
  /// version.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http_1.Client] completes with an error when making a REST
  /// call, this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? status,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': [status],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVersionFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Contains metadata about the user who performed an action, such as creating a
/// release or finalizing a version.
class ActingUser {
  /// The email address of the user when the user performed the action.
  core.String? email;

  /// A profile image URL for the user.
  ///
  /// May not be present if the user has changed their email address or deleted
  /// their account.
  core.String? imageUrl;

  ActingUser({this.email, this.imageUrl});

  ActingUser.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        imageUrl: json_['imageUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (imageUrl != null) 'imageUrl': imageUrl!,
  };
}

/// Represents a DNS certificate challenge.
class CertDnsChallenge {
  /// The domain name upon which the DNS challenge must be satisfied.
  core.String? domainName;

  /// The value that must be present as a TXT record on the domain name to
  /// satisfy the challenge.
  core.String? token;

  CertDnsChallenge({this.domainName, this.token});

  CertDnsChallenge.fromJson(core.Map json_)
    : this(
        domainName: json_['domainName'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domainName != null) 'domainName': domainName!,
    if (token != null) 'token': token!,
  };
}

/// Represents an HTTP certificate challenge.
class CertHttpChallenge {
  /// The URL path on which to serve the specified token to satisfy the
  /// certificate challenge.
  core.String? path;

  /// The token to serve at the specified URL path to satisfy the certificate
  /// challenge.
  core.String? token;

  CertHttpChallenge({this.path, this.token});

  CertHttpChallenge.fromJson(core.Map json_)
    : this(
        path: json_['path'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (path != null) 'path': path!,
    if (token != null) 'token': token!,
  };
}

/// A set of ACME challenges you can use to allow Hosting to create an SSL
/// certificate for your domain name before directing traffic to Hosting
/// servers.
///
/// Use either the DNS or HTTP challenge; it's not necessary to provide both.
class CertVerification {
  /// A `TXT` record to add to your DNS records that confirms your intent to let
  /// Hosting create an SSL cert for your domain name.
  ///
  /// Output only.
  DnsUpdates? dns;

  /// A file to add to your existing, non-Hosting hosting service that confirms
  /// your intent to let Hosting create an SSL cert for your domain name.
  ///
  /// Output only.
  HttpUpdate? http;

  CertVerification({this.dns, this.http});

  CertVerification.fromJson(core.Map json_)
    : this(
        dns:
            json_.containsKey('dns')
                ? DnsUpdates.fromJson(
                  json_['dns'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        http:
            json_.containsKey('http')
                ? HttpUpdate.fromJson(
                  json_['http'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dns != null) 'dns': dns!,
    if (http != null) 'http': http!,
  };
}

/// An SSL certificate used to provide end-to-end encryption for requests
/// against your domain name.
///
/// A `Certificate` can be an actual SSL certificate or, for newly-created
/// custom domains, Hosting's intent to create one.
class Certificate {
  /// The certificate's creation time.
  ///
  /// For `TEMPORARY` certs this is the time Hosting first generated challenges
  /// for your domain name. For all other cert types, it's the time the actual
  /// cert was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The certificate's expiration time.
  ///
  /// After this time, the cert can no longer be used to provide secure
  /// communication between Hosting and your site's visitors.
  ///
  /// Output only.
  core.String? expireTime;

  /// A set of errors Hosting encountered when attempting to create a cert for
  /// your domain name.
  ///
  /// Resolve these issues to ensure Hosting is able to provide secure
  /// communication with your site's visitors.
  ///
  /// Output only.
  core.List<Status>? issues;

  /// The state of the certificate.
  ///
  /// Only the `CERT_ACTIVE` and `CERT_EXPIRING_SOON` states provide SSL
  /// coverage for a domain name. If the state is `PROPAGATING` and Hosting had
  /// an active cert for the domain name before, that formerly-active cert
  /// provides SSL coverage for the domain name until the current cert
  /// propagates.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CERT_STATE_UNSPECIFIED" : The certificate's state is unspecified. The
  /// message is invalid if this is unspecified.
  /// - "CERT_PREPARING" : The initial state of every certificate, represents
  /// Hosting's intent to create a certificate, before requests to a Certificate
  /// Authority are made.
  /// - "CERT_VALIDATING" : Hosting is validating whether a domain name's DNS
  /// records are in a state that allow certificate creation on its behalf.
  /// - "CERT_PROPAGATING" : The certificate was recently created, and needs
  /// time to propagate in Hosting's CDN.
  /// - "CERT_ACTIVE" : The certificate is active, providing secure connections
  /// for the domain names it represents.
  /// - "CERT_EXPIRING_SOON" : The certificate is expiring, all domain names on
  /// it will be given new certificates.
  /// - "CERT_EXPIRED" : The certificate has expired. Hosting can no longer
  /// serve secure content on your domain name.
  core.String? state;

  /// The certificate's type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The certificate's type is unspecified. The message
  /// is invalid if this is unspecified.
  /// - "TEMPORARY" : A short-lived certificate type that covers a domain name
  /// temporarily, while Hosting creates a more permanent certificate.
  /// - "GROUPED" : The standard certificate for Spark plan custom domains.
  /// - "PROJECT_GROUPED" : Blaze plan only. A certificate that covers from 1 to
  /// 100 domain names with custom domains on the same Firebase project.
  /// - "DEDICATED" : Blaze plan only. A certificate that covers a single domain
  /// name.
  core.String? type;

  /// A set of ACME challenges you can add to your DNS records or existing,
  /// non-Hosting hosting provider to allow Hosting to create an SSL certificate
  /// for your domain name before you point traffic toward hosting.
  ///
  /// You can use thse challenges as part of a zero downtime transition from
  /// your old provider to Hosting.
  ///
  /// Output only.
  CertVerification? verification;

  Certificate({
    this.createTime,
    this.expireTime,
    this.issues,
    this.state,
    this.type,
    this.verification,
  });

  Certificate.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        verification:
            json_.containsKey('verification')
                ? CertVerification.fromJson(
                  json_['verification'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (issues != null) 'issues': issues!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (verification != null) 'verification': verification!,
  };
}

/// A `Channel` represents a stream of releases for a site.
///
/// All sites have a default `live` channel that serves content to the
/// Firebase-provided subdomains and any connected custom domains.
class Channel {
  /// The time at which the channel was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which the channel will be automatically deleted.
  ///
  /// If null, the channel will not be automatically deleted. This field is
  /// present in the output whether it's set directly or via the `ttl` field.
  core.String? expireTime;

  /// Text labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name for the channel, in the format: sites/
  /// SITE_ID/channels/CHANNEL_ID
  core.String? name;

  /// The current release for the channel, if any.
  ///
  /// Output only.
  Release? release;

  /// The number of previous releases to retain on the channel for rollback or
  /// other purposes.
  ///
  /// Must be a number between 1-100. Defaults to 10 for new channels.
  core.int? retainedReleaseCount;

  /// Input only.
  ///
  /// A time-to-live for this channel. Sets `expire_time` to the provided
  /// duration past the time of the request.
  core.String? ttl;

  /// The time at which the channel was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The URL at which the content of this channel's current release can be
  /// viewed.
  ///
  /// This URL is a Firebase-provided subdomain of `web.app`. The content of
  /// this channel's current release can also be viewed at the Firebase-provided
  /// subdomain of `firebaseapp.com`. If this channel is the `live` channel for
  /// the Hosting site, then the content of this channel's current release can
  /// also be viewed at any connected custom domains.
  ///
  /// Output only.
  core.String? url;

  Channel({
    this.createTime,
    this.expireTime,
    this.labels,
    this.name,
    this.release,
    this.retainedReleaseCount,
    this.ttl,
    this.updateTime,
    this.url,
  });

  Channel.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        release:
            json_.containsKey('release')
                ? Release.fromJson(
                  json_['release'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retainedReleaseCount: json_['retainedReleaseCount'] as core.int?,
        ttl: json_['ttl'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (release != null) 'release': release!,
    if (retainedReleaseCount != null)
      'retainedReleaseCount': retainedReleaseCount!,
    if (ttl != null) 'ttl': ttl!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (url != null) 'url': url!,
  };
}

class CloneVersionRequest {
  /// If provided, only paths that do not match any of the RegEx values in this
  /// list will be included in the new version.
  PathFilter? exclude;

  /// If true, the call to `CloneVersion` immediately finalizes the version
  /// after cloning is complete.
  ///
  /// If false, the cloned version will have a status of `CREATED`. Use
  /// \[`UpdateVersion`\](patch) to set the status of the version to
  /// `FINALIZED`.
  core.bool? finalize;

  /// If provided, only paths that match one or more RegEx values in this list
  /// will be included in the new version.
  PathFilter? include;

  /// The unique identifier for the version to be cloned, in the format:
  /// sites/SITE_ID/versions/VERSION_ID
  ///
  /// Required.
  core.String? sourceVersion;

  CloneVersionRequest({
    this.exclude,
    this.finalize,
    this.include,
    this.sourceVersion,
  });

  CloneVersionRequest.fromJson(core.Map json_)
    : this(
        exclude:
            json_.containsKey('exclude')
                ? PathFilter.fromJson(
                  json_['exclude'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        finalize: json_['finalize'] as core.bool?,
        include:
            json_.containsKey('include')
                ? PathFilter.fromJson(
                  json_['include'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceVersion: json_['sourceVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exclude != null) 'exclude': exclude!,
    if (finalize != null) 'finalize': finalize!,
    if (include != null) 'include': include!,
    if (sourceVersion != null) 'sourceVersion': sourceVersion!,
  };
}

/// A configured rewrite that directs requests to a Cloud Run service.
///
/// If the Cloud Run service does not exist when setting or updating your
/// Firebase Hosting configuration, then the request fails. Any errors from the
/// Cloud Run service are passed to the end user (for example, if you delete a
/// service, any requests directed to that service receive a `404` error).
class CloudRunRewrite {
  /// User-provided region where the Cloud Run service is hosted.
  ///
  /// Defaults to `us-central1` if not supplied.
  ///
  /// Optional.
  core.String? region;

  /// User-defined ID of the Cloud Run service.
  ///
  /// Required.
  core.String? serviceId;

  /// User-provided TrafficConfig tag to send traffic to.
  ///
  /// When omitted, traffic is sent to the service-wide URI
  ///
  /// Optional.
  core.String? tag;

  CloudRunRewrite({this.region, this.serviceId, this.tag});

  CloudRunRewrite.fromJson(core.Map json_)
    : this(
        region: json_['region'] as core.String?,
        serviceId: json_['serviceId'] as core.String?,
        tag: json_['tag'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (region != null) 'region': region!,
    if (serviceId != null) 'serviceId': serviceId!,
    if (tag != null) 'tag': tag!,
  };
}

/// A `CustomDomain` is an entity that links a domain name to a Firebase Hosting
/// site.
///
/// Add a `CustomDomain` to your site to allow Hosting to serve the site's
/// content in response to requests against your domain name.
class CustomDomain {
  /// Annotations you can add to leave both human- and machine-readable metadata
  /// about your `CustomDomain`.
  core.Map<core.String, core.String>? annotations;

  /// The SSL certificate Hosting has for this custom domain's domain name.
  ///
  /// For new custom domains, this often represents Hosting's intent to create a
  /// certificate, rather than an actual cert. Check the `state` field for more.
  ///
  /// Output only.
  Certificate? cert;

  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name.
  ///
  /// Spark plan custom domains only have access to the `GROUPED` cert type,
  /// while Blaze plan domains can select any option.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The certificate's type is unspecified. The message
  /// is invalid if this is unspecified.
  /// - "TEMPORARY" : A short-lived certificate type that covers a domain name
  /// temporarily, while Hosting creates a more permanent certificate.
  /// - "GROUPED" : The standard certificate for Spark plan custom domains.
  /// - "PROJECT_GROUPED" : Blaze plan only. A certificate that covers from 1 to
  /// 100 domain names with custom domains on the same Firebase project.
  /// - "DEDICATED" : Blaze plan only. A certificate that covers a single domain
  /// name.
  core.String? certPreference;

  /// The custom domain's create time.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the `CustomDomain` was deleted; null for custom domains that
  /// haven't been deleted.
  ///
  /// Deleted custom domains persist for approximately 30 days, after which time
  /// Hosting removes them completely. To restore a deleted custom domain, make
  /// an `UndeleteCustomDomain` request.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A string that represents the current state of the `CustomDomain` and
  /// allows you to confirm its initial state in requests that would modify it.
  ///
  /// Use the tag to ensure consistency when making `UpdateCustomDomain`,
  /// `DeleteCustomDomain`, and `UndeleteCustomDomain` requests.
  ///
  /// Output only.
  core.String? etag;

  /// The minimum time before a soft-deleted `CustomDomain` is completely
  /// removed from Hosting; null for custom domains that haven't been deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// The `HostState` of the domain name this `CustomDomain` refers to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HOST_STATE_UNSPECIFIED" : Your custom domain's host state is
  /// unspecified. The message is invalid if this is unspecified.
  /// - "HOST_UNHOSTED" : Your custom domain's domain name isn't associated with
  /// any IP addresses.
  /// - "HOST_UNREACHABLE" : Your custom domain's domain name can't be reached.
  /// Hosting services' DNS queries to find your domain name's IP addresses
  /// resulted in errors. See your `CustomDomain` object's `issues` field for
  /// more details.
  /// - "HOST_MISMATCH" : Your custom domain's domain name has IP addresses that
  /// don't ultimately resolve to Hosting.
  /// - "HOST_CONFLICT" : Your custom domain's domain name has IP addresses that
  /// resolve to both Hosting and other services. To ensure consistent results,
  /// remove `A` and `AAAA` records related to non-Hosting services.
  /// - "HOST_ACTIVE" : All requests against your custom domain's domain name
  /// are served by Hosting. If the custom domain's `OwnershipState` is also
  /// `ACTIVE`, Hosting serves your Hosting site's content on the domain name.
  core.String? hostState;

  /// A set of errors Hosting systems encountered when trying to establish
  /// Hosting's ability to serve secure content for your domain name.
  ///
  /// Resolve these issues to ensure your `CustomDomain` behaves properly.
  ///
  /// Output only.
  core.List<Status>? issues;

  /// Labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified name of the `CustomDomain`.
  ///
  /// Output only.
  core.String? name;

  /// The `OwnershipState` of the domain name this `CustomDomain` refers to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OWNERSHIP_STATE_UNSPECIFIED" : Your custom domain's ownership state is
  /// unspecified. This should never happen.
  /// - "OWNERSHIP_MISSING" : Your custom domain's domain name has no
  /// Hosting-related ownership records; no Firebase project has permission to
  /// act on the domain name's behalf.
  /// - "OWNERSHIP_UNREACHABLE" : Your custom domain's domain name can't be
  /// reached. Hosting services' DNS queries to find your domain name's
  /// ownership records resulted in errors. See your `CustomDomain` object's
  /// `issues` field for more details.
  /// - "OWNERSHIP_MISMATCH" : Your custom domain's domain name is owned by
  /// another Firebase project. Remove the conflicting `TXT` records and replace
  /// them with project-specific records for your current Firebase project.
  /// - "OWNERSHIP_CONFLICT" : Your custom domain's domain name has conflicting
  /// `TXT` records that indicate ownership by both your current Firebase
  /// project and another project. Remove the other project's ownership records
  /// to grant the current project ownership.
  /// - "OWNERSHIP_PENDING" : Your custom domain's DNS records are configured
  /// correctly. Hosting will transfer ownership of your domain to this
  /// `CustomDomain` within 24 hours.
  /// - "OWNERSHIP_ACTIVE" : Your custom domain's domain name has `TXT` records
  /// that grant its project permission to act on its behalf.
  core.String? ownershipState;

  /// A field that, if true, indicates that Hosting's systems are attmepting to
  /// make the custom domain's state match your preferred state.
  ///
  /// This is most frequently `true` when initially provisioning a
  /// `CustomDomain` after a `CreateCustomDomain` request or when creating a new
  /// SSL certificate to match an updated `cert_preference` after an
  /// `UpdateCustomDomain` request.
  ///
  /// Output only.
  core.bool? reconciling;

  /// A domain name that this `CustomDomain` should direct traffic towards.
  ///
  /// If specified, Hosting will respond to requests against this custom domain
  /// with an HTTP 301 code, and route traffic to the specified
  /// `redirect_target` instead.
  core.String? redirectTarget;

  /// A set of updates you should make to the domain name's DNS records to let
  /// Hosting serve secure content on its behalf.
  ///
  /// Output only.
  DnsUpdates? requiredDnsUpdates;

  /// The last time the `CustomDomain` was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CustomDomain({
    this.annotations,
    this.cert,
    this.certPreference,
    this.createTime,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.hostState,
    this.issues,
    this.labels,
    this.name,
    this.ownershipState,
    this.reconciling,
    this.redirectTarget,
    this.requiredDnsUpdates,
    this.updateTime,
  });

  CustomDomain.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        cert:
            json_.containsKey('cert')
                ? Certificate.fromJson(
                  json_['cert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        certPreference: json_['certPreference'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        hostState: json_['hostState'] as core.String?,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => Status.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        ownershipState: json_['ownershipState'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        redirectTarget: json_['redirectTarget'] as core.String?,
        requiredDnsUpdates:
            json_.containsKey('requiredDnsUpdates')
                ? DnsUpdates.fromJson(
                  json_['requiredDnsUpdates']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (cert != null) 'cert': cert!,
    if (certPreference != null) 'certPreference': certPreference!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (etag != null) 'etag': etag!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (hostState != null) 'hostState': hostState!,
    if (issues != null) 'issues': issues!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (ownershipState != null) 'ownershipState': ownershipState!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (redirectTarget != null) 'redirectTarget': redirectTarget!,
    if (requiredDnsUpdates != null) 'requiredDnsUpdates': requiredDnsUpdates!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// DNS records are resource records that define how systems and services should
/// behave when handling requests for a domain name.
///
/// For example, when you add `A` records to your domain name's DNS records,
/// you're informing other systems (such as your users' web browsers) to contact
/// those IPv4 addresses to retrieve resources relevant to your domain name
/// (such as your Hosting site files).
class DnsRecord {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  ///
  /// Output only.
  core.String? domainName;

  /// The data of the record.
  ///
  /// The meaning of the value depends on record type: - A and AAAA: IP
  /// addresses for the domain name. - CNAME: Another domain to check for
  /// records. - TXT: Arbitrary text strings associated with the domain name.
  /// Hosting uses TXT records to determine which Firebase projects have
  /// permission to act on the domain name's behalf. - CAA: The record's flags,
  /// tag, and value, e.g. `0 issue "pki.goog"`.
  ///
  /// Output only.
  core.String? rdata;

  /// An enum that indicates the a required action for this record.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NONE" : No action necessary.
  /// - "ADD" : Add this record to your DNS records.
  /// - "REMOVE" : Remove this record from your DNS records.
  core.String? requiredAction;

  /// The record's type, which determines what data the record contains.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The record's type is unspecified. The message is
  /// invalid if this is unspecified.
  /// - "A" : An `A` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). A records determine which
  /// IPv4 addresses a domain name directs traffic towards.
  /// - "CNAME" : A `CNAME` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). `CNAME` or Canonical Name
  /// records map a domain name to a different, canonical domain name. If a
  /// `CNAME` record is present, it should be the only record on the domain
  /// name.
  /// - "TXT" : A `TXT` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). `TXT` records hold
  /// arbitrary text data on a domain name. Hosting uses `TXT` records to
  /// establish which Firebase Project has permission to act on a domain name.
  /// - "AAAA" : An AAAA record, as defined in
  /// [RFC 3596](https://tools.ietf.org/html/rfc3596) AAAA records determine
  /// which IPv6 addresses a domain name directs traffic towards.
  /// - "CAA" : A CAA record, as defined in
  /// [RFC 6844](https://tools.ietf.org/html/rfc6844). CAA, or Certificate
  /// Authority Authorization, records determine which Certificate Authorities
  /// (SSL certificate minting organizations) are authorized to mint a
  /// certificate for the domain name. Firebase Hosting uses `pki.goog` as its
  /// primary CA. CAA records cascade. A CAA record on `foo.com` also applies to
  /// `bar.foo.com` unless `bar.foo.com` has its own set of CAA records. CAA
  /// records are optional. If a domain name and its parents have no CAA
  /// records, all CAs are authorized to mint certificates on its behalf. In
  /// general, Hosting only asks you to modify CAA records when doing so is
  /// required to unblock SSL cert creation.
  core.String? type;

  DnsRecord({this.domainName, this.rdata, this.requiredAction, this.type});

  DnsRecord.fromJson(core.Map json_)
    : this(
        domainName: json_['domainName'] as core.String?,
        rdata: json_['rdata'] as core.String?,
        requiredAction: json_['requiredAction'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domainName != null) 'domainName': domainName!,
    if (rdata != null) 'rdata': rdata!,
    if (requiredAction != null) 'requiredAction': requiredAction!,
    if (type != null) 'type': type!,
  };
}

/// A set of DNS records relevant to the setup and maintenance of a custom
/// domain in Firebase Hosting.
class DnsRecordSet {
  /// An error Hosting services encountered when querying your domain name's DNS
  /// records.
  ///
  /// Note: Hosting ignores `NXDOMAIN` errors, as those generally just mean that
  /// a domain name hasn't been set up yet.
  ///
  /// Output only.
  Status? checkError;

  /// The domain name the record set pertains to.
  ///
  /// Output only.
  core.String? domainName;

  /// Records on the domain.
  ///
  /// Output only.
  core.List<DnsRecord>? records;

  DnsRecordSet({this.checkError, this.domainName, this.records});

  DnsRecordSet.fromJson(core.Map json_)
    : this(
        checkError:
            json_.containsKey('checkError')
                ? Status.fromJson(
                  json_['checkError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        domainName: json_['domainName'] as core.String?,
        records:
            (json_['records'] as core.List?)
                ?.map(
                  (value) => DnsRecord.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkError != null) 'checkError': checkError!,
    if (domainName != null) 'domainName': domainName!,
    if (records != null) 'records': records!,
  };
}

/// A set of DNS record updates that you should make to allow Hosting to serve
/// secure content in response to requests against your domain name.
///
/// These updates present the current state of your domain name's DNS records
/// when Hosting last queried them, and the desired set of records that Hosting
/// needs to see before your custom domain can be fully active.
class DnsUpdates {
  /// The last time Hosting checked your custom domain's DNS records.
  core.String? checkTime;

  /// The set of DNS records Hosting needs to serve secure content on the
  /// domain.
  core.List<DnsRecordSet>? desired;

  /// The set of DNS records Hosting discovered when inspecting a domain.
  core.List<DnsRecordSet>? discovered;

  DnsUpdates({this.checkTime, this.desired, this.discovered});

  DnsUpdates.fromJson(core.Map json_)
    : this(
        checkTime: json_['checkTime'] as core.String?,
        desired:
            (json_['desired'] as core.List?)
                ?.map(
                  (value) => DnsRecordSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        discovered:
            (json_['discovered'] as core.List?)
                ?.map(
                  (value) => DnsRecordSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkTime != null) 'checkTime': checkTime!,
    if (desired != null) 'desired': desired!,
    if (discovered != null) 'discovered': discovered!,
  };
}

/// The intended behavior and status information of a domain.
class Domain {
  /// The domain name of the association.
  ///
  /// Required.
  core.String? domainName;

  /// If set, the domain should redirect with the provided parameters.
  DomainRedirect? domainRedirect;

  /// Information about the provisioning of certificates and the health of the
  /// DNS resolution for the domain.
  ///
  /// Output only.
  DomainProvisioning? provisioning;

  /// The site name of the association.
  ///
  /// Required.
  core.String? site;

  /// Additional status of the domain association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DOMAIN_STATUS_UNSPECIFIED" : Unspecified domain association status.
  /// - "DOMAIN_CHANGE_PENDING" : An external operation is in progress on the
  /// domain association and no further operations can be performed until it is
  /// complete. Formerly used for metabase updates. Not currently used
  /// - "DOMAIN_ACTIVE" : The domain association is active and no additional
  /// action is required.
  /// - "DOMAIN_VERIFICATION_REQUIRED" : The domain was previously verified in
  /// the legacy system. User must reverify the domain through the ownership
  /// service.
  /// - "DOMAIN_VERIFICATION_LOST" : The domain verification has been lost and
  /// the domain is in the grace period before being removed from the Firebase
  /// Hosting site.
  core.String? status;

  /// The time at which the domain was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Domain({
    this.domainName,
    this.domainRedirect,
    this.provisioning,
    this.site,
    this.status,
    this.updateTime,
  });

  Domain.fromJson(core.Map json_)
    : this(
        domainName: json_['domainName'] as core.String?,
        domainRedirect:
            json_.containsKey('domainRedirect')
                ? DomainRedirect.fromJson(
                  json_['domainRedirect']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        provisioning:
            json_.containsKey('provisioning')
                ? DomainProvisioning.fromJson(
                  json_['provisioning'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        site: json_['site'] as core.String?,
        status: json_['status'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domainName != null) 'domainName': domainName!,
    if (domainRedirect != null) 'domainRedirect': domainRedirect!,
    if (provisioning != null) 'provisioning': provisioning!,
    if (site != null) 'site': site!,
    if (status != null) 'status': status!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The current certificate provisioning status information for a domain.
class DomainProvisioning {
  /// The TXT records (for the certificate challenge) that were found at the
  /// last DNS fetch.
  core.List<core.String>? certChallengeDiscoveredTxt;

  /// The DNS challenge for generating a certificate.
  CertDnsChallenge? certChallengeDns;

  /// The HTTP challenge for generating a certificate.
  CertHttpChallenge? certChallengeHttp;

  /// The certificate provisioning status; updated when Firebase Hosting
  /// provisions an SSL certificate for the domain.
  /// Possible string values are:
  /// - "CERT_STATUS_UNSPECIFIED" : Unspecified certificate provisioning status.
  /// - "CERT_PENDING" : Waiting for certificate challenge to be created.
  /// - "CERT_MISSING" : Waiting for certificate challenge to be met.
  /// - "CERT_PROCESSING" : Certificate challenge met; attempting to
  /// acquire/propagate certificate.
  /// - "CERT_PROPAGATING" : Certificate obtained; propagating to the CDN.
  /// - "CERT_ACTIVE" : Certificate provisioned and deployed across the CDN.
  /// - "CERT_ERROR" : Certificate provisioning failed in a non-recoverable
  /// manner.
  core.String? certStatus;

  /// The IPs found at the last DNS fetch.
  core.List<core.String>? discoveredIps;

  /// The time at which the last DNS fetch occurred.
  core.String? dnsFetchTime;

  /// The DNS record match status as of the last DNS fetch.
  /// Possible string values are:
  /// - "DNS_STATUS_UNSPECIFIED" : Unspecified DNS status.
  /// - "DNS_PENDING" : No DNS records have been specified for this domain yet.
  /// - "DNS_MISSING" : None of the required DNS records have been detected on
  /// the domain.
  /// - "DNS_PARTIAL_MATCH" : Some of the required DNS records were detected,
  /// but not all of them. No extra (non-required) DNS records were detected.
  /// - "DNS_MATCH" : All required DNS records were detected. No extra
  /// (non-required) DNS records were detected.
  /// - "DNS_EXTRANEOUS_MATCH" : The domain has at least one of the required DNS
  /// records, and it has at least one extra (non-required) DNS record.
  core.String? dnsStatus;

  /// The list of IPs to which the domain is expected to resolve.
  core.List<core.String>? expectedIps;

  DomainProvisioning({
    this.certChallengeDiscoveredTxt,
    this.certChallengeDns,
    this.certChallengeHttp,
    this.certStatus,
    this.discoveredIps,
    this.dnsFetchTime,
    this.dnsStatus,
    this.expectedIps,
  });

  DomainProvisioning.fromJson(core.Map json_)
    : this(
        certChallengeDiscoveredTxt:
            (json_['certChallengeDiscoveredTxt'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        certChallengeDns:
            json_.containsKey('certChallengeDns')
                ? CertDnsChallenge.fromJson(
                  json_['certChallengeDns']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        certChallengeHttp:
            json_.containsKey('certChallengeHttp')
                ? CertHttpChallenge.fromJson(
                  json_['certChallengeHttp']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        certStatus: json_['certStatus'] as core.String?,
        discoveredIps:
            (json_['discoveredIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        dnsFetchTime: json_['dnsFetchTime'] as core.String?,
        dnsStatus: json_['dnsStatus'] as core.String?,
        expectedIps:
            (json_['expectedIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certChallengeDiscoveredTxt != null)
      'certChallengeDiscoveredTxt': certChallengeDiscoveredTxt!,
    if (certChallengeDns != null) 'certChallengeDns': certChallengeDns!,
    if (certChallengeHttp != null) 'certChallengeHttp': certChallengeHttp!,
    if (certStatus != null) 'certStatus': certStatus!,
    if (discoveredIps != null) 'discoveredIps': discoveredIps!,
    if (dnsFetchTime != null) 'dnsFetchTime': dnsFetchTime!,
    if (dnsStatus != null) 'dnsStatus': dnsStatus!,
    if (expectedIps != null) 'expectedIps': expectedIps!,
  };
}

/// Defines the behavior of a domain-level redirect.
///
/// Domain redirects preserve the path of the redirect but replace the requested
/// domain with the one specified in the redirect configuration.
class DomainRedirect {
  /// The domain name to redirect to.
  ///
  /// Required.
  core.String? domainName;

  /// The redirect status code.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REDIRECT_TYPE_UNSPECIFIED" : The default redirect type; should not be
  /// intentionlly used.
  /// - "MOVED_PERMANENTLY" : The redirect will respond with an HTTP status code
  /// of `301 Moved Permanently`.
  core.String? type;

  DomainRedirect({this.domainName, this.type});

  DomainRedirect.fromJson(core.Map json_)
    : this(
        domainName: json_['domainName'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domainName != null) 'domainName': domainName!,
    if (type != null) 'type': type!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A \[`Header`\](https://firebase.google.com/docs/hosting/full-config#headers)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to apply the specified custom response headers.
class Header {
  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The additional headers to add to the response.
  ///
  /// Required.
  core.Map<core.String, core.String>? headers;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  Header({this.glob, this.headers, this.regex});

  Header.fromJson(core.Map json_)
    : this(
        glob: json_['glob'] as core.String?,
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        regex: json_['regex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (glob != null) 'glob': glob!,
    if (headers != null) 'headers': headers!,
    if (regex != null) 'regex': regex!,
  };
}

/// A file you can add to your existing, non-Hosting hosting service that
/// confirms your intent to allow Hosting's Certificate Authorities to create an
/// SSL certificate for your domain.
class HttpUpdate {
  /// An error encountered during the last contents check.
  ///
  /// If null, the check completed successfully.
  ///
  /// Output only.
  Status? checkError;

  /// A text string to serve at the path.
  ///
  /// Output only.
  core.String? desired;

  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  ///
  /// Output only.
  core.String? discovered;

  /// The last time Hosting systems checked for the file contents.
  ///
  /// Output only.
  core.String? lastCheckTime;

  /// The path to the file.
  ///
  /// Output only.
  core.String? path;

  HttpUpdate({
    this.checkError,
    this.desired,
    this.discovered,
    this.lastCheckTime,
    this.path,
  });

  HttpUpdate.fromJson(core.Map json_)
    : this(
        checkError:
            json_.containsKey('checkError')
                ? Status.fromJson(
                  json_['checkError'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        desired: json_['desired'] as core.String?,
        discovered: json_['discovered'] as core.String?,
        lastCheckTime: json_['lastCheckTime'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkError != null) 'checkError': checkError!,
    if (desired != null) 'desired': desired!,
    if (discovered != null) 'discovered': discovered!,
    if (lastCheckTime != null) 'lastCheckTime': lastCheckTime!,
    if (path != null) 'path': path!,
  };
}

/// If provided, i18n rewrites are enabled.
class I18nConfig {
  /// The user-supplied path where country and language specific content will be
  /// looked for within the public directory.
  ///
  /// Required.
  core.String? root;

  I18nConfig({this.root});

  I18nConfig.fromJson(core.Map json_)
    : this(root: json_['root'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (root != null) 'root': root!,
  };
}

class ListChannelsResponse {
  /// The list of channels.
  core.List<Channel>? channels;

  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListChannels`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  ListChannelsResponse({this.channels, this.nextPageToken});

  ListChannelsResponse.fromJson(core.Map json_)
    : this(
        channels:
            (json_['channels'] as core.List?)
                ?.map(
                  (value) => Channel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channels != null) 'channels': channels!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response from `ListCustomDomains`.
class ListCustomDomainsResponse {
  /// A list of `CustomDomain` entities associated with the specified Firebase
  /// `Site`.
  core.List<CustomDomain>? customDomains;

  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListCustomDomains`. Page tokens
  /// are short-lived and should not be stored.
  core.String? nextPageToken;

  ListCustomDomainsResponse({this.customDomains, this.nextPageToken});

  ListCustomDomainsResponse.fromJson(core.Map json_)
    : this(
        customDomains:
            (json_['customDomains'] as core.List?)
                ?.map(
                  (value) => CustomDomain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customDomains != null) 'customDomains': customDomains!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response to listing Domains.
class ListDomainsResponse {
  /// The list of domains, if any exist.
  core.List<Domain>? domains;

  /// The pagination token, if more results exist.
  core.String? nextPageToken;

  ListDomainsResponse({this.domains, this.nextPageToken});

  ListDomainsResponse.fromJson(core.Map json_)
    : this(
        domains:
            (json_['domains'] as core.List?)
                ?.map(
                  (value) => Domain.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domains != null) 'domains': domains!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

class ListReleasesResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListReleases`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// The list of hashes of files that still need to be uploaded, if any exist.
  core.List<Release>? releases;

  ListReleasesResponse({this.nextPageToken, this.releases});

  ListReleasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        releases:
            (json_['releases'] as core.List?)
                ?.map(
                  (value) => Release.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (releases != null) 'releases': releases!,
  };
}

class ListSitesResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListSites`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// A list of Site objects associated with the specified Firebase project.
  core.List<Site>? sites;

  ListSitesResponse({this.nextPageToken, this.sites});

  ListSitesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sites:
            (json_['sites'] as core.List?)
                ?.map(
                  (value) => Site.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sites != null) 'sites': sites!,
  };
}

class ListVersionFilesResponse {
  ///  The list of paths to the hashes of the files in the specified version.
  core.List<VersionFile>? files;

  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListVersionFiles`. Page tokens
  /// are short-lived and should not be stored.
  core.String? nextPageToken;

  ListVersionFilesResponse({this.files, this.nextPageToken});

  ListVersionFilesResponse.fromJson(core.Map json_)
    : this(
        files:
            (json_['files'] as core.List?)
                ?.map(
                  (value) => VersionFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (files != null) 'files': files!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

class ListVersionsResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListVersions`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// The list of versions, if any exist.
  core.List<Version>? versions;

  ListVersionsResponse({this.nextPageToken, this.versions});

  ListVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        versions:
            (json_['versions'] as core.List?)
                ?.map(
                  (value) => Version.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (versions != null) 'versions': versions!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
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
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// A representation of filter path.
class PathFilter {
  /// An array of RegEx values by which to filter.
  core.List<core.String>? regexes;

  PathFilter({this.regexes});

  PathFilter.fromJson(core.Map json_)
    : this(
        regexes:
            (json_['regexes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regexes != null) 'regexes': regexes!,
  };
}

class PopulateVersionFilesRequest {
  /// A set of file paths to the hashes corresponding to assets that should be
  /// added to the version.
  ///
  /// A file path to an empty hash will remove the path from the version.
  /// Calculate a hash by Gzipping the file then taking the SHA256 hash of the
  /// newly compressed file.
  core.Map<core.String, core.String>? files;

  PopulateVersionFilesRequest({this.files});

  PopulateVersionFilesRequest.fromJson(core.Map json_)
    : this(
        files: (json_['files'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (files != null) 'files': files!,
  };
}

class PopulateVersionFilesResponse {
  /// The content hashes of the specified files that need to be uploaded to the
  /// specified URL.
  core.List<core.String>? uploadRequiredHashes;

  /// The URL to which the files should be uploaded, in the format:
  /// "https://upload-firebasehosting.googleapis.com/upload/sites/SITE_ID
  /// /versions/VERSION_ID/files" Perform a multipart `POST` of the Gzipped file
  /// contents to the URL using a forward slash and the hash of the file
  /// appended to the end.
  core.String? uploadUrl;

  PopulateVersionFilesResponse({this.uploadRequiredHashes, this.uploadUrl});

  PopulateVersionFilesResponse.fromJson(core.Map json_)
    : this(
        uploadRequiredHashes:
            (json_['uploadRequiredHashes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        uploadUrl: json_['uploadUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (uploadRequiredHashes != null)
      'uploadRequiredHashes': uploadRequiredHashes!,
    if (uploadUrl != null) 'uploadUrl': uploadUrl!,
  };
}

/// A
/// \[`Redirect`\](https://firebase.google.com/docs/hosting/full-config#redirects)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to respond with a redirect to the specified destination path.
class Redirect {
  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The value to put in the HTTP location header of the response.
  ///
  /// The location can contain capture group values from the pattern using a `:`
  /// prefix to identify the segment and an optional `*` to capture the rest of
  /// the URL. For example: "glob": "/:capture*", "statusCode": 301, "location":
  /// "https://example.com/foo/:capture"
  ///
  /// Required.
  core.String? location;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  /// The status HTTP code to return in the response.
  ///
  /// It must be a valid 3xx status code.
  ///
  /// Required.
  core.int? statusCode;

  Redirect({this.glob, this.location, this.regex, this.statusCode});

  Redirect.fromJson(core.Map json_)
    : this(
        glob: json_['glob'] as core.String?,
        location: json_['location'] as core.String?,
        regex: json_['regex'] as core.String?,
        statusCode: json_['statusCode'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (glob != null) 'glob': glob!,
    if (location != null) 'location': location!,
    if (regex != null) 'regex': regex!,
    if (statusCode != null) 'statusCode': statusCode!,
  };
}

/// A `Release` is a particular \[collection of configurations and
/// files\](sites.versions) that is set to be public at a particular time.
class Release {
  /// The deploy description when the release was created.
  ///
  /// The value can be up to 512 characters.
  core.String? message;

  /// The unique identifier for the release, in either of the following formats:
  /// - sites/SITE_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is
  /// provided in the response body when you call
  /// \[`releases.create`\](sites.releases/create) or
  /// \[`channels.releases.create`\](sites.channels.releases/create).
  ///
  /// Output only.
  core.String? name;

  /// The time at which the version is set to be public.
  ///
  /// Output only.
  core.String? releaseTime;

  /// Identifies the user who created the release.
  ///
  /// Output only.
  ActingUser? releaseUser;

  /// Explains the reason for the release.
  ///
  /// Specify a value for this field only when creating a `SITE_DISABLE` type
  /// release.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified type. Indicates that a version was
  /// released. This is the default value when no other `type` is explicitly
  /// specified.
  /// - "DEPLOY" : A version was uploaded to Firebase Hosting and released.
  /// - "ROLLBACK" : The release points back to a previously deployed version.
  /// - "SITE_DISABLE" : The release prevents the site from serving content.
  /// Firebase Hosting acts as if the site never existed.
  core.String? type;

  /// The configuration and content that was released.
  ///
  /// Output only.
  Version? version;

  Release({
    this.message,
    this.name,
    this.releaseTime,
    this.releaseUser,
    this.type,
    this.version,
  });

  Release.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        name: json_['name'] as core.String?,
        releaseTime: json_['releaseTime'] as core.String?,
        releaseUser:
            json_.containsKey('releaseUser')
                ? ActingUser.fromJson(
                  json_['releaseUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        version:
            json_.containsKey('version')
                ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
    if (name != null) 'name': name!,
    if (releaseTime != null) 'releaseTime': releaseTime!,
    if (releaseUser != null) 'releaseUser': releaseUser!,
    if (type != null) 'type': type!,
    if (version != null) 'version': version!,
  };
}

/// A
/// \[`Rewrite`\](https://firebase.google.com/docs/hosting/full-config#rewrites)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to respond as if the service were given the specified destination
/// URL.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  core.bool? dynamicLinks;

  /// The function to proxy requests to.
  ///
  /// Must match the exported function name exactly.
  core.String? function;

  /// Specify a Cloud region for rewritten Functions invocations.
  ///
  /// If not provided, defaults to us-central1.
  ///
  /// Optional.
  core.String? functionRegion;

  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The URL path to rewrite the request to.
  core.String? path;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  /// The request will be forwarded to Cloud Run.
  CloudRunRewrite? run;

  Rewrite({
    this.dynamicLinks,
    this.function,
    this.functionRegion,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Rewrite.fromJson(core.Map json_)
    : this(
        dynamicLinks: json_['dynamicLinks'] as core.bool?,
        function: json_['function'] as core.String?,
        functionRegion: json_['functionRegion'] as core.String?,
        glob: json_['glob'] as core.String?,
        path: json_['path'] as core.String?,
        regex: json_['regex'] as core.String?,
        run:
            json_.containsKey('run')
                ? CloudRunRewrite.fromJson(
                  json_['run'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dynamicLinks != null) 'dynamicLinks': dynamicLinks!,
    if (function != null) 'function': function!,
    if (functionRegion != null) 'functionRegion': functionRegion!,
    if (glob != null) 'glob': glob!,
    if (path != null) 'path': path!,
    if (regex != null) 'regex': regex!,
    if (run != null) 'run': run!,
  };
}

/// The configuration for how incoming requests to a site should be routed and
/// processed before serving content.
///
/// The URL request paths are matched against the specified URL patterns in the
/// configuration, then Hosting applies the applicable configuration according
/// to a specific
/// [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).
class ServingConfig {
  /// How to handle well known App Association files.
  /// Possible string values are:
  /// - "AUTO" : The app association files will be automatically created from
  /// the apps that exist in the Firebase project.
  /// - "NONE" : No special handling of the app association files will occur,
  /// these paths will result in a 404 unless caught with a Rewrite.
  core.String? appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  core.bool? cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if
  /// matched to the request URL path, triggers Hosting to apply the specified
  /// custom response headers.
  core.List<Header>? headers;

  /// Defines i18n rewrite behavior.
  ///
  /// Optional.
  I18nConfig? i18n;

  /// An array of objects (called redirect rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond with a redirect to the specified destination path.
  core.List<Redirect>? redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond as if the service were given the specified destination URL.
  core.List<Rewrite>? rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  /// Possible string values are:
  /// - "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED" : No behavior is specified. Files
  /// are served at their exact location only, and trailing slashes are only
  /// added to directory indexes.
  /// - "ADD" : Trailing slashes are _added_ to directory indexes as well as to
  /// any URL path not ending in a file extension.
  /// - "REMOVE" : Trailing slashes are _removed_ from directory indexes as well
  /// as from any URL path not ending in a file extension.
  core.String? trailingSlashBehavior;

  ServingConfig({
    this.appAssociation,
    this.cleanUrls,
    this.headers,
    this.i18n,
    this.redirects,
    this.rewrites,
    this.trailingSlashBehavior,
  });

  ServingConfig.fromJson(core.Map json_)
    : this(
        appAssociation: json_['appAssociation'] as core.String?,
        cleanUrls: json_['cleanUrls'] as core.bool?,
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => Header.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        i18n:
            json_.containsKey('i18n')
                ? I18nConfig.fromJson(
                  json_['i18n'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirects:
            (json_['redirects'] as core.List?)
                ?.map(
                  (value) => Redirect.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        rewrites:
            (json_['rewrites'] as core.List?)
                ?.map(
                  (value) => Rewrite.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        trailingSlashBehavior: json_['trailingSlashBehavior'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appAssociation != null) 'appAssociation': appAssociation!,
    if (cleanUrls != null) 'cleanUrls': cleanUrls!,
    if (headers != null) 'headers': headers!,
    if (i18n != null) 'i18n': i18n!,
    if (redirects != null) 'redirects': redirects!,
    if (rewrites != null) 'rewrites': rewrites!,
    if (trailingSlashBehavior != null)
      'trailingSlashBehavior': trailingSlashBehavior!,
  };
}

/// A `Site` represents a Firebase Hosting site.
class Site {
  /// The
  /// [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  ///
  /// Optional.
  core.String? appId;

  /// The default URL for the Hosting site.
  ///
  /// Output only.
  core.String? defaultUrl;

  /// User-specified labels for the Hosting site.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name of the Hosting site, in the format:
  /// projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the Firebase
  /// project's
  /// \[`ProjectNumber`\](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  ///
  /// Output only.
  core.String? name;

  /// The type of Hosting site.
  ///
  /// Every Firebase project has a `DEFAULT_SITE`, which is created when Hosting
  /// is provisioned for the project. All additional sites are `USER_SITE`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown state, likely the result of an error on the
  /// backend.
  /// - "DEFAULT_SITE" : The default Hosting site that is provisioned when a
  /// Firebase project is created.
  /// - "USER_SITE" : A Hosting site that the user created.
  core.String? type;

  Site({this.appId, this.defaultUrl, this.labels, this.name, this.type});

  Site.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        defaultUrl: json_['defaultUrl'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appId != null) 'appId': appId!,
    if (defaultUrl != null) 'defaultUrl': defaultUrl!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
  };
}

/// A `SiteConfig` contains metadata associated with a specific site that
/// controls Firebase Hosting serving behavior
class SiteConfig {
  /// Whether or not web requests made by site visitors are logged via Cloud
  /// Logging.
  core.bool? cloudLoggingEnabled;

  /// The number of FINALIZED versions that will be held for a site before
  /// automatic deletion.
  ///
  /// When a new version is deployed, content for versions in storage in excess
  /// of this number will be deleted, and will no longer be billed for storage
  /// usage. Oldest versions will be deleted first; sites are created with an
  /// unlimited number of max_versions by default.
  core.String? maxVersions;

  SiteConfig({this.cloudLoggingEnabled, this.maxVersions});

  SiteConfig.fromJson(core.Map json_)
    : this(
        cloudLoggingEnabled: json_['cloudLoggingEnabled'] as core.bool?,
        maxVersions: json_['maxVersions'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudLoggingEnabled != null)
      'cloudLoggingEnabled': cloudLoggingEnabled!,
    if (maxVersions != null) 'maxVersions': maxVersions!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The request sent to `UndeleteCustomDomain`.
class UndeleteCustomDomainRequest {
  /// A tag that represents the state of the `CustomDomain` as you know it.
  ///
  /// If present, the supplied tag must match the current value on your
  /// `CustomDomain`, or the request fails.
  core.String? etag;

  /// If true, Hosting validates that it's possible to complete your request but
  /// doesn't actually delete the `CustomDomain`.
  core.bool? validateOnly;

  UndeleteCustomDomainRequest({this.etag, this.validateOnly});

  UndeleteCustomDomainRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (etag != null) 'etag': etag!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// A `Version` is a configuration and a collection of static files which
/// determine how a site is displayed.
class Version {
  /// The configuration for the behavior of the site.
  ///
  /// This configuration exists in the
  /// \[`firebase.json`\](https://firebase.google.com/docs/cli/#the_firebasejson_file)
  /// file.
  ServingConfig? config;

  /// The time at which the version was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifies the user who created the version.
  ///
  /// Output only.
  ActingUser? createUser;

  /// The time at which the version was `DELETED`.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Identifies the user who `DELETED` the version.
  ///
  /// Output only.
  ActingUser? deleteUser;

  /// The total number of files associated with the version.
  ///
  /// This value is calculated after a version is `FINALIZED`.
  ///
  /// Output only.
  core.String? fileCount;

  /// The time at which the version was `FINALIZED`.
  ///
  /// Output only.
  core.String? finalizeTime;

  /// Identifies the user who `FINALIZED` the version.
  ///
  /// Output only.
  ActingUser? finalizeUser;

  /// The labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name for the version, in the format: sites/
  /// SITE_ID/versions/VERSION_ID This name is provided in the response body
  /// when you call \[`CreateVersion`\](sites.versions/create).
  core.String? name;

  /// The deploy status of the version.
  ///
  /// For a successful deploy, call \[`CreateVersion`\](sites.versions/create)
  /// to make a new version (`CREATED` status), \[upload all desired
  /// files\](sites.versions/populateFiles) to the version, then
  /// \[update\](sites.versions/patch) the version to the `FINALIZED` status.
  /// Note that if you leave the version in the `CREATED` state for more than 12
  /// hours, the system will automatically mark the version as `ABANDONED`. You
  /// can also change the status of a version to `DELETED` by calling
  /// \[`DeleteVersion`\](sites.versions/delete).
  /// Possible string values are:
  /// - "VERSION_STATUS_UNSPECIFIED" : The default status; should not be
  /// intentionally used.
  /// - "CREATED" : The version has been created, and content is currently being
  /// added to the version.
  /// - "FINALIZED" : All content has been added to the version, and the version
  /// can no longer be changed.
  /// - "DELETED" : The version has been deleted.
  /// - "ABANDONED" : The version was not updated to `FINALIZED` within 12 hours
  /// and was automatically deleted.
  /// - "EXPIRED" : The version is outside the site-configured limit for the
  /// number of retained versions, so the version's content is scheduled for
  /// deletion.
  /// - "CLONING" : The version is being cloned from another version. All
  /// content is still being copied over.
  core.String? status;

  /// The total stored bytesize of the version.
  ///
  /// This value is calculated after a version is `FINALIZED`.
  ///
  /// Output only.
  core.String? versionBytes;

  Version({
    this.config,
    this.createTime,
    this.createUser,
    this.deleteTime,
    this.deleteUser,
    this.fileCount,
    this.finalizeTime,
    this.finalizeUser,
    this.labels,
    this.name,
    this.status,
    this.versionBytes,
  });

  Version.fromJson(core.Map json_)
    : this(
        config:
            json_.containsKey('config')
                ? ServingConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        createUser:
            json_.containsKey('createUser')
                ? ActingUser.fromJson(
                  json_['createUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteTime: json_['deleteTime'] as core.String?,
        deleteUser:
            json_.containsKey('deleteUser')
                ? ActingUser.fromJson(
                  json_['deleteUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileCount: json_['fileCount'] as core.String?,
        finalizeTime: json_['finalizeTime'] as core.String?,
        finalizeUser:
            json_.containsKey('finalizeUser')
                ? ActingUser.fromJson(
                  json_['finalizeUser'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        status: json_['status'] as core.String?,
        versionBytes: json_['versionBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (config != null) 'config': config!,
    if (createTime != null) 'createTime': createTime!,
    if (createUser != null) 'createUser': createUser!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (deleteUser != null) 'deleteUser': deleteUser!,
    if (fileCount != null) 'fileCount': fileCount!,
    if (finalizeTime != null) 'finalizeTime': finalizeTime!,
    if (finalizeUser != null) 'finalizeUser': finalizeUser!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (status != null) 'status': status!,
    if (versionBytes != null) 'versionBytes': versionBytes!,
  };
}

/// A static content file that is part of a version.
class VersionFile {
  /// The SHA256 content hash of the file.
  core.String? hash;

  /// The URI at which the file's content should display.
  core.String? path;

  /// The current status of a particular file in the specified version.
  ///
  /// The value will be either `pending upload` or `uploaded`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  core.String? status;

  VersionFile({this.hash, this.path, this.status});

  VersionFile.fromJson(core.Map json_)
    : this(
        hash: json_['hash'] as core.String?,
        path: json_['path'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hash != null) 'hash': hash!,
    if (path != null) 'path': path!,
    if (status != null) 'status': status!,
  };
}
