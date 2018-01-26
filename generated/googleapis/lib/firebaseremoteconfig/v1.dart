// This is a generated file (see the discoveryapis_generator project).

library googleapis.firebaseremoteconfig.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client firebaseremoteconfig/v1';

/// Firebase Remote Config API allows the 3P clients to manage Remote Config
/// conditions and parameters for Firebase applications.
class FirebaseremoteconfigApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FirebaseremoteconfigApi(http.Client client,
      {core.String rootUrl: "https://firebaseremoteconfig.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Get the latest version Remote Configuration for a project.
  /// Returns the RemoteConfig as the payload, and also the eTag as a
  /// response header.
  ///
  /// Request parameters:
  ///
  /// [project] - The GMP project identifier. Required.
  /// See note at the beginning of this file regarding project ids.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteConfig> getRemoteConfig(core.String project,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        '/remoteConfig';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RemoteConfig.fromJson(data));
  }

  /// Update a RemoteConfig. We treat this as an always-existing
  /// resource (when it is not found in our data store, we treat it as version
  /// 0, a template with zero conditions and zero parameters). Hence there are
  /// no Create or Delete operations. Returns the updated template when
  /// successful (and the updated eTag as a response header), or an error if
  /// things go wrong.
  /// Possible error messages:
  /// * VALIDATION_ERROR (HTTP status 400) with additional details if the
  /// template being passed in can not be validated.
  /// * AUTHENTICATION_ERROR (HTTP status 401) if the request can not be
  /// authenticate (e.g. no access token, or invalid access token).
  /// * AUTHORIZATION_ERROR (HTTP status 403) if the request can not be
  /// authorized (e.g. the user has no access to the specified project id).
  /// * VERSION_MISMATCH (HTTP status 412) when trying to update when the
  /// expected eTag (passed in via the "If-match" header) is not specified, or
  /// is specified but does does not match the current eTag.
  /// * Internal error (HTTP status 500) for Database problems or other internal
  /// errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - The GMP project identifier. Required.
  /// See note at the beginning of this file regarding project ids.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [validateOnly] - Optional. Defaults to <code>false</code>
  /// (UpdateRemoteConfig call should
  /// update the backend if there are no validation/interal errors). May be set
  /// to <code>true</code> to indicate that, should no validation errors occur,
  /// the call should return a "200 OK" instead of performing the update. Note
  /// that other error messages (500 Internal Error, 412 Version Mismatch, etc)
  /// may still result after flipping to <code>false</code>, even if getting a
  /// "200 OK" when calling with <code>true</code>.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteConfig> updateRemoteConfig(
      RemoteConfig request, core.String project,
      {core.bool validateOnly, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (validateOnly != null) {
      _queryParams["validateOnly"] = ["${validateOnly}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$project') +
        '/remoteConfig';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new RemoteConfig.fromJson(data));
  }
}

/// *
/// The RemoteConfig consists of a list of conditions (which can be
/// thought of as named "if" statements) and a map of parameters (parameter key
/// to a structure containing an optional default value, as well as a optional
/// submap of (condition name to value when that condition is true).
class RemoteConfig {
  /// The list of named conditions. The order *does* affect the semantics.
  /// The condition_name values of these entries must be unique.
  ///
  /// The resolved value of a config parameter P is determined as follow:
  /// * Let Y be the set of values from the submap of P that refer to conditions
  ///   that evaluate to <code>true</code>.
  /// * If Y is non empty, the value is taken from the specific submap in Y
  /// whose
  ///   condition_name is the earliest in this condition list.
  /// * Else, if P has a default value option (condition_name is empty) then
  ///   the value is taken from that option.
  /// * Else, parameter P has no value and is omitted from the config result.
  ///
  /// Example: parameter key "p1", default value "v1", submap specified as
  /// {"c1": v2, "c2": v3} where "c1" and "c2" are names of conditions in the
  /// condition list (where "c1" in this example appears before "c2").  The
  /// value of p1 would be v2 as long as c1 is true.  Otherwise, if c2 is true,
  /// p1 would evaluate to v3, and if c1 and c2 are both false, p1 would
  /// evaluate
  /// to v1.  If no default value was specified, and c1 and c2 were both false,
  /// no value for p1 would be generated.
  core.List<RemoteConfigCondition> conditions;

  /// Map of parameter keys to their optional default values and optional submap
  /// of (condition name : value). Order doesn't affect semantics, and so is
  /// sorted by the server. The 'key' values of the params must be unique.
  core.Map<core.String, RemoteConfigParameter> parameters;

  RemoteConfig();

  RemoteConfig.fromJson(core.Map _json) {
    if (_json.containsKey("conditions")) {
      conditions = _json["conditions"]
          .map((value) => new RemoteConfigCondition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("parameters")) {
      parameters = commons
          .mapMap<core.Map<core.String, core.Object>, RemoteConfigParameter>(
              _json["parameters"],
              (core.Map<core.String, core.Object> item) =>
                  new RemoteConfigParameter.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    if (parameters != null) {
      _json["parameters"] = commons
          .mapMap<RemoteConfigParameter, core.Map<core.String, core.Object>>(
              parameters, (RemoteConfigParameter item) => (item).toJson());
    }
    return _json;
  }
}

/// A single RemoteConfig Condition.  A list of these (because order matters)
/// are
/// part of a single RemoteConfig template.
class RemoteConfigCondition {
  /// DO NOT USE. Implementation removed and will not be added unless requested.
  /// A description for this Condition. Length must be less than or equal to
  /// 100 characters (or more precisely, unicode code points, which is defined
  /// in
  /// java/com/google/wireless/android/config/ConstsExporter.java).
  /// A description may contain any Unicode characters
  core.String description;

  /// Required.
  core.String expression;

  /// Required.
  /// A non empty and unique name of this condition.
  core.String name;

  /// Optional.
  /// The display (tag) color of this condition. This serves as part of a tag
  /// (in the future, we may add tag text as well as tag color, but that is not
  /// yet implemented in the UI).
  /// This value has no affect on the semantics of the delivered config and it
  /// is ignored by the backend, except for passing it through write/read
  /// requests.
  /// Not having this value or having the "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
  /// value (0) have the same meaning:  Let the UI choose any valid color when
  /// displaying the condition.
  /// Possible string values are:
  /// - "CONDITION_DISPLAY_COLOR_UNSPECIFIED"
  /// - "BLUE" : Blue
  /// - "BROWN" : Brown
  /// - "CYAN" : Cyan
  /// - "DEEP_ORANGE" : aka "Red Orange"
  /// - "GREEN" : Green
  /// - "INDIGO" : Indigo
  /// *
  /// - "LIME" : Lime - Approved deviation from Material color palette
  /// - "ORANGE" : Orange
  /// - "PINK" : Pink
  /// - "PURPLE" : Purple
  /// - "TEAL" : Teal
  core.String tagColor;

  RemoteConfigCondition();

  RemoteConfigCondition.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("tagColor")) {
      tagColor = _json["tagColor"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (tagColor != null) {
      _json["tagColor"] = tagColor;
    }
    return _json;
  }
}

/// While default_value and conditional_values are each optional, at least one
/// of
/// the two is required - otherwise, the parameter is meaningless (and an
/// exception will be thrown by the validation logic).
class RemoteConfigParameter {
  /// Optional - a map of (condition_name, value). The condition_name of the
  /// highest priority (the one listed first in the conditions array) determines
  /// the value of this parameter.
  core.Map<core.String, RemoteConfigParameterValue> conditionalValues;

  /// Optional - value to set the parameter to, when none of the named
  /// conditions
  /// evaluate to <code>true</code>.
  RemoteConfigParameterValue defaultValue;

  /// Optional.
  /// A description for this Parameter. Length must be less than or equal to
  /// 100 characters (or more precisely, unicode code points, which is defined
  /// in
  /// java/com/google/wireless/android/config/ConstsExporter.java).
  /// A description may contain any Unicode characters
  core.String description;

  RemoteConfigParameter();

  RemoteConfigParameter.fromJson(core.Map _json) {
    if (_json.containsKey("conditionalValues")) {
      conditionalValues = commons.mapMap<core.Map<core.String, core.Object>,
              RemoteConfigParameterValue>(
          _json["conditionalValues"],
          (core.Map<core.String, core.Object> item) =>
              new RemoteConfigParameterValue.fromJson(item));
    }
    if (_json.containsKey("defaultValue")) {
      defaultValue =
          new RemoteConfigParameterValue.fromJson(_json["defaultValue"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conditionalValues != null) {
      _json["conditionalValues"] = commons.mapMap<RemoteConfigParameterValue,
              core.Map<core.String, core.Object>>(conditionalValues,
          (RemoteConfigParameterValue item) => (item).toJson());
    }
    if (defaultValue != null) {
      _json["defaultValue"] = (defaultValue).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    return _json;
  }
}

/// A RemoteConfigParameter's "value" (either the default value, or the value
/// associated with a condition name) is either a string, or the
/// "use_in_app_default" indicator (which means to leave out the parameter from
/// the returned <key, value> map that is the output of the parameter fetch).
/// We represent the "use_in_app_default" as a bool, but (when using the boolean
/// instead of the string) it should always be <code>true</code>.
class RemoteConfigParameterValue {
  /// if true, omit the parameter from the map of fetched parameter values
  core.bool useInAppDefault;

  /// the string to set the parameter to
  core.String value;

  RemoteConfigParameterValue();

  RemoteConfigParameterValue.fromJson(core.Map _json) {
    if (_json.containsKey("useInAppDefault")) {
      useInAppDefault = _json["useInAppDefault"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (useInAppDefault != null) {
      _json["useInAppDefault"] = useInAppDefault;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}
