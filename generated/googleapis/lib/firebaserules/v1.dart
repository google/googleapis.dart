// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.firebaserules.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firebaserules/v1';

/// Creates and manages rules that determine when a Firebase Rules-enabled
/// service should permit a request.
class FirebaserulesApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and administer all your Firebase data and settings
  static const FirebaseScope = "https://www.googleapis.com/auth/firebase";

  /// View all your Firebase data and settings
  static const FirebaseReadonlyScope =
      "https://www.googleapis.com/auth/firebase.readonly";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FirebaserulesApi(http.Client client,
      {core.String rootUrl = "https://firebaserules.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsReleasesResourceApi get releases =>
      new ProjectsReleasesResourceApi(_requester);
  ProjectsRulesetsResourceApi get rulesets =>
      new ProjectsRulesetsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Test `Source` for syntactic and semantic correctness. Issues present, if
  /// any, will be returned to the caller with a description, severity, and
  /// source location.
  ///
  /// The test method may be executed with `Source` or a `Ruleset` name.
  /// Passing `Source` is useful for unit testing new rules. Passing a `Ruleset`
  /// name is useful for regression testing an existing rule.
  ///
  /// The following is an example of `Source` that permits users to upload
  /// images
  /// to a bucket bearing their user id and matching the correct metadata:
  ///
  /// _*Example*_
  ///
  ///     // Users are allowed to subscribe and unsubscribe to the blog.
  ///     service firebase.storage {
  ///       match /users/{userId}/images/{imageName} {
  ///           allow write: if userId == request.auth.uid
  ///               && (imageName.matches('*.png$')
  ///               || imageName.matches('*.jpg$'))
  ///               && resource.mimeType.matches('^image/')
  ///       }
  ///     }
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Tests may either provide `source` or a `Ruleset` resource name.
  ///
  /// For tests against `source`, the resource name must refer to the project:
  /// Format: `projects/{project_id}`
  ///
  /// For tests against a `Ruleset`, this must be the `Ruleset` resource name:
  /// Format: `projects/{project_id}/rulesets/{ruleset_id}`
  /// Value must have pattern "^projects/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestRulesetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestRulesetResponse> test(
      TestRulesetRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':test';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TestRulesetResponse.fromJson(data));
  }
}

class ProjectsReleasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsReleasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a `Release`.
  ///
  /// Release names should reflect the developer's deployment practices. For
  /// example, the release name may include the environment name, application
  /// name, application version, or any other name meaningful to the developer.
  /// Once a `Release` refers to a `Ruleset`, the rules can be enforced by
  /// Firebase Rules-enabled services.
  ///
  /// More than one `Release` may be 'live' concurrently. Consider the following
  /// three `Release` names for `projects/foo` and the `Ruleset` to which they
  /// refer.
  ///
  /// Release Name                    | Ruleset Name
  /// --------------------------------|-------------
  /// projects/foo/releases/prod      | projects/foo/rulesets/uuid123
  /// projects/foo/releases/prod/beta | projects/foo/rulesets/uuid123
  /// projects/foo/releases/prod/v23  | projects/foo/rulesets/uuid456
  ///
  /// The table reflects the `Ruleset` rollout in progress. The `prod` and
  /// `prod/beta` releases refer to the same `Ruleset`. However, `prod/v23`
  /// refers to a new `Ruleset`. The `Ruleset` reference for a `Release` may be
  /// updated using the UpdateRelease method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the project which owns this `Release`.
  ///
  /// Format: `projects/{project_id}`
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Release> create(Release request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/releases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Release.fromJson(data));
  }

  /// Delete a `Release` by resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the `Release` to delete.
  ///
  /// Format: `projects/{project_id}/releases/{release_id}`
  /// Value must have pattern "^projects/[^/]+/releases/.+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Get a `Release` by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the `Release`.
  ///
  /// Format: `projects/{project_id}/releases/{release_id}`
  /// Value must have pattern "^projects/[^/]+/releases/.+$".
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
  async.Future<Release> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Release.fromJson(data));
  }

  /// Get the `Release` executable to use when enforcing rules.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the `Release`.
  ///
  /// Format: `projects/{project_id}/releases/{release_id}`
  /// Value must have pattern "^projects/[^/]+/releases/.+$".
  ///
  /// [executableVersion] - The requested runtime executable version.
  /// Defaults to FIREBASE_RULES_EXECUTABLE_V1.
  /// Possible string values are:
  /// - "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED" : A
  /// RELEASE_EXECUTABLE_VERSION_UNSPECIFIED.
  /// - "FIREBASE_RULES_EXECUTABLE_V1" : A FIREBASE_RULES_EXECUTABLE_V1.
  /// - "FIREBASE_RULES_EXECUTABLE_V2" : A FIREBASE_RULES_EXECUTABLE_V2.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetReleaseExecutableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetReleaseExecutableResponse> getExecutable(core.String name,
      {core.String executableVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (executableVersion != null) {
      _queryParams["executableVersion"] = [executableVersion];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':getExecutable';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GetReleaseExecutableResponse.fromJson(data));
  }

  /// List the `Release` values for a project. This list may optionally be
  /// filtered by `Release` name, `Ruleset` name, `TestSuite` name, or any
  /// combination thereof.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the project.
  ///
  /// Format: `projects/{project_id}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - `Release` filter. The list method supports filters with
  /// restrictions on the
  /// `Release.name`, `Release.ruleset_name`, and `Release.test_suite_name`.
  ///
  /// Example 1: A filter of 'name=prod*' might return `Release`s with names
  /// within 'projects/foo' prefixed with 'prod':
  ///
  /// Name                          | Ruleset Name
  /// ------------------------------|-------------
  /// projects/foo/releases/prod    | projects/foo/rulesets/uuid1234
  /// projects/foo/releases/prod/v1 | projects/foo/rulesets/uuid1234
  /// projects/foo/releases/prod/v2 | projects/foo/rulesets/uuid8888
  ///
  /// Example 2: A filter of `name=prod* ruleset_name=uuid1234` would return
  /// only
  /// `Release` instances for 'projects/foo' with names prefixed with 'prod'
  /// referring to the same `Ruleset` name of 'uuid1234':
  ///
  /// Name                          | Ruleset Name
  /// ------------------------------|-------------
  /// projects/foo/releases/prod    | projects/foo/rulesets/1234
  /// projects/foo/releases/prod/v1 | projects/foo/rulesets/1234
  ///
  /// In the examples, the filter parameters refer to the search filters are
  /// relative to the project. Fully qualified prefixed may also be used. e.g.
  /// `test_suite_name=projects/foo/testsuites/uuid1`
  ///
  /// [pageToken] - Next page token for the next batch of `Release` instances.
  ///
  /// [pageSize] - Page size to load. Maximum of 100. Defaults to 10.
  /// Note: `page_size` is just a hint and the service may choose to load fewer
  /// than `page_size` results due to the size of the output. To traverse all of
  /// the releases, the caller should iterate until the `page_token` on the
  /// response is empty.
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
  async.Future<ListReleasesResponse> list(core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/releases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListReleasesResponse.fromJson(data));
  }

  /// Update a `Release` via PATCH.
  ///
  /// Only updates to the `ruleset_name` and `test_suite_name` fields will be
  /// honored. `Release` rename is not supported. To create a `Release` use the
  /// CreateRelease method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the project which owns this `Release`.
  ///
  /// Format: `projects/{project_id}`
  /// Value must have pattern "^projects/[^/]+/releases/.+$".
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
  async.Future<Release> patch(UpdateReleaseRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Release.fromJson(data));
  }
}

class ProjectsRulesetsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsRulesetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a `Ruleset` from `Source`.
  ///
  /// The `Ruleset` is given a unique generated name which is returned to the
  /// caller. `Source` containing syntactic or semantics errors will result in
  /// an
  /// error response indicating the first error encountered. For a detailed view
  /// of `Source` issues, use TestRuleset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for Project which owns this `Ruleset`.
  ///
  /// Format: `projects/{project_id}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ruleset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ruleset> create(Ruleset request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/rulesets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Ruleset.fromJson(data));
  }

  /// Delete a `Ruleset` by resource name.
  ///
  /// If the `Ruleset` is referenced by a `Release` the operation will fail.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the ruleset to delete.
  ///
  /// Format: `projects/{project_id}/rulesets/{ruleset_id}`
  /// Value must have pattern "^projects/[^/]+/rulesets/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Get a `Ruleset` by name including the full `Source` contents.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the ruleset to get.
  ///
  /// Format: `projects/{project_id}/rulesets/{ruleset_id}`
  /// Value must have pattern "^projects/[^/]+/rulesets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ruleset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ruleset> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Ruleset.fromJson(data));
  }

  /// List `Ruleset` metadata only and optionally filter the results by
  /// `Ruleset`
  /// name.
  ///
  /// The full `Source` contents of a `Ruleset` may be retrieved with
  /// GetRuleset.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the project.
  ///
  /// Format: `projects/{project_id}`
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - `Ruleset` filter. The list method supports filters with
  /// restrictions on
  /// `Ruleset.name`.
  ///
  /// Filters on `Ruleset.create_time` should use the `date` function which
  /// parses strings that conform to the RFC 3339 date/time specifications.
  ///
  /// Example: `create_time > date("2017-01-01T00:00:00Z") AND name=UUID-*`
  ///
  /// [pageToken] - Next page token for loading the next batch of `Ruleset`
  /// instances.
  ///
  /// [pageSize] - Page size to load. Maximum of 100. Defaults to 10.
  /// Note: `page_size` is just a hint and the service may choose to load less
  /// than `page_size` due to the size of the output. To traverse all of the
  /// releases, caller should iterate until the `page_token` is empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRulesetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRulesetsResponse> list(core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/rulesets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRulesetsResponse.fromJson(data));
  }
}

/// Arg matchers for the mock function.
class Arg {
  /// Argument matches any value provided.
  Empty anyValue;

  /// Argument exactly matches value provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object exactValue;

  Arg();

