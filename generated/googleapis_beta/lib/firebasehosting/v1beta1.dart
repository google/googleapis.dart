// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.firebasehosting.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firebasehosting/v1beta1';

/// The Firebase Hosting REST API enables programmatic and customizable
/// deployments to your Firebase-hosted sites. Use this REST API to deploy new
/// or updated hosting configurations and content files.
class FirebasehostingApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  /// View and administer all your Firebase data and settings
  static const FirebaseScope = "https://www.googleapis.com/auth/firebase";

  /// View all your Firebase data and settings
  static const FirebaseReadonlyScope =
      "https://www.googleapis.com/auth/firebase.readonly";

  final commons.ApiRequester _requester;

  SitesResourceApi get sites => new SitesResourceApi(_requester);

  FirebasehostingApi(http.Client client,
      {core.String rootUrl = "https://firebasehosting.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class SitesResourceApi {
  final commons.ApiRequester _requester;

  SitesDomainsResourceApi get domains =>
      new SitesDomainsResourceApi(_requester);
  SitesReleasesResourceApi get releases =>
      new SitesReleasesResourceApi(_requester);
  SitesVersionsResourceApi get versions =>
      new SitesVersionsResourceApi(_requester);

  SitesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format:
  /// <code>sites/<var>site-name</var>/config</code>
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
  async.Future<SiteConfig> getConfig(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new SiteConfig.fromJson(data));
  }

  /// Sets the Hosting metadata for a specific site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to update the SiteConfig, in the
  /// format:
  /// <code>sites/<var>site-name</var>/config</code>
  /// Value must have pattern "^sites/[^/]+/config$".
  ///
  /// [updateMask] - A set of field names from your [site
  /// configuration](../sites.SiteConfig)
  /// that you want to update.
  /// <br>A field will be overwritten if, and only if, it's in the mask.
  /// <br>If a mask is not provided then a default mask of only
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
  async.Future<SiteConfig> updateConfig(SiteConfig request, core.String name,
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
    return _response.then((data) => new SiteConfig.fromJson(data));
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
  /// the format:
  /// <code>sites/<var>site-name</var></code>
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
  async.Future<Domain> create(Domain request, core.String parent,
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
        '/domains';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Domain.fromJson(data));
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
  async.Future<Domain> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Domain.fromJson(data));
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// <code>sites/<var>site-name</var></code>
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [pageSize] - The page size to return. Defaults to 50.
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
  async.Future<ListDomainsResponse> list(core.String parent,
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
        '/domains';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDomainsResponse.fromJson(data));
  }

  /// Updates the specified domain mapping, creating the mapping as if it does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to update or create,
  /// if an
  /// association doesn't already exist.
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
  async.Future<Domain> update(Domain request, core.String name,
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
    return _response.then((data) => new Domain.fromJson(data));
  }
}

class SitesReleasesResourceApi {
  final commons.ApiRequester _requester;

  SitesReleasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new release which makes the content of the specified version
  /// actively display on the site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The site that the release belongs to, in the format:
  /// <code>sites/<var>site-name</var></code>
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// <code>/sites/<var>site-name</var>/versions/<var>versionID</var></code>
  /// The <var>site-name</var> in this version identifier must match the
  /// <var>site-name</var> in the `parent` parameter.
  /// <br>
  /// <br>This query parameter must be empty if the `type` field in the
  /// request body is `SITE_DISABLE`.
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
  async.Future<Release> create(Release request, core.String parent,
      {core.String versionName, core.String $fields}) {
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
    if (versionName != null) {
      _queryParams["versionName"] = [versionName];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/releases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Release.fromJson(data));
  }

  /// Lists the releases that have been created on the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list files, in the format:
  /// <code>sites/<var>site-name</var></code>
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [pageSize] - The page size to return. Defaults to 100.
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
  async.Future<ListReleasesResponse> list(core.String parent,
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
        '/releases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListReleasesResponse.fromJson(data));
  }
}

class SitesVersionsResourceApi {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResourceApi get files =>
      new SitesVersionsFilesResourceApi(_requester);

  SitesVersionsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new version for a site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the version for, in the format:
  /// <code>sites/<var>site-name</var></code>
  /// Value must have pattern "^sites/[^/]+$".
  ///
  /// [sizeBytes] - The self-reported size of the version. This value is used
  /// for a pre-emptive
  /// quota check for legacy version uploads.
  ///
  /// [versionId] - A unique id for the new version. This is only specified for
  /// legacy version
  /// creations.
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
  async.Future<Version> create(Version request, core.String parent,
      {core.String sizeBytes, core.String versionId, core.String $fields}) {
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
    if (sizeBytes != null) {
      _queryParams["sizeBytes"] = [sizeBytes];
    }
    if (versionId != null) {
      _queryParams["versionId"] = [versionId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/versions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Version.fromJson(data));
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the version to be deleted, in the format:
  /// <code>sites/<var>site-name</var>/versions/<var>versionID</var></code>
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

  /// Updates the specified metadata for a version. Note that this method will
  /// fail with `FAILED_PRECONDITION` in the event of an invalid state
  /// transition. The only valid transition for a version is currently from a
  /// `CREATED` status to a `FINALIZED` status.
  /// Use [`DeleteVersion`](../sites.versions/delete) to set the status of a
  /// version to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique identifier for a version, in the format:
  /// <code>sites/<var>site-name</var>/versions/<var>versionID</var></code>
  /// This name is provided in the response body when you call the
  /// [`CreateVersion`](../sites.versions/create) endpoint.
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
  ///
  /// [updateMask] - A set of field names from your [version](../sites.versions)
  /// that you want
  /// to update.
  /// <br>A field will be overwritten if, and only if, it's in the mask.
  /// <br>If a mask is not provided then a default mask of only
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
  async.Future<Version> patch(Version request, core.String name,
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
    return _response.then((data) => new Version.fromJson(data));
  }

  /// Adds content files to a version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to add files to, in the format:
  /// <code>sites/<var>site-name</var>/versions/<var>versionID</var></code>
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
      PopulateVersionFilesRequest request, core.String parent,
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
        ':populateFiles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new PopulateVersionFilesResponse.fromJson(data));
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
  /// <code>sites/<var>site-name</var>/versions/<var>versionID</var></code>
  /// Value must have pattern "^sites/[^/]+/versions/[^/]+$".
  ///
  /// [status] - The type of files in the version that should be listed.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : A STATUS_UNSPECIFIED.
  /// - "EXPECTED" : A EXPECTED.
  /// - "ACTIVE" : A ACTIVE.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  /// This will be the
  /// encoded version of a firebase.hosting.proto.metadata.ListFilesPageToken.
  ///
  /// [pageSize] - The page size to return. Defaults to 1000.
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
  async.Future<ListVersionFilesResponse> list(core.String parent,
      {core.String status,
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
    if (status != null) {
      _queryParams["status"] = [status];
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
        '/files';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListVersionFilesResponse.fromJson(data));
  }
}

/// Contains metadata about the user who performed an action, such as creating
/// a release or finalizing a version.
class ActingUser {
  /// The email address of the user when the user performed the action.
  core.String email;

  /// A profile image URL for the user. May not be present if the user has
  /// changed their email address or deleted their account.
  core.String imageUrl;

  ActingUser();

  ActingUser.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
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
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (token != null) {
      _json["token"] = token;
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
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (path != null) {
      _json["path"] = path;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

/// A configured rewrite that directs requests to a Cloud Run service. If the
/// Cloud Run service does not exist when setting or updating your Firebase
/// Hosting configuration, then the request fails. Any errors from the Cloud Run
/// service are passed to the end user (for example, if you delete a service,
/// any
/// requests directed to that service receive a `404` error).
class CloudRunRewrite {
  /// Optional. User-provided region where the Cloud Run service is hosted.<br>
  /// Defaults to `us-central1` if not supplied.
  core.String region;

  /// Required. User-defined ID of the Cloud Run service.
  core.String serviceId;

  CloudRunRewrite();

  CloudRunRewrite.fromJson(core.Map _json) {
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("serviceId")) {
      serviceId = _json["serviceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (region != null) {
      _json["region"] = region;
    }
    if (serviceId != null) {
      _json["serviceId"] = serviceId;
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
  /// - "DOMAIN_CHANGE_PENDING" : An operation is in progress on the domain
  /// association and no further
  /// operations can be performed until it is complete.
  /// - "DOMAIN_ACTIVE" : The domain association is active and no additional
  /// action is required.
  /// - "DOMAIN_VERIFICATION_REQUIRED" : The domain was previously verified in
  /// the legacy system. User must
  /// reverify the domain through the ownership service.
  /// - "DOMAIN_VERIFICATION_LOST" : The domain verification has been lost and
  /// the domain is in the grace period
  /// before being removed from the Firebase Hosting site.
  core.String status;

  /// Output only. The time at which the domain was last updated.
  core.String updateTime;

  Domain();

  Domain.fromJson(core.Map _json) {
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("domainRedirect")) {
      domainRedirect = new DomainRedirect.fromJson(_json["domainRedirect"]);
    }
    if (_json.containsKey("provisioning")) {
      provisioning = new DomainProvisioning.fromJson(_json["provisioning"]);
    }
    if (_json.containsKey("site")) {
      site = _json["site"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (domainRedirect != null) {
      _json["domainRedirect"] = (domainRedirect).toJson();
    }
    if (provisioning != null) {
      _json["provisioning"] = (provisioning).toJson();
    }
    if (site != null) {
      _json["site"] = site;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The current certificate provisioning status information for a domain.
class DomainProvisioning {
  /// The TXT records (for the certificate challenge) that were found at the
  /// last
  /// DNS fetch.
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
  /// but not all of them. No
  /// extra (non-required) DNS records were detected.
  /// - "DNS_MATCH" : All required DNS records were detected. No extra
  /// (non-required) DNS records
  /// were detected.
  /// - "DNS_EXTRANEOUS_MATCH" : The domain has at least one of the required DNS
  /// records, and it has at
  /// least one extra (non-required) DNS record.
  core.String dnsStatus;

  /// The list of IPs to which the domain is expected to resolve.
  core.List<core.String> expectedIps;

  DomainProvisioning();

  DomainProvisioning.fromJson(core.Map _json) {
    if (_json.containsKey("certChallengeDiscoveredTxt")) {
      certChallengeDiscoveredTxt =
          (_json["certChallengeDiscoveredTxt"] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey("certChallengeDns")) {
      certChallengeDns =
          new CertDnsChallenge.fromJson(_json["certChallengeDns"]);
    }
    if (_json.containsKey("certChallengeHttp")) {
      certChallengeHttp =
          new CertHttpChallenge.fromJson(_json["certChallengeHttp"]);
    }
    if (_json.containsKey("certStatus")) {
      certStatus = _json["certStatus"];
    }
    if (_json.containsKey("discoveredIps")) {
      discoveredIps = (_json["discoveredIps"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("dnsFetchTime")) {
      dnsFetchTime = _json["dnsFetchTime"];
    }
    if (_json.containsKey("dnsStatus")) {
      dnsStatus = _json["dnsStatus"];
    }
    if (_json.containsKey("expectedIps")) {
      expectedIps = (_json["expectedIps"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certChallengeDiscoveredTxt != null) {
      _json["certChallengeDiscoveredTxt"] = certChallengeDiscoveredTxt;
    }
    if (certChallengeDns != null) {
      _json["certChallengeDns"] = (certChallengeDns).toJson();
    }
    if (certChallengeHttp != null) {
      _json["certChallengeHttp"] = (certChallengeHttp).toJson();
    }
    if (certStatus != null) {
      _json["certStatus"] = certStatus;
    }
    if (discoveredIps != null) {
      _json["discoveredIps"] = discoveredIps;
    }
    if (dnsFetchTime != null) {
      _json["dnsFetchTime"] = dnsFetchTime;
    }
    if (dnsStatus != null) {
      _json["dnsStatus"] = dnsStatus;
    }
    if (expectedIps != null) {
      _json["expectedIps"] = expectedIps;
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
  /// of
  /// `301 Moved Permanently`.
  core.String type;

  DomainRedirect();

  DomainRedirect.fromJson(core.Map _json) {
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (type != null) {
      _json["type"] = type;
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

/// A [`header`](/docs/hosting/full-config#headers) defines custom headers to
/// add to a response should the request URL path match the pattern.
class Header {
  /// Required. The user-supplied
  /// [glob pattern](/docs/hosting/full-config#glob_pattern_matching) to match
  /// against the request URL path.
  core.String glob;

  /// Required. The additional headers to add to the response.
  core.Map<core.String, core.String> headers;

  Header();

  Header.fromJson(core.Map _json) {
    if (_json.containsKey("glob")) {
      glob = _json["glob"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (glob != null) {
      _json["glob"] = glob;
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    return _json;
  }
}

class ListDomainsResponse {
  /// The list of domains, if any exist.
  core.List<Domain> domains;

  /// The pagination token, if more results exist.
  core.String nextPageToken;

  ListDomainsResponse();

  ListDomainsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("domains")) {
      domains = (_json["domains"] as core.List)
          .map<Domain>((value) => new Domain.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domains != null) {
      _json["domains"] = domains.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
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
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("releases")) {
      releases = (_json["releases"] as core.List)
          .map<Release>((value) => new Release.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (releases != null) {
      _json["releases"] = releases.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.List)
          .map<VersionFile>((value) => new VersionFile.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class PopulateVersionFilesRequest {
  /// A set of file paths to the hashes corresponding to assets that should be
  /// added to the version. Note that a file path to an empty hash will remove
  /// the path from the version. Calculate a hash by Gzipping the file then
  /// taking the SHA256 hash of the newly compressed file.
  core.Map<core.String, core.String> files;

  PopulateVersionFilesRequest();

  PopulateVersionFilesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files;
    }
    return _json;
  }
}

class PopulateVersionFilesResponse {
  /// The content hashes of the specified files that need to be uploaded to the
  /// specified endpoint.
  core.List<core.String> uploadRequiredHashes;

  /// The URL to which the files should be uploaded, in the format:
  /// <br>"https://upload-firebasehosting.googleapis.com/upload/sites/<var>site-name</var>/versions/<var>versionID</var>/files".
  /// <br>Perform a multipart `POST` of the Gzipped file contents to the URL
  /// using a forward slash and the hash of the file appended to the end.
  core.String uploadUrl;

  PopulateVersionFilesResponse();

  PopulateVersionFilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("uploadRequiredHashes")) {
      uploadRequiredHashes =
          (_json["uploadRequiredHashes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("uploadUrl")) {
      uploadUrl = _json["uploadUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uploadRequiredHashes != null) {
      _json["uploadRequiredHashes"] = uploadRequiredHashes;
    }
    if (uploadUrl != null) {
      _json["uploadUrl"] = uploadUrl;
    }
    return _json;
  }
}

/// A [`redirect`](/docs/hosting/full-config#redirects) represents the
/// configuration for returning an HTTP redirect response given a matching
/// request URL path.
class Redirect {
  /// Required. The user-supplied
  /// [glob pattern](/docs/hosting/full-config#glob_pattern_matching) to match
  /// against the request URL path.
  core.String glob;

  /// Required. The value to put in the HTTP location header of the response.
  /// <br>The location can contain capture group values from the pattern using
  /// a `:` prefix to identify the segment and an optional `*` to capture the
  /// rest of the URL.
  /// For example:
  /// <code>"glob": "/:capture*",
  /// <br>"statusCode": 301,
  /// <br>"location": "https://example.com/foo/:capture"</code>
  core.String location;

  /// Required. The status HTTP code to return in the response. It must be a
  /// valid 3xx status code.
  core.int statusCode;

  Redirect();

  Redirect.fromJson(core.Map _json) {
    if (_json.containsKey("glob")) {
      glob = _json["glob"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("statusCode")) {
      statusCode = _json["statusCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (glob != null) {
      _json["glob"] = glob;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (statusCode != null) {
      _json["statusCode"] = statusCode;
    }
    return _json;
  }
}

/// A `Release` is a particular
/// [collection of configurations and files](sites.versions)
/// that is set to be public at a particular time.
class Release {
  /// The deploy description when the release was created. The value can be up
  /// to
  /// 512&nbsp;characters.
  core.String message;

  /// Output only. The unique identifier for the release, in the format:
  /// <code>sites/<var>site-name</var>/releases/<var>releaseID</var></code>
  /// This name is provided in the response body when you call the
  /// [`CreateRelease`](sites.releases/create) endpoint.
  core.String name;

  /// Output only. The time at which the version is set to be public.
  core.String releaseTime;

  /// Output only. Identifies the user who created the release.
  ActingUser releaseUser;

  /// Explains the reason for the release.
  /// <br>Specify a value for this field only when creating a `SITE_DISABLE`
  /// type release.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified type. Indicates that a version was
  /// released.
  /// <br>This is the default value when no other `type` is explicitly
  /// specified.
  /// - "DEPLOY" : A version was uploaded to Firebase Hosting and released.
  /// - "ROLLBACK" : The release points back to a previously deployed version.
  /// - "SITE_DISABLE" : The release prevents the site from serving content.
  /// Firebase Hosting acts
  /// as if the site never existed.
  core.String type;

  /// Output only.  The configuration and content that was released.
  Version version;

  Release();

  Release.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("releaseTime")) {
      releaseTime = _json["releaseTime"];
    }
    if (_json.containsKey("releaseUser")) {
      releaseUser = new ActingUser.fromJson(_json["releaseUser"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("version")) {
      version = new Version.fromJson(_json["version"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = message;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (releaseTime != null) {
      _json["releaseTime"] = releaseTime;
    }
    if (releaseUser != null) {
      _json["releaseUser"] = (releaseUser).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (version != null) {
      _json["version"] = (version).toJson();
    }
    return _json;
  }
}

/// A [`rewrite`](/docs/hosting/full-config#rewrites) represents an internal
/// content rewrite on the version. If the pattern matches, the request will be
/// handled as if it were to the destination path specified in the
/// configuration.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  core.bool dynamicLinks;

  /// The function to proxy requests to. Must match the exported function
  /// name exactly.
  core.String function;

  /// Required. The user-supplied
  /// [glob pattern](/docs/hosting/full-config#glob_pattern_matching) to match
  /// against the request URL path.
  core.String glob;

  /// The URL path to rewrite the request to.
  core.String path;

  /// The request will be forwarded to Cloud Run.
  CloudRunRewrite run;

  Rewrite();

  Rewrite.fromJson(core.Map _json) {
    if (_json.containsKey("dynamicLinks")) {
      dynamicLinks = _json["dynamicLinks"];
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("glob")) {
      glob = _json["glob"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("run")) {
      run = new CloudRunRewrite.fromJson(_json["run"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dynamicLinks != null) {
      _json["dynamicLinks"] = dynamicLinks;
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (glob != null) {
      _json["glob"] = glob;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (run != null) {
      _json["run"] = (run).toJson();
    }
    return _json;
  }
}

/// The configuration for how incoming requests to a site should be routed and
/// processed before serving content. The patterns are matched and applied
/// according to a specific
/// [priority order](/docs/hosting/full-config#hosting_priority_order).
class ServingConfig {
  /// How to handle well known App Association files.
  /// Possible string values are:
  /// - "AUTO" : The app association files will be automattically created from
  /// the apps
  /// that exist in the Firebase project.
  /// - "NONE" : No special handling of the app association files will occur,
  /// these paths
  /// will result in a 404 unless caught with a Rewrite.
  core.String appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  core.bool cleanUrls;

  /// A list of custom response headers that are added to the content if the
  /// request URL path matches the glob.
  core.List<Header> headers;

  /// A list of globs that will cause the response to redirect to another
  /// location.
  core.List<Redirect> redirects;

  /// A list of rewrites that will act as if the service were given the
  /// destination URL.
  core.List<Rewrite> rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  /// Possible string values are:
  /// - "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED" : No behavior is specified.
  /// <br>Files are served at their exact location only, and trailing slashes
  /// are only added to directory indexes.
  /// - "ADD" : Trailing slashes are _added_ to directory indexes as well as to
  /// any URL
  /// path not ending in a file extension.
  /// - "REMOVE" : Trailing slashes are _removed_ from directory indexes as well
  /// as from any
  /// URL path not ending in a file extension.
  core.String trailingSlashBehavior;

  ServingConfig();

  ServingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("appAssociation")) {
      appAssociation = _json["appAssociation"];
    }
    if (_json.containsKey("cleanUrls")) {
      cleanUrls = _json["cleanUrls"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.List)
          .map<Header>((value) => new Header.fromJson(value))
          .toList();
    }
    if (_json.containsKey("redirects")) {
      redirects = (_json["redirects"] as core.List)
          .map<Redirect>((value) => new Redirect.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rewrites")) {
      rewrites = (_json["rewrites"] as core.List)
          .map<Rewrite>((value) => new Rewrite.fromJson(value))
          .toList();
    }
    if (_json.containsKey("trailingSlashBehavior")) {
      trailingSlashBehavior = _json["trailingSlashBehavior"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appAssociation != null) {
      _json["appAssociation"] = appAssociation;
    }
    if (cleanUrls != null) {
      _json["cleanUrls"] = cleanUrls;
    }
    if (headers != null) {
      _json["headers"] = headers.map((value) => (value).toJson()).toList();
    }
    if (redirects != null) {
      _json["redirects"] = redirects.map((value) => (value).toJson()).toList();
    }
    if (rewrites != null) {
      _json["rewrites"] = rewrites.map((value) => (value).toJson()).toList();
    }
    if (trailingSlashBehavior != null) {
      _json["trailingSlashBehavior"] = trailingSlashBehavior;
    }
    return _json;
  }
}

/// A `SiteConfig` contains metadata associated with a specific site that
/// controls Firebase Hosting serving behavior
class SiteConfig {
  /// The number of FINALIZED versions that will be held for a site before
  /// automatic deletion. When a new version is deployed, content for versions
  /// in storage in excess of this number will be deleted, and will no longer be
  /// billed for storage usage. Oldest versions will be deleted first; sites are
  /// created with an unlimited number of max_versions by default.
  core.String maxVersions;

  SiteConfig();

  SiteConfig.fromJson(core.Map _json) {
    if (_json.containsKey("maxVersions")) {
      maxVersions = _json["maxVersions"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxVersions != null) {
      _json["maxVersions"] = maxVersions;
    }
    return _json;
  }
}

/// A `Version` is the collection of configuration and
/// [static files](sites.versions.files) that determine how a site is displayed.
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

  /// Output only. The total number of files associated with the version.
  /// <br>This value is calculated after a version is `FINALIZED`.
  core.String fileCount;

  /// Output only. The time at which the version was `FINALIZED`.
  core.String finalizeTime;

  /// Output only. Identifies the user who `FINALIZED` the version.
  ActingUser finalizeUser;

  /// The labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String> labels;

  /// The unique identifier for a version, in the format:
  /// <code>sites/<var>site-name</var>/versions/<var>versionID</var></code>
  /// This name is provided in the response body when you call the
  /// [`CreateVersion`](../sites.versions/create) endpoint.
  core.String name;

  /// The deploy status of a version.
  /// <br>
  /// <br>For a successful deploy, call the
  /// [`CreateVersion`](sites.versions/create) endpoint to make a new version
  /// (`CREATED` status),
  /// [upload all desired files](sites.versions/populateFiles) to the version,
  /// then [update](sites.versions/patch) the version to the `FINALIZED` status.
  /// <br>
  /// <br>Note that if you leave the version in the `CREATED` state for more
  /// than 12&nbsp;hours, the system will automatically mark the version as
  /// `ABANDONED`.
  /// <br>
  /// <br>You can also change the status of a version to `DELETED` by calling
  /// the
  /// [`DeleteVersion`](sites.versions/delete) endpoint.
  /// Possible string values are:
  /// - "VERSION_STATUS_UNSPECIFIED" : The default status; should not be
  /// intentionally used.
  /// - "CREATED" : The version has been created, and content is currently being
  /// added to the
  /// version.
  /// - "FINALIZED" : All content has been added to the version, and the version
  /// can no longer be
  /// changed.
  /// - "DELETED" : The version has been deleted.
  /// - "ABANDONED" : The version was not updated to `FINALIZED` within
  /// 12&nbsp;hours and was
  /// automatically deleted.
  /// - "EXPIRED" : The version is outside the site-configured limit for the
  /// number of
  /// retained versions, so the version's content is scheduled for deletion.
  core.String status;

  /// Output only. The total stored bytesize of the version.
  /// <br>This value is calculated after a version is `FINALIZED`.
  core.String versionBytes;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = new ServingConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("createUser")) {
      createUser = new ActingUser.fromJson(_json["createUser"]);
    }
    if (_json.containsKey("deleteTime")) {
      deleteTime = _json["deleteTime"];
    }
    if (_json.containsKey("deleteUser")) {
      deleteUser = new ActingUser.fromJson(_json["deleteUser"]);
    }
    if (_json.containsKey("fileCount")) {
      fileCount = _json["fileCount"];
    }
    if (_json.containsKey("finalizeTime")) {
      finalizeTime = _json["finalizeTime"];
    }
    if (_json.containsKey("finalizeUser")) {
      finalizeUser = new ActingUser.fromJson(_json["finalizeUser"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("versionBytes")) {
      versionBytes = _json["versionBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (createUser != null) {
      _json["createUser"] = (createUser).toJson();
    }
    if (deleteTime != null) {
      _json["deleteTime"] = deleteTime;
    }
    if (deleteUser != null) {
      _json["deleteUser"] = (deleteUser).toJson();
    }
    if (fileCount != null) {
      _json["fileCount"] = fileCount;
    }
    if (finalizeTime != null) {
      _json["finalizeTime"] = finalizeTime;
    }
    if (finalizeUser != null) {
      _json["finalizeUser"] = (finalizeUser).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (versionBytes != null) {
      _json["versionBytes"] = versionBytes;
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
  /// version.
  /// <br>The value will be either `pending upload` or `uploaded`.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded
  /// in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  core.String status;

  VersionFile();

  VersionFile.fromJson(core.Map _json) {
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}
