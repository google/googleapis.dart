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

/// Cloud Deployment Manager V2 API - v2
///
/// The Google Cloud Deployment Manager v2 API provides services for
/// configuring, deploying, and viewing Google Cloud services and APIs via
/// templates which specify deployments of Cloud resources.
///
/// For more information, see <https://cloud.google.com/deployment-manager>
///
/// Create an instance of [DeploymentManagerApi] to access these resources:
///
/// - [DeploymentsResource]
/// - [ManifestsResource]
/// - [OperationsResource]
/// - [ResourcesResource]
/// - [TypesResource]
library deploymentmanager.v2;

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

/// The Google Cloud Deployment Manager v2 API provides services for
/// configuring, deploying, and viewing Google Cloud services and APIs via
/// templates which specify deployments of Cloud resources.
class DeploymentManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and manage your Google Cloud Platform management resources and
  /// deployment status information
  static const ndevCloudmanScope =
      'https://www.googleapis.com/auth/ndev.cloudman';

  /// View your Google Cloud Platform management resources and deployment status
  /// information
  static const ndevCloudmanReadonlyScope =
      'https://www.googleapis.com/auth/ndev.cloudman.readonly';

  final commons.ApiRequester _requester;

  DeploymentsResource get deployments => DeploymentsResource(_requester);
  ManifestsResource get manifests => ManifestsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ResourcesResource get resources => ResourcesResource(_requester);
  TypesResource get types => TypesResource(_requester);

  DeploymentManagerApi(http.Client client,
      {core.String rootUrl = 'https://deploymentmanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DeploymentsResource {
  final commons.ApiRequester _requester;

  DeploymentsResource(commons.ApiRequester client) : _requester = client;

  /// Cancels and removes the preview currently associated with the deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
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
  async.Future<Operation> cancelPreview(
    DeploymentsCancelPreviewRequest request,
    core.String project,
    core.String deployment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/cancelPreview';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment and all of the resources in the deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "DELETE"
  /// - "ABANDON"
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
    core.String project,
    core.String deployment, {
    core.String? deletePolicy,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deletePolicy != null) 'deletePolicy': [deletePolicy],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a specific deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> get(
    core.String project,
    core.String deployment, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Deployment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// May be empty if no such policy or resource exists.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z0-9\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// `\[a-z\](?:\[-a-z0-9_\]{0,61}\[a-z0-9\])?|\[1-9\]\[0-9\]{0,19}`.
  ///
  /// [optionsRequestedPolicyVersion] - Requested IAM Policy version.
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
    core.String project,
    core.String resource, {
    core.int? optionsRequestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (optionsRequestedPolicyVersion != null)
        'optionsRequestedPolicyVersion': ['${optionsRequestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$resource') +
        '/getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a deployment and all of the resources described by the deployment
  /// manifest.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "CREATE_OR_ACQUIRE"
  /// - "ACQUIRE"
  ///
  /// [preview] - If set to true, creates a deployment and creates "shell"
  /// resources but does not actually instantiate these resources. This allows
  /// you to preview what your deployment looks like. After previewing a
  /// deployment, you can deploy your resources by making a request with the
  /// `update()` method or you can use the `cancelPreview()` method to cancel
  /// the preview altogether. Note that the deployment will still exist after
  /// you cancel the preview and you must separately delete this deployment if
  /// you want to remove it.
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
  async.Future<Operation> insert(
    Deployment request,
    core.String project, {
    core.String? createPolicy,
    core.bool? preview,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createPolicy != null) 'createPolicy': [createPolicy],
      if (preview != null) 'preview': ['${preview}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all deployments for a given project.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Most Compute resources support two types of filter expressions:
  /// expressions that support regular expressions and expressions that follow
  /// API improvement proposal AIP-160. If you want to use AIP-160, your
  /// expression must specify the field name, an operator, and the value that
  /// you want to use for filtering. The value must be a string, a number, or a
  /// boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or
  /// `:`. For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named `example-instance` by specifying `name !=
  /// example-instance`. The `:` operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the `=`
  /// operator. The `:*` comparison can be used to test whether a key has been
  /// defined. For example, to find all objects with `owner` label use: ```
  /// labels.owner:* ``` You can also filter nested fields. For example, you
  /// could specify `scheduling.automaticRestart = false` to include instances
  /// only if they are not scheduled for automatic restarts. You can use
  /// filtering on nested fields to filter based on resource labels. To filter
  /// on multiple expressions, provide each separate expression within
  /// parentheses. For example: ``` (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake") ``` By default, each expression is an
  /// `AND` expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR
  /// (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true)
  /// ``` If you want to use a regular expression, use the `eq` (equal) or `ne`
  /// (not equal) operator against a single un-parenthesized expression with or
  /// without quotes or against multiple parenthesized expressions. Examples:
  /// `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'`
  /// `fieldname eq "double quoted literal"` `(fieldname1 eq literal)
  /// (fieldname2 ne "literal")` The literal value is interpreted as a regular
  /// expression using Google RE2 library syntax. The literal value must match
  /// the entire field. For example, to filter for instances that do not end
  /// with name "instance", you would use `name ne .*instance`.
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than `maxResults`,
  /// Compute Engine returns a `nextPageToken` that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are `0` to
  /// `500`, inclusive. (Default: `500`)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name. You can also
  /// sort results in descending order based on the creation timestamp using
  /// `orderBy="creationTimestamp desc"`. This sorts results based on the
  /// `creationTimestamp` field in reverse chronological order (newest result
  /// first). Use this to sort resources like operations so that the newest
  /// operation is returned first. Currently, only sorting by `name` or
  /// `creationTimestamp desc` is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to the
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeploymentsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeploymentsListResponse> list(
    core.String project, {
    core.String? filter,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeploymentsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a deployment and all of the resources described by the deployment
  /// manifest.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "CREATE_OR_ACQUIRE"
  /// - "ACQUIRE"
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "DELETE"
  /// - "ABANDON"
  ///
  /// [preview] - If set to true, updates the deployment and creates and updates
  /// the "shell" resources but does not actually alter or instantiate these
  /// resources. This allows you to preview what your deployment will look like.
  /// You can use this intent to preview how an update would affect your
  /// deployment. You must provide a `target.config` with a configuration if
  /// this is set to true. After previewing a deployment, you can deploy your
  /// resources by making a request with the `update()` or you can
  /// `cancelPreview()` to remove the preview altogether. Note that the
  /// deployment will still exist after you cancel the preview and you must
  /// separately delete this deployment if you want to remove it.
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
  async.Future<Operation> patch(
    Deployment request,
    core.String project,
    core.String deployment, {
    core.String? createPolicy,
    core.String? deletePolicy,
    core.bool? preview,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createPolicy != null) 'createPolicy': [createPolicy],
      if (deletePolicy != null) 'deletePolicy': [deletePolicy],
      if (preview != null) 'preview': ['${preview}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z0-9\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// `\[a-z\](?:\[-a-z0-9_\]{0,61}\[a-z0-9\])?|\[1-9\]\[0-9\]{0,19}`.
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
    GlobalSetPolicyRequest request,
    core.String project,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$resource') +
        '/setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops an ongoing operation.
  ///
  /// This does not roll back any work that has already been completed, but
  /// prevents any new work from being started.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
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
  async.Future<Operation> stop(
    DeploymentsStopRequest request,
    core.String project,
    core.String deployment, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z0-9\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [resource] - Name or id of the resource for this request.
  /// Value must have pattern
  /// `\[a-z\](?:\[-a-z0-9_\]{0,61}\[a-z0-9\])?|\[1-9\]\[0-9\]{0,19}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestPermissionsResponse> testIamPermissions(
    TestPermissionsRequest request,
    core.String project,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$resource') +
        '/testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a deployment and all of the resources described by the deployment
  /// manifest.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [createPolicy] - Sets the policy to use for creating new resources.
  /// Possible string values are:
  /// - "CREATE_OR_ACQUIRE"
  /// - "ACQUIRE"
  ///
  /// [deletePolicy] - Sets the policy to use for deleting resources.
  /// Possible string values are:
  /// - "DELETE"
  /// - "ABANDON"
  ///
  /// [preview] - If set to true, updates the deployment and creates and updates
  /// the "shell" resources but does not actually alter or instantiate these
  /// resources. This allows you to preview what your deployment will look like.
  /// You can use this intent to preview how an update would affect your
  /// deployment. You must provide a `target.config` with a configuration if
  /// this is set to true. After previewing a deployment, you can deploy your
  /// resources by making a request with the `update()` or you can
  /// `cancelPreview()` to remove the preview altogether. Note that the
  /// deployment will still exist after you cancel the preview and you must
  /// separately delete this deployment if you want to remove it.
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
  async.Future<Operation> update(
    Deployment request,
    core.String project,
    core.String deployment, {
    core.String? createPolicy,
    core.String? deletePolicy,
    core.bool? preview,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createPolicy != null) 'createPolicy': [createPolicy],
      if (deletePolicy != null) 'deletePolicy': [deletePolicy],
      if (preview != null) 'preview': ['${preview}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ManifestsResource {
  final commons.ApiRequester _requester;

  ManifestsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a specific manifest.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [manifest] - The name of the manifest for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Manifest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Manifest> get(
    core.String project,
    core.String deployment,
    core.String manifest, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/manifests/' +
        commons.escapeVariable('$manifest');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Manifest.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all manifests for a given deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Most Compute resources support two types of filter expressions:
  /// expressions that support regular expressions and expressions that follow
  /// API improvement proposal AIP-160. If you want to use AIP-160, your
  /// expression must specify the field name, an operator, and the value that
  /// you want to use for filtering. The value must be a string, a number, or a
  /// boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or
  /// `:`. For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named `example-instance` by specifying `name !=
  /// example-instance`. The `:` operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the `=`
  /// operator. The `:*` comparison can be used to test whether a key has been
  /// defined. For example, to find all objects with `owner` label use: ```
  /// labels.owner:* ``` You can also filter nested fields. For example, you
  /// could specify `scheduling.automaticRestart = false` to include instances
  /// only if they are not scheduled for automatic restarts. You can use
  /// filtering on nested fields to filter based on resource labels. To filter
  /// on multiple expressions, provide each separate expression within
  /// parentheses. For example: ``` (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake") ``` By default, each expression is an
  /// `AND` expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR
  /// (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true)
  /// ``` If you want to use a regular expression, use the `eq` (equal) or `ne`
  /// (not equal) operator against a single un-parenthesized expression with or
  /// without quotes or against multiple parenthesized expressions. Examples:
  /// `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'`
  /// `fieldname eq "double quoted literal"` `(fieldname1 eq literal)
  /// (fieldname2 ne "literal")` The literal value is interpreted as a regular
  /// expression using Google RE2 library syntax. The literal value must match
  /// the entire field. For example, to filter for instances that do not end
  /// with name "instance", you would use `name ne .*instance`.
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than `maxResults`,
  /// Compute Engine returns a `nextPageToken` that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are `0` to
  /// `500`, inclusive. (Default: `500`)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name. You can also
  /// sort results in descending order based on the creation timestamp using
  /// `orderBy="creationTimestamp desc"`. This sorts results based on the
  /// `creationTimestamp` field in reverse chronological order (newest result
  /// first). Use this to sort resources like operations so that the newest
  /// operation is returned first. Currently, only sorting by `name` or
  /// `creationTimestamp desc` is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to the
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManifestsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManifestsListResponse> list(
    core.String project,
    core.String deployment, {
    core.String? filter,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/manifests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManifestsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a specific operation.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [operation] - The name of the operation for this request.
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
    core.String project,
    core.String operation, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/operations/' +
        commons.escapeVariable('$operation');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all operations for a project.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Most Compute resources support two types of filter expressions:
  /// expressions that support regular expressions and expressions that follow
  /// API improvement proposal AIP-160. If you want to use AIP-160, your
  /// expression must specify the field name, an operator, and the value that
  /// you want to use for filtering. The value must be a string, a number, or a
  /// boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or
  /// `:`. For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named `example-instance` by specifying `name !=
  /// example-instance`. The `:` operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the `=`
  /// operator. The `:*` comparison can be used to test whether a key has been
  /// defined. For example, to find all objects with `owner` label use: ```
  /// labels.owner:* ``` You can also filter nested fields. For example, you
  /// could specify `scheduling.automaticRestart = false` to include instances
  /// only if they are not scheduled for automatic restarts. You can use
  /// filtering on nested fields to filter based on resource labels. To filter
  /// on multiple expressions, provide each separate expression within
  /// parentheses. For example: ``` (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake") ``` By default, each expression is an
  /// `AND` expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR
  /// (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true)
  /// ``` If you want to use a regular expression, use the `eq` (equal) or `ne`
  /// (not equal) operator against a single un-parenthesized expression with or
  /// without quotes or against multiple parenthesized expressions. Examples:
  /// `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'`
  /// `fieldname eq "double quoted literal"` `(fieldname1 eq literal)
  /// (fieldname2 ne "literal")` The literal value is interpreted as a regular
  /// expression using Google RE2 library syntax. The literal value must match
  /// the entire field. For example, to filter for instances that do not end
  /// with name "instance", you would use `name ne .*instance`.
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than `maxResults`,
  /// Compute Engine returns a `nextPageToken` that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are `0` to
  /// `500`, inclusive. (Default: `500`)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name. You can also
  /// sort results in descending order based on the creation timestamp using
  /// `orderBy="creationTimestamp desc"`. This sorts results based on the
  /// `creationTimestamp` field in reverse chronological order (newest result
  /// first). Use this to sort resources like operations so that the newest
  /// operation is returned first. Currently, only sorting by `name` or
  /// `creationTimestamp desc` is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to the
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperationsListResponse> list(
    core.String project, {
    core.String? filter,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperationsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ResourcesResource {
  final commons.ApiRequester _requester;

  ResourcesResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a single resource.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [resource] - The name of the resource for this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Resource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Resource> get(
    core.String project,
    core.String deployment,
    core.String resource, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/resources/' +
        commons.escapeVariable('$resource');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Resource.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all resources in a given deployment.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [deployment] - The name of the deployment for this request.
  /// Value must have pattern `\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Most Compute resources support two types of filter expressions:
  /// expressions that support regular expressions and expressions that follow
  /// API improvement proposal AIP-160. If you want to use AIP-160, your
  /// expression must specify the field name, an operator, and the value that
  /// you want to use for filtering. The value must be a string, a number, or a
  /// boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or
  /// `:`. For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named `example-instance` by specifying `name !=
  /// example-instance`. The `:` operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the `=`
  /// operator. The `:*` comparison can be used to test whether a key has been
  /// defined. For example, to find all objects with `owner` label use: ```
  /// labels.owner:* ``` You can also filter nested fields. For example, you
  /// could specify `scheduling.automaticRestart = false` to include instances
  /// only if they are not scheduled for automatic restarts. You can use
  /// filtering on nested fields to filter based on resource labels. To filter
  /// on multiple expressions, provide each separate expression within
  /// parentheses. For example: ``` (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake") ``` By default, each expression is an
  /// `AND` expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR
  /// (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true)
  /// ``` If you want to use a regular expression, use the `eq` (equal) or `ne`
  /// (not equal) operator against a single un-parenthesized expression with or
  /// without quotes or against multiple parenthesized expressions. Examples:
  /// `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'`
  /// `fieldname eq "double quoted literal"` `(fieldname1 eq literal)
  /// (fieldname2 ne "literal")` The literal value is interpreted as a regular
  /// expression using Google RE2 library syntax. The literal value must match
  /// the entire field. For example, to filter for instances that do not end
  /// with name "instance", you would use `name ne .*instance`.
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than `maxResults`,
  /// Compute Engine returns a `nextPageToken` that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are `0` to
  /// `500`, inclusive. (Default: `500`)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name. You can also
  /// sort results in descending order based on the creation timestamp using
  /// `orderBy="creationTimestamp desc"`. This sorts results based on the
  /// `creationTimestamp` field in reverse chronological order (newest result
  /// first). Use this to sort resources like operations so that the newest
  /// operation is returned first. Currently, only sorting by `name` or
  /// `creationTimestamp desc` is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to the
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResourcesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResourcesListResponse> list(
    core.String project,
    core.String deployment, {
    core.String? filter,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/deployments/' +
        commons.escapeVariable('$deployment') +
        '/resources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ResourcesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TypesResource {
  final commons.ApiRequester _requester;

  TypesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all resource types for Deployment Manager.
  ///
  /// Request parameters:
  ///
  /// [project] - The project ID for this request.
  /// Value must have pattern
  /// `(?:(?:\[-a-z0-9\]{1,63}\.)*(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?):)?(?:\[0-9\]{1,19}|(?:\[a-z\](?:\[-a-z0-9\]{0,61}\[a-z0-9\])?))`.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. Most Compute resources support two types of filter expressions:
  /// expressions that support regular expressions and expressions that follow
  /// API improvement proposal AIP-160. If you want to use AIP-160, your
  /// expression must specify the field name, an operator, and the value that
  /// you want to use for filtering. The value must be a string, a number, or a
  /// boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or
  /// `:`. For example, if you are filtering Compute Engine instances, you can
  /// exclude instances named `example-instance` by specifying `name !=
  /// example-instance`. The `:` operator can be used with string fields to
  /// match substrings. For non-string fields it is equivalent to the `=`
  /// operator. The `:*` comparison can be used to test whether a key has been
  /// defined. For example, to find all objects with `owner` label use: ```
  /// labels.owner:* ``` You can also filter nested fields. For example, you
  /// could specify `scheduling.automaticRestart = false` to include instances
  /// only if they are not scheduled for automatic restarts. You can use
  /// filtering on nested fields to filter based on resource labels. To filter
  /// on multiple expressions, provide each separate expression within
  /// parentheses. For example: ``` (scheduling.automaticRestart = true)
  /// (cpuPlatform = "Intel Skylake") ``` By default, each expression is an
  /// `AND` expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR
  /// (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true)
  /// ``` If you want to use a regular expression, use the `eq` (equal) or `ne`
  /// (not equal) operator against a single un-parenthesized expression with or
  /// without quotes or against multiple parenthesized expressions. Examples:
  /// `fieldname eq unquoted literal` `fieldname eq 'single quoted literal'`
  /// `fieldname eq "double quoted literal"` `(fieldname1 eq literal)
  /// (fieldname2 ne "literal")` The literal value is interpreted as a regular
  /// expression using Google RE2 library syntax. The literal value must match
  /// the entire field. For example, to filter for instances that do not end
  /// with name "instance", you would use `name ne .*instance`.
  ///
  /// [maxResults] - The maximum number of results per page that should be
  /// returned. If the number of available results is larger than `maxResults`,
  /// Compute Engine returns a `nextPageToken` that can be used to get the next
  /// page of results in subsequent list requests. Acceptable values are `0` to
  /// `500`, inclusive. (Default: `500`)
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, results are
  /// returned in alphanumerical order based on the resource name. You can also
  /// sort results in descending order based on the creation timestamp using
  /// `orderBy="creationTimestamp desc"`. This sorts results based on the
  /// `creationTimestamp` field in reverse chronological order (newest result
  /// first). Use this to sort resources like operations so that the newest
  /// operation is returned first. Currently, only sorting by `name` or
  /// `creationTimestamp desc` is supported.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to the
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TypesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TypesListResponse> list(
    core.String project, {
    core.String? filter,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'deploymentmanager/v2/projects/' +
        commons.escapeVariable('$project') +
        '/global/types';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TypesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

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

class ConfigFile {
  /// The contents of the file.
  core.String? content;

  ConfigFile({
    this.content,
  });

  ConfigFile.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
      };
}

class Deployment {
  /// An optional user-provided description of the deployment.
  core.String? description;

  /// Provides a fingerprint to use in requests to modify a deployment, such as
  /// `update()`, `stop()`, and `cancelPreview()` requests.
  ///
  /// A fingerprint is a randomly generated value that must be provided with
  /// `update()`, `stop()`, and `cancelPreview()` requests to perform optimistic
  /// locking. This ensures optimistic concurrency so that only one request
  /// happens at a time. The fingerprint is initially generated by Deployment
  /// Manager and changes after every request to modify data. To get the latest
  /// fingerprint value, perform a `get()` request to a deployment.
  core.String? fingerprint;
  core.List<core.int> get fingerprintAsBytes =>
      convert.base64.decode(fingerprint!);

  set fingerprintAsBytes(core.List<core.int> bytes_) {
    fingerprint =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.String? id;

  /// Creation timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? insertTime;

  /// Map of One Platform labels; provided by the client when the resource is
  /// created or updated.
  ///
  /// Specifically: Label keys must be between 1 and 63 characters long and must
  /// conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`
  /// Label values must be between 0 and 63 characters long and must conform to
  /// the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  core.List<DeploymentLabelEntry>? labels;

  /// URL of the manifest representing the last manifest that was successfully
  /// deployed.
  ///
  /// If no manifest has been successfully deployed, this field will be absent.
  ///
  /// Output only.
  core.String? manifest;

  /// Name of the resource; provided by the client when the resource is created.
  ///
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character
  /// must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a
  /// dash.
  core.String? name;

  /// The Operation that most recently ran, or is currently running, on this
  /// deployment.
  ///
  /// Output only.
  Operation? operation;

  /// Server defined URL for the resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// \[Input Only\] The parameters that define your deployment, including the
  /// deployment configuration and relevant templates.
  TargetConfiguration? target;

  /// If Deployment Manager is currently updating or previewing an update to
  /// this deployment, the updated configuration appears here.
  ///
  /// Output only.
  DeploymentUpdate? update;

  /// Update timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? updateTime;

  Deployment({
    this.description,
    this.fingerprint,
    this.id,
    this.insertTime,
    this.labels,
    this.manifest,
    this.name,
    this.operation,
    this.selfLink,
    this.target,
    this.update,
    this.updateTime,
  });

  Deployment.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => DeploymentLabelEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          target: json_.containsKey('target')
              ? TargetConfiguration.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
          update: json_.containsKey('update')
              ? DeploymentUpdate.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (id != null) 'id': id!,
        if (insertTime != null) 'insertTime': insertTime!,
        if (labels != null) 'labels': labels!,
        if (manifest != null) 'manifest': manifest!,
        if (name != null) 'name': name!,
        if (operation != null) 'operation': operation!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (target != null) 'target': target!,
        if (update != null) 'update': update!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Label object for Deployments
typedef DeploymentLabelEntry = $LabelEntry;

class DeploymentUpdate {
  /// An optional user-provided description of the deployment after the current
  /// update has been applied.
  ///
  /// Output only.
  core.String? description;

  /// Map of One Platform labels; provided by the client when the resource is
  /// created or updated.
  ///
  /// Specifically: Label keys must be between 1 and 63 characters long and must
  /// conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`
  /// Label values must be between 0 and 63 characters long and must conform to
  /// the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  core.List<DeploymentUpdateLabelEntry>? labels;

  /// URL of the manifest representing the update configuration of this
  /// deployment.
  ///
  /// Output only.
  core.String? manifest;

  DeploymentUpdate({
    this.description,
    this.labels,
    this.manifest,
  });

  DeploymentUpdate.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => DeploymentUpdateLabelEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (manifest != null) 'manifest': manifest!,
      };
}

/// Label object for DeploymentUpdate
typedef DeploymentUpdateLabelEntry = $LabelEntry;

class DeploymentsCancelPreviewRequest {
  /// Specifies a fingerprint for `cancelPreview()` requests.
  ///
  /// A fingerprint is a randomly generated value that must be provided in
  /// `cancelPreview()` requests to perform optimistic locking. This ensures
  /// optimistic concurrency so that the deployment does not have conflicting
  /// requests (e.g. if someone attempts to make a new update request while
  /// another user attempts to cancel a preview, this would prevent one of the
  /// requests). The fingerprint is initially generated by Deployment Manager
  /// and changes after every request to modify a deployment. To get the latest
  /// fingerprint value, perform a `get()` request on the deployment.
  core.String? fingerprint;
  core.List<core.int> get fingerprintAsBytes =>
      convert.base64.decode(fingerprint!);

  set fingerprintAsBytes(core.List<core.int> bytes_) {
    fingerprint =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  DeploymentsCancelPreviewRequest({
    this.fingerprint,
  });

  DeploymentsCancelPreviewRequest.fromJson(core.Map json_)
      : this(
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fingerprint != null) 'fingerprint': fingerprint!,
      };
}

/// A response containing a partial list of deployments and a page token used to
/// build the next request if the request has been truncated.
class DeploymentsListResponse {
  /// The deployments contained in this response.
  ///
  /// Output only.
  core.List<Deployment>? deployments;

  /// A token used to continue a truncated list request.
  ///
  /// Output only.
  core.String? nextPageToken;

  DeploymentsListResponse({
    this.deployments,
    this.nextPageToken,
  });

  DeploymentsListResponse.fromJson(core.Map json_)
      : this(
          deployments: json_.containsKey('deployments')
              ? (json_['deployments'] as core.List)
                  .map((value) => Deployment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployments != null) 'deployments': deployments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class DeploymentsStopRequest {
  /// Specifies a fingerprint for `stop()` requests.
  ///
  /// A fingerprint is a randomly generated value that must be provided in
  /// `stop()` requests to perform optimistic locking. This ensures optimistic
  /// concurrency so that the deployment does not have conflicting requests
  /// (e.g. if someone attempts to make a new update request while another user
  /// attempts to stop an ongoing update request, this would prevent a
  /// collision). The fingerprint is initially generated by Deployment Manager
  /// and changes after every request to modify a deployment. To get the latest
  /// fingerprint value, perform a `get()` request on the deployment.
  core.String? fingerprint;
  core.List<core.int> get fingerprintAsBytes =>
      convert.base64.decode(fingerprint!);

  set fingerprintAsBytes(core.List<core.int> bytes_) {
    fingerprint =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  DeploymentsStopRequest({
    this.fingerprint,
  });

  DeploymentsStopRequest.fromJson(core.Map json_)
      : this(
          fingerprint: json_.containsKey('fingerprint')
              ? json_['fingerprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fingerprint != null) 'fingerprint': fingerprint!,
      };
}

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

class GlobalSetPolicyRequest {
  /// Flatten Policy to create a backward compatible wire-format.
  ///
  /// Deprecated. Use 'policy' to specify bindings.
  core.List<Binding>? bindings;

  /// Flatten Policy to create a backward compatible wire-format.
  ///
  /// Deprecated. Use 'policy' to specify the etag.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// REQUIRED: The complete policy to be applied to the 'resource'.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is
  /// in general a valid policy but certain services (like Projects) might
  /// reject them.
  Policy? policy;

  GlobalSetPolicyRequest({
    this.bindings,
    this.etag,
    this.policy,
  });

  GlobalSetPolicyRequest.fromJson(core.Map json_)
      : this(
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (policy != null) 'policy': policy!,
      };
}

class ImportFile {
  /// The contents of the file.
  core.String? content;

  /// The name of the file.
  core.String? name;

  ImportFile({
    this.content,
    this.name,
  });

  ImportFile.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (name != null) 'name': name!,
      };
}

class Manifest {
  /// The YAML configuration for this manifest.
  ///
  /// Output only.
  ConfigFile? config;

  /// The fully-expanded configuration file, including any templates and
  /// references.
  ///
  /// Output only.
  core.String? expandedConfig;
  core.String? id;

  /// The imported files for this manifest.
  ///
  /// Output only.
  core.List<ImportFile>? imports;

  /// Creation timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? insertTime;

  /// The YAML layout for this manifest.
  ///
  /// Output only.
  core.String? layout;

  /// The computed size of the fully expanded manifest.
  ///
  /// Output only.
  core.String? manifestSizeBytes;

  /// The size limit for expanded manifests in the project.
  ///
  /// Output only.
  core.String? manifestSizeLimitBytes;

  /// The name of the manifest.
  ///
  /// Output only.
  core.String? name;

  /// Self link for the manifest.
  ///
  /// Output only.
  core.String? selfLink;

  Manifest({
    this.config,
    this.expandedConfig,
    this.id,
    this.imports,
    this.insertTime,
    this.layout,
    this.manifestSizeBytes,
    this.manifestSizeLimitBytes,
    this.name,
    this.selfLink,
  });

  Manifest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? ConfigFile.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          expandedConfig: json_.containsKey('expandedConfig')
              ? json_['expandedConfig'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          imports: json_.containsKey('imports')
              ? (json_['imports'] as core.List)
                  .map((value) => ImportFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          layout: json_.containsKey('layout')
              ? json_['layout'] as core.String
              : null,
          manifestSizeBytes: json_.containsKey('manifestSizeBytes')
              ? json_['manifestSizeBytes'] as core.String
              : null,
          manifestSizeLimitBytes: json_.containsKey('manifestSizeLimitBytes')
              ? json_['manifestSizeLimitBytes'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (expandedConfig != null) 'expandedConfig': expandedConfig!,
        if (id != null) 'id': id!,
        if (imports != null) 'imports': imports!,
        if (insertTime != null) 'insertTime': insertTime!,
        if (layout != null) 'layout': layout!,
        if (manifestSizeBytes != null) 'manifestSizeBytes': manifestSizeBytes!,
        if (manifestSizeLimitBytes != null)
          'manifestSizeLimitBytes': manifestSizeLimitBytes!,
        if (name != null) 'name': name!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A response containing a partial list of manifests and a page token used to
/// build the next request if the request has been truncated.
class ManifestsListResponse {
  /// Manifests contained in this list response.
  ///
  /// Output only.
  core.List<Manifest>? manifests;

  /// A token used to continue a truncated list request.
  ///
  /// Output only.
  core.String? nextPageToken;

  ManifestsListResponse({
    this.manifests,
    this.nextPageToken,
  });

  ManifestsListResponse.fromJson(core.Map json_)
      : this(
          manifests: json_.containsKey('manifests')
              ? (json_['manifests'] as core.List)
                  .map((value) => Manifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manifests != null) 'manifests': manifests!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class OperationErrorErrors {
  /// The error type identifier for this error.
  ///
  /// Output only.
  core.String? code;

  /// Indicates the field in the request that caused the error.
  ///
  /// This property is optional.
  ///
  /// Output only.
  core.String? location;

  /// An optional, human-readable error message.
  ///
  /// Output only.
  core.String? message;

  OperationErrorErrors({
    this.code,
    this.location,
    this.message,
  });

  OperationErrorErrors.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (location != null) 'location': location!,
        if (message != null) 'message': message!,
      };
}

/// If errors are generated during processing of the operation, this field will
/// be populated.
///
/// Output only.
class OperationError {
  /// The array of errors encountered while processing this operation.
  ///
  /// Output only.
  core.List<OperationErrorErrors>? errors;

  OperationError({
    this.errors,
  });

  OperationError.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => OperationErrorErrors.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

class OperationWarningsData {
  /// A key that provides more detail on the warning being returned.
  ///
  /// For example, for warnings where there are no results in a list request for
  /// a particular zone, this key might be scope and the key value might be the
  /// zone name. Other examples might be a key indicating a deprecated resource
  /// and a suggested replacement, or a warning about invalid network settings
  /// (for example, if an instance attempts to perform IP forwarding but is not
  /// enabled for IP forwarding).
  ///
  /// Output only.
  core.String? key;

  /// A warning data value corresponding to the key.
  ///
  /// Output only.
  core.String? value;

  OperationWarningsData({
    this.key,
    this.value,
  });

  OperationWarningsData.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

class OperationWarnings {
  /// A warning code, if applicable.
  ///
  /// For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no
  /// results in the response.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPRECATED_RESOURCE_USED" : A link to a deprecated resource was
  /// created.
  /// - "NO_RESULTS_ON_PAGE" : No results are present on a particular list page.
  /// - "UNREACHABLE" : A given scope cannot be reached.
  /// - "NEXT_HOP_ADDRESS_NOT_ASSIGNED" : The route's nextHopIp address is not
  /// assigned to an instance on the network.
  /// - "NEXT_HOP_INSTANCE_NOT_FOUND" : The route's nextHopInstance URL refers
  /// to an instance that does not exist.
  /// - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" : The route's nextHopInstance URL
  /// refers to an instance that is not on the same network as the route.
  /// - "NEXT_HOP_CANNOT_IP_FORWARD" : The route's next hop instance cannot ip
  /// forward.
  /// - "NEXT_HOP_NOT_RUNNING" : The route's next hop instance does not have a
  /// status of RUNNING.
  /// - "INJECTED_KERNELS_DEPRECATED" : The operation involved use of an
  /// injected kernel, which is deprecated.
  /// - "REQUIRED_TOS_AGREEMENT" : The user attempted to use a resource that
  /// requires a TOS they have not accepted.
  /// - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" : The user created a boot disk that
  /// is larger than image size.
  /// - "RESOURCE_NOT_DELETED" : One or more of the resources set to auto-delete
  /// could not be deleted because they were in use.
  /// - "SINGLE_INSTANCE_PROPERTY_TEMPLATE" : Instance template used in instance
  /// group manager is valid as such, but its application does not make a lot of
  /// sense, because it allows only single instance in instance group.
  /// - "NOT_CRITICAL_ERROR" : Error which is not critical. We decided to
  /// continue the process despite the mentioned error.
  /// - "CLEANUP_FAILED" : Warning about failed cleanup of transient changes
  /// made by a failed operation.
  /// - "FIELD_VALUE_OVERRIDEN" : Warning that value of a field has been
  /// overridden. Deprecated unused field.
  /// - "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" : Warning that a resource is
  /// in use.
  /// - "MISSING_TYPE_DEPENDENCY" : A resource depends on a missing type
  /// - "EXTERNAL_API_WARNING" : Warning that is present in an external api call
  /// - "SCHEMA_VALIDATION_IGNORED" : When a resource schema validation is
  /// ignored.
  /// - "UNDECLARED_PROPERTIES" : When undeclared properties in the schema are
  /// present
  /// - "EXPERIMENTAL_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as experimental
  /// - "DEPRECATED_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as deprecated
  /// - "PARTIAL_SUCCESS" : Success is reported, but some results may be missing
  /// due to errors
  /// - "LARGE_DEPLOYMENT_WARNING" : When deploying a deployment with a
  /// exceedingly large number of resources
  /// - "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE" : The route's nextHopInstance
  /// URL refers to an instance that does not have an ipv6 interface on the same
  /// network as the route.
  /// - "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB" : A WEIGHTED_MAGLEV
  /// backend service is associated with a health check that is not of type
  /// HTTP/HTTPS/HTTP2.
  core.String? code;

  /// Metadata about this warning in key: value format.
  ///
  /// For example: "data": \[ { "key": "scope", "value": "zones/us-east1-d" }
  ///
  /// Output only.
  core.List<OperationWarningsData>? data;

  /// A human-readable description of the warning code.
  ///
  /// Output only.
  core.String? message;

  OperationWarnings({
    this.code,
    this.data,
    this.message,
  });

  OperationWarnings.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => OperationWarningsData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (data != null) 'data': data!,
        if (message != null) 'message': message!,
      };
}

/// Represents an Operation resource.
///
/// Google Compute Engine has three Operation resources: *
/// \[Global\](/compute/docs/reference/rest/{$api_version}/globalOperations) *
/// \[Regional\](/compute/docs/reference/rest/{$api_version}/regionOperations) *
/// \[Zonal\](/compute/docs/reference/rest/{$api_version}/zoneOperations) You
/// can use an operation resource to manage asynchronous API requests. For more
/// information, read Handling API responses. Operations can be global, regional
/// or zonal. - For global operations, use the `globalOperations` resource. -
/// For regional operations, use the `regionOperations` resource. - For zonal
/// operations, use the `zonalOperations` resource. For more information, read
/// Global, Regional, and Zonal Resources.
class Operation {
  /// The value of `requestId` if you provided it in the request.
  ///
  /// Not present otherwise.
  ///
  /// Output only.
  core.String? clientOperationId;

  /// This field is deprecated.
  ///
  /// Deprecated.
  core.String? creationTimestamp;

  /// A textual description of the operation, which is set when the operation is
  /// created.
  ///
  /// Output only.
  core.String? description;

  /// The time that this operation was completed.
  ///
  /// This value is in RFC3339 text format.
  ///
  /// Output only.
  core.String? endTime;

  /// If errors are generated during processing of the operation, this field
  /// will be populated.
  ///
  /// Output only.
  OperationError? error;

  /// If the operation fails, this field contains the HTTP error message that
  /// was returned, such as `NOT FOUND`.
  ///
  /// Output only.
  core.String? httpErrorMessage;

  /// If the operation fails, this field contains the HTTP error status code
  /// that was returned.
  ///
  /// For example, a `404` means the resource was not found.
  ///
  /// Output only.
  core.int? httpErrorStatusCode;

  /// The unique identifier for the operation.
  ///
  /// This identifier is defined by the server.
  ///
  /// Output only.
  core.String? id;

  /// The time that this operation was requested.
  ///
  /// This value is in RFC3339 text format.
  ///
  /// Output only.
  core.String? insertTime;

  /// Type of the resource.
  ///
  /// Always `compute#operation` for Operation resources.
  ///
  /// Output only.
  core.String? kind;

  /// Name of the operation.
  ///
  /// Output only.
  core.String? name;

  /// An ID that represents a group of operations, such as when a group of
  /// operations results from a `bulkInsert` API request.
  ///
  /// Output only.
  core.String? operationGroupId;

  /// The type of operation, such as `insert`, `update`, or `delete`, and so on.
  ///
  /// Output only.
  core.String? operationType;

  /// An optional progress indicator that ranges from 0 to 100.
  ///
  /// There is no requirement that this be linear or support any granularity of
  /// operations. This should not be used to guess when the operation will be
  /// complete. This number should monotonically increase as the operation
  /// progresses.
  ///
  /// Output only.
  core.int? progress;

  /// The URL of the region where the operation resides.
  ///
  /// Only applicable when performing regional operations.
  ///
  /// Output only.
  core.String? region;

  /// Server-defined URL for the resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// The time that this operation was started by the server.
  ///
  /// This value is in RFC3339 text format.
  ///
  /// Output only.
  core.String? startTime;

  /// The status of the operation, which can be one of the following: `PENDING`,
  /// `RUNNING`, or `DONE`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PENDING"
  /// - "RUNNING"
  /// - "DONE"
  core.String? status;

  /// An optional textual description of the current status of the operation.
  ///
  /// Output only.
  core.String? statusMessage;

  /// The unique target ID, which identifies a specific incarnation of the
  /// target resource.
  ///
  /// Output only.
  core.String? targetId;

  /// The URL of the resource that the operation modifies.
  ///
  /// For operations related to creating a snapshot, this points to the
  /// persistent disk that the snapshot was created from.
  ///
  /// Output only.
  core.String? targetLink;

  /// User who requested the operation, for example: `user@example.com`.
  ///
  /// Output only.
  core.String? user;

  /// If warning messages are generated during processing of the operation, this
  /// field will be populated.
  ///
  /// Output only.
  core.List<OperationWarnings>? warnings;

  /// The URL of the zone where the operation resides.
  ///
  /// Only applicable when performing per-zone operations.
  ///
  /// Output only.
  core.String? zone;

  Operation({
    this.clientOperationId,
    this.creationTimestamp,
    this.description,
    this.endTime,
    this.error,
    this.httpErrorMessage,
    this.httpErrorStatusCode,
    this.id,
    this.insertTime,
    this.kind,
    this.name,
    this.operationGroupId,
    this.operationType,
    this.progress,
    this.region,
    this.selfLink,
    this.startTime,
    this.status,
    this.statusMessage,
    this.targetId,
    this.targetLink,
    this.user,
    this.warnings,
    this.zone,
  });

  Operation.fromJson(core.Map json_)
      : this(
          clientOperationId: json_.containsKey('clientOperationId')
              ? json_['clientOperationId'] as core.String
              : null,
          creationTimestamp: json_.containsKey('creationTimestamp')
              ? json_['creationTimestamp'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? OperationError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          httpErrorMessage: json_.containsKey('httpErrorMessage')
              ? json_['httpErrorMessage'] as core.String
              : null,
          httpErrorStatusCode: json_.containsKey('httpErrorStatusCode')
              ? json_['httpErrorStatusCode'] as core.int
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operationGroupId: json_.containsKey('operationGroupId')
              ? json_['operationGroupId'] as core.String
              : null,
          operationType: json_.containsKey('operationType')
              ? json_['operationType'] as core.String
              : null,
          progress: json_.containsKey('progress')
              ? json_['progress'] as core.int
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          targetLink: json_.containsKey('targetLink')
              ? json_['targetLink'] as core.String
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => OperationWarnings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientOperationId != null) 'clientOperationId': clientOperationId!,
        if (creationTimestamp != null) 'creationTimestamp': creationTimestamp!,
        if (description != null) 'description': description!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (httpErrorMessage != null) 'httpErrorMessage': httpErrorMessage!,
        if (httpErrorStatusCode != null)
          'httpErrorStatusCode': httpErrorStatusCode!,
        if (id != null) 'id': id!,
        if (insertTime != null) 'insertTime': insertTime!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (operationGroupId != null) 'operationGroupId': operationGroupId!,
        if (operationType != null) 'operationType': operationType!,
        if (progress != null) 'progress': progress!,
        if (region != null) 'region': region!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (targetId != null) 'targetId': targetId!,
        if (targetLink != null) 'targetLink': targetLink!,
        if (user != null) 'user': user!,
        if (warnings != null) 'warnings': warnings!,
        if (zone != null) 'zone': zone!,
      };
}

/// A response containing a partial list of operations and a page token used to
/// build the next request if the request has been truncated.
class OperationsListResponse {
  /// A token used to continue a truncated list request.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Operations contained in this list response.
  ///
  /// Output only.
  core.List<Operation>? operations;

  OperationsListResponse({
    this.nextPageToken,
    this.operations,
  });

  OperationsListResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
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
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

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
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

class ResourceWarningsData {
  /// A key that provides more detail on the warning being returned.
  ///
  /// For example, for warnings where there are no results in a list request for
  /// a particular zone, this key might be scope and the key value might be the
  /// zone name. Other examples might be a key indicating a deprecated resource
  /// and a suggested replacement, or a warning about invalid network settings
  /// (for example, if an instance attempts to perform IP forwarding but is not
  /// enabled for IP forwarding).
  ///
  /// Output only.
  core.String? key;

  /// A warning data value corresponding to the key.
  ///
  /// Output only.
  core.String? value;

  ResourceWarningsData({
    this.key,
    this.value,
  });

  ResourceWarningsData.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

class ResourceWarnings {
  /// A warning code, if applicable.
  ///
  /// For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no
  /// results in the response.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPRECATED_RESOURCE_USED" : A link to a deprecated resource was
  /// created.
  /// - "NO_RESULTS_ON_PAGE" : No results are present on a particular list page.
  /// - "UNREACHABLE" : A given scope cannot be reached.
  /// - "NEXT_HOP_ADDRESS_NOT_ASSIGNED" : The route's nextHopIp address is not
  /// assigned to an instance on the network.
  /// - "NEXT_HOP_INSTANCE_NOT_FOUND" : The route's nextHopInstance URL refers
  /// to an instance that does not exist.
  /// - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" : The route's nextHopInstance URL
  /// refers to an instance that is not on the same network as the route.
  /// - "NEXT_HOP_CANNOT_IP_FORWARD" : The route's next hop instance cannot ip
  /// forward.
  /// - "NEXT_HOP_NOT_RUNNING" : The route's next hop instance does not have a
  /// status of RUNNING.
  /// - "INJECTED_KERNELS_DEPRECATED" : The operation involved use of an
  /// injected kernel, which is deprecated.
  /// - "REQUIRED_TOS_AGREEMENT" : The user attempted to use a resource that
  /// requires a TOS they have not accepted.
  /// - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" : The user created a boot disk that
  /// is larger than image size.
  /// - "RESOURCE_NOT_DELETED" : One or more of the resources set to auto-delete
  /// could not be deleted because they were in use.
  /// - "SINGLE_INSTANCE_PROPERTY_TEMPLATE" : Instance template used in instance
  /// group manager is valid as such, but its application does not make a lot of
  /// sense, because it allows only single instance in instance group.
  /// - "NOT_CRITICAL_ERROR" : Error which is not critical. We decided to
  /// continue the process despite the mentioned error.
  /// - "CLEANUP_FAILED" : Warning about failed cleanup of transient changes
  /// made by a failed operation.
  /// - "FIELD_VALUE_OVERRIDEN" : Warning that value of a field has been
  /// overridden. Deprecated unused field.
  /// - "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" : Warning that a resource is
  /// in use.
  /// - "MISSING_TYPE_DEPENDENCY" : A resource depends on a missing type
  /// - "EXTERNAL_API_WARNING" : Warning that is present in an external api call
  /// - "SCHEMA_VALIDATION_IGNORED" : When a resource schema validation is
  /// ignored.
  /// - "UNDECLARED_PROPERTIES" : When undeclared properties in the schema are
  /// present
  /// - "EXPERIMENTAL_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as experimental
  /// - "DEPRECATED_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as deprecated
  /// - "PARTIAL_SUCCESS" : Success is reported, but some results may be missing
  /// due to errors
  /// - "LARGE_DEPLOYMENT_WARNING" : When deploying a deployment with a
  /// exceedingly large number of resources
  /// - "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE" : The route's nextHopInstance
  /// URL refers to an instance that does not have an ipv6 interface on the same
  /// network as the route.
  /// - "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB" : A WEIGHTED_MAGLEV
  /// backend service is associated with a health check that is not of type
  /// HTTP/HTTPS/HTTP2.
  core.String? code;

  /// Metadata about this warning in key: value format.
  ///
  /// For example: "data": \[ { "key": "scope", "value": "zones/us-east1-d" }
  ///
  /// Output only.
  core.List<ResourceWarningsData>? data;

  /// A human-readable description of the warning code.
  ///
  /// Output only.
  core.String? message;

  ResourceWarnings({
    this.code,
    this.data,
    this.message,
  });

  ResourceWarnings.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => ResourceWarningsData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (data != null) 'data': data!,
        if (message != null) 'message': message!,
      };
}

class Resource {
  /// The Access Control Policy set on this resource.
  ResourceAccessControl? accessControl;

  /// The evaluated properties of the resource with references expanded.
  ///
  /// Returned as serialized YAML.
  ///
  /// Output only.
  core.String? finalProperties;
  core.String? id;

  /// Creation timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? insertTime;

  /// URL of the manifest representing the current configuration of this
  /// resource.
  ///
  /// Output only.
  core.String? manifest;

  /// The name of the resource as it appears in the YAML config.
  ///
  /// Output only.
  core.String? name;

  /// The current properties of the resource before any references have been
  /// filled in.
  ///
  /// Returned as serialized YAML.
  ///
  /// Output only.
  core.String? properties;

  /// The type of the resource, for example `compute.v1.instance`, or
  /// `cloudfunctions.v1beta1.function`.
  ///
  /// Output only.
  core.String? type;

  /// If Deployment Manager is currently updating or previewing an update to
  /// this resource, the updated configuration appears here.
  ///
  /// Output only.
  ResourceUpdate? update;

  /// Update timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? updateTime;

  /// The URL of the actual resource.
  ///
  /// Output only.
  core.String? url;

  /// If warning messages are generated during processing of this resource, this
  /// field will be populated.
  ///
  /// Output only.
  core.List<ResourceWarnings>? warnings;

  Resource({
    this.accessControl,
    this.finalProperties,
    this.id,
    this.insertTime,
    this.manifest,
    this.name,
    this.properties,
    this.type,
    this.update,
    this.updateTime,
    this.url,
    this.warnings,
  });

  Resource.fromJson(core.Map json_)
      : this(
          accessControl: json_.containsKey('accessControl')
              ? ResourceAccessControl.fromJson(
                  json_['accessControl'] as core.Map<core.String, core.dynamic>)
              : null,
          finalProperties: json_.containsKey('finalProperties')
              ? json_['finalProperties'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          properties: json_.containsKey('properties')
              ? json_['properties'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          update: json_.containsKey('update')
              ? ResourceUpdate.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => ResourceWarnings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControl != null) 'accessControl': accessControl!,
        if (finalProperties != null) 'finalProperties': finalProperties!,
        if (id != null) 'id': id!,
        if (insertTime != null) 'insertTime': insertTime!,
        if (manifest != null) 'manifest': manifest!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
        if (type != null) 'type': type!,
        if (update != null) 'update': update!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (url != null) 'url': url!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// The access controls set on the resource.
class ResourceAccessControl {
  /// The GCP IAM Policy to set on the resource.
  core.String? gcpIamPolicy;

  ResourceAccessControl({
    this.gcpIamPolicy,
  });

  ResourceAccessControl.fromJson(core.Map json_)
      : this(
          gcpIamPolicy: json_.containsKey('gcpIamPolicy')
              ? json_['gcpIamPolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpIamPolicy != null) 'gcpIamPolicy': gcpIamPolicy!,
      };
}

class ResourceUpdateErrorErrors {
  /// The error type identifier for this error.
  ///
  /// Output only.
  core.String? code;

  /// Indicates the field in the request that caused the error.
  ///
  /// This property is optional.
  ///
  /// Output only.
  core.String? location;

  /// An optional, human-readable error message.
  ///
  /// Output only.
  core.String? message;

  ResourceUpdateErrorErrors({
    this.code,
    this.location,
    this.message,
  });

  ResourceUpdateErrorErrors.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (location != null) 'location': location!,
        if (message != null) 'message': message!,
      };
}

/// If errors are generated during update of the resource, this field will be
/// populated.
///
/// Output only.
class ResourceUpdateError {
  /// The array of errors encountered while processing this operation.
  ///
  /// Output only.
  core.List<ResourceUpdateErrorErrors>? errors;

  ResourceUpdateError({
    this.errors,
  });

  ResourceUpdateError.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ResourceUpdateErrorErrors.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

class ResourceUpdateWarningsData {
  /// A key that provides more detail on the warning being returned.
  ///
  /// For example, for warnings where there are no results in a list request for
  /// a particular zone, this key might be scope and the key value might be the
  /// zone name. Other examples might be a key indicating a deprecated resource
  /// and a suggested replacement, or a warning about invalid network settings
  /// (for example, if an instance attempts to perform IP forwarding but is not
  /// enabled for IP forwarding).
  ///
  /// Output only.
  core.String? key;

  /// A warning data value corresponding to the key.
  ///
  /// Output only.
  core.String? value;

  ResourceUpdateWarningsData({
    this.key,
    this.value,
  });

  ResourceUpdateWarningsData.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

class ResourceUpdateWarnings {
  /// A warning code, if applicable.
  ///
  /// For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no
  /// results in the response.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPRECATED_RESOURCE_USED" : A link to a deprecated resource was
  /// created.
  /// - "NO_RESULTS_ON_PAGE" : No results are present on a particular list page.
  /// - "UNREACHABLE" : A given scope cannot be reached.
  /// - "NEXT_HOP_ADDRESS_NOT_ASSIGNED" : The route's nextHopIp address is not
  /// assigned to an instance on the network.
  /// - "NEXT_HOP_INSTANCE_NOT_FOUND" : The route's nextHopInstance URL refers
  /// to an instance that does not exist.
  /// - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" : The route's nextHopInstance URL
  /// refers to an instance that is not on the same network as the route.
  /// - "NEXT_HOP_CANNOT_IP_FORWARD" : The route's next hop instance cannot ip
  /// forward.
  /// - "NEXT_HOP_NOT_RUNNING" : The route's next hop instance does not have a
  /// status of RUNNING.
  /// - "INJECTED_KERNELS_DEPRECATED" : The operation involved use of an
  /// injected kernel, which is deprecated.
  /// - "REQUIRED_TOS_AGREEMENT" : The user attempted to use a resource that
  /// requires a TOS they have not accepted.
  /// - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" : The user created a boot disk that
  /// is larger than image size.
  /// - "RESOURCE_NOT_DELETED" : One or more of the resources set to auto-delete
  /// could not be deleted because they were in use.
  /// - "SINGLE_INSTANCE_PROPERTY_TEMPLATE" : Instance template used in instance
  /// group manager is valid as such, but its application does not make a lot of
  /// sense, because it allows only single instance in instance group.
  /// - "NOT_CRITICAL_ERROR" : Error which is not critical. We decided to
  /// continue the process despite the mentioned error.
  /// - "CLEANUP_FAILED" : Warning about failed cleanup of transient changes
  /// made by a failed operation.
  /// - "FIELD_VALUE_OVERRIDEN" : Warning that value of a field has been
  /// overridden. Deprecated unused field.
  /// - "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" : Warning that a resource is
  /// in use.
  /// - "MISSING_TYPE_DEPENDENCY" : A resource depends on a missing type
  /// - "EXTERNAL_API_WARNING" : Warning that is present in an external api call
  /// - "SCHEMA_VALIDATION_IGNORED" : When a resource schema validation is
  /// ignored.
  /// - "UNDECLARED_PROPERTIES" : When undeclared properties in the schema are
  /// present
  /// - "EXPERIMENTAL_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as experimental
  /// - "DEPRECATED_TYPE_USED" : When deploying and at least one of the
  /// resources has a type marked as deprecated
  /// - "PARTIAL_SUCCESS" : Success is reported, but some results may be missing
  /// due to errors
  /// - "LARGE_DEPLOYMENT_WARNING" : When deploying a deployment with a
  /// exceedingly large number of resources
  /// - "NEXT_HOP_INSTANCE_HAS_NO_IPV6_INTERFACE" : The route's nextHopInstance
  /// URL refers to an instance that does not have an ipv6 interface on the same
  /// network as the route.
  /// - "INVALID_HEALTH_CHECK_FOR_DYNAMIC_WIEGHTED_LB" : A WEIGHTED_MAGLEV
  /// backend service is associated with a health check that is not of type
  /// HTTP/HTTPS/HTTP2.
  core.String? code;

  /// Metadata about this warning in key: value format.
  ///
  /// For example: "data": \[ { "key": "scope", "value": "zones/us-east1-d" }
  ///
  /// Output only.
  core.List<ResourceUpdateWarningsData>? data;

  /// A human-readable description of the warning code.
  ///
  /// Output only.
  core.String? message;

  ResourceUpdateWarnings({
    this.code,
    this.data,
    this.message,
  });

  ResourceUpdateWarnings.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => ResourceUpdateWarningsData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (data != null) 'data': data!,
        if (message != null) 'message': message!,
      };
}

class ResourceUpdate {
  /// The Access Control Policy to set on this resource after updating the
  /// resource itself.
  ResourceAccessControl? accessControl;

  /// If errors are generated during update of the resource, this field will be
  /// populated.
  ///
  /// Output only.
  ResourceUpdateError? error;

  /// The expanded properties of the resource with reference values expanded.
  ///
  /// Returned as serialized YAML.
  ///
  /// Output only.
  core.String? finalProperties;

  /// The intent of the resource: `PREVIEW`, `UPDATE`, or `CANCEL`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATE_OR_ACQUIRE" : The resource is scheduled to be created, or if it
  /// already exists, acquired.
  /// - "DELETE" : The resource is scheduled to be deleted.
  /// - "ACQUIRE" : The resource is scheduled to be acquired.
  /// - "UPDATE" : The resource is scheduled to be updated via the UPDATE
  /// method.
  /// - "ABANDON" : The resource is scheduled to be abandoned.
  /// - "CREATE" : The resource is scheduled to be created.
  core.String? intent;

  /// URL of the manifest representing the update configuration of this
  /// resource.
  ///
  /// Output only.
  core.String? manifest;

  /// The set of updated properties for this resource, before references are
  /// expanded.
  ///
  /// Returned as serialized YAML.
  ///
  /// Output only.
  core.String? properties;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PENDING" : There are changes pending for this resource.
  /// - "IN_PROGRESS" : The service is executing changes on the resource.
  /// - "IN_PREVIEW" : The service is previewing changes on the resource.
  /// - "FAILED" : The service has failed to change the resource.
  /// - "ABORTED" : The service has aborted trying to change the resource.
  core.String? state;

  /// If warning messages are generated during processing of this resource, this
  /// field will be populated.
  ///
  /// Output only.
  core.List<ResourceUpdateWarnings>? warnings;

  ResourceUpdate({
    this.accessControl,
    this.error,
    this.finalProperties,
    this.intent,
    this.manifest,
    this.properties,
    this.state,
    this.warnings,
  });

  ResourceUpdate.fromJson(core.Map json_)
      : this(
          accessControl: json_.containsKey('accessControl')
              ? ResourceAccessControl.fromJson(
                  json_['accessControl'] as core.Map<core.String, core.dynamic>)
              : null,
          error: json_.containsKey('error')
              ? ResourceUpdateError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          finalProperties: json_.containsKey('finalProperties')
              ? json_['finalProperties'] as core.String
              : null,
          intent: json_.containsKey('intent')
              ? json_['intent'] as core.String
              : null,
          manifest: json_.containsKey('manifest')
              ? json_['manifest'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? json_['properties'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => ResourceUpdateWarnings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControl != null) 'accessControl': accessControl!,
        if (error != null) 'error': error!,
        if (finalProperties != null) 'finalProperties': finalProperties!,
        if (intent != null) 'intent': intent!,
        if (manifest != null) 'manifest': manifest!,
        if (properties != null) 'properties': properties!,
        if (state != null) 'state': state!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// A response containing a partial list of resources and a page token used to
/// build the next request if the request has been truncated.
class ResourcesListResponse {
  /// A token used to continue a truncated list request.
  core.String? nextPageToken;

  /// Resources contained in this list response.
  core.List<Resource>? resources;

  ResourcesListResponse({
    this.nextPageToken,
    this.resources,
  });

  ResourcesListResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => Resource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resources != null) 'resources': resources!,
      };
}

class TargetConfiguration {
  /// The configuration to use for this deployment.
  ConfigFile? config;

  /// Specifies any files to import for this configuration.
  ///
  /// This can be used to import templates or other files. For example, you
  /// might import a text file in order to use the file in a template.
  core.List<ImportFile>? imports;

  TargetConfiguration({
    this.config,
    this.imports,
  });

  TargetConfiguration.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? ConfigFile.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          imports: json_.containsKey('imports')
              ? (json_['imports'] as core.List)
                  .map((value) => ImportFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (imports != null) 'imports': imports!,
      };
}

typedef TestPermissionsRequest = $TestPermissionsRequest;
typedef TestPermissionsResponse = $PermissionsResponse;

/// A resource type supported by Deployment Manager.
class Type {
  core.String? id;

  /// Creation timestamp in RFC3339 text format.
  ///
  /// Output only.
  core.String? insertTime;

  /// Name of the type.
  core.String? name;

  /// The Operation that most recently ran, or is currently running, on this
  /// type.
  ///
  /// Output only.
  Operation? operation;

  /// Server defined URL for the resource.
  ///
  /// Output only.
  core.String? selfLink;

  Type({
    this.id,
    this.insertTime,
    this.name,
    this.operation,
    this.selfLink,
  });

  Type.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (insertTime != null) 'insertTime': insertTime!,
        if (name != null) 'name': name!,
        if (operation != null) 'operation': operation!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A response that returns all Types supported by Deployment Manager
class TypesListResponse {
  /// A token used to continue a truncated list request.
  core.String? nextPageToken;

  /// A list of resource types supported by Deployment Manager.
  ///
  /// Output only.
  core.List<Type>? types;

  TypesListResponse({
    this.nextPageToken,
    this.types,
  });

  TypesListResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => Type.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (types != null) 'types': types!,
      };
}