  Arg.fromJson(core.Map _json) {
    if (_json.containsKey("anyValue")) {
      anyValue = new Empty.fromJson(_json["anyValue"]);
    }
    if (_json.containsKey("exactValue")) {
      exactValue = _json["exactValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (anyValue != null) {
      _json["anyValue"] = (anyValue).toJson();
    }
    if (exactValue != null) {
      _json["exactValue"] = exactValue;
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

/// `File` containing source content.
class File {
  /// Textual Content.
  core.String content;

  /// Fingerprint (e.g. github sha) associated with the `File`.
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return convert.base64.decode(fingerprint);
  }

  set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// File name.
  core.String name;

  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Represents a service-defined function call that was invoked during test
/// execution.
class FunctionCall {
  /// The arguments that were provided to the function.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> args;

  /// Name of the function invoked.
  core.String function;

  FunctionCall();

  FunctionCall.fromJson(core.Map _json) {
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (args != null) {
      _json["args"] = args;
    }
    if (function != null) {
      _json["function"] = function;
    }
    return _json;
  }
}

/// Mock function definition.
///
/// Mocks must refer to a function declared by the target service. The type of
/// the function args and result will be inferred at test time. If either the
/// arg or result values are not compatible with function type declaration, the
/// request will be considered invalid.
///
/// More than one `FunctionMock` may be provided for a given function name so
/// long as the `Arg` matchers are distinct. There may be only one function
/// for a given overload where all `Arg` values are `Arg.any_value`.
class FunctionMock {
  /// The list of `Arg` values to match. The order in which the arguments are
  /// provided is the order in which they must appear in the function
  /// invocation.
  core.List<Arg> args;

  /// The name of the function.
  ///
  /// The function name must match one provided by a service declaration.
  core.String function;

  /// The mock result of the function call.
  Result result;

  FunctionMock();

  FunctionMock.fromJson(core.Map _json) {
    if (_json.containsKey("args")) {
      args = (_json["args"] as core.List)
          .map<Arg>((value) => new Arg.fromJson(value))
          .toList();
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("result")) {
      result = new Result.fromJson(_json["result"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (args != null) {
      _json["args"] = args.map((value) => (value).toJson()).toList();
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

/// The response for FirebaseRulesService.GetReleaseExecutable
class GetReleaseExecutableResponse {
  /// Executable view of the `Ruleset` referenced by the `Release`.
  core.String executable;
  core.List<core.int> get executableAsBytes {
    return convert.base64.decode(executable);
  }

  set executableAsBytes(core.List<core.int> _bytes) {
    executable =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The Rules runtime version of the executable.
  /// Possible string values are:
  /// - "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED" : Executable format
  /// unspecified.
  /// Defaults to FIREBASE_RULES_EXECUTABLE_V1
  /// - "FIREBASE_RULES_EXECUTABLE_V1" : Firebase Rules syntax 'rules2'
  /// executable versions:
  /// Custom AST for use with Java clients.
  /// - "FIREBASE_RULES_EXECUTABLE_V2" : CEL-based executable for use with C++
  /// clients.
  core.String executableVersion;

  /// `Language` used to generate the executable bytes.
  /// Possible string values are:
  /// - "LANGUAGE_UNSPECIFIED" : Language unspecified. Defaults to
  /// FIREBASE_RULES.
  /// - "FIREBASE_RULES" : Firebase Rules language.
  /// - "EVENT_FLOW_TRIGGERS" : Event Flow triggers.
  core.String language;

  /// `Ruleset` name associated with the `Release` executable.
  core.String rulesetName;

  /// Optional, indicates the freshness of the result. The response is
  /// guaranteed to be the latest within an interval up to the
  /// sync_time (inclusive).
  core.String syncTime;

  /// Timestamp for the most recent `Release.update_time`.
  core.String updateTime;

  GetReleaseExecutableResponse();

  GetReleaseExecutableResponse.fromJson(core.Map _json) {
    if (_json.containsKey("executable")) {
      executable = _json["executable"];
    }
    if (_json.containsKey("executableVersion")) {
      executableVersion = _json["executableVersion"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("rulesetName")) {
      rulesetName = _json["rulesetName"];
    }
    if (_json.containsKey("syncTime")) {
      syncTime = _json["syncTime"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (executable != null) {
      _json["executable"] = executable;
    }
    if (executableVersion != null) {
      _json["executableVersion"] = executableVersion;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (rulesetName != null) {
      _json["rulesetName"] = rulesetName;
    }
    if (syncTime != null) {
      _json["syncTime"] = syncTime;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Issues include warnings, errors, and deprecation notices.
class Issue {
  /// Short error description.
  core.String description;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : An unspecified severity.
  /// - "DEPRECATION" : Deprecation issue for statements and method that may no
  /// longer be
  /// supported or maintained.
  /// - "WARNING" : Warnings such as: unused variables.
  /// - "ERROR" : Errors such as: unmatched curly braces or variable
  /// redefinition.
  core.String severity;

  /// Position of the issue in the `Source`.
  SourcePosition sourcePosition;

  Issue();

  Issue.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("sourcePosition")) {
      sourcePosition = new SourcePosition.fromJson(_json["sourcePosition"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (sourcePosition != null) {
      _json["sourcePosition"] = (sourcePosition).toJson();
    }
    return _json;
  }
}

/// The response for FirebaseRulesService.ListReleases.
class ListReleasesResponse {
  /// The pagination token to retrieve the next page of results. If the value is
  /// empty, no further results remain.
  core.String nextPageToken;

  /// List of `Release` instances.
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

/// The response for FirebaseRulesService.ListRulesets.
class ListRulesetsResponse {
  /// The pagination token to retrieve the next page of results. If the value is
  /// empty, no further results remain.
  core.String nextPageToken;

  /// List of `Ruleset` instances.
  core.List<Ruleset> rulesets;

  ListRulesetsResponse();

  ListRulesetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("rulesets")) {
      rulesets = (_json["rulesets"] as core.List)
          .map<Ruleset>((value) => new Ruleset.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (rulesets != null) {
      _json["rulesets"] = rulesets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `Release` is a named reference to a `Ruleset`. Once a `Release` refers to a
/// `Ruleset`, rules-enabled services will be able to enforce the `Ruleset`.
class Release {
  /// Time the release was created.
  /// Output only.
  core.String createTime;

  /// Resource name for the `Release`.
  ///
  /// `Release` names may be structured `app1/prod/v2` or flat `app1_prod_v2`
  /// which affords developers a great deal of flexibility in mapping the name
  /// to the style that best fits their existing development practices. For
  /// example, a name could refer to an environment, an app, a version, or some
  /// combination of three.
  ///
  /// In the table below, for the project name `projects/foo`, the following
  /// relative release paths show how flat and structured names might be chosen
  /// to match a desired development / deployment strategy.
  ///
  /// Use Case     | Flat Name           | Structured Name
  /// -------------|---------------------|----------------
  /// Environments | releases/qa         | releases/qa
  /// Apps         | releases/app1_qa    | releases/app1/qa
  /// Versions     | releases/app1_v2_qa | releases/app1/v2/qa
  ///
  /// The delimiter between the release name path elements can be almost
  /// anything
  /// and it should work equally well with the release name list filter, but in
  /// many ways the structured paths provide a clearer picture of the
  /// relationship between `Release` instances.
  ///
  /// Format: `projects/{project_id}/releases/{release_id}`
  core.String name;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must
  /// exist the `Release` to be created.
  core.String rulesetName;

  /// Time the release was updated.
  /// Output only.
  core.String updateTime;

  Release();

  Release.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("rulesetName")) {
      rulesetName = _json["rulesetName"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (rulesetName != null) {
      _json["rulesetName"] = rulesetName;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Possible result values from the function mock invocation.
class Result {
  /// The result is undefined, meaning the result could not be computed.
  Empty undefined;

  /// The result is an actual value. The type of the value must match that
  /// of the type declared by the service.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object value;

  Result();

  Result.fromJson(core.Map _json) {
    if (_json.containsKey("undefined")) {
      undefined = new Empty.fromJson(_json["undefined"]);
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (undefined != null) {
      _json["undefined"] = (undefined).toJson();
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// `Ruleset` is an immutable copy of `Source` with a globally unique identifier
/// and a creation time.
class Ruleset {
  /// Time the `Ruleset` was created.
  /// Output only.
  core.String createTime;

  /// Name of the `Ruleset`. The ruleset_id is auto generated by the service.
  /// Format: `projects/{project_id}/rulesets/{ruleset_id}`
  /// Output only.
  core.String name;

  /// `Source` for the `Ruleset`.
  Source source;

  Ruleset();

  Ruleset.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// `Source` is one or more `File` messages comprising a logical set of rules.
class Source {
  /// `File` set constituting the `Source` bundle.
  core.List<File> files;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.List)
          .map<File>((value) => new File.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Position in the `Source` content including its line, column number, and an
/// index of the `File` in the `Source` message. Used for debug purposes.
class SourcePosition {
  /// First column on the source line associated with the source fragment.
  core.int column;

  /// Name of the `File`.
  core.String fileName;

  /// Line number of the source fragment. 1-based.
  core.int line;

  SourcePosition();

  SourcePosition.fromJson(core.Map _json) {
    if (_json.containsKey("column")) {
      column = _json["column"];
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (column != null) {
      _json["column"] = column;
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (line != null) {
      _json["line"] = line;
    }
    return _json;
  }
}

/// `TestCase` messages provide the request context and an expectation as to
/// whether the given context will be allowed or denied. Test cases may specify
/// the `request`, `resource`, and `function_mocks` to mock a function call to
/// a service-provided function.
///
/// The `request` object represents context present at request-time.
///
/// The `resource` is the value of the target resource as it appears in
/// persistent storage before the request is executed.
class TestCase {
  /// Test expectation.
  /// Possible string values are:
  /// - "EXPECTATION_UNSPECIFIED" : Unspecified expectation.
  /// - "ALLOW" : Expect an allowed result.
  /// - "DENY" : Expect a denied result.
  core.String expectation;

  /// Optional function mocks for service-defined functions. If not set, any
  /// service defined function is expected to return an error, which may or may
  /// not influence the test outcome.
  core.List<FunctionMock> functionMocks;

  /// Request context.
  ///
  /// The exact format of the request context is service-dependent. See the
  /// appropriate service documentation for information about the supported
  /// fields and types on the request. Minimally, all services support the
  /// following fields and types:
  ///
  /// Request field  | Type
  /// ---------------|-----------------
  /// auth.uid       | `string`
  /// auth.token     | `map<string, string>`
  /// headers        | `map<string, string>`
  /// method         | `string`
  /// params         | `map<string, string>`
  /// path           | `string`
  /// time           | `google.protobuf.Timestamp`
  ///
  /// If the request value is not well-formed for the service, the request will
  /// be rejected as an invalid argument.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object request;

  /// Optional resource value as it appears in persistent storage before the
  /// request is fulfilled.
  ///
  /// The resource type depends on the `request.path` value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object resource;

  TestCase();

  TestCase.fromJson(core.Map _json) {
    if (_json.containsKey("expectation")) {
      expectation = _json["expectation"];
    }
    if (_json.containsKey("functionMocks")) {
      functionMocks = (_json["functionMocks"] as core.List)
          .map<FunctionMock>((value) => new FunctionMock.fromJson(value))
          .toList();
    }
    if (_json.containsKey("request")) {
      request = _json["request"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expectation != null) {
      _json["expectation"] = expectation;
    }
    if (functionMocks != null) {
      _json["functionMocks"] =
          functionMocks.map((value) => (value).toJson()).toList();
    }
    if (request != null) {
      _json["request"] = request;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    return _json;
  }
}

/// Test result message containing the state of the test as well as a
/// description and source position for test failures.
class TestResult {
  /// Debug messages related to test execution issues encountered during
  /// evaluation.
  ///
  /// Debug messages may be related to too many or too few invocations of
  /// function mocks or to runtime errors that occur during evaluation.
  ///
  /// For example: ```Unable to read variable [name: "resource"]```
  core.List<core.String> debugMessages;

  /// Position in the `Source` or `Ruleset` where the principle runtime error
  /// occurs.
  ///
  /// Evaluation of an expression may result in an error. Rules are deny by
  /// default, so a `DENY` expectation when an error is generated is valid.
  /// When there is a `DENY` with an error, the `SourcePosition` is returned.
  ///
  /// E.g. `error_position { line: 19 column: 37 }`
  SourcePosition errorPosition;

  /// The set of function calls made to service-defined methods.
  ///
  /// Function calls are included in the order in which they are encountered
  /// during evaluation, are provided for both mocked and unmocked functions,
  /// and included on the response regardless of the test `state`.
  core.List<FunctionCall> functionCalls;

  /// State of the test.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Test state is not set.
  /// - "SUCCESS" : Test is a success.
  /// - "FAILURE" : Test is a failure.
  core.String state;

  /// The set of visited permission expressions for a given test. This returns
  /// the positions and evaluation results of all visited permission
  /// expressions which were relevant to the test case, e.g.
  /// ```
  /// match /path {
  ///   allow read if: <expr>
  /// }
  /// ```
  /// For a detailed report of the intermediate evaluation states, see the
  /// `expression_reports` field
  core.List<VisitedExpression> visitedExpressions;

  TestResult();

  TestResult.fromJson(core.Map _json) {
    if (_json.containsKey("debugMessages")) {
      debugMessages = (_json["debugMessages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("errorPosition")) {
      errorPosition = new SourcePosition.fromJson(_json["errorPosition"]);
    }
    if (_json.containsKey("functionCalls")) {
      functionCalls = (_json["functionCalls"] as core.List)
          .map<FunctionCall>((value) => new FunctionCall.fromJson(value))
          .toList();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("visitedExpressions")) {
      visitedExpressions = (_json["visitedExpressions"] as core.List)
          .map<VisitedExpression>(
              (value) => new VisitedExpression.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugMessages != null) {
      _json["debugMessages"] = debugMessages;
    }
    if (errorPosition != null) {
      _json["errorPosition"] = (errorPosition).toJson();
    }
    if (functionCalls != null) {
      _json["functionCalls"] =
          functionCalls.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (visitedExpressions != null) {
      _json["visitedExpressions"] =
          visitedExpressions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request for FirebaseRulesService.TestRuleset.
class TestRulesetRequest {
  /// Optional `Source` to be checked for correctness.
  ///
  /// This field must not be set when the resource name refers to a `Ruleset`.
  Source source;

  /// Inline `TestSuite` to run.
  TestSuite testSuite;

  TestRulesetRequest();

  TestRulesetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
    if (_json.containsKey("testSuite")) {
      testSuite = new TestSuite.fromJson(_json["testSuite"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (testSuite != null) {
      _json["testSuite"] = (testSuite).toJson();
    }
    return _json;
  }
}

/// The response for FirebaseRulesService.TestRuleset.
class TestRulesetResponse {
  /// Syntactic and semantic `Source` issues of varying severity. Issues of
  /// `ERROR` severity will prevent tests from executing.
  core.List<Issue> issues;

  /// The set of test results given the test cases in the `TestSuite`.
  /// The results will appear in the same order as the test cases appear in the
  /// `TestSuite`.
  core.List<TestResult> testResults;

  TestRulesetResponse();

  TestRulesetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("issues")) {
      issues = (_json["issues"] as core.List)
          .map<Issue>((value) => new Issue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("testResults")) {
      testResults = (_json["testResults"] as core.List)
          .map<TestResult>((value) => new TestResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (issues != null) {
      _json["issues"] = issues.map((value) => (value).toJson()).toList();
    }
    if (testResults != null) {
      _json["testResults"] =
          testResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `TestSuite` is a collection of `TestCase` instances that validate the
/// logical
/// correctness of a `Ruleset`. The `TestSuite` may be referenced in-line within
/// a `TestRuleset` invocation or as part of a `Release` object as a pre-release
/// check.
class TestSuite {
  /// Collection of test cases associated with the `TestSuite`.
  core.List<TestCase> testCases;

  TestSuite();

  TestSuite.fromJson(core.Map _json) {
    if (_json.containsKey("testCases")) {
      testCases = (_json["testCases"] as core.List)
          .map<TestCase>((value) => new TestCase.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (testCases != null) {
      _json["testCases"] = testCases.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request for FirebaseRulesService.UpdateReleasePatch.
class UpdateReleaseRequest {
  /// `Release` to update.
  Release release;

  /// Specifies which fields to update.
  core.String updateMask;

  UpdateReleaseRequest();

  UpdateReleaseRequest.fromJson(core.Map _json) {
    if (_json.containsKey("release")) {
      release = new Release.fromJson(_json["release"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (release != null) {
      _json["release"] = (release).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Store the position and access outcome for an expression visited in rules.
class VisitedExpression {
  /// Position in the `Source` or `Ruleset` where an expression was visited.
  SourcePosition sourcePosition;

  /// The evaluated value for the visited expression, e.g. true/false
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object value;

  VisitedExpression();

  VisitedExpression.fromJson(core.Map _json) {
    if (_json.containsKey("sourcePosition")) {
      sourcePosition = new SourcePosition.fromJson(_json["sourcePosition"]);
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourcePosition != null) {
      _json["sourcePosition"] = (sourcePosition).toJson();
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}
