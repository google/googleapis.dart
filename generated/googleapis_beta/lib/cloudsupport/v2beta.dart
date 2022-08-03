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

/// Google Cloud Support API - v2beta
///
/// Manages Google Cloud technical support cases for Customer Care support
/// offerings.
///
/// For more information, see <https://cloud.google.com/support/docs/apis>
///
/// Create an instance of [CloudSupportApi] to access these resources:
///
/// - [AttachmentsResource]
/// - [CaseClassificationsResource]
/// - [CasesResource]
///   - [CasesAttachmentsResource]
///   - [CasesCommentsResource]
/// - [MediaResource]
library cloudsupport.v2beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Manages Google Cloud technical support cases for Customer Care support
/// offerings.
class CloudSupportApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AttachmentsResource get attachments => AttachmentsResource(_requester);
  CaseClassificationsResource get caseClassifications =>
      CaseClassificationsResource(_requester);
  CasesResource get cases => CasesResource(_requester);
  MediaResource get media => MediaResource(_requester);

  CloudSupportApi(http.Client client,
      {core.String rootUrl = 'https://cloudsupport.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AttachmentsResource {
  final commons.ApiRequester _requester;

  AttachmentsResource(commons.ApiRequester client) : _requester = client;

  /// Create a file attachment on a case or Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the case to which attachment
  /// should be attached.
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attachment> create(
    CreateAttachmentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/attachments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Attachment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CaseClassificationsResource {
  final commons.ApiRequester _requester;

  CaseClassificationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieve valid classifications to be used when creating a support case.
  ///
  /// The classications are hierarchical, with each classification containing
  /// all levels of the hierarchy, separated by " \> ". For example "Technical
  /// Issue \> Compute \> Compute Engine".
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of cases fetched with each request.
  ///
  /// [pageToken] - A token identifying the page of results to return. If
  /// unspecified, the first page is retrieved.
  ///
  /// [query] - An expression written in the Cloud filter language. If
  /// non-empty, then only cases whose fields match the filter are returned. If
  /// empty, then no messages are filtered out.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchCaseClassificationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchCaseClassificationsResponse> search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2beta/caseClassifications:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchCaseClassificationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CasesResource {
  final commons.ApiRequester _requester;

  CasesAttachmentsResource get attachments =>
      CasesAttachmentsResource(_requester);
  CasesCommentsResource get comments => CasesCommentsResource(_requester);

  CasesResource(commons.ApiRequester client) : _requester = client;

  /// Close the specified case.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the case resource to be
  /// closed.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Case].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Case> close(
    CloseCaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':close';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Case.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new case and associate it with the given Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the Cloud resource under which the case
  /// should be created.
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Case].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Case> create(
    Case request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/cases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Case.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Escalate a case.
  ///
  /// Escalating a case will initiate the Cloud Support escalation management
  /// process. This operation is only available to certain Customer Care tiers.
  /// Go to https://cloud.google.com/support and look for 'Technical support
  /// escalations' in the feature list to find out which tiers are able to
  /// perform escalations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of the Case resource to be
  /// escalated.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Case].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Case> escalate(
    EscalateCaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':escalate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Case.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the specified case.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully qualified name of a case to be retrieved.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Case].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Case> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Case.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve all cases under the specified parent.
  ///
  /// Note: Listing cases under an Organization returns only the cases directly
  /// parented by that organization. To retrieve all cases under an
  /// organization, including cases parented by projects under that
  /// organization, use `cases.search`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The fully qualified name of parent resource to list
  /// cases under.
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
  ///
  /// [filter] - An expression written in filter language. If non-empty, the
  /// query returns the cases that match the filter. Else, the query doesn't
  /// filter the cases. Filter expressions use the following fields with the
  /// operators equals (`=`) and `AND`: - `state`: The accepted values are
  /// `OPEN` or `CLOSED`. - `priority`: The accepted values are `P0`, `P1`,
  /// `P2`, `P3`, or `P4`. You can specify multiple values for priority using
  /// the `OR` operator. For example, `priority=P1 OR priority=P2`. -
  /// \[DEPRECATED\] `severity`: The accepted values are `S0`, `S1`, `S2`, `S3`,
  /// or `S4`. - `creator.email`: The email address of the case creator.
  /// Examples: - `state=CLOSED` - `state=OPEN AND
  /// creator.email="tester@example.com"` - `state=OPEN AND (priority=P0 OR
  /// priority=P1)`
  ///
  /// [pageSize] - The maximum number of cases fetched with each request.
  /// Defaults to 10.
  ///
  /// [pageToken] - A token identifying the page of results to return. If
  /// unspecified, the first page is retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCasesResponse> list(
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/cases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the specified case.
  ///
  /// Only a subset of fields (display_name, description, time_zone,
  /// subscriber_email_addresses, related_resources, severity, priority,
  /// primary_contact, and labels) can be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name for the case.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [updateMask] - A field that represents attributes of a case object that
  /// should be updated as part of this request. Supported values are severity,
  /// display_name, and subscriber_email_addresses. If no fields are specified,
  /// all supported fields will be updated. WARNING: If you do not provide a
  /// field mask then you may accidentally clear some fields. For example, if
  /// you leave field mask empty and do not provide a value for
  /// subscriber_email_addresses then subscriber_email_addresses will be updated
  /// to empty.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Case].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Case> patch(
    Case request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Case.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Search cases using the specified query.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of cases fetched with each request. The
  /// default page size is 10.
  ///
  /// [pageToken] - A token identifying the page of results to return. If
  /// unspecified, the first page is retrieved.
  ///
  /// [query] - An expression written in filter language. A query uses the
  /// following fields with the operators equals (`=`) and `AND`: -
  /// `organization`: An organization name in the form `organizations/`. -
  /// `project`: A project name in the form `projects/`. - `state`: The accepted
  /// values are `OPEN` or `CLOSED`. - `priority`: The accepted values are `P0`,
  /// `P1`, `P2`, `P3`, or `P4`. You can specify multiple values for priority
  /// using the `OR` operator. For example, `priority=P1 OR priority=P2`. -
  /// \[DEPRECATED\] `severity`: The accepted values are `S0`, `S1`, `S2`, `S3`,
  /// or `S4`. - `creator.email`: The email address of the case creator. You
  /// must specify eitehr `organization` or `project`. To search across
  /// `displayName`, `description`, and comments, use a global restriction with
  /// no keyword or operator. For example, `"my search"`. To search only cases
  /// updated after a certain date, use `update_time` retricted with that
  /// particular date, time, and timezone in ISO datetime format. For example,
  /// `update_time>"2020-01-01T00:00:00-05:00"`. `update_time` only supports the
  /// greater than operator (`>`). Examples: -
  /// `organization="organizations/123456789"` -
  /// `project="projects/my-project-id"` - `project="projects/123456789"` -
  /// `organization="organizations/123456789" AND state=CLOSED` -
  /// `project="projects/my-project-id" AND creator.email="tester@example.com"`
  /// - `project="projects/my-project-id" AND (priority=P0 OR priority=P1)`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchCasesResponse> search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2beta/cases:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchCasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CasesAttachmentsResource {
  final commons.ApiRequester _requester;

  CasesAttachmentsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve all attachments associated with a support case.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of Case object for which
  /// attachments should be listed.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of attachments fetched with each request.
  /// If not provided, the default is 10. The maximum page size that will be
  /// returned is 100.
  ///
  /// [pageToken] - A token identifying the page of results to return. If
  /// unspecified, the first page is retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttachmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttachmentsResponse> list(
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/attachments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttachmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CasesCommentsResource {
  final commons.ApiRequester _requester;

  CasesCommentsResource(commons.ApiRequester client) : _requester = client;

  /// Add a new comment to the specified Case.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of Case to which this comment
  /// should be added.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Comment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Comment> create(
    Comment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/comments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Comment.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve all Comments associated with the Case object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of Case object for which comments
  /// should be listed.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of comments fetched with each request.
  /// Defaults to 10.
  ///
  /// [pageToken] - A token identifying the page of results to return. If
  /// unspecified, the first page is retrieved.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCommentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCommentsResponse> list(
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/comments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCommentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Download a file attachment on a case.
  ///
  /// Note: HTTP requests must append "?alt=media" to the URL.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the attachment to be downloaded.
  /// Value must have pattern
  /// `^\[^/\]+/\[^/\]+/cases/\[^/\]+/attachments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [Media] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String name, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Media.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Create a file attachment on a case or Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the case to which attachment
  /// should be attached.
  /// Value must have pattern `^\[^/\]+/\[^/\]+/cases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Attachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attachment> upload(
    CreateAttachmentRequest request,
    core.String parent, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/attachments';
    } else {
      url_ =
          '/upload/v2beta/' + core.Uri.encodeFull('$parent') + '/attachments';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return Attachment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An object containing information about the effective user and authenticated
/// principal responsible for an action.
class Actor {
  /// The name to display for the actor.
  ///
  /// If not provided, it is inferred from credentials supplied during case
  /// creation. When an email is provided, a display name must also be provided.
  /// This will be obfuscated if the user is a Google Support agent.
  core.String? displayName;

  /// The email address of the actor.
  ///
  /// If not provided, it is inferred from credentials supplied during case
  /// creation. If the authenticated principal does not have an email address,
  /// one must be provided. When a name is provided, an email must also be
  /// provided. This will be obfuscated if the user is a Google Support agent.
  core.String? email;

  /// Whether the actor is a Google support actor.
  ///
  /// Output only.
  core.bool? googleSupport;

  Actor({
    this.displayName,
    this.email,
    this.googleSupport,
  });

  Actor.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          googleSupport: json_.containsKey('googleSupport')
              ? json_['googleSupport'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (googleSupport != null) 'googleSupport': googleSupport!,
      };
}

/// Represents a file attached to a support case.
class Attachment {
  /// The time at which the attachment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who uploaded the attachment.
  ///
  /// Note, the name and email will be obfuscated if the attachment was uploaded
  /// by Google support.
  ///
  /// Output only.
  Actor? creator;

  /// The filename of the attachment (e.g. `"graph.jpg"`).
  core.String? filename;

  /// The MIME type of the attachment (e.g. text/plain).
  ///
  /// Output only.
  core.String? mimeType;

  /// The resource name of the attachment.
  ///
  /// Output only.
  core.String? name;

  /// The size of the attachment in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  Attachment({
    this.createTime,
    this.creator,
    this.filename,
    this.mimeType,
    this.name,
    this.sizeBytes,
  });

  Attachment.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? Actor.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (filename != null) 'filename': filename!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (name != null) 'name': name!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
      };
}

/// # gdata.* are outside protos with mising documentation
class Blobstore2Info {
  /// # gdata.* are outside protos with mising documentation
  core.String? blobGeneration;

  /// # gdata.* are outside protos with mising documentation
  core.String? blobId;

  /// # gdata.* are outside protos with mising documentation
  core.String? downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes =>
      convert.base64.decode(downloadReadHandle!);

  set downloadReadHandleAsBytes(core.List<core.int> bytes_) {
    downloadReadHandle =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? readToken;

  /// # gdata.* are outside protos with mising documentation
  core.String? uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes =>
      convert.base64.decode(uploadMetadataContainer!);

  set uploadMetadataContainerAsBytes(core.List<core.int> bytes_) {
    uploadMetadataContainer =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Blobstore2Info({
    this.blobGeneration,
    this.blobId,
    this.downloadReadHandle,
    this.readToken,
    this.uploadMetadataContainer,
  });

  Blobstore2Info.fromJson(core.Map json_)
      : this(
          blobGeneration: json_.containsKey('blobGeneration')
              ? json_['blobGeneration'] as core.String
              : null,
          blobId: json_.containsKey('blobId')
              ? json_['blobId'] as core.String
              : null,
          downloadReadHandle: json_.containsKey('downloadReadHandle')
              ? json_['downloadReadHandle'] as core.String
              : null,
          readToken: json_.containsKey('readToken')
              ? json_['readToken'] as core.String
              : null,
          uploadMetadataContainer: json_.containsKey('uploadMetadataContainer')
              ? json_['uploadMetadataContainer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobGeneration != null) 'blobGeneration': blobGeneration!,
        if (blobId != null) 'blobId': blobId!,
        if (downloadReadHandle != null)
          'downloadReadHandle': downloadReadHandle!,
        if (readToken != null) 'readToken': readToken!,
        if (uploadMetadataContainer != null)
          'uploadMetadataContainer': uploadMetadataContainer!,
      };
}

/// A support case.
class Case {
  /// The issue classification applicable to this case.
  CaseClassification? classification;

  /// The time this case was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created the case.
  ///
  /// Note: The name and email will be obfuscated if the case was created by
  /// Google Support.
  Actor? creator;

  /// A broad description of the issue.
  core.String? description;

  /// The short summary of the issue reported in this case.
  core.String? displayName;

  /// Whether the case is currently escalated.
  core.bool? escalated;

  /// The resource name for the case.
  core.String? name;

  /// The priority of this case.
  ///
  /// If this is set, do not set severity.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : Severity is undefined or has not been set yet.
  /// - "P0" : Extreme impact on a production service. Service is hard down.
  /// - "P1" : Critical impact on a production service. Service is currently
  /// unusable.
  /// - "P2" : Severe impact on a production service. Service is usable but
  /// greatly impaired.
  /// - "P3" : Medium impact on a production service. Service is available, but
  /// moderately impaired.
  /// - "P4" : General questions or minor issues. Production service is fully
  /// available.
  core.String? priority;

  /// The severity of this case.
  ///
  /// Deprecated. Use priority instead.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity is undefined or has not been set yet.
  /// - "S0" : Extreme impact on a production service. Service is hard down.
  /// - "S1" : Critical impact on a production service. Service is currently
  /// unusable.
  /// - "S2" : Severe impact on a production service. Service is usable but
  /// greatly impaired.
  /// - "S3" : Medium impact on a production service. Service is available, but
  /// moderately impaired.
  /// - "S4" : General questions or minor issues. Production service is fully
  /// available.
  core.String? severity;

  /// The current status of the support case.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Case is in an unknown state.
  /// - "NEW" : The case has been created but no one is assigned to work on it
  /// yet.
  /// - "IN_PROGRESS_GOOGLE_SUPPORT" : The case is currently being handled by
  /// Google support.
  /// - "ACTION_REQUIRED" : Google is waiting for a response.
  /// - "SOLUTION_PROVIDED" : A solution has been offered for the case, but it
  /// isn't yet closed.
  /// - "CLOSED" : The case has been resolved.
  core.String? state;

  /// The email addresses to receive updates on this case.
  core.List<core.String>? subscriberEmailAddresses;

  /// Whether this case was created for internal API testing and should not be
  /// acted on by the support team.
  core.bool? testCase;

  /// The timezone of the user who created the support case.
  ///
  /// It should be in a format IANA recognizes: https://www.iana.org/time-zones.
  /// There is no additional validation done by the API.
  core.String? timeZone;

  /// The time this case was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Case({
    this.classification,
    this.createTime,
    this.creator,
    this.description,
    this.displayName,
    this.escalated,
    this.name,
    this.priority,
    this.severity,
    this.state,
    this.subscriberEmailAddresses,
    this.testCase,
    this.timeZone,
    this.updateTime,
  });

  Case.fromJson(core.Map json_)
      : this(
          classification: json_.containsKey('classification')
              ? CaseClassification.fromJson(json_['classification']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? Actor.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          escalated: json_.containsKey('escalated')
              ? json_['escalated'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subscriberEmailAddresses:
              json_.containsKey('subscriberEmailAddresses')
                  ? (json_['subscriberEmailAddresses'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          testCase: json_.containsKey('testCase')
              ? json_['testCase'] as core.bool
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classification != null) 'classification': classification!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (escalated != null) 'escalated': escalated!,
        if (name != null) 'name': name!,
        if (priority != null) 'priority': priority!,
        if (severity != null) 'severity': severity!,
        if (state != null) 'state': state!,
        if (subscriberEmailAddresses != null)
          'subscriberEmailAddresses': subscriberEmailAddresses!,
        if (testCase != null) 'testCase': testCase!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A classification object with a product type and value.
class CaseClassification {
  /// The display name of the classification.
  core.String? displayName;

  /// The unique ID for a classification.
  ///
  /// Must be specified for case creation. To retrieve valid classification IDs
  /// for case creation, use `caseClassifications.search`.
  core.String? id;

  CaseClassification({
    this.displayName,
    this.id,
  });

  CaseClassification.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// The request message for the CloseCase endpoint.
typedef CloseCaseRequest = $Empty;

/// A comment associated with a support case.
class Comment {
  /// The full comment body.
  ///
  /// Maximum of 120000 characters. This can contain rich text syntax.
  core.String? body;

  /// The time when this comment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user or Google Support agent created this comment.
  ///
  /// Output only.
  Actor? creator;

  /// The resource name for the comment.
  ///
  /// Output only.
  core.String? name;

  /// An automatically generated plain text version of body with all rich text
  /// syntax stripped.
  ///
  /// Output only.
  core.String? plainTextBody;

  Comment({
    this.body,
    this.createTime,
    this.creator,
    this.name,
    this.plainTextBody,
  });

  Comment.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? Actor.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          plainTextBody: json_.containsKey('plainTextBody')
              ? json_['plainTextBody'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (name != null) 'name': name!,
        if (plainTextBody != null) 'plainTextBody': plainTextBody!,
      };
}

/// # gdata.* are outside protos with mising documentation
class CompositeMedia {
  /// # gdata.* are outside protos with mising documentation
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  Blobstore2Info? blobstore2Info;

  /// # gdata.* are outside protos with mising documentation
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.int? crc32cHash;

  /// # gdata.* are outside protos with mising documentation
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? length;

  /// # gdata.* are outside protos with mising documentation
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  ObjectId? objectId;

  /// # gdata.* are outside protos with mising documentation
  core.String? path;

  /// # gdata.* are outside protos with mising documentation
  /// Possible string values are:
  /// - "PATH" : # gdata.* are outside protos with mising documentation
  /// - "BLOB_REF" : # gdata.* are outside protos with mising documentation
  /// - "INLINE" : # gdata.* are outside protos with mising documentation
  /// - "BIGSTORE_REF" : # gdata.* are outside protos with mising documentation
  /// - "COSMO_BINARY_REFERENCE" : # gdata.* are outside protos with mising
  /// documentation
  core.String? referenceType;

  /// # gdata.* are outside protos with mising documentation
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  CompositeMedia({
    this.blobRef,
    this.blobstore2Info,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.inline,
    this.length,
    this.md5Hash,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
  });

  CompositeMedia.fromJson(core.Map json_)
      : this(
          blobRef: json_.containsKey('blobRef')
              ? json_['blobRef'] as core.String
              : null,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? Blobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_.containsKey('cosmoBinaryReference')
              ? json_['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: json_.containsKey('crc32cHash')
              ? json_['crc32cHash'] as core.int
              : null,
          inline: json_.containsKey('inline')
              ? json_['inline'] as core.String
              : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          md5Hash: json_.containsKey('md5Hash')
              ? json_['md5Hash'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? ObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          referenceType: json_.containsKey('referenceType')
              ? json_['referenceType'] as core.String
              : null,
          sha1Hash: json_.containsKey('sha1Hash')
              ? json_['sha1Hash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (inline != null) 'inline': inline!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
      };
}

/// # gdata.* are outside protos with mising documentation
class ContentTypeInfo {
  /// # gdata.* are outside protos with mising documentation
  core.String? bestGuess;

  /// # gdata.* are outside protos with mising documentation
  core.String? fromBytes;

  /// # gdata.* are outside protos with mising documentation
  core.String? fromFileName;

  /// # gdata.* are outside protos with mising documentation
  core.String? fromHeader;

  /// # gdata.* are outside protos with mising documentation
  core.String? fromUrlPath;

  ContentTypeInfo({
    this.bestGuess,
    this.fromBytes,
    this.fromFileName,
    this.fromHeader,
    this.fromUrlPath,
  });

  ContentTypeInfo.fromJson(core.Map json_)
      : this(
          bestGuess: json_.containsKey('bestGuess')
              ? json_['bestGuess'] as core.String
              : null,
          fromBytes: json_.containsKey('fromBytes')
              ? json_['fromBytes'] as core.String
              : null,
          fromFileName: json_.containsKey('fromFileName')
              ? json_['fromFileName'] as core.String
              : null,
          fromHeader: json_.containsKey('fromHeader')
              ? json_['fromHeader'] as core.String
              : null,
          fromUrlPath: json_.containsKey('fromUrlPath')
              ? json_['fromUrlPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestGuess != null) 'bestGuess': bestGuess!,
        if (fromBytes != null) 'fromBytes': fromBytes!,
        if (fromFileName != null) 'fromFileName': fromFileName!,
        if (fromHeader != null) 'fromHeader': fromHeader!,
        if (fromUrlPath != null) 'fromUrlPath': fromUrlPath!,
      };
}

/// The request message for the CreateAttachment endpoint.
class CreateAttachmentRequest {
  /// The attachment to be created.
  ///
  /// Required.
  Attachment? attachment;

  CreateAttachmentRequest({
    this.attachment,
  });

  CreateAttachmentRequest.fromJson(core.Map json_)
      : this(
          attachment: json_.containsKey('attachment')
              ? Attachment.fromJson(
                  json_['attachment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachment != null) 'attachment': attachment!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DiffChecksumsResponse {
  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? checksumsLocation;

  /// # gdata.* are outside protos with mising documentation
  core.String? chunkSizeBytes;

  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? objectLocation;

  /// # gdata.* are outside protos with mising documentation
  core.String? objectSizeBytes;

  /// # gdata.* are outside protos with mising documentation
  core.String? objectVersion;

  DiffChecksumsResponse({
    this.checksumsLocation,
    this.chunkSizeBytes,
    this.objectLocation,
    this.objectSizeBytes,
    this.objectVersion,
  });

  DiffChecksumsResponse.fromJson(core.Map json_)
      : this(
          checksumsLocation: json_.containsKey('checksumsLocation')
              ? CompositeMedia.fromJson(json_['checksumsLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          chunkSizeBytes: json_.containsKey('chunkSizeBytes')
              ? json_['chunkSizeBytes'] as core.String
              : null,
          objectLocation: json_.containsKey('objectLocation')
              ? CompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectSizeBytes: json_.containsKey('objectSizeBytes')
              ? json_['objectSizeBytes'] as core.String
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
        if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
        if (objectLocation != null) 'objectLocation': objectLocation!,
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DiffDownloadResponse {
  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? objectLocation;

  DiffDownloadResponse({
    this.objectLocation,
  });

  DiffDownloadResponse.fromJson(core.Map json_)
      : this(
          objectLocation: json_.containsKey('objectLocation')
              ? CompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectLocation != null) 'objectLocation': objectLocation!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DiffUploadRequest {
  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? checksumsInfo;

  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? objectInfo;

  /// # gdata.* are outside protos with mising documentation
  core.String? objectVersion;

  DiffUploadRequest({
    this.checksumsInfo,
    this.objectInfo,
    this.objectVersion,
  });

  DiffUploadRequest.fromJson(core.Map json_)
      : this(
          checksumsInfo: json_.containsKey('checksumsInfo')
              ? CompositeMedia.fromJson(
                  json_['checksumsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectInfo: json_.containsKey('objectInfo')
              ? CompositeMedia.fromJson(
                  json_['objectInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
        if (objectInfo != null) 'objectInfo': objectInfo!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DiffUploadResponse {
  /// # gdata.* are outside protos with mising documentation
  core.String? objectVersion;

  /// # gdata.* are outside protos with mising documentation
  CompositeMedia? originalObject;

  DiffUploadResponse({
    this.objectVersion,
    this.originalObject,
  });

  DiffUploadResponse.fromJson(core.Map json_)
      : this(
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
          originalObject: json_.containsKey('originalObject')
              ? CompositeMedia.fromJson(json_['originalObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectVersion != null) 'objectVersion': objectVersion!,
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DiffVersionResponse {
  /// # gdata.* are outside protos with mising documentation
  core.String? objectSizeBytes;

  /// # gdata.* are outside protos with mising documentation
  core.String? objectVersion;

  DiffVersionResponse({
    this.objectSizeBytes,
    this.objectVersion,
  });

  DiffVersionResponse.fromJson(core.Map json_)
      : this(
          objectSizeBytes: json_.containsKey('objectSizeBytes')
              ? json_['objectSizeBytes'] as core.String
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// # gdata.* are outside protos with mising documentation
class DownloadParameters {
  /// # gdata.* are outside protos with mising documentation
  core.bool? allowGzipCompression;

  /// # gdata.* are outside protos with mising documentation
  core.bool? ignoreRange;

  DownloadParameters({
    this.allowGzipCompression,
    this.ignoreRange,
  });

  DownloadParameters.fromJson(core.Map json_)
      : this(
          allowGzipCompression: json_.containsKey('allowGzipCompression')
              ? json_['allowGzipCompression'] as core.bool
              : null,
          ignoreRange: json_.containsKey('ignoreRange')
              ? json_['ignoreRange'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowGzipCompression != null)
          'allowGzipCompression': allowGzipCompression!,
        if (ignoreRange != null) 'ignoreRange': ignoreRange!,
      };
}

/// The request message for the EscalateCase endpoint.
class EscalateCaseRequest {
  /// The escalation object to be sent with the escalation request.
  Escalation? escalation;

  EscalateCaseRequest({
    this.escalation,
  });

  EscalateCaseRequest.fromJson(core.Map json_)
      : this(
          escalation: json_.containsKey('escalation')
              ? Escalation.fromJson(
                  json_['escalation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (escalation != null) 'escalation': escalation!,
      };
}

/// An escalation of a support case.
class Escalation {
  /// A free text description to accompany the `reason` field above.
  ///
  /// Provides additional context on why the case is being escalated.
  ///
  /// Required.
  core.String? justification;

  /// The reason why the Case is being escalated.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED" : The escalation reason is in an unknown state or
  /// has not been specified.
  /// - "RESOLUTION_TIME" : The case is taking too long to resolve.
  /// - "TECHNICAL_EXPERTISE" : The support agent does not have the expertise
  /// required to successfully resolve the issue.
  /// - "BUSINESS_IMPACT" : The issue is having a significant business impact.
  core.String? reason;

  Escalation({
    this.justification,
    this.reason,
  });

  Escalation.fromJson(core.Map json_)
      : this(
          justification: json_.containsKey('justification')
              ? json_['justification'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (justification != null) 'justification': justification!,
        if (reason != null) 'reason': reason!,
      };
}

/// The response message for the ListAttachments endpoint.
class ListAttachmentsResponse {
  /// The list of attachments associated with the given case.
  core.List<Attachment>? attachments;

  /// A token to retrieve the next page of results.
  ///
  /// This should be set in the `page_token` field of subsequent
  /// `cases.attachments.list` requests. If unspecified, there are no more
  /// results to retrieve.
  core.String? nextPageToken;

  ListAttachmentsResponse({
    this.attachments,
    this.nextPageToken,
  });

  ListAttachmentsResponse.fromJson(core.Map json_)
      : this(
          attachments: json_.containsKey('attachments')
              ? (json_['attachments'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachments != null) 'attachments': attachments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for the ListCases endpoint.
class ListCasesResponse {
  /// The list of cases associated with the cloud resource, after any filters
  /// have been applied.
  core.List<Case>? cases;

  /// A token to retrieve the next page of results.
  ///
  /// This should be set in the `page_token` field of subsequent
  /// `ListCasesRequest` message that is issued. If unspecified, there are no
  /// more results to retrieve.
  core.String? nextPageToken;

  ListCasesResponse({
    this.cases,
    this.nextPageToken,
  });

  ListCasesResponse.fromJson(core.Map json_)
      : this(
          cases: json_.containsKey('cases')
              ? (json_['cases'] as core.List)
                  .map((value) => Case.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cases != null) 'cases': cases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for the ListComments endpoint.
class ListCommentsResponse {
  /// The list of Comments associated with the given Case.
  core.List<Comment>? comments;

  /// A token to retrieve the next page of results.
  ///
  /// This should be set in the `page_token` field of subsequent
  /// `ListCommentsRequest` message that is issued. If unspecified, there are no
  /// more results to retrieve.
  core.String? nextPageToken;

  ListCommentsResponse({
    this.comments,
    this.nextPageToken,
  });

  ListCommentsResponse.fromJson(core.Map json_)
      : this(
          comments: json_.containsKey('comments')
              ? (json_['comments'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// # gdata.* are outside protos with mising documentation
class Media {
  /// # gdata.* are outside protos with mising documentation
  core.String? algorithm;

  /// # gdata.* are outside protos with mising documentation
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> bytes_) {
    bigstoreObjectRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  Blobstore2Info? blobstore2Info;

  /// # gdata.* are outside protos with mising documentation
  core.List<CompositeMedia>? compositeMedia;

  /// # gdata.* are outside protos with mising documentation
  core.String? contentType;

  /// # gdata.* are outside protos with mising documentation
  ContentTypeInfo? contentTypeInfo;

  /// # gdata.* are outside protos with mising documentation
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.int? crc32cHash;

  /// # gdata.* are outside protos with mising documentation
  DiffChecksumsResponse? diffChecksumsResponse;

  /// # gdata.* are outside protos with mising documentation
  DiffDownloadResponse? diffDownloadResponse;

  /// # gdata.* are outside protos with mising documentation
  DiffUploadRequest? diffUploadRequest;

  /// # gdata.* are outside protos with mising documentation
  DiffUploadResponse? diffUploadResponse;

  /// # gdata.* are outside protos with mising documentation
  DiffVersionResponse? diffVersionResponse;

  /// # gdata.* are outside protos with mising documentation
  DownloadParameters? downloadParameters;

  /// # gdata.* are outside protos with mising documentation
  core.String? filename;

  /// # gdata.* are outside protos with mising documentation
  core.String? hash;

  /// # gdata.* are outside protos with mising documentation
  core.bool? hashVerified;

  /// # gdata.* are outside protos with mising documentation
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.bool? isPotentialRetry;

  /// # gdata.* are outside protos with mising documentation
  core.String? length;

  /// # gdata.* are outside protos with mising documentation
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> bytes_) {
    mediaId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  ObjectId? objectId;

  /// # gdata.* are outside protos with mising documentation
  core.String? path;

  /// # gdata.* are outside protos with mising documentation
  /// Possible string values are:
  /// - "PATH" : # gdata.* are outside protos with mising documentation
  /// - "BLOB_REF" : # gdata.* are outside protos with mising documentation
  /// - "INLINE" : # gdata.* are outside protos with mising documentation
  /// - "GET_MEDIA" : # gdata.* are outside protos with mising documentation
  /// - "COMPOSITE_MEDIA" : # gdata.* are outside protos with mising
  /// documentation
  /// - "BIGSTORE_REF" : # gdata.* are outside protos with mising documentation
  /// - "DIFF_VERSION_RESPONSE" : # gdata.* are outside protos with mising
  /// documentation
  /// - "DIFF_CHECKSUMS_RESPONSE" : # gdata.* are outside protos with mising
  /// documentation
  /// - "DIFF_DOWNLOAD_RESPONSE" : # gdata.* are outside protos with mising
  /// documentation
  /// - "DIFF_UPLOAD_REQUEST" : # gdata.* are outside protos with mising
  /// documentation
  /// - "DIFF_UPLOAD_RESPONSE" : # gdata.* are outside protos with mising
  /// documentation
  /// - "COSMO_BINARY_REFERENCE" : # gdata.* are outside protos with mising
  /// documentation
  /// - "ARBITRARY_BYTES" : # gdata.* are outside protos with mising
  /// documentation
  core.String? referenceType;

  /// # gdata.* are outside protos with mising documentation
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> bytes_) {
    sha256Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// # gdata.* are outside protos with mising documentation
  core.String? timestamp;

  /// # gdata.* are outside protos with mising documentation
  core.String? token;

  Media({
    this.algorithm,
    this.bigstoreObjectRef,
    this.blobRef,
    this.blobstore2Info,
    this.compositeMedia,
    this.contentType,
    this.contentTypeInfo,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.diffChecksumsResponse,
    this.diffDownloadResponse,
    this.diffUploadRequest,
    this.diffUploadResponse,
    this.diffVersionResponse,
    this.downloadParameters,
    this.filename,
    this.hash,
    this.hashVerified,
    this.inline,
    this.isPotentialRetry,
    this.length,
    this.md5Hash,
    this.mediaId,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
    this.sha256Hash,
    this.timestamp,
    this.token,
  });

  Media.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          bigstoreObjectRef: json_.containsKey('bigstoreObjectRef')
              ? json_['bigstoreObjectRef'] as core.String
              : null,
          blobRef: json_.containsKey('blobRef')
              ? json_['blobRef'] as core.String
              : null,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? Blobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compositeMedia: json_.containsKey('compositeMedia')
              ? (json_['compositeMedia'] as core.List)
                  .map((value) => CompositeMedia.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          contentTypeInfo: json_.containsKey('contentTypeInfo')
              ? ContentTypeInfo.fromJson(json_['contentTypeInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_.containsKey('cosmoBinaryReference')
              ? json_['cosmoBinaryReference'] as core.String
              : null,
          crc32cHash: json_.containsKey('crc32cHash')
              ? json_['crc32cHash'] as core.int
              : null,
          diffChecksumsResponse: json_.containsKey('diffChecksumsResponse')
              ? DiffChecksumsResponse.fromJson(json_['diffChecksumsResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffDownloadResponse: json_.containsKey('diffDownloadResponse')
              ? DiffDownloadResponse.fromJson(json_['diffDownloadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadRequest: json_.containsKey('diffUploadRequest')
              ? DiffUploadRequest.fromJson(json_['diffUploadRequest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadResponse: json_.containsKey('diffUploadResponse')
              ? DiffUploadResponse.fromJson(json_['diffUploadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffVersionResponse: json_.containsKey('diffVersionResponse')
              ? DiffVersionResponse.fromJson(json_['diffVersionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          downloadParameters: json_.containsKey('downloadParameters')
              ? DownloadParameters.fromJson(json_['downloadParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
          hash: json_.containsKey('hash') ? json_['hash'] as core.String : null,
          hashVerified: json_.containsKey('hashVerified')
              ? json_['hashVerified'] as core.bool
              : null,
          inline: json_.containsKey('inline')
              ? json_['inline'] as core.String
              : null,
          isPotentialRetry: json_.containsKey('isPotentialRetry')
              ? json_['isPotentialRetry'] as core.bool
              : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          md5Hash: json_.containsKey('md5Hash')
              ? json_['md5Hash'] as core.String
              : null,
          mediaId: json_.containsKey('mediaId')
              ? json_['mediaId'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? ObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          referenceType: json_.containsKey('referenceType')
              ? json_['referenceType'] as core.String
              : null,
          sha1Hash: json_.containsKey('sha1Hash')
              ? json_['sha1Hash'] as core.String
              : null,
          sha256Hash: json_.containsKey('sha256Hash')
              ? json_['sha256Hash'] as core.String
              : null,
          timestamp: json_.containsKey('timestamp')
              ? json_['timestamp'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (bigstoreObjectRef != null) 'bigstoreObjectRef': bigstoreObjectRef!,
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (compositeMedia != null) 'compositeMedia': compositeMedia!,
        if (contentType != null) 'contentType': contentType!,
        if (contentTypeInfo != null) 'contentTypeInfo': contentTypeInfo!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (diffChecksumsResponse != null)
          'diffChecksumsResponse': diffChecksumsResponse!,
        if (diffDownloadResponse != null)
          'diffDownloadResponse': diffDownloadResponse!,
        if (diffUploadRequest != null) 'diffUploadRequest': diffUploadRequest!,
        if (diffUploadResponse != null)
          'diffUploadResponse': diffUploadResponse!,
        if (diffVersionResponse != null)
          'diffVersionResponse': diffVersionResponse!,
        if (downloadParameters != null)
          'downloadParameters': downloadParameters!,
        if (filename != null) 'filename': filename!,
        if (hash != null) 'hash': hash!,
        if (hashVerified != null) 'hashVerified': hashVerified!,
        if (inline != null) 'inline': inline!,
        if (isPotentialRetry != null) 'isPotentialRetry': isPotentialRetry!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (mediaId != null) 'mediaId': mediaId!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (token != null) 'token': token!,
      };
}

/// # gdata.* are outside protos with mising documentation
class ObjectId {
  /// # gdata.* are outside protos with mising documentation
  core.String? bucketName;

  /// # gdata.* are outside protos with mising documentation
  core.String? generation;

  /// # gdata.* are outside protos with mising documentation
  core.String? objectName;

  ObjectId({
    this.bucketName,
    this.generation,
    this.objectName,
  });

  ObjectId.fromJson(core.Map json_)
      : this(
          bucketName: json_.containsKey('bucketName')
              ? json_['bucketName'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          objectName: json_.containsKey('objectName')
              ? json_['objectName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (generation != null) 'generation': generation!,
        if (objectName != null) 'objectName': objectName!,
      };
}

/// The response message for SearchCaseClassifications endpoint.
class SearchCaseClassificationsResponse {
  /// The classifications retrieved.
  core.List<CaseClassification>? caseClassifications;

  /// A token to retrieve the next page of results.
  ///
  /// This should be set in the `page_token` field of subsequent
  /// `SearchCaseClassificationsRequest` message that is issued. If unspecified,
  /// there are no more results to retrieve.
  core.String? nextPageToken;

  SearchCaseClassificationsResponse({
    this.caseClassifications,
    this.nextPageToken,
  });

  SearchCaseClassificationsResponse.fromJson(core.Map json_)
      : this(
          caseClassifications: json_.containsKey('caseClassifications')
              ? (json_['caseClassifications'] as core.List)
                  .map((value) => CaseClassification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseClassifications != null)
          'caseClassifications': caseClassifications!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for the SearchCases endpoint.
class SearchCasesResponse {
  /// The list of Case associated with the cloud resource, after any filters
  /// have been applied.
  core.List<Case>? cases;

  /// A token to retrieve the next page of results.
  ///
  /// This should be set in the `page_token` field of subsequent
  /// `SearchCaseRequest` message that is issued. If unspecified, there are no
  /// more results to retrieve.
  core.String? nextPageToken;

  SearchCasesResponse({
    this.cases,
    this.nextPageToken,
  });

  SearchCasesResponse.fromJson(core.Map json_)
      : this(
          cases: json_.containsKey('cases')
              ? (json_['cases'] as core.List)
                  .map((value) => Case.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cases != null) 'cases': cases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
