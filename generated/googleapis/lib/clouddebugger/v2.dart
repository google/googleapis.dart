// This is a generated file (see the discoveryapis_generator project).

library googleapis.clouddebugger.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client clouddebugger/v2';

/**
 * Lets you examine the stack and variables of your running application without
 * stopping or slowing it down.
 */
class ClouddebuggerApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Manage cloud debugger */
  static const CloudDebuggerScope = "https://www.googleapis.com/auth/cloud_debugger";

  /** Manage active breakpoints in cloud debugger */
  static const CloudDebugletcontrollerScope = "https://www.googleapis.com/auth/cloud_debugletcontroller";


  final commons.ApiRequester _requester;

  ControllerResourceApi get controller => new ControllerResourceApi(_requester);
  DebuggerResourceApi get debugger => new DebuggerResourceApi(_requester);

  ClouddebuggerApi(http.Client client, {core.String rootUrl: "https://clouddebugger.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ControllerResourceApi {
  final commons.ApiRequester _requester;

  ControllerDebuggeesResourceApi get debuggees => new ControllerDebuggeesResourceApi(_requester);

  ControllerResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ControllerDebuggeesResourceApi {
  final commons.ApiRequester _requester;

  ControllerDebuggeesBreakpointsResourceApi get breakpoints => new ControllerDebuggeesBreakpointsResourceApi(_requester);

  ControllerDebuggeesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Registers the debuggee with the controller. All agents should call this API
   * with the same request content to get back the same stable 'debuggee_id'.
   * Agents should call this API again whenever ListActiveBreakpoints or
   * UpdateActiveBreakpoint return the error google.rpc.Code.NOT_FOUND. It
   * allows the server to disable the agent or recover from any registration
   * loss. If the debuggee is disabled server, the response will have
   * is_disabled' set to true.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [RegisterDebuggeeResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RegisterDebuggeeResponse> register(RegisterDebuggeeRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2/controller/debuggees/register';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RegisterDebuggeeResponse.fromJson(data));
  }

}


class ControllerDebuggeesBreakpointsResourceApi {
  final commons.ApiRequester _requester;

  ControllerDebuggeesBreakpointsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the list of all active breakpoints for the specified debuggee. The
   * breakpoint specification (location, condition, and expression fields) is
   * semantically immutable, although the field values may change. For example,
   * an agent may update the location line number to reflect the actual line the
   * breakpoint was set to, but that doesn't change the breakpoint semantics.
   * Thus, an agent does not need to check if a breakpoint has changed when it
   * encounters the same breakpoint on a successive call. Moreover, an agent
   * should remember breakpoints that are complete until the controller removes
   * them from the active list to avoid setting those breakpoints again.
   *
   * Request parameters:
   *
   * [debuggeeId] - Identifies the debuggee.
   *
   * [waitToken] - A wait token that, if specified, blocks the method call until
   * the list of active breakpoints has changed, or a server selected timeout
   * has expired. The value should be set from the last returned response. The
   * error code google.rpc.Code.ABORTED is returned on wait timeout (which does
   * not require the agent to re-register with the server)
   *
   * Completes with a [ListActiveBreakpointsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListActiveBreakpointsResponse> list(core.String debuggeeId, {core.String waitToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }
    if (waitToken != null) {
      _queryParams["waitToken"] = [waitToken];
    }

    _url = 'v2/controller/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListActiveBreakpointsResponse.fromJson(data));
  }

  /**
   * Updates the breakpoint state or mutable fields. The entire Breakpoint
   * protobuf must be sent back to the controller. Updates to active breakpoint
   * fields are only allowed if the new value does not change the breakpoint
   * specification. Updates to the 'location', 'condition' and 'expression'
   * fields should not alter the breakpoint semantics. They are restricted to
   * changes such as canonicalizing a value or snapping the location to the
   * correct line of code.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [debuggeeId] - Identifies the debuggee being debugged.
   *
   * [id] - Breakpoint identifier, unique in the scope of the debuggee.
   *
   * Completes with a [UpdateActiveBreakpointResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UpdateActiveBreakpointResponse> update(UpdateActiveBreakpointRequest request, core.String debuggeeId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v2/controller/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UpdateActiveBreakpointResponse.fromJson(data));
  }

}


class DebuggerResourceApi {
  final commons.ApiRequester _requester;

  DebuggerDebuggeesResourceApi get debuggees => new DebuggerDebuggeesResourceApi(_requester);

  DebuggerResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class DebuggerDebuggeesResourceApi {
  final commons.ApiRequester _requester;

  DebuggerDebuggeesBreakpointsResourceApi get breakpoints => new DebuggerDebuggeesBreakpointsResourceApi(_requester);

  DebuggerDebuggeesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists all the debuggees that the user can set breakpoints to.
   *
   * Request parameters:
   *
   * [project] - Set to the project number of the Google Cloud Platform to list
   * the debuggees that are part of that project.
   *
   * [includeInactive] - When set to true the result includes all debuggees,
   * otherwise only debugees that are active.
   *
   * Completes with a [ListDebuggeesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListDebuggeesResponse> list({core.String project, core.bool includeInactive}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project != null) {
      _queryParams["project"] = [project];
    }
    if (includeInactive != null) {
      _queryParams["includeInactive"] = ["${includeInactive}"];
    }

    _url = 'v2/debugger/debuggees';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDebuggeesResponse.fromJson(data));
  }

}


class DebuggerDebuggeesBreakpointsResourceApi {
  final commons.ApiRequester _requester;

  DebuggerDebuggeesBreakpointsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the breakpoint from the debuggee.
   *
   * Request parameters:
   *
   * [debuggeeId] - The debuggee id to delete the breakpoint from.
   *
   * [breakpointId] - The breakpoint to delete.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String debuggeeId, core.String breakpointId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }
    if (breakpointId == null) {
      throw new core.ArgumentError("Parameter breakpointId is required.");
    }

    _url = 'v2/debugger/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints/' + commons.Escaper.ecapeVariable('$breakpointId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets breakpoint information.
   *
   * Request parameters:
   *
   * [debuggeeId] - The debuggee id to get the breakpoint from.
   *
   * [breakpointId] - The breakpoint to get.
   *
   * Completes with a [GetBreakpointResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<GetBreakpointResponse> get(core.String debuggeeId, core.String breakpointId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }
    if (breakpointId == null) {
      throw new core.ArgumentError("Parameter breakpointId is required.");
    }

    _url = 'v2/debugger/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints/' + commons.Escaper.ecapeVariable('$breakpointId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new GetBreakpointResponse.fromJson(data));
  }

  /**
   * Lists all breakpoints of the debuggee that the user has access to.
   *
   * Request parameters:
   *
   * [debuggeeId] - The debuggee id to list breakpoint from.
   *
   * [includeAllUsers] - When set to true the response includes the list of
   * breakpoints set by any user, otherwise only breakpoints set by the caller.
   *
   * [includeInactive] - When set to true the response includes active and
   * inactive breakpoints, otherwise only active breakpoints are returned.
   *
   * [action_value] - Only breakpoints with the specified action will pass the
   * filter.
   * Possible string values are:
   * - "CAPTURE" : A CAPTURE.
   * - "LOG" : A LOG.
   *
   * [stripResults] - When set to true the response breakpoints will be stripped
   * of the results fields: stack_frames, evaluated_expressions and
   * variable_table.
   *
   * [waitToken] - A wait token that, if specified, blocks the call until the
   * breakpoints list has changed, or a server selected timeout has expired. The
   * value should be set from the last response to ListBreakpoints. The error
   * code ABORTED is returned on wait timeout, which should be called again with
   * the same wait_token.
   *
   * Completes with a [ListBreakpointsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListBreakpointsResponse> list(core.String debuggeeId, {core.bool includeAllUsers, core.bool includeInactive, core.String action_value, core.bool stripResults, core.String waitToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }
    if (includeAllUsers != null) {
      _queryParams["includeAllUsers"] = ["${includeAllUsers}"];
    }
    if (includeInactive != null) {
      _queryParams["includeInactive"] = ["${includeInactive}"];
    }
    if (action_value != null) {
      _queryParams["action.value"] = [action_value];
    }
    if (stripResults != null) {
      _queryParams["stripResults"] = ["${stripResults}"];
    }
    if (waitToken != null) {
      _queryParams["waitToken"] = [waitToken];
    }

    _url = 'v2/debugger/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListBreakpointsResponse.fromJson(data));
  }

  /**
   * Sets the breakpoint to the debuggee.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [debuggeeId] - The debuggee id to set the breakpoint to.
   *
   * Completes with a [SetBreakpointResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SetBreakpointResponse> set(Breakpoint request, core.String debuggeeId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (debuggeeId == null) {
      throw new core.ArgumentError("Parameter debuggeeId is required.");
    }

    _url = 'v2/debugger/debuggees/' + commons.Escaper.ecapeVariable('$debuggeeId') + '/breakpoints/set';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SetBreakpointResponse.fromJson(data));
  }

}



/** Represents the breakpoint specification, status and results. */
class Breakpoint {
  /**
   * Defines what to do when the breakpoint hits.
   * Possible string values are:
   * - "CAPTURE" : A CAPTURE.
   * - "LOG" : A LOG.
   */
  core.String action;
  /**
   * A condition to trigger the breakpoint. The condition is a compound boolean
   * expression composed using expressions in a programming language at the
   * source location.
   */
  core.String condition;
  /**
   * The time this breakpoint was created by the server. The value is in seconds
   * resolution.
   */
  core.String createTime;
  /**
   * The evaluated expressions' values at breakpoint time. The evaluated
   * expressions appear in exactly the same order they are listed in the
   * 'expressions' field. The 'name' field holds the original expression text,
   * the 'value'/'members' field holds the result of the evaluated expression.
   * If the expression can not be evaluated, an error text is placed in the
   * value field.
   */
  core.List<Variable> evaluatedExpressions;
  /**
   * A list of read-only expressions to evaluate at the breakpoint location. The
   * expressions are composed using expressions in the programming language at
   * the source location. If the breakpoint action is "LOG", the evaluated
   * expressions are included in log statements.
   */
  core.List<core.String> expressions;
  /**
   * The time this breakpoint was finalized as seen by the server. The value is
   * in seconds resolution.
   */
  core.String finalTime;
  /** Breakpoint identifier, unique in the scope of the debuggee. */
  core.String id;
  /**
   * When true, indicates that this is a final result and the breakpoint state
   * will not change from here on.
   */
  core.bool isFinalState;
  /** The breakpoint source location. */
  SourceLocation location;
  /**
   * Indicates the severity of the log. Only relevant when action is "LOG".
   * Possible string values are:
   * - "INFO" : A INFO.
   * - "WARNING" : A WARNING.
   * - "ERROR" : A ERROR.
   */
  core.String logLevel;
  /**
   * Only relevant when action is "LOG". Defines the message to log when the
   * breakpoint hits. The message may include parameter placeholders "$0", "$1",
   * etc. These placeholders will be replaced with the evaluated value of the
   * appropriate expression. Expressions not referenced in "log_message_format"
   * will not be logged. Example: "Poisonous message received, id = $0, count =
   * $1" with expressions = [ "message.id", "message.count" ].
   */
  core.String logMessageFormat;
  /** The stack at breakpoint time. */
  core.List<StackFrame> stackFrames;
  /**
   * Breakpoint status. The status includes an error flag and a human readable
   * message. This field will usually stay unset. The message can be either
   * informational or error. Nevertheless, clients should always display the
   * text message back to the user. Error status of a breakpoint indicates
   * complete failure. Example (non-final state): 'Still loading symbols...'
   * Examples (final state): 'Failed to insert breakpoint' referring to
   * breakpoint, 'Field f not found in class C' referring to condition, ...
   */
  StatusMessage status;
  /** The e-mail of the user that created this breakpoint */
  core.String userEmail;
  /**
   * The variable_table exists to aid with computation, memory and network
   * traffic optimization. It enables storing a variable once and reference it
   * from multiple variables, including variables stored in the variable_table
   * itself. For example, the object 'this', which may appear at many levels of
   * the stack, can have all of it's data stored once in this table. The stack
   * frame variables then would hold only a reference to it. The variable
   * var_index field is an index into this repeated field. The stored objects
   * are nameless and get their name from the referencing variable. The
   * effective variable is a merge of the referencing veariable and the
   * referenced variable.
   */
  core.List<Variable> variableTable;

  Breakpoint();

  Breakpoint.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("condition")) {
      condition = _json["condition"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("evaluatedExpressions")) {
      evaluatedExpressions = _json["evaluatedExpressions"].map((value) => new Variable.fromJson(value)).toList();
    }
    if (_json.containsKey("expressions")) {
      expressions = _json["expressions"];
    }
    if (_json.containsKey("finalTime")) {
      finalTime = _json["finalTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isFinalState")) {
      isFinalState = _json["isFinalState"];
    }
    if (_json.containsKey("location")) {
      location = new SourceLocation.fromJson(_json["location"]);
    }
    if (_json.containsKey("logLevel")) {
      logLevel = _json["logLevel"];
    }
    if (_json.containsKey("logMessageFormat")) {
      logMessageFormat = _json["logMessageFormat"];
    }
    if (_json.containsKey("stackFrames")) {
      stackFrames = _json["stackFrames"].map((value) => new StackFrame.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = new StatusMessage.fromJson(_json["status"]);
    }
    if (_json.containsKey("userEmail")) {
      userEmail = _json["userEmail"];
    }
    if (_json.containsKey("variableTable")) {
      variableTable = _json["variableTable"].map((value) => new Variable.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (action != null) {
      _json["action"] = action;
    }
    if (condition != null) {
      _json["condition"] = condition;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (evaluatedExpressions != null) {
      _json["evaluatedExpressions"] = evaluatedExpressions.map((value) => (value).toJson()).toList();
    }
    if (expressions != null) {
      _json["expressions"] = expressions;
    }
    if (finalTime != null) {
      _json["finalTime"] = finalTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (isFinalState != null) {
      _json["isFinalState"] = isFinalState;
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (logLevel != null) {
      _json["logLevel"] = logLevel;
    }
    if (logMessageFormat != null) {
      _json["logMessageFormat"] = logMessageFormat;
    }
    if (stackFrames != null) {
      _json["stackFrames"] = stackFrames.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (userEmail != null) {
      _json["userEmail"] = userEmail;
    }
    if (variableTable != null) {
      _json["variableTable"] = variableTable.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A CloudRepoSourceContext denotes a particular revision in a cloud repo (a
 * repo hosted by the Google Cloud Platform).
 */
class CloudRepoSourceContext {
  /** The name of an alias (branch, tag, etc.). */
  core.String aliasName;
  /** The ID of the repo. */
  RepoId repoId;
  /** A revision ID. */
  core.String revisionId;

  CloudRepoSourceContext();

  CloudRepoSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("aliasName")) {
      aliasName = _json["aliasName"];
    }
    if (_json.containsKey("repoId")) {
      repoId = new RepoId.fromJson(_json["repoId"]);
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aliasName != null) {
      _json["aliasName"] = aliasName;
    }
    if (repoId != null) {
      _json["repoId"] = (repoId).toJson();
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/**
 * A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud
 * workspace is a place associated with a repo where modified files can be
 * stored before they are committed.
 */
class CloudWorkspaceId {
  /**
   * The unique name of the workspace within the repo. This is the name chosen
   * by the client in the Source API's CreateWorkspace method.
   */
  core.String name;
  /** The ID of the repo containing the workspace. */
  RepoId repoId;

  CloudWorkspaceId();

  CloudWorkspaceId.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("repoId")) {
      repoId = new RepoId.fromJson(_json["repoId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (repoId != null) {
      _json["repoId"] = (repoId).toJson();
    }
    return _json;
  }
}

/**
 * A CloudWorkspaceSourceContext denotes a workspace at a particular snapshot.
 */
class CloudWorkspaceSourceContext {
  /**
   * The ID of the snapshot. An empty snapshot_id refers to the most recent
   * snapshot.
   */
  core.String snapshotId;
  /** The ID of the workspace. */
  CloudWorkspaceId workspaceId;

  CloudWorkspaceSourceContext();

  CloudWorkspaceSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("snapshotId")) {
      snapshotId = _json["snapshotId"];
    }
    if (_json.containsKey("workspaceId")) {
      workspaceId = new CloudWorkspaceId.fromJson(_json["workspaceId"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (snapshotId != null) {
      _json["snapshotId"] = snapshotId;
    }
    if (workspaceId != null) {
      _json["workspaceId"] = (workspaceId).toJson();
    }
    return _json;
  }
}

/**
 * Represents the application to debug. The application may include one or more
 * replicated processes executing the same code. Each of these processes is
 * attached with a debugger agent, carrying out the debugging commands. The
 * agents attached to the same debuggee are identified by using exactly the same
 * fields' values when registering.
 */
class Debuggee {
  /**
   * Version ID of the agent release. The version ID is structured as following:
   * "domain/type/vmajor.minor" (for example "google.com/gcp-java/v1.1").
   */
  core.String agentVersion;
  /**
   * A human readable description of the debuggee. Recommended to include human
   * readable project name, environment name, and version information .
   */
  core.String description;
  /** Debuggee unique identifer generated by the server. */
  core.String id;
  /**
   * If set to true, indicates that the agent should disable itself and detach
   * from the debuggee.
   */
  core.bool isDisabled;
  /**
   * If set to true indicates that the debuggee has not been seen by the
   * Controller service in the last active time period (defined by the server).
   */
  core.bool isInactive;
  /**
   * A set of custom debuggee properties, populated by the agent, to be
   * displayed to the user.
   */
  core.Map<core.String, core.String> labels;
  /**
   * The project the debuggee is associated with. Use the project number when
   * registering a Google Cloud Platform project.
   */
  core.String project;
  /** Repository snapshots containing the source code of the project. */
  core.List<SourceContext> sourceContexts;
  /**
   * Human readable message to be displayed to the user about this debuggee.
   * Absense of this field indicates no message. The message can be either
   * informational or error.
   */
  StatusMessage status;
  /**
   * The debuggee uniqifier within the project. Any string that id the
   * application within the project can be used. Recomended to include
   * environement and version or build id's.
   */
  core.String uniquifier;

  Debuggee();

  Debuggee.fromJson(core.Map _json) {
    if (_json.containsKey("agentVersion")) {
      agentVersion = _json["agentVersion"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("isDisabled")) {
      isDisabled = _json["isDisabled"];
    }
    if (_json.containsKey("isInactive")) {
      isInactive = _json["isInactive"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
    if (_json.containsKey("sourceContexts")) {
      sourceContexts = _json["sourceContexts"].map((value) => new SourceContext.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = new StatusMessage.fromJson(_json["status"]);
    }
    if (_json.containsKey("uniquifier")) {
      uniquifier = _json["uniquifier"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (agentVersion != null) {
      _json["agentVersion"] = agentVersion;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (isDisabled != null) {
      _json["isDisabled"] = isDisabled;
    }
    if (isInactive != null) {
      _json["isInactive"] = isInactive;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (project != null) {
      _json["project"] = project;
    }
    if (sourceContexts != null) {
      _json["sourceContexts"] = sourceContexts.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (uniquifier != null) {
      _json["uniquifier"] = uniquifier;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Represents a message with parameters. */
class FormatMessage {
  /**
   * Format template of the message. The "format" uses placeholders "$0", "$1",
   * etc. to reference parameters. "$$" can be used to denote the '$' character.
   * Examples: "Failed to load '$0' which helps debug $1 the first time it is
   * loaded. Again, $0 is very important." "Please pay $$10 to use $0 instead of
   * $1."
   */
  core.String format;
  /** Optional parameters to be embedded into the message. */
  core.List<core.String> parameters;

  FormatMessage();

  FormatMessage.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (format != null) {
      _json["format"] = format;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/** A SourceContext referring to a Gerrit project. */
class GerritSourceContext {
  /** The name of an alias (branch, tag, etc.). */
  core.String aliasName;
  /**
   * The full project name within the host. Projects may be nested, so
   * "project/subproject" is a valid project name. The "repo name" is
   * hostURI/project.
   */
  core.String gerritProject;
  /** The URI of a running Gerrit instance. */
  core.String hostUri;
  /** A revision (commit) ID. */
  core.String revisionId;

  GerritSourceContext();

  GerritSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("aliasName")) {
      aliasName = _json["aliasName"];
    }
    if (_json.containsKey("gerritProject")) {
      gerritProject = _json["gerritProject"];
    }
    if (_json.containsKey("hostUri")) {
      hostUri = _json["hostUri"];
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aliasName != null) {
      _json["aliasName"] = aliasName;
    }
    if (gerritProject != null) {
      _json["gerritProject"] = gerritProject;
    }
    if (hostUri != null) {
      _json["hostUri"] = hostUri;
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/** The response of getting breakpoint information. */
class GetBreakpointResponse {
  /**
   * The complete breakpoint state. The fields 'id' and 'location' are guranteed
   * to be set.
   */
  Breakpoint breakpoint;

  GetBreakpointResponse();

  GetBreakpointResponse.fromJson(core.Map _json) {
    if (_json.containsKey("breakpoint")) {
      breakpoint = new Breakpoint.fromJson(_json["breakpoint"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakpoint != null) {
      _json["breakpoint"] = (breakpoint).toJson();
    }
    return _json;
  }
}

/**
 * A GitSourceContext denotes a particular revision in a third party Git
 * repository (e.g. GitHub).
 */
class GitSourceContext {
  /** Git commit hash. required. */
  core.String revisionId;
  /** Git repository URL. */
  core.String url;

  GitSourceContext();

  GitSourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/** The response of listing active breakpoints. */
class ListActiveBreakpointsResponse {
  /**
   * List of all active breakpoints. The fields 'id' and 'location' are
   * guranteed to be set on each breakpoint.
   */
  core.List<Breakpoint> breakpoints;
  /**
   * A wait token that can be used in the next method call to block until the
   * list of breakpoints changes.
   */
  core.String nextWaitToken;

  ListActiveBreakpointsResponse();

  ListActiveBreakpointsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("breakpoints")) {
      breakpoints = _json["breakpoints"].map((value) => new Breakpoint.fromJson(value)).toList();
    }
    if (_json.containsKey("nextWaitToken")) {
      nextWaitToken = _json["nextWaitToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakpoints != null) {
      _json["breakpoints"] = breakpoints.map((value) => (value).toJson()).toList();
    }
    if (nextWaitToken != null) {
      _json["nextWaitToken"] = nextWaitToken;
    }
    return _json;
  }
}

/** The response of listing breakpoints. */
class ListBreakpointsResponse {
  /**
   * List of all breakpoints with complete state. The fields 'id' and 'location'
   * are guranteed to be set on each breakpoint.
   */
  core.List<Breakpoint> breakpoints;
  /**
   * A wait token that can be used in the next call to ListBreakpoints to block
   * until the list of breakpoints has changes.
   */
  core.String nextWaitToken;

  ListBreakpointsResponse();

  ListBreakpointsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("breakpoints")) {
      breakpoints = _json["breakpoints"].map((value) => new Breakpoint.fromJson(value)).toList();
    }
    if (_json.containsKey("nextWaitToken")) {
      nextWaitToken = _json["nextWaitToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakpoints != null) {
      _json["breakpoints"] = breakpoints.map((value) => (value).toJson()).toList();
    }
    if (nextWaitToken != null) {
      _json["nextWaitToken"] = nextWaitToken;
    }
    return _json;
  }
}

/** The response of listing debuggees. */
class ListDebuggeesResponse {
  /**
   * The list of debuggees accessible to the calling user. Note that the
   * description field is the only human readable field that should be displayed
   * to the user. The fields 'debuggee.id' and 'description' are guranteed to be
   * set on each debuggee.
   */
  core.List<Debuggee> debuggees;

  ListDebuggeesResponse();

  ListDebuggeesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("debuggees")) {
      debuggees = _json["debuggees"].map((value) => new Debuggee.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (debuggees != null) {
      _json["debuggees"] = debuggees.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * Selects a repo using a Google Cloud Platform project ID (e.g.
 * winged-cargo-31) and a repo name within that project.
 */
class ProjectRepoId {
  /** The ID of the project. */
  core.String projectId;
  /** The name of the repo. Leave empty for the default repo. */
  core.String repoName;

  ProjectRepoId();

  ProjectRepoId.fromJson(core.Map _json) {
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("repoName")) {
      repoName = _json["repoName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (repoName != null) {
      _json["repoName"] = repoName;
    }
    return _json;
  }
}

/** The request to register a debuggee. */
class RegisterDebuggeeRequest {
  /**
   * The debuggee information to register. The fields 'project', 'uniquifier',
   * 'description' and 'agent_version' of the debuggee must be set.
   */
  Debuggee debuggee;

  RegisterDebuggeeRequest();

  RegisterDebuggeeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("debuggee")) {
      debuggee = new Debuggee.fromJson(_json["debuggee"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (debuggee != null) {
      _json["debuggee"] = (debuggee).toJson();
    }
    return _json;
  }
}

/** The response of registering a debuggee. */
class RegisterDebuggeeResponse {
  /**
   * The debuggee resource. The field 'id' is guranteed to be set (in addition
   * to the echoed fields).
   */
  Debuggee debuggee;

  RegisterDebuggeeResponse();

  RegisterDebuggeeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("debuggee")) {
      debuggee = new Debuggee.fromJson(_json["debuggee"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (debuggee != null) {
      _json["debuggee"] = (debuggee).toJson();
    }
    return _json;
  }
}

/** A unique identifier for a cloud repo. */
class RepoId {
  /** A combination of a project ID and a repo name. */
  ProjectRepoId projectRepoId;
  /** A server-assigned, globally unique identifier. */
  core.String uid;

  RepoId();

  RepoId.fromJson(core.Map _json) {
    if (_json.containsKey("projectRepoId")) {
      projectRepoId = new ProjectRepoId.fromJson(_json["projectRepoId"]);
    }
    if (_json.containsKey("uid")) {
      uid = _json["uid"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (projectRepoId != null) {
      _json["projectRepoId"] = (projectRepoId).toJson();
    }
    if (uid != null) {
      _json["uid"] = uid;
    }
    return _json;
  }
}

/** The response of setting a breakpoint. */
class SetBreakpointResponse {
  /**
   * The breakpoint resource. The field 'id' is guranteed to be set (in addition
   * to the echoed fileds).
   */
  Breakpoint breakpoint;

  SetBreakpointResponse();

  SetBreakpointResponse.fromJson(core.Map _json) {
    if (_json.containsKey("breakpoint")) {
      breakpoint = new Breakpoint.fromJson(_json["breakpoint"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakpoint != null) {
      _json["breakpoint"] = (breakpoint).toJson();
    }
    return _json;
  }
}

/**
 * A SourceContext is a reference to a tree of files. A SourceContext together
 * with a path point to a unique revision of a single file or directory.
 */
class SourceContext {
  /** A SourceContext referring to a revision in a cloud repo. */
  CloudRepoSourceContext cloudRepo;
  /** A SourceContext referring to a snapshot in a cloud workspace. */
  CloudWorkspaceSourceContext cloudWorkspace;
  /** A SourceContext referring to a Gerrit project. */
  GerritSourceContext gerrit;
  /** A SourceContext referring to any third party Git repo (e.g. GitHub). */
  GitSourceContext git;

  SourceContext();

  SourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("cloudRepo")) {
      cloudRepo = new CloudRepoSourceContext.fromJson(_json["cloudRepo"]);
    }
    if (_json.containsKey("cloudWorkspace")) {
      cloudWorkspace = new CloudWorkspaceSourceContext.fromJson(_json["cloudWorkspace"]);
    }
    if (_json.containsKey("gerrit")) {
      gerrit = new GerritSourceContext.fromJson(_json["gerrit"]);
    }
    if (_json.containsKey("git")) {
      git = new GitSourceContext.fromJson(_json["git"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cloudRepo != null) {
      _json["cloudRepo"] = (cloudRepo).toJson();
    }
    if (cloudWorkspace != null) {
      _json["cloudWorkspace"] = (cloudWorkspace).toJson();
    }
    if (gerrit != null) {
      _json["gerrit"] = (gerrit).toJson();
    }
    if (git != null) {
      _json["git"] = (git).toJson();
    }
    return _json;
  }
}

/** Represents a location in the source code. */
class SourceLocation {
  /** The line inside the file (first line value is '1'). */
  core.int line;
  /**
   * A path to the source file within the source context of the target binary.
   */
  core.String path;

  SourceLocation();

  SourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("line")) {
      line = _json["line"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (line != null) {
      _json["line"] = line;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/** Represents a stack frame context. */
class StackFrame {
  /**
   * The set of arguments passed to this function Note that this might not be
   * populated for all stack frames.
   */
  core.List<Variable> arguments;
  /** The unmangled function name at the call site. */
  core.String function;
  /**
   * The set of local variables at the stack frame location. Note that this
   * might not be populated for all stack frames.
   */
  core.List<Variable> locals;
  /** The source location of the call site. */
  SourceLocation location;

  StackFrame();

  StackFrame.fromJson(core.Map _json) {
    if (_json.containsKey("arguments")) {
      arguments = _json["arguments"].map((value) => new Variable.fromJson(value)).toList();
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("locals")) {
      locals = _json["locals"].map((value) => new Variable.fromJson(value)).toList();
    }
    if (_json.containsKey("location")) {
      location = new SourceLocation.fromJson(_json["location"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (arguments != null) {
      _json["arguments"] = arguments.map((value) => (value).toJson()).toList();
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (locals != null) {
      _json["locals"] = locals.map((value) => (value).toJson()).toList();
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    return _json;
  }
}

/**
 * Represents a contextual status message. The message can indicate an error or
 * informational status, and refer to specific parts of the containing object.
 * For example, the Breakpoint.status field can indicate an error referring to
 * the BREAKPOINT_SOURCE_LOCATION with the message "Location not found".
 */
class StatusMessage {
  /** Status message text. */
  FormatMessage description;
  /** Distinguishes errors from informational messages. */
  core.bool isError;
  /**
   * Reference to which the message applies.
   * Possible string values are:
   * - "UNSPECIFIED" : A UNSPECIFIED.
   * - "BREAKPOINT_SOURCE_LOCATION" : A BREAKPOINT_SOURCE_LOCATION.
   * - "BREAKPOINT_CONDITION" : A BREAKPOINT_CONDITION.
   * - "BREAKPOINT_EXPRESSION" : A BREAKPOINT_EXPRESSION.
   * - "VARIABLE_NAME" : A VARIABLE_NAME.
   * - "VARIABLE_VALUE" : A VARIABLE_VALUE.
   */
  core.String refersTo;

  StatusMessage();

  StatusMessage.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = new FormatMessage.fromJson(_json["description"]);
    }
    if (_json.containsKey("isError")) {
      isError = _json["isError"];
    }
    if (_json.containsKey("refersTo")) {
      refersTo = _json["refersTo"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = (description).toJson();
    }
    if (isError != null) {
      _json["isError"] = isError;
    }
    if (refersTo != null) {
      _json["refersTo"] = refersTo;
    }
    return _json;
  }
}

/** The request to update an active breakpoint. */
class UpdateActiveBreakpointRequest {
  /** The updated breakpoint information. The field 'id' must be set. */
  Breakpoint breakpoint;

  UpdateActiveBreakpointRequest();

  UpdateActiveBreakpointRequest.fromJson(core.Map _json) {
    if (_json.containsKey("breakpoint")) {
      breakpoint = new Breakpoint.fromJson(_json["breakpoint"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakpoint != null) {
      _json["breakpoint"] = (breakpoint).toJson();
    }
    return _json;
  }
}

/**
 * The response of updating an active breakpoint. The message is defined to
 * allow future extensions.
 */
class UpdateActiveBreakpointResponse {

  UpdateActiveBreakpointResponse();

  UpdateActiveBreakpointResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * Represents a variable or an argument possibly of a compound object type. 1. A
 * simple variable such as, int x = 5 is represented as: { name: "x", value: "5"
 * } 2. A compound object such as, struct T { int m1; int m2; }; T x = { 3, 7 };
 * is represented as: { name: "x", members { name: "m1", value: "3" }, members {
 * name: "m2", value: "7" } } 3. A pointer where the pointee was captured such
 * as, T x = { 3, 7 }; T* p = &x; is represented as: { name: "p", value:
 * "0x00500500", members { name: "m1", value: "3" }, members { name: "m2",
 * value: "7" } } 4. A pointer where the pointee was not captured or is
 * inaccessible such as, T* p = new T; is represented as: { name: "p", value:
 * "0x00400400", members { value: "" } } the value text should decribe the
 * reason for the missing value. such as , ,
 * . note that a null pointer should not have members. 5. An unnamed value such
 * as, int* p = new int(7); is represented as, { name: "p", value: "0x00500500",
 * members { value: "7" } } 6. An unnamed pointer where the pointee was not
 * captured such as, int* p = new int(7); int** pp = &p; is represented as: {
 * name: "pp", value: "0x00500500", members { value: "0x00400400", members {
 * value: "" } } } To optimize computation, memory and network traffic,
 * variables that repeat in the output multiple times can be stored once in a
 * shared variable table and be referenced using the var_index field. The
 * variables stored in the shared table are nameless and are essentially a
 * partition of the complete variable. To reconstruct the complete variable
 * merge the referencing variable with the referenced variable. When using the
 * shared variable table, variables can be represented as: T x = { 3, 7 }; T* p
 * = &x; T& r = x; are represented as, { name: "x", var_index: 3 } { name: "p",
 * value "0x00500500", var_index: 3 } { name: "r", var_index: 3 } with shared
 * variable table entry #3: { members { name: "m1", value: "3" }, members {
 * name: "m2", value: "7" } } Note that the pointer address is stored with the
 * referencing variable and not with the referenced variable, to allow the
 * referenced variable to be shared between pointer and references.
 */
class Variable {
  /** The members contained or pointed to by the variable. */
  core.List<Variable> members;
  /** The name of the variable, if any. */
  core.String name;
  /**
   * Status associated with the variable. This field will usually stay unset. A
   * status of a single variable only applies to that variable or expression.
   * The rest of breakpoint data still remains valid. Variables might be
   * reported in error state even when breakpoint is not in final state. The
   * message may refer to variable name with "refers_to" set to "VARIABLE_NAME".
   * Alternatively "refers_to" will be set to "VARIABLE_VALUE". In either case
   * variable value and members will be unset. Example of error message applied
   * to name: "Invalid expression syntax". Example of information message
   * applied to value: "Not captured". Examples of error message applied to
   * value: "Malformed string", "Field f not found in class C", "Null pointer
   * dereference".
   */
  StatusMessage status;
  /** The simple value of the variable. */
  core.String value;
  /**
   * This is a reference to a variable in the shared variable table. More than
   * one variable can reference the same variable in the table. The var_index
   * field is an index into variable_table in Breakpoint.
   */
  core.int varTableIndex;

  Variable();

  Variable.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"].map((value) => new Variable.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("status")) {
      status = new StatusMessage.fromJson(_json["status"]);
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("varTableIndex")) {
      varTableIndex = _json["varTableIndex"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (value != null) {
      _json["value"] = value;
    }
    if (varTableIndex != null) {
      _json["varTableIndex"] = varTableIndex;
    }
    return _json;
  }
}
