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

/// Tasks API - v1
///
/// The Google Tasks API lets you manage your tasks and task lists.
///
/// For more information, see <https://developers.google.com/tasks/>
///
/// Create an instance of [TasksApi] to access these resources:
///
/// - [TasklistsResource]
/// - [TasksResource]
library tasks.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Google Tasks API lets you manage your tasks and task lists.
class TasksApi {
  /// Create, edit, organize, and delete all your tasks
  static const tasksScope = 'https://www.googleapis.com/auth/tasks';

  /// View your tasks
  static const tasksReadonlyScope =
      'https://www.googleapis.com/auth/tasks.readonly';

  final commons.ApiRequester _requester;

  TasklistsResource get tasklists => TasklistsResource(_requester);
  TasksResource get tasks => TasksResource(_requester);

  TasksApi(http.Client client,
      {core.String rootUrl = 'https://tasks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class TasklistsResource {
  final commons.ApiRequester _requester;

  TasklistsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the authenticated user's specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String tasklist, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/users/@me/lists/' + commons.escapeVariable('$tasklist');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the authenticated user's specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> get(
    core.String tasklist, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/users/@me/lists/' + commons.escapeVariable('$tasklist');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TaskList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new task list and adds it to the authenticated user's task
  /// lists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> insert(
    TaskList request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'tasks/v1/users/@me/lists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TaskList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all the authenticated user's task lists.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of task lists returned on one page.
  /// Optional. The default is 20 (max allowed: 100).
  ///
  /// [pageToken] - Token specifying the result page to return. Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskLists].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskLists> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'tasks/v1/users/@me/lists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TaskLists.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the authenticated user's specified task list.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> patch(
    TaskList request,
    core.String tasklist, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/users/@me/lists/' + commons.escapeVariable('$tasklist');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return TaskList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the authenticated user's specified task list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskList> update(
    TaskList request,
    core.String tasklist, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/users/@me/lists/' + commons.escapeVariable('$tasklist');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return TaskList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TasksResource {
  final commons.ApiRequester _requester;

  TasksResource(commons.ApiRequester client) : _requester = client;

  /// Clears all completed tasks from the specified task list.
  ///
  /// The affected tasks will be marked as 'hidden' and no longer be returned by
  /// default when retrieving all tasks for a task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> clear(
    core.String tasklist, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/lists/' + commons.escapeVariable('$tasklist') + '/clear';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deletes the specified task from the task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String tasklist,
    core.String task, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tasks/v1/lists/' +
        commons.escapeVariable('$tasklist') +
        '/tasks/' +
        commons.escapeVariable('$task');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns the specified task.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String tasklist,
    core.String task, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tasks/v1/lists/' +
        commons.escapeVariable('$tasklist') +
        '/tasks/' +
        commons.escapeVariable('$task');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new task on the specified task list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [parent] - Parent task identifier. If the task is created at the top
  /// level, this parameter is omitted. Optional.
  ///
  /// [previous] - Previous sibling task identifier. If the task is created at
  /// the first position among its siblings, this parameter is omitted.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> insert(
    Task request,
    core.String tasklist, {
    core.String? parent,
    core.String? previous,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (previous != null) 'previous': [previous],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/lists/' + commons.escapeVariable('$tasklist') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all tasks in the specified task list.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [completedMax] - Upper bound for a task's completion date (as a RFC 3339
  /// timestamp) to filter by. Optional. The default is not to filter by
  /// completion date.
  ///
  /// [completedMin] - Lower bound for a task's completion date (as a RFC 3339
  /// timestamp) to filter by. Optional. The default is not to filter by
  /// completion date.
  ///
  /// [dueMax] - Upper bound for a task's due date (as a RFC 3339 timestamp) to
  /// filter by. Optional. The default is not to filter by due date.
  ///
  /// [dueMin] - Lower bound for a task's due date (as a RFC 3339 timestamp) to
  /// filter by. Optional. The default is not to filter by due date.
  ///
  /// [maxResults] - Maximum number of task lists returned on one page.
  /// Optional. The default is 20 (max allowed: 100).
  ///
  /// [pageToken] - Token specifying the result page to return. Optional.
  ///
  /// [showCompleted] - Flag indicating whether completed tasks are returned in
  /// the result. Optional. The default is True. Note that showHidden must also
  /// be True to show tasks completed in first party clients, such as the web UI
  /// and Google's mobile apps.
  ///
  /// [showDeleted] - Flag indicating whether deleted tasks are returned in the
  /// result. Optional. The default is False.
  ///
  /// [showHidden] - Flag indicating whether hidden tasks are returned in the
  /// result. Optional. The default is False.
  ///
  /// [updatedMin] - Lower bound for a task's last modification time (as a RFC
  /// 3339 timestamp) to filter by. Optional. The default is not to filter by
  /// last modification time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tasks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tasks> list(
    core.String tasklist, {
    core.String? completedMax,
    core.String? completedMin,
    core.String? dueMax,
    core.String? dueMin,
    core.int? maxResults,
    core.String? pageToken,
    core.bool? showCompleted,
    core.bool? showDeleted,
    core.bool? showHidden,
    core.String? updatedMin,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (completedMax != null) 'completedMax': [completedMax],
      if (completedMin != null) 'completedMin': [completedMin],
      if (dueMax != null) 'dueMax': [dueMax],
      if (dueMin != null) 'dueMin': [dueMin],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showCompleted != null) 'showCompleted': ['${showCompleted}'],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (showHidden != null) 'showHidden': ['${showHidden}'],
      if (updatedMin != null) 'updatedMin': [updatedMin],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'tasks/v1/lists/' + commons.escapeVariable('$tasklist') + '/tasks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tasks.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves the specified task to another position in the task list.
  ///
  /// This can include putting it as a child task under a new parent and/or move
  /// it to a different position among its sibling tasks.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [parent] - New parent task identifier. If the task is moved to the top
  /// level, this parameter is omitted. Optional.
  ///
  /// [previous] - New previous sibling task identifier. If the task is moved to
  /// the first position among its siblings, this parameter is omitted.
  /// Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> move(
    core.String tasklist,
    core.String task, {
    core.String? parent,
    core.String? previous,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parent != null) 'parent': [parent],
      if (previous != null) 'previous': [previous],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tasks/v1/lists/' +
        commons.escapeVariable('$tasklist') +
        '/tasks/' +
        commons.escapeVariable('$task') +
        '/move';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified task.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> patch(
    Task request,
    core.String tasklist,
    core.String task, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tasks/v1/lists/' +
        commons.escapeVariable('$tasklist') +
        '/tasks/' +
        commons.escapeVariable('$task');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [tasklist] - Task list identifier.
  ///
  /// [task] - Task identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> update(
    Task request,
    core.String tasklist,
    core.String task, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'tasks/v1/lists/' +
        commons.escapeVariable('$tasklist') +
        '/tasks/' +
        commons.escapeVariable('$task');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TaskLinks {
  /// The description.
  ///
  /// In HTML speak: Everything between \<a\> and \</a\>.
  core.String? description;

  /// The URL.
  core.String? link;

  /// Type of the link, e.g. "email".
  core.String? type;

  TaskLinks({
    this.description,
    this.link,
    this.type,
  });

  TaskLinks.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          link: json_.containsKey('link') ? json_['link'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (link != null) 'link': link!,
        if (type != null) 'type': type!,
      };
}

class Task {
  /// Completion date of the task (as a RFC 3339 timestamp).
  ///
  /// This field is omitted if the task has not been completed.
  core.String? completed;

  /// Flag indicating whether the task has been deleted.
  ///
  /// The default is False.
  core.bool? deleted;

  /// Due date of the task (as a RFC 3339 timestamp).
  ///
  /// Optional. The due date only records date information; the time portion of
  /// the timestamp is discarded when setting the due date. It isn't possible to
  /// read or write the time that a task is due via the API.
  core.String? due;

  /// ETag of the resource.
  core.String? etag;

  /// Flag indicating whether the task is hidden.
  ///
  /// This is the case if the task had been marked completed when the task list
  /// was last cleared. The default is False. This field is read-only.
  core.bool? hidden;

  /// Task identifier.
  core.String? id;

  /// Type of the resource.
  ///
  /// This is always "tasks#task".
  core.String? kind;

  /// Collection of links.
  ///
  /// This collection is read-only.
  core.List<TaskLinks>? links;

  /// Notes describing the task.
  ///
  /// Optional.
  core.String? notes;

  /// Parent task identifier.
  ///
  /// This field is omitted if it is a top-level task. This field is read-only.
  /// Use the "move" method to move the task under a different parent or to the
  /// top level.
  core.String? parent;

  /// String indicating the position of the task among its sibling tasks under
  /// the same parent task or at the top level.
  ///
  /// If this string is greater than another task's corresponding position
  /// string according to lexicographical ordering, the task is positioned after
  /// the other task under the same parent task (or at the top level). This
  /// field is read-only. Use the "move" method to move the task to another
  /// position.
  core.String? position;

  /// URL pointing to this task.
  ///
  /// Used to retrieve, update, or delete this task.
  core.String? selfLink;

  /// Status of the task.
  ///
  /// This is either "needsAction" or "completed".
  core.String? status;

  /// Title of the task.
  core.String? title;

  /// Last modification time of the task (as a RFC 3339 timestamp).
  core.String? updated;

  Task({
    this.completed,
    this.deleted,
    this.due,
    this.etag,
    this.hidden,
    this.id,
    this.kind,
    this.links,
    this.notes,
    this.parent,
    this.position,
    this.selfLink,
    this.status,
    this.title,
    this.updated,
  });

  Task.fromJson(core.Map json_)
      : this(
          completed: json_.containsKey('completed')
              ? json_['completed'] as core.String
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          due: json_.containsKey('due') ? json_['due'] as core.String : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          links: json_.containsKey('links')
              ? (json_['links'] as core.List)
                  .map((value) => TaskLinks.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          position: json_.containsKey('position')
              ? json_['position'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updated: json_.containsKey('updated')
              ? json_['updated'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completed != null) 'completed': completed!,
        if (deleted != null) 'deleted': deleted!,
        if (due != null) 'due': due!,
        if (etag != null) 'etag': etag!,
        if (hidden != null) 'hidden': hidden!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (links != null) 'links': links!,
        if (notes != null) 'notes': notes!,
        if (parent != null) 'parent': parent!,
        if (position != null) 'position': position!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (updated != null) 'updated': updated!,
      };
}

class TaskList {
  /// ETag of the resource.
  core.String? etag;

  /// Task list identifier.
  core.String? id;

  /// Type of the resource.
  ///
  /// This is always "tasks#taskList".
  core.String? kind;

  /// URL pointing to this task list.
  ///
  /// Used to retrieve, update, or delete this task list.
  core.String? selfLink;

  /// Title of the task list.
  core.String? title;

  /// Last modification time of the task list (as a RFC 3339 timestamp).
  core.String? updated;

  TaskList({
    this.etag,
    this.id,
    this.kind,
    this.selfLink,
    this.title,
    this.updated,
  });

  TaskList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updated: json_.containsKey('updated')
              ? json_['updated'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (title != null) 'title': title!,
        if (updated != null) 'updated': updated!,
      };
}

class TaskLists {
  /// ETag of the resource.
  core.String? etag;

  /// Collection of task lists.
  core.List<TaskList>? items;

  /// Type of the resource.
  ///
  /// This is always "tasks#taskLists".
  core.String? kind;

  /// Token that can be used to request the next page of this result.
  core.String? nextPageToken;

  TaskLists({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  TaskLists.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => TaskList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class Tasks {
  /// ETag of the resource.
  core.String? etag;

  /// Collection of tasks.
  core.List<Task>? items;

  /// Type of the resource.
  ///
  /// This is always "tasks#tasks".
  core.String? kind;

  /// Token used to access the next page of this result.
  core.String? nextPageToken;

  Tasks({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  Tasks.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
