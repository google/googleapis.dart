// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Firebase Hosting API - v1beta1
///
/// The Firebase Hosting REST API enables programmatic and customizable
/// deployments to your Firebase-hosted sites. Use this REST API to deploy new
/// or updated hosting configurations and content files.
///
/// For more information, see <https://firebase.google.com/docs/hosting/>
library googleapis_beta.firebasehosting.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Firebase Hosting REST API enables programmatic and customizable
/// deployments to your Firebase-hosted sites. Use this REST API to deploy new
/// or updated hosting configurations and content files.
class FirebasehostingApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);
  SitesResourceApi get sites => SitesResourceApi(_requester);

  FirebasehostingApi(http.Client client,
      {core.String rootUrl = 'https://firebasehosting.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi get operations =>
      ProjectsOperationsResourceApi(_requester);
  ProjectsSitesResourceApi get sites => ProjectsSitesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsResourceApi get channels =>
      ProjectsSitesChannelsResourceApi(_requester);
  ProjectsSitesDomainsResourceApi get domains =>
      ProjectsSitesDomainsResourceApi(_requester);
  ProjectsSitesReleasesResourceApi get releases =>
      ProjectsSitesReleasesResourceApi(_requester);
  ProjectsSitesVersionsResourceApi get versions =>
      ProjectsSitesVersionsResourceApi(_requester);

  ProjectsSitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/config$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          SiteConfig.fromJson(data as core.Map<core.String, core.dynamic>),
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
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/config$".
  ///
  /// [updateMask] - A set of field names from your [site
  /// configuration](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// [`max_versions`](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          SiteConfig.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesChannelsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResourceApi get releases =>
      ProjectsSitesChannelsReleasesResourceApi(_requester);

  ProjectsSitesChannelsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which this channel should be created.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [channelId] - Required. Immutable. A unique id within the site to identify
  /// the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String channelId,
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
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/channels';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a channel of a site. The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified identifier for the site.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/channels/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Retrieves information for the specified channel of a site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified identifier for the channel.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/channels/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the channels for the specified site. All sites have a default "live"
  /// channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site from which to list channels.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 25 channels will be
  /// returned. The maximum value is 100; valuupdateses above 100 will be
  /// coerced to 100
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/channels';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListChannelsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates information for the specified channel of a site. This method will
  /// implicitly create a channel if it doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified identifier of the Channel.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/channels/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesChannelsReleasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site that the release belongs to, in the format:
  /// sites/ site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/channels/[^/]+$".
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// /sites/site-name /versions/versionID The site-name in this version
  /// identifier must match the site-name in the `parent` parameter. This query
  /// parameter must be empty if the `type` field in the request body is
  /// `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String versionName,
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
    if (versionName != null) {
      _queryParams['versionName'] = [versionName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Release.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the releases that have been created on the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/channels/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 100.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListReleasesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesDomainsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesDomainsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/domains';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/domains/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/domains/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/domains';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListDomainsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
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
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/domains/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesReleasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesReleasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site that the release belongs to, in the format:
  /// sites/ site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// /sites/site-name /versions/versionID The site-name in this version
  /// identifier must match the site-name in the `parent` parameter. This query
  /// parameter must be empty if the `type` field in the request body is
  /// `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String versionName,
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
    if (versionName != null) {
      _queryParams['versionName'] = [versionName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Release.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the releases that have been created on the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 100.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListReleasesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResourceApi get files =>
      ProjectsSitesVersionsFilesResourceApi(_requester);

  ProjectsSitesVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new version on the target site using the content of the
  /// specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site where the cloned version will reside,
  /// in the format: `sites/{site}`
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
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
  async.Future<Operation> clone(
    CloneVersionRequest request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions:clone';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a new version for a site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the version for, in the format:
  /// sites/ site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String sizeBytes,
    core.String versionId,
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
    if (sizeBytes != null) {
      _queryParams['sizeBytes'] = [sizeBytes];
    }
    if (versionId != null) {
      _queryParams['versionId'] = [versionId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to be deleted, in the format:
  /// sites/ site-name/versions/versionID
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/versions/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the versions that have been created on the specified site. Will
  /// include filtering in the future.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+$".
  ///
  /// [filter] - The filter string used to return a subset of versions in the
  /// response. Currently supported fields for filtering are: name, status, and
  /// create_time. Filter processing will be implemented in accordance with
  /// go/filtering.
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 25 versions will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified metadata for a version. Note that this method will
  /// fail with `FAILED_PRECONDITION` in the event of an invalid state
  /// transition. The only valid transition for a version is currently from a
  /// `CREATED` status to a `FINALIZED` status. Use
  /// [`DeleteVersion`](../sites.versions/delete) to set the status of a version
  /// to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier for a version, in the format:
  /// sites/site-name /versions/versionID This name is provided in the response
  /// body when you call the [`CreateVersion`](../sites.versions/create)
  /// endpoint.
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/versions/[^/]+$".
  ///
  /// [updateMask] - A set of field names from your [version](../sites.versions)
  /// that you want to update. A field will be overwritten if, and only if, it's
  /// in the mask. If a mask is not provided then a default mask of only
  /// [`status`](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Adds content files to a version. Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to add files to, in the format:
  /// sites/site-name /versions/versionID
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/versions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':populateFiles';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => PopulateVersionFilesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsSitesVersionsFilesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to list files for, in the format:
  /// sites/site-name /versions/versionID
  /// Value must have pattern "^projects/[^/]+/sites/[^/]+/versions/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 1000.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  /// This will be the encoded version of a
  /// firebase.hosting.proto.metadata.ListFilesPageToken.
  ///
  /// [status] - The type of files in the version that should be listed.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String status,
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
    if (status != null) {
      _queryParams['status'] = [status];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/files';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionFilesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesResourceApi {
  final commons.ApiRequester _requester;

  SitesChannelsResourceApi get channels => SitesChannelsResourceApi(_requester);
  SitesDomainsResourceApi get domains => SitesDomainsResourceApi(_requester);
  SitesReleasesResourceApi get releases => SitesReleasesResourceApi(_requester);
  SitesVersionsResourceApi get versions => SitesVersionsResourceApi(_requester);

  SitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern "^sites/[^/]+/config$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          SiteConfig.fromJson(data as core.Map<core.String, core.dynamic>),
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
  /// Value must have pattern "^sites/[^/]+/config$".
  ///
  /// [updateMask] - A set of field names from your [site
  /// configuration](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// [`max_versions`](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          SiteConfig.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesChannelsResourceApi {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResourceApi get releases =>
      SitesChannelsReleasesResourceApi(_requester);

  SitesChannelsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which this channel should be created.
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [channelId] - Required. Immutable. A unique id within the site to identify
  /// the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String channelId,
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
    if (channelId != null) {
      _queryParams['channelId'] = [channelId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/channels';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a channel of a site. The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified identifier for the site.
  /// Value must have pattern "^sites/[^/]+/channels/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Retrieves information for the specified channel of a site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified identifier for the channel.
  /// Value must have pattern "^sites/[^/]+/channels/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the channels for the specified site. All sites have a default "live"
  /// channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site from which to list channels.
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 25 channels will be
  /// returned. The maximum value is 100; valuupdateses above 100 will be
  /// coerced to 100
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/channels';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListChannelsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates information for the specified channel of a site. This method will
  /// implicitly create a channel if it doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified identifier of the Channel.
  /// Value must have pattern "^sites/[^/]+/channels/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Channel.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesChannelsReleasesResourceApi {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site that the release belongs to, in the format:
  /// sites/ site-name
  /// Value must have pattern "^sites/[^/]+/channels/[^/]+$".
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// /sites/site-name /versions/versionID The site-name in this version
  /// identifier must match the site-name in the `parent` parameter. This query
  /// parameter must be empty if the `type` field in the request body is
  /// `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String versionName,
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
    if (versionName != null) {
      _queryParams['versionName'] = [versionName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Release.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the releases that have been created on the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^sites/[^/]+/channels/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 100.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListReleasesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesDomainsResourceApi {
  final commons.ApiRequester _requester;

  SitesDomainsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/domains';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern "^sites/[^/]+/domains/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern "^sites/[^/]+/domains/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern "^sites/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/domains';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListDomainsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
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
  /// Value must have pattern "^sites/[^/]+/domains/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Domain.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesReleasesResourceApi {
  final commons.ApiRequester _requester;

  SitesReleasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new release which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site that the release belongs to, in the format:
  /// sites/ site-name
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// /sites/site-name /versions/versionID The site-name in this version
  /// identifier must match the site-name in the `parent` parameter. This query
  /// parameter must be empty if the `type` field in the request body is
  /// `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String versionName,
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
    if (versionName != null) {
      _queryParams['versionName'] = [versionName];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Release.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the releases that have been created on the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 100.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListReleasesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesVersionsResourceApi {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResourceApi get files =>
      SitesVersionsFilesResourceApi(_requester);

  SitesVersionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new version on the target site using the content of the
  /// specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site where the cloned version will reside,
  /// in the format: `sites/{site}`
  /// Value must have pattern "^sites/[^/]+$".
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
  async.Future<Operation> clone(
    CloneVersionRequest request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions:clone';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a new version for a site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the version for, in the format:
  /// sites/ site-name
  /// Value must have pattern "^sites/[^/]+$".
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String sizeBytes,
    core.String versionId,
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
    if (sizeBytes != null) {
      _queryParams['sizeBytes'] = [sizeBytes];
    }
    if (versionId != null) {
      _queryParams['versionId'] = [versionId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to be deleted, in the format:
  /// sites/ site-name/versions/versionID
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the versions that have been created on the specified site. Will
  /// include filtering in the future.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// sites/site-name
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [filter] - The filter string used to return a subset of versions in the
  /// response. Currently supported fields for filtering are: name, status, and
  /// create_time. Filter processing will be implemented in accordance with
  /// go/filtering.
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 25 versions will be
  /// returned. The maximum value is 100; values above 100 will be coerced to
  /// 100
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the specified metadata for a version. Note that this method will
  /// fail with `FAILED_PRECONDITION` in the event of an invalid state
  /// transition. The only valid transition for a version is currently from a
  /// `CREATED` status to a `FINALIZED` status. Use
  /// [`DeleteVersion`](../sites.versions/delete) to set the status of a version
  /// to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier for a version, in the format:
  /// sites/site-name /versions/versionID This name is provided in the response
  /// body when you call the [`CreateVersion`](../sites.versions/create)
  /// endpoint.
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
  ///
  /// [updateMask] - A set of field names from your [version](../sites.versions)
  /// that you want to update. A field will be overwritten if, and only if, it's
  /// in the mask. If a mask is not provided then a default mask of only
  /// [`status`](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String updateMask,
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
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Adds content files to a version. Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to add files to, in the format:
  /// sites/site-name /versions/versionID
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':populateFiles';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => PopulateVersionFilesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class SitesVersionsFilesResourceApi {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to list files for, in the format:
  /// sites/site-name /versions/versionID
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
  ///
  /// [pageSize] - The page size to return. Defaults to 1000.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  /// This will be the encoded version of a
  /// firebase.hosting.proto.metadata.ListFilesPageToken.
  ///
  /// [status] - The type of files in the version that should be listed.
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
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String status,
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
    if (status != null) {
      _queryParams['status'] = [status];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/files';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionFilesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Contains metadata about the user who performed an action, such as creating a
/// release or finalizing a version.
class ActingUser {
  /// The email address of the user when the user performed the action.
  core.String email;

  /// A profile image URL for the user. May not be present if the user has
  /// changed their email address or deleted their account.
  core.String imageUrl;

  ActingUser();

  ActingUser.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('imageUrl')) {
      imageUrl = _json['imageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (email != null) {
      _json['email'] = email;
    }
    if (imageUrl != null) {
      _json['imageUrl'] = imageUrl;
    }
    return _json;
  }
}

/// Represents a DNS certificate challenge.
class CertDnsChallenge {
  /// The domain name upon which the DNS challenge must be satisfied.
  core.String domainName;

  /// The value that must be present as a TXT record on the domain name to
  /// satisfy the challenge.
  core.String token;

  CertDnsChallenge();

  CertDnsChallenge.fromJson(core.Map _json) {
    if (_json.containsKey('domainName')) {
      domainName = _json['domainName'] as core.String;
    }
    if (_json.containsKey('token')) {
      token = _json['token'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domainName != null) {
      _json['domainName'] = domainName;
    }
    if (token != null) {
      _json['token'] = token;
    }
    return _json;
  }
}

/// Represents an HTTP certificate challenge.
class CertHttpChallenge {
  /// The URL path on which to serve the specified token to satisfy the
  /// certificate challenge.
  core.String path;

  /// The token to serve at the specified URL path to satisfy the certificate
  /// challenge.
  core.String token;

  CertHttpChallenge();

  CertHttpChallenge.fromJson(core.Map _json) {
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('token')) {
      token = _json['token'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (path != null) {
      _json['path'] = path;
    }
    if (token != null) {
      _json['token'] = token;
    }
    return _json;
  }
}

/// A `Channel` represents a stream of releases for a site. All sites have a
/// default `live` channel that serves content to the live Firebase-provided
/// domains and any connected custom domains.
class Channel {
  /// Output only. The time at which the channel was created.
  core.String createTime;

  /// The time at which the channel will be automatically deleted. If null, the
  /// channel will not be automatically deleted. This field is present in output
  /// whether set directly or via the `ttl` field.
  core.String expireTime;

  /// Text labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String> labels;

  /// The fully-qualified identifier of the Channel.
  core.String name;

  /// Output only. The current release for the channel, if any.
  Release release;

  /// The number of previous releases to retain on the channel for rollback or
  /// other purposes. Must be a number between 1-100. Defaults to 10 for new
  /// channels.
  core.int retainedReleaseCount;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the
  /// provided duration past the time of the request.
  core.String ttl;

  /// Output only. The time at which the channel was last updated.
  core.String updateTime;

  /// Output only. The URL at which the channel can be viewed. For the `live`
  /// channel, the content of the current release may also be visible at other
  /// URLs.
  core.String url;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
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
    if (_json.containsKey('release')) {
      release = Release.fromJson(
          _json['release'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('retainedReleaseCount')) {
      retainedReleaseCount = _json['retainedReleaseCount'] as core.int;
    }
    if (_json.containsKey('ttl')) {
      ttl = _json['ttl'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (release != null) {
      _json['release'] = release.toJson();
    }
    if (retainedReleaseCount != null) {
      _json['retainedReleaseCount'] = retainedReleaseCount;
    }
    if (ttl != null) {
      _json['ttl'] = ttl;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// The request sent to CloneVersion.
class CloneVersionRequest {
  /// If provided, only paths that do not match any of the regexes in this list
  /// will be included in the new version.
  PathFilter exclude;

  /// If true, immediately finalize the version after cloning is complete.
  core.bool finalize;

  /// If provided, only paths that match one or more regexes in this list will
  /// be included in the new version.
  PathFilter include;

  /// Required. The name of the version to be cloned, in the format:
  /// `sites/{site}/versions/{version}`
  core.String sourceVersion;

  CloneVersionRequest();

  CloneVersionRequest.fromJson(core.Map _json) {
    if (_json.containsKey('exclude')) {
      exclude = PathFilter.fromJson(
          _json['exclude'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('finalize')) {
      finalize = _json['finalize'] as core.bool;
    }
    if (_json.containsKey('include')) {
      include = PathFilter.fromJson(
          _json['include'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceVersion')) {
      sourceVersion = _json['sourceVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclude != null) {
      _json['exclude'] = exclude.toJson();
    }
    if (finalize != null) {
      _json['finalize'] = finalize;
    }
    if (include != null) {
      _json['include'] = include.toJson();
    }
    if (sourceVersion != null) {
      _json['sourceVersion'] = sourceVersion;
    }
    return _json;
  }
}

/// A configured rewrite that directs requests to a Cloud Run service. If the
/// Cloud Run service does not exist when setting or updating your Firebase
/// Hosting configuration, then the request fails. Any errors from the Cloud Run
/// service are passed to the end user (for example, if you delete a service,
/// any requests directed to that service receive a `404` error).
class CloudRunRewrite {
  /// Optional. User-provided region where the Cloud Run service is hosted.
  /// Defaults to `us-central1` if not supplied.
  core.String region;

  /// Required. User-defined ID of the Cloud Run service.
  core.String serviceId;

  CloudRunRewrite();

  CloudRunRewrite.fromJson(core.Map _json) {
    if (_json.containsKey('region')) {
      region = _json['region'] as core.String;
    }
    if (_json.containsKey('serviceId')) {
      serviceId = _json['serviceId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (region != null) {
      _json['region'] = region;
    }
    if (serviceId != null) {
      _json['serviceId'] = serviceId;
    }
    return _json;
  }
}

/// The intended behavior and status information of a domain.
class Domain {
  /// Required. The domain name of the association.
  core.String domainName;

  /// If set, the domain should redirect with the provided parameters.
  DomainRedirect domainRedirect;

  /// Output only. Information about the provisioning of certificates and the
  /// health of the DNS resolution for the domain.
  DomainProvisioning provisioning;

  /// Required. The site name of the association.
  core.String site;

  /// Output only. Additional status of the domain association.
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
  core.String status;

  /// Output only. The time at which the domain was last updated.
  core.String updateTime;

  Domain();

  Domain.fromJson(core.Map _json) {
    if (_json.containsKey('domainName')) {
      domainName = _json['domainName'] as core.String;
    }
    if (_json.containsKey('domainRedirect')) {
      domainRedirect = DomainRedirect.fromJson(
          _json['domainRedirect'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provisioning')) {
      provisioning = DomainProvisioning.fromJson(
          _json['provisioning'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('site')) {
      site = _json['site'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domainName != null) {
      _json['domainName'] = domainName;
    }
    if (domainRedirect != null) {
      _json['domainRedirect'] = domainRedirect.toJson();
    }
    if (provisioning != null) {
      _json['provisioning'] = provisioning.toJson();
    }
    if (site != null) {
      _json['site'] = site;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The current certificate provisioning status information for a domain.
class DomainProvisioning {
  /// The TXT records (for the certificate challenge) that were found at the
  /// last DNS fetch.
  core.List<core.String> certChallengeDiscoveredTxt;

  /// The DNS challenge for generating a certificate.
  CertDnsChallenge certChallengeDns;

  /// The HTTP challenge for generating a certificate.
  CertHttpChallenge certChallengeHttp;

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
  core.String certStatus;

  /// The IPs found at the last DNS fetch.
  core.List<core.String> discoveredIps;

  /// The time at which the last DNS fetch occurred.
  core.String dnsFetchTime;

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
  core.String dnsStatus;

  /// The list of IPs to which the domain is expected to resolve.
  core.List<core.String> expectedIps;

  DomainProvisioning();

  DomainProvisioning.fromJson(core.Map _json) {
    if (_json.containsKey('certChallengeDiscoveredTxt')) {
      certChallengeDiscoveredTxt =
          (_json['certChallengeDiscoveredTxt'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('certChallengeDns')) {
      certChallengeDns = CertDnsChallenge.fromJson(
          _json['certChallengeDns'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('certChallengeHttp')) {
      certChallengeHttp = CertHttpChallenge.fromJson(
          _json['certChallengeHttp'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('certStatus')) {
      certStatus = _json['certStatus'] as core.String;
    }
    if (_json.containsKey('discoveredIps')) {
      discoveredIps = (_json['discoveredIps'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('dnsFetchTime')) {
      dnsFetchTime = _json['dnsFetchTime'] as core.String;
    }
    if (_json.containsKey('dnsStatus')) {
      dnsStatus = _json['dnsStatus'] as core.String;
    }
    if (_json.containsKey('expectedIps')) {
      expectedIps = (_json['expectedIps'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (certChallengeDiscoveredTxt != null) {
      _json['certChallengeDiscoveredTxt'] = certChallengeDiscoveredTxt;
    }
    if (certChallengeDns != null) {
      _json['certChallengeDns'] = certChallengeDns.toJson();
    }
    if (certChallengeHttp != null) {
      _json['certChallengeHttp'] = certChallengeHttp.toJson();
    }
    if (certStatus != null) {
      _json['certStatus'] = certStatus;
    }
    if (discoveredIps != null) {
      _json['discoveredIps'] = discoveredIps;
    }
    if (dnsFetchTime != null) {
      _json['dnsFetchTime'] = dnsFetchTime;
    }
    if (dnsStatus != null) {
      _json['dnsStatus'] = dnsStatus;
    }
    if (expectedIps != null) {
      _json['expectedIps'] = expectedIps;
    }
    return _json;
  }
}

/// Defines the behavior of a domain-level redirect. Domain redirects preserve
/// the path of the redirect but replace the requested domain with the one
/// specified in the redirect configuration.
class DomainRedirect {
  /// Required. The domain name to redirect to.
  core.String domainName;

  /// Required. The redirect status code.
  /// Possible string values are:
  /// - "REDIRECT_TYPE_UNSPECIFIED" : The default redirect type; should not be
  /// intentionlly used.
  /// - "MOVED_PERMANENTLY" : The redirect will respond with an HTTP status code
  /// of `301 Moved Permanently`.
  core.String type;

  DomainRedirect();

  DomainRedirect.fromJson(core.Map _json) {
    if (_json.containsKey('domainName')) {
      domainName = _json['domainName'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domainName != null) {
      _json['domainName'] = domainName;
    }
    if (type != null) {
      _json['type'] = type;
    }
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
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A [`header`](/docs/hosting/full-config#headers) is an object that specifies
/// a URL pattern that, if matched to the request URL path, triggers Hosting to
/// apply the specified custom response headers.
class Header {
  /// The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String glob;

  /// Required. The additional headers to add to the response.
  core.Map<core.String, core.String> headers;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String regex;

  Header();

  Header.fromJson(core.Map _json) {
    if (_json.containsKey('glob')) {
      glob = _json['glob'] as core.String;
    }
    if (_json.containsKey('headers')) {
      headers =
          (_json['headers'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('regex')) {
      regex = _json['regex'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (glob != null) {
      _json['glob'] = glob;
    }
    if (headers != null) {
      _json['headers'] = headers;
    }
    if (regex != null) {
      _json['regex'] = regex;
    }
    return _json;
  }
}

/// If provided, i18n rewrites are enabled.
class I18nConfig {
  /// Required. The user-supplied path where country and language specific
  /// content will be looked for within the public directory.
  core.String root;

  I18nConfig();

  I18nConfig.fromJson(core.Map _json) {
    if (_json.containsKey('root')) {
      root = _json['root'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (root != null) {
      _json['root'] = root;
    }
    return _json;
  }
}

/// The response returned by ListChannels.
class ListChannelsResponse {
  /// The list of channels.
  core.List<Channel> channels;

  /// If there are additional releases remaining beyond the ones in this
  /// response, then supply this token in the next
  /// [`list`](../sites.channels/list) call to continue with the next set of
  /// releases.
  core.String nextPageToken;

  ListChannelsResponse();

  ListChannelsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('channels')) {
      channels = (_json['channels'] as core.List)
          .map<Channel>((value) =>
              Channel.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (channels != null) {
      _json['channels'] = channels.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response to listing Domains.
class ListDomainsResponse {
  /// The list of domains, if any exist.
  core.List<Domain> domains;

  /// The pagination token, if more results exist.
  core.String nextPageToken;

  ListDomainsResponse();

  ListDomainsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('domains')) {
      domains = (_json['domains'] as core.List)
          .map<Domain>((value) =>
              Domain.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domains != null) {
      _json['domains'] = domains.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class ListReleasesResponse {
  /// If there are additional releases remaining beyond the ones in this
  /// response, then supply this token in the next
  /// [`list`](../sites.versions.files/list) call to continue with the next set
  /// of releases.
  core.String nextPageToken;

  /// The list of hashes of files that still need to be uploaded, if any exist.
  core.List<Release> releases;

  ListReleasesResponse();

  ListReleasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('releases')) {
      releases = (_json['releases'] as core.List)
          .map<Release>((value) =>
              Release.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (releases != null) {
      _json['releases'] = releases.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class ListVersionFilesResponse {
  /// The list path/hashes in the specified version.
  core.List<VersionFile> files;

  /// The pagination token, if more results exist.
  core.String nextPageToken;

  ListVersionFilesResponse();

  ListVersionFilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('files')) {
      files = (_json['files'] as core.List)
          .map<VersionFile>((value) => VersionFile.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (files != null) {
      _json['files'] = files.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

class ListVersionsResponse {
  /// The pagination token, if more results exist
  core.String nextPageToken;

  /// The list of versions, if any exist.
  core.List<Version> versions;

  ListVersionsResponse();

  ListVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('versions')) {
      versions = (_json['versions'] as core.List)
          .map<Version>((value) =>
              Version.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (versions != null) {
      _json['versions'] = versions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// A representation of filter path.
class PathFilter {
  /// An array of regexes to filter by.
  core.List<core.String> regexes;

  PathFilter();

  PathFilter.fromJson(core.Map _json) {
    if (_json.containsKey('regexes')) {
      regexes = (_json['regexes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (regexes != null) {
      _json['regexes'] = regexes;
    }
    return _json;
  }
}

/// The request to populate a Version's Files.
class PopulateVersionFilesRequest {
  /// A set of file paths to the hashes corresponding to assets that should be
  /// added to the version. Note that a file path to an empty hash will remove
  /// the path from the version. Calculate a hash by Gzipping the file then
  /// taking the SHA256 hash of the newly compressed file.
  core.Map<core.String, core.String> files;

  PopulateVersionFilesRequest();

  PopulateVersionFilesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('files')) {
      files = (_json['files'] as core.Map).cast<core.String, core.String>().map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (files != null) {
      _json['files'] = files;
    }
    return _json;
  }
}

class PopulateVersionFilesResponse {
  /// The content hashes of the specified files that need to be uploaded to the
  /// specified endpoint.
  core.List<core.String> uploadRequiredHashes;

  /// The URL to which the files should be uploaded, in the format:
  /// "https://upload-firebasehosting.googleapis.com/upload/sites/site-name
  /// /versions/versionID/files". Perform a multipart `POST` of the Gzipped file
  /// contents to the URL using a forward slash and the hash of the file
  /// appended to the end.
  core.String uploadUrl;

  PopulateVersionFilesResponse();

  PopulateVersionFilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('uploadRequiredHashes')) {
      uploadRequiredHashes = (_json['uploadRequiredHashes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('uploadUrl')) {
      uploadUrl = _json['uploadUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uploadRequiredHashes != null) {
      _json['uploadRequiredHashes'] = uploadRequiredHashes;
    }
    if (uploadUrl != null) {
      _json['uploadUrl'] = uploadUrl;
    }
    return _json;
  }
}

/// Version preview configuration. If active and unexpired, this version will be
/// accessible via a custom URL even if it is not the currently released
/// version.
class PreviewConfig {
  /// If true, preview URLs are enabled for this version.
  core.bool active;

  /// Indicates the expiration time for previewing this version; preview URL
  /// requests received after this time will 404.
  core.String expireTime;

  PreviewConfig();

  PreviewConfig.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (active != null) {
      _json['active'] = active;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    return _json;
  }
}

/// A [`redirect`](/docs/hosting/full-config#redirects) object specifies a URL
/// pattern that, if matched to the request URL path, triggers Hosting to
/// respond with a redirect to the specified destination path.
class Redirect {
  /// The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String glob;

  /// Required. The value to put in the HTTP location header of the response.
  /// The location can contain capture group values from the pattern using a `:`
  /// prefix to identify the segment and an optional `*` to capture the rest of
  /// the URL. For example: "glob": "/:capture*", "statusCode": 301, "location":
  /// "https://example.com/foo/:capture"
  core.String location;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String regex;

  /// Required. The status HTTP code to return in the response. It must be a
  /// valid 3xx status code.
  core.int statusCode;

  Redirect();

  Redirect.fromJson(core.Map _json) {
    if (_json.containsKey('glob')) {
      glob = _json['glob'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('regex')) {
      regex = _json['regex'] as core.String;
    }
    if (_json.containsKey('statusCode')) {
      statusCode = _json['statusCode'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (glob != null) {
      _json['glob'] = glob;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (regex != null) {
      _json['regex'] = regex;
    }
    if (statusCode != null) {
      _json['statusCode'] = statusCode;
    }
    return _json;
  }
}

/// A `Release` is a particular [collection of configurations and
/// files](sites.versions) that is set to be public at a particular time.
class Release {
  /// The deploy description when the release was created. The value can be up
  /// to 512 characters.
  core.String message;

  /// Output only. The unique identifier for the release, in the format: sites/
  /// site-name/releases/releaseID This name is provided in the response body
  /// when you call the [`CreateRelease`](sites.releases/create) endpoint.
  core.String name;

  /// Output only. The time at which the version is set to be public.
  core.String releaseTime;

  /// Output only. Identifies the user who created the release.
  ActingUser releaseUser;

  /// Explains the reason for the release. Specify a value for this field only
  /// when creating a `SITE_DISABLE` type release.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified type. Indicates that a version was
  /// released. This is the default value when no other `type` is explicitly
  /// specified.
  /// - "DEPLOY" : A version was uploaded to Firebase Hosting and released.
  /// - "ROLLBACK" : The release points back to a previously deployed version.
  /// - "SITE_DISABLE" : The release prevents the site from serving content.
  /// Firebase Hosting acts as if the site never existed.
  core.String type;

  /// Output only. The configuration and content that was released.
  Version version;

  Release();

  Release.fromJson(core.Map _json) {
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('releaseTime')) {
      releaseTime = _json['releaseTime'] as core.String;
    }
    if (_json.containsKey('releaseUser')) {
      releaseUser = ActingUser.fromJson(
          _json['releaseUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = Version.fromJson(
          _json['version'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (message != null) {
      _json['message'] = message;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (releaseTime != null) {
      _json['releaseTime'] = releaseTime;
    }
    if (releaseUser != null) {
      _json['releaseUser'] = releaseUser.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (version != null) {
      _json['version'] = version.toJson();
    }
    return _json;
  }
}

/// A [`rewrite`](/docs/hosting/full-config#rewrites) object specifies a URL
/// pattern that, if matched to the request URL path, triggers Hosting to
/// respond as if the service were given the specified destination URL.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  core.bool dynamicLinks;

  /// The function to proxy requests to. Must match the exported function name
  /// exactly.
  core.String function;

  /// The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String glob;

  /// The URL path to rewrite the request to.
  core.String path;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String regex;

  /// The request will be forwarded to Cloud Run.
  CloudRunRewrite run;

  Rewrite();

  Rewrite.fromJson(core.Map _json) {
    if (_json.containsKey('dynamicLinks')) {
      dynamicLinks = _json['dynamicLinks'] as core.bool;
    }
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('glob')) {
      glob = _json['glob'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('regex')) {
      regex = _json['regex'] as core.String;
    }
    if (_json.containsKey('run')) {
      run = CloudRunRewrite.fromJson(
          _json['run'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (dynamicLinks != null) {
      _json['dynamicLinks'] = dynamicLinks;
    }
    if (function != null) {
      _json['function'] = function;
    }
    if (glob != null) {
      _json['glob'] = glob;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (regex != null) {
      _json['regex'] = regex;
    }
    if (run != null) {
      _json['run'] = run.toJson();
    }
    return _json;
  }
}

/// The configuration for how incoming requests to a site should be routed and
/// processed before serving content. The URL request paths are matched against
/// the specified URL patterns in the configuration, then Hosting applies the
/// applicable configuration according to a specific [priority
/// order](/docs/hosting/full-config#hosting_priority_order).
class ServingConfig {
  /// How to handle well known App Association files.
  /// Possible string values are:
  /// - "AUTO" : The app association files will be automatically created from
  /// the apps that exist in the Firebase project.
  /// - "NONE" : No special handling of the app association files will occur,
  /// these paths will result in a 404 unless caught with a Rewrite.
  core.String appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  core.bool cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if
  /// matched to the request URL path, triggers Hosting to apply the specified
  /// custom response headers.
  core.List<Header> headers;

  /// Optional. Defines i18n rewrite behavior.
  I18nConfig i18n;

  /// An array of objects (called redirect rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond with a redirect to the specified destination path.
  core.List<Redirect> redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond as if the service were given the specified destination URL.
  core.List<Rewrite> rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  /// Possible string values are:
  /// - "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED" : No behavior is specified. Files
  /// are served at their exact location only, and trailing slashes are only
  /// added to directory indexes.
  /// - "ADD" : Trailing slashes are _added_ to directory indexes as well as to
  /// any URL path not ending in a file extension.
  /// - "REMOVE" : Trailing slashes are _removed_ from directory indexes as well
  /// as from any URL path not ending in a file extension.
  core.String trailingSlashBehavior;

  ServingConfig();

  ServingConfig.fromJson(core.Map _json) {
    if (_json.containsKey('appAssociation')) {
      appAssociation = _json['appAssociation'] as core.String;
    }
    if (_json.containsKey('cleanUrls')) {
      cleanUrls = _json['cleanUrls'] as core.bool;
    }
    if (_json.containsKey('headers')) {
      headers = (_json['headers'] as core.List)
          .map<Header>((value) =>
              Header.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('i18n')) {
      i18n = I18nConfig.fromJson(
          _json['i18n'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('redirects')) {
      redirects = (_json['redirects'] as core.List)
          .map<Redirect>((value) =>
              Redirect.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('rewrites')) {
      rewrites = (_json['rewrites'] as core.List)
          .map<Rewrite>((value) =>
              Rewrite.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('trailingSlashBehavior')) {
      trailingSlashBehavior = _json['trailingSlashBehavior'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appAssociation != null) {
      _json['appAssociation'] = appAssociation;
    }
    if (cleanUrls != null) {
      _json['cleanUrls'] = cleanUrls;
    }
    if (headers != null) {
      _json['headers'] = headers.map((value) => value.toJson()).toList();
    }
    if (i18n != null) {
      _json['i18n'] = i18n.toJson();
    }
    if (redirects != null) {
      _json['redirects'] = redirects.map((value) => value.toJson()).toList();
    }
    if (rewrites != null) {
      _json['rewrites'] = rewrites.map((value) => value.toJson()).toList();
    }
    if (trailingSlashBehavior != null) {
      _json['trailingSlashBehavior'] = trailingSlashBehavior;
    }
    return _json;
  }
}

/// A `SiteConfig` contains metadata associated with a specific site that
/// controls Firebase Hosting serving behavior
class SiteConfig {
  /// Whether or not web requests made by site visitors are logged via Cloud
  /// Logging.
  core.bool cloudLoggingEnabled;

  /// The number of FINALIZED versions that will be held for a site before
  /// automatic deletion. When a new version is deployed, content for versions
  /// in storage in excess of this number will be deleted, and will no longer be
  /// billed for storage usage. Oldest versions will be deleted first; sites are
  /// created with an unlimited number of max_versions by default.
  core.String maxVersions;

  SiteConfig();

  SiteConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cloudLoggingEnabled')) {
      cloudLoggingEnabled = _json['cloudLoggingEnabled'] as core.bool;
    }
    if (_json.containsKey('maxVersions')) {
      maxVersions = _json['maxVersions'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cloudLoggingEnabled != null) {
      _json['cloudLoggingEnabled'] = cloudLoggingEnabled;
    }
    if (maxVersions != null) {
      _json['maxVersions'] = maxVersions;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
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

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// A `Version` is the collection of configuration and [static
/// files](sites.versions.files) that determine how a site is displayed.
class Version {
  /// The configuration for the behavior of the site. This configuration exists
  /// in the [`firebase.json`](/docs/cli/#the_firebasejson_file) file.
  ServingConfig config;

  /// Output only. The time at which the version was created.
  core.String createTime;

  /// Output only. Identifies the user who created the version.
  ActingUser createUser;

  /// Output only. The time at which the version was `DELETED`.
  core.String deleteTime;

  /// Output only. Identifies the user who `DELETED` the version.
  ActingUser deleteUser;

  /// Output only. The total number of files associated with the version. This
  /// value is calculated after a version is `FINALIZED`.
  core.String fileCount;

  /// Output only. The time at which the version was `FINALIZED`.
  core.String finalizeTime;

  /// Output only. Identifies the user who `FINALIZED` the version.
  ActingUser finalizeUser;

  /// The labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String> labels;

  /// The unique identifier for a version, in the format: sites/site-name
  /// /versions/versionID This name is provided in the response body when you
  /// call the [`CreateVersion`](../sites.versions/create) endpoint.
  core.String name;

  /// Version preview configuration for the site version. This configuration
  /// specfies whether previewing is enabled for this site version. Version
  /// previews allow you to preview your site at a custom URL before releasing
  /// it as the live version.
  PreviewConfig preview;

  /// The deploy status of a version. For a successful deploy, call the
  /// [`CreateVersion`](sites.versions/create) endpoint to make a new version
  /// (`CREATED` status), [upload all desired
  /// files](sites.versions/populateFiles) to the version, then
  /// [update](sites.versions/patch) the version to the `FINALIZED` status. Note
  /// that if you leave the version in the `CREATED` state for more than 12
  /// hours, the system will automatically mark the version as `ABANDONED`. You
  /// can also change the status of a version to `DELETED` by calling the
  /// [`DeleteVersion`](sites.versions/delete) endpoint.
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
  core.String status;

  /// Output only. The total stored bytesize of the version. This value is
  /// calculated after a version is `FINALIZED`.
  core.String versionBytes;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey('config')) {
      config = ServingConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('createUser')) {
      createUser = ActingUser.fromJson(
          _json['createUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deleteTime')) {
      deleteTime = _json['deleteTime'] as core.String;
    }
    if (_json.containsKey('deleteUser')) {
      deleteUser = ActingUser.fromJson(
          _json['deleteUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fileCount')) {
      fileCount = _json['fileCount'] as core.String;
    }
    if (_json.containsKey('finalizeTime')) {
      finalizeTime = _json['finalizeTime'] as core.String;
    }
    if (_json.containsKey('finalizeUser')) {
      finalizeUser = ActingUser.fromJson(
          _json['finalizeUser'] as core.Map<core.String, core.dynamic>);
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
    if (_json.containsKey('preview')) {
      preview = PreviewConfig.fromJson(
          _json['preview'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('versionBytes')) {
      versionBytes = _json['versionBytes'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (config != null) {
      _json['config'] = config.toJson();
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (createUser != null) {
      _json['createUser'] = createUser.toJson();
    }
    if (deleteTime != null) {
      _json['deleteTime'] = deleteTime;
    }
    if (deleteUser != null) {
      _json['deleteUser'] = deleteUser.toJson();
    }
    if (fileCount != null) {
      _json['fileCount'] = fileCount;
    }
    if (finalizeTime != null) {
      _json['finalizeTime'] = finalizeTime;
    }
    if (finalizeUser != null) {
      _json['finalizeUser'] = finalizeUser.toJson();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (preview != null) {
      _json['preview'] = preview.toJson();
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (versionBytes != null) {
      _json['versionBytes'] = versionBytes;
    }
    return _json;
  }
}

/// A static content file that is part of a version.
class VersionFile {
  /// The SHA256 content hash of the file.
  core.String hash;

  /// The URI at which the file's content should display.
  core.String path;

  /// Output only. The current status of a particular file in the specified
  /// version. The value will be either `pending upload` or `uploaded`.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  core.String status;

  VersionFile();

  VersionFile.fromJson(core.Map _json) {
    if (_json.containsKey('hash')) {
      hash = _json['hash'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (hash != null) {
      _json['hash'] = hash;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (status != null) {
      _json['status'] = status;
    }
    return _json;
  }
}
