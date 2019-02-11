// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.chat.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client chat/v1';

/// Enables bots to fetch information and perform actions in Hangouts Chat.
class ChatApi {
  final commons.ApiRequester _requester;

  SpacesResourceApi get spaces => new SpacesResourceApi(_requester);

  ChatApi(http.Client client,
      {core.String rootUrl = "https://chat.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class SpacesResourceApi {
  final commons.ApiRequester _requester;

  SpacesMembersResourceApi get members =>
      new SpacesMembersResourceApi(_requester);
  SpacesMessagesResourceApi get messages =>
      new SpacesMessagesResourceApi(_requester);

  SpacesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a space.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the space, in the form "spaces / * ".
  ///
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern "^spaces/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Space].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Space> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Space.fromJson(data));
  }

  /// Lists spaces the caller is a member of.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [pageSize] - Requested page size. The value is capped at 1000.
  /// Server may return fewer results than requested.
  /// If unspecified, server will default to 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSpacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSpacesResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/spaces';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSpacesResponse.fromJson(data));
  }
}

class SpacesMembersResourceApi {
  final commons.ApiRequester _requester;

  SpacesMembersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a membership.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the membership to be retrieved, in the
  /// form
  /// "spaces / * /members / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/members/105115627578887013105
  /// Value must have pattern "^spaces/[^/]+/members/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Membership.fromJson(data));
  }

  /// Lists human memberships in a space.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the space for which membership
  /// list is to be
  /// fetched, in the form "spaces / * ".
  ///
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern "^spaces/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [pageSize] - Requested page size. The value is capped at 1000.
  /// Server may return fewer results than requested.
  /// If unspecified, server will default to 100.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/members';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMembershipsResponse.fromJson(data));
  }
}

class SpacesMessagesResourceApi {
  final commons.ApiRequester _requester;

  SpacesMessagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Space resource name, in the form "spaces / * ".
  /// Example: spaces/AAAAMpdlehY
  /// Value must have pattern "^spaces/[^/]+$".
  ///
  /// [threadKey] - Opaque thread identifier string that can be specified to
  /// group messages
  /// into a single thread. If this is the first message with a given thread
  /// identifier, a new thread is created. Subsequent messages with the same
  /// thread identifier will be posted into the same thread. This relieves bots
  /// and webhooks from having to store the Hangouts Chat thread ID of a thread
  /// (created earlier by them) to post
  /// further updates to it.
  ///
  /// Has no effect if thread field,
  /// corresponding to an existing thread, is set in message.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> create(Message request, core.String parent,
      {core.String threadKey, core.String $fields}) {
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
    if (threadKey != null) {
      _queryParams["threadKey"] = [threadKey];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/messages';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Deletes a message.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be deleted, in the form
  /// "spaces / * /messages / * "
  ///
  /// Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  /// Value must have pattern "^spaces/[^/]+/messages/[^/]+$".
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

  /// Returns a message.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the message to be retrieved, in the
  /// form
  /// "spaces / * /messages / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  /// Value must have pattern "^spaces/[^/]+/messages/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Updates a message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name, in the form "spaces / * /messages / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  /// Value must have pattern "^spaces/[^/]+/messages/[^/]+$".
  ///
  /// [updateMask] - Required. The field paths to be updated.
  ///
  /// Currently supported field paths: "text", "cards".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> update(Message request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }
}

/// List of string parameters to supply when the action method is invoked.
/// For example, consider three snooze buttons: snooze now, snooze 1 day,
/// snooze next week. You might use action method = snooze(), passing the
/// snooze type and snooze time in the list of string parameters.
class ActionParameter {
  /// The name of the parameter for the action script.
  core.String key;

  /// The value of the parameter.
  core.String value;

  ActionParameter();

  ActionParameter.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Parameters that a bot can use to configure how it's response is posted.
class ActionResponse {
  /// The type of bot response.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default type; will be handled as NEW_MESSAGE.
  /// - "NEW_MESSAGE" : Post as a new message in the topic.
  /// - "UPDATE_MESSAGE" : Update the bot's own message. (Only after
  /// CARD_CLICKED events.)
  /// - "REQUEST_CONFIG" : Privately ask the user for additional auth or config.
  core.String type;

  /// URL for users to auth or config. (Only for REQUEST_CONFIG response types.)
  core.String url;

  ActionResponse();

  ActionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Annotations associated with the plain-text body of the message.
///
/// Example plain-text message body:
/// ```
/// Hello @FooBot how are you!"
/// ```
///
/// The corresponding annotations metadata:
/// ```
/// "annotations":[{
///   "type":"USER_MENTION",
///   "startIndex":6,
///   "length":7,
///   "userMention": {
///     "user": {
///       "name":"users/107946847022116401880",
///       "displayName":"FooBot",
///       "avatarUrl":"https://goo.gl/aeDtrS",
///       "type":"BOT"
///     },
///     "type":"MENTION"
///    }
/// }]
/// ```
class Annotation {
  /// Length of the substring in the plain-text message body this annotation
  /// corresponds to.
  core.int length;

  /// Start index (0-based, inclusive) in the plain-text message body this
  /// annotation corresponds to.
  core.int startIndex;

  /// The type of this annotation.
  /// Possible string values are:
  /// - "ANNOTATION_TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "USER_MENTION" : A user is mentioned.
  core.String type;

  /// The metadata of user mention.
  UserMentionMetadata userMention;

  Annotation();

  Annotation.fromJson(core.Map _json) {
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("userMention")) {
      userMention = new UserMentionMetadata.fromJson(_json["userMention"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (length != null) {
      _json["length"] = length;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (userMention != null) {
      _json["userMention"] = (userMention).toJson();
    }
    return _json;
  }
}

/// A button. Can be a text button or an image button.
class Button {
  /// A button with image and onclick action.
  ImageButton imageButton;

  /// A button with text and onclick action.
  TextButton textButton;

  Button();

  Button.fromJson(core.Map _json) {
    if (_json.containsKey("imageButton")) {
      imageButton = new ImageButton.fromJson(_json["imageButton"]);
    }
    if (_json.containsKey("textButton")) {
      textButton = new TextButton.fromJson(_json["textButton"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageButton != null) {
      _json["imageButton"] = (imageButton).toJson();
    }
    if (textButton != null) {
      _json["textButton"] = (textButton).toJson();
    }
    return _json;
  }
}

/// A card is a UI element that can contain UI widgets such as texts, images.
class Card {
  /// The actions of this card.
  core.List<CardAction> cardActions;

  /// The header of the card. A header usually contains a title and an image.
  CardHeader header;

  /// Name of the card.
  core.String name;

  /// Sections are separated by a line divider.
  core.List<Section> sections;

  Card();

  Card.fromJson(core.Map _json) {
    if (_json.containsKey("cardActions")) {
      cardActions = (_json["cardActions"] as core.List)
          .map<CardAction>((value) => new CardAction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("header")) {
      header = new CardHeader.fromJson(_json["header"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sections")) {
      sections = (_json["sections"] as core.List)
          .map<Section>((value) => new Section.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardActions != null) {
      _json["cardActions"] =
          cardActions.map((value) => (value).toJson()).toList();
    }
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sections != null) {
      _json["sections"] = sections.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A card action is
/// the action associated with the card. For an invoice card, a
/// typical action would be: delete invoice, email invoice or open the
/// invoice in browser.
class CardAction {
  /// The label used to be displayed in the action menu item.
  core.String actionLabel;

  /// The onclick action for this action item.
  OnClick onClick;

  CardAction();

  CardAction.fromJson(core.Map _json) {
    if (_json.containsKey("actionLabel")) {
      actionLabel = _json["actionLabel"];
    }
    if (_json.containsKey("onClick")) {
      onClick = new OnClick.fromJson(_json["onClick"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionLabel != null) {
      _json["actionLabel"] = actionLabel;
    }
    if (onClick != null) {
      _json["onClick"] = (onClick).toJson();
    }
    return _json;
  }
}

class CardHeader {
  /// The image's type (e.g. square border or circular border).
  /// Possible string values are:
  /// - "IMAGE_STYLE_UNSPECIFIED"
  /// - "IMAGE" : Square border.
  /// - "AVATAR" : Circular border.
  core.String imageStyle;

  /// The URL of the image in the card header.
  core.String imageUrl;

  /// The subtitle of the card header.
  core.String subtitle;

  /// The title must be specified. The header has a fixed height: if both a
  /// title and subtitle is specified, each will take up 1 line. If only the
  /// title is specified, it will take up both lines.
  core.String title;

  CardHeader();

  CardHeader.fromJson(core.Map _json) {
    if (_json.containsKey("imageStyle")) {
      imageStyle = _json["imageStyle"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageStyle != null) {
      _json["imageStyle"] = imageStyle;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Hangouts Chat events.
class DeprecatedEvent {
  /// The form action data associated with an interactive card that was clicked.
  /// Only populated for
  /// CARD_CLICKED events.
  /// See the [Interactive Cards guide](/hangouts/chat/how-tos/cards-onclick)
  /// for
  /// more information.
  FormAction action;

  /// The URL the bot should redirect the user to after they have completed an
  /// authorization or configuration flow outside of Hangouts Chat. See the
  /// [Authorizing access to 3p services guide](/hangouts/chat/how-tos/auth-3p)
  /// for more information.
  core.String configCompleteRedirectUrl;

  /// The timestamp indicating when the event was dispatched.
  core.String eventTime;

  /// The message that triggered the event, if applicable.
  Message message;

  /// The room or DM in which the event occurred.
  Space space;

  /// The bot-defined key for the thread related to the event. See the
  /// thread_key field of the
  /// `spaces.message.create` request for more information.
  core.String threadKey;

  /// A secret value that bots can use to verify if a request is from Google.
  /// The
  /// token is randomly generated by Google, remains static, and can be obtained
  /// from the Hangouts Chat API configuration page in the Cloud Console.
  /// Developers can revoke/regenerate it if needed from the same page.
  core.String token;

  /// The type of the event.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "MESSAGE" : A message was sent in a room or direct message.
  /// - "ADDED_TO_SPACE" : The bot was added to a room or DM.
  /// - "REMOVED_FROM_SPACE" : The bot was removed from a room or DM.
  /// - "CARD_CLICKED" : The bot's interactive card was clicked.
  core.String type;

  /// The user that triggered the event.
  User user;

  DeprecatedEvent();

  DeprecatedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = new FormAction.fromJson(_json["action"]);
    }
    if (_json.containsKey("configCompleteRedirectUrl")) {
      configCompleteRedirectUrl = _json["configCompleteRedirectUrl"];
    }
    if (_json.containsKey("eventTime")) {
      eventTime = _json["eventTime"];
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
    if (_json.containsKey("space")) {
      space = new Space.fromJson(_json["space"]);
    }
    if (_json.containsKey("threadKey")) {
      threadKey = _json["threadKey"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("user")) {
      user = new User.fromJson(_json["user"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (configCompleteRedirectUrl != null) {
      _json["configCompleteRedirectUrl"] = configCompleteRedirectUrl;
    }
    if (eventTime != null) {
      _json["eventTime"] = eventTime;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (space != null) {
      _json["space"] = (space).toJson();
    }
    if (threadKey != null) {
      _json["threadKey"] = threadKey;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (user != null) {
      _json["user"] = (user).toJson();
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

/// A form action describes the behavior when the form is submitted.
/// For example, an Apps Script can be invoked to handle the form.
class FormAction {
  /// Apps Script function to invoke when the containing element is
  /// clicked/activated.
  core.String actionMethodName;

  /// List of action parameters.
  core.List<ActionParameter> parameters;

  FormAction();

  FormAction.fromJson(core.Map _json) {
    if (_json.containsKey("actionMethodName")) {
      actionMethodName = _json["actionMethodName"];
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<ActionParameter>((value) => new ActionParameter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionMethodName != null) {
      _json["actionMethodName"] = actionMethodName;
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An image that is specified by a URL and can have an onclick action.
class Image {
  /// The aspect ratio of this image (width/height).
  core.double aspectRatio;

  /// The URL of the image.
  core.String imageUrl;

  /// The onclick action.
  OnClick onClick;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("aspectRatio")) {
      aspectRatio = _json["aspectRatio"].toDouble();
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
    if (_json.containsKey("onClick")) {
      onClick = new OnClick.fromJson(_json["onClick"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aspectRatio != null) {
      _json["aspectRatio"] = aspectRatio;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
    }
    if (onClick != null) {
      _json["onClick"] = (onClick).toJson();
    }
    return _json;
  }
}

/// An image button with an onclick action.
class ImageButton {
  /// The icon specified by an enum that indices to an icon provided by Chat
  /// API.
  /// Possible string values are:
  /// - "ICON_UNSPECIFIED"
  /// - "AIRPLANE"
  /// - "BOOKMARK"
  /// - "BUS"
  /// - "CAR"
  /// - "CLOCK"
  /// - "CONFIRMATION_NUMBER_ICON"
  /// - "DOLLAR"
  /// - "DESCRIPTION"
  /// - "EMAIL"
  /// - "EVENT_PERFORMER"
  /// - "EVENT_SEAT"
  /// - "FLIGHT_ARRIVAL"
  /// - "FLIGHT_DEPARTURE"
  /// - "HOTEL"
  /// - "HOTEL_ROOM_TYPE"
  /// - "INVITE"
  /// - "MAP_PIN"
  /// - "MEMBERSHIP"
  /// - "MULTIPLE_PEOPLE"
  /// - "OFFER"
  /// - "PERSON"
  /// - "PHONE"
  /// - "RESTAURANT_ICON"
  /// - "SHOPPING_CART"
  /// - "STAR"
  /// - "STORE"
  /// - "TICKET"
  /// - "TRAIN"
  /// - "VIDEO_CAMERA"
  /// - "VIDEO_PLAY"
  core.String icon;

  /// The icon specified by a URL.
  core.String iconUrl;

  /// The name of this image_button which will be used for accessibility.
  /// Default value will be provided if developers don't specify.
  core.String name;

  /// The onclick action.
  OnClick onClick;

  ImageButton();

  ImageButton.fromJson(core.Map _json) {
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
    if (_json.containsKey("iconUrl")) {
      iconUrl = _json["iconUrl"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("onClick")) {
      onClick = new OnClick.fromJson(_json["onClick"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (icon != null) {
      _json["icon"] = icon;
    }
    if (iconUrl != null) {
      _json["iconUrl"] = iconUrl;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (onClick != null) {
      _json["onClick"] = (onClick).toJson();
    }
    return _json;
  }
}

/// A UI element contains a key (label) and a value (content). And this
/// element may also contain some actions such as onclick button.
class KeyValue {
  /// The text of the bottom label. Formatted text supported.
  core.String bottomLabel;

  /// A button that can be clicked to trigger an action.
  Button button;

  /// The text of the content. Formatted text supported and always required.
  core.String content;

  /// If the content should be multiline.
  core.bool contentMultiline;

  /// An enum value that will be replaced by the Chat API with the
  /// corresponding icon image.
  /// Possible string values are:
  /// - "ICON_UNSPECIFIED"
  /// - "AIRPLANE"
  /// - "BOOKMARK"
  /// - "BUS"
  /// - "CAR"
  /// - "CLOCK"
  /// - "CONFIRMATION_NUMBER_ICON"
  /// - "DOLLAR"
  /// - "DESCRIPTION"
  /// - "EMAIL"
  /// - "EVENT_PERFORMER"
  /// - "EVENT_SEAT"
  /// - "FLIGHT_ARRIVAL"
  /// - "FLIGHT_DEPARTURE"
  /// - "HOTEL"
  /// - "HOTEL_ROOM_TYPE"
  /// - "INVITE"
  /// - "MAP_PIN"
  /// - "MEMBERSHIP"
  /// - "MULTIPLE_PEOPLE"
  /// - "OFFER"
  /// - "PERSON"
  /// - "PHONE"
  /// - "RESTAURANT_ICON"
  /// - "SHOPPING_CART"
  /// - "STAR"
  /// - "STORE"
  /// - "TICKET"
  /// - "TRAIN"
  /// - "VIDEO_CAMERA"
  /// - "VIDEO_PLAY"
  core.String icon;

  /// The icon specified by a URL.
  core.String iconUrl;

  /// The onclick action. Only the top label, bottom label and content region
  /// are clickable.
  OnClick onClick;

  /// The text of the top label. Formatted text supported.
  core.String topLabel;

  KeyValue();

  KeyValue.fromJson(core.Map _json) {
    if (_json.containsKey("bottomLabel")) {
      bottomLabel = _json["bottomLabel"];
    }
    if (_json.containsKey("button")) {
      button = new Button.fromJson(_json["button"]);
    }
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("contentMultiline")) {
      contentMultiline = _json["contentMultiline"];
    }
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
    if (_json.containsKey("iconUrl")) {
      iconUrl = _json["iconUrl"];
    }
    if (_json.containsKey("onClick")) {
      onClick = new OnClick.fromJson(_json["onClick"]);
    }
    if (_json.containsKey("topLabel")) {
      topLabel = _json["topLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bottomLabel != null) {
      _json["bottomLabel"] = bottomLabel;
    }
    if (button != null) {
      _json["button"] = (button).toJson();
    }
    if (content != null) {
      _json["content"] = content;
    }
    if (contentMultiline != null) {
      _json["contentMultiline"] = contentMultiline;
    }
    if (icon != null) {
      _json["icon"] = icon;
    }
    if (iconUrl != null) {
      _json["iconUrl"] = iconUrl;
    }
    if (onClick != null) {
      _json["onClick"] = (onClick).toJson();
    }
    if (topLabel != null) {
      _json["topLabel"] = topLabel;
    }
    return _json;
  }
}

class ListMembershipsResponse {
  /// List of memberships in the requested (or first) page.
  core.List<Membership> memberships;

  /// Continuation token to retrieve the next page of results. It will be empty
  /// for the last page of results.
  core.String nextPageToken;

  ListMembershipsResponse();

  ListMembershipsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("memberships")) {
      memberships = (_json["memberships"] as core.List)
          .map<Membership>((value) => new Membership.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (memberships != null) {
      _json["memberships"] =
          memberships.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListSpacesResponse {
  /// Continuation token to retrieve the next page of results. It will be empty
  /// for the last page of results. Tokens expire in an hour. An error is thrown
  /// if an expired token is passed.
  core.String nextPageToken;

  /// List of spaces in the requested (or first) page.
  core.List<Space> spaces;

  ListSpacesResponse();

  ListSpacesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("spaces")) {
      spaces = (_json["spaces"] as core.List)
          .map<Space>((value) => new Space.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (spaces != null) {
      _json["spaces"] = spaces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a membership relation in Hangouts Chat.
class Membership {
  /// The creation time of the membership a.k.a the time at which the member
  /// joined the space, if applicable.
  core.String createTime;

  /// Member details.
  User member;

  /// Resource name of the membership, in the form "spaces / * /members / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/members/105115627578887013105
  core.String name;

  /// State of the membership.
  /// Possible string values are:
  /// - "MEMBERSHIP_STATE_UNSPECIFIED" : Default, do not use.
  /// - "JOINED" : The user has joined the space.
  /// - "INVITED" : The user has been invited, is able to join the space, but
  /// currently has
  /// not joined.
  /// - "NOT_A_MEMBER" : The user is not a member of the space, has not been
  /// invited and is not
  /// able to join the space.
  core.String state;

  Membership();

  Membership.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("member")) {
      member = new User.fromJson(_json["member"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (member != null) {
      _json["member"] = (member).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// A message in Hangouts Chat.
class Message {
  /// Input only. Parameters that a bot can use to configure how its response is
  /// posted.
  ActionResponse actionResponse;

  /// Output only. Annotations associated with the text in this message.
  core.List<Annotation> annotations;

  /// Plain-text body of the message with all bot mentions stripped out.
  core.String argumentText;

  /// Rich, formatted and interactive cards that can be used to display UI
  /// elements such as: formatted texts, buttons, clickable images. Cards are
  /// normally displayed below the plain-text body of the message.
  core.List<Card> cards;

  /// Output only. The time at which the message was created in Hangouts Chat
  /// server.
  core.String createTime;

  /// A plain-text description of the message's cards, used when the actual
  /// cards
  /// cannot be displayed (e.g. mobile notifications).
  core.String fallbackText;

  /// Resource name, in the form "spaces / * /messages / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/messages/UMxbHmzDlr4.UMxbHmzDlr4
  core.String name;

  /// Text for generating preview chips. This text will not be displayed to the
  /// user, but any links to images, web pages, videos, etc. included here will
  /// generate preview chips.
  core.String previewText;

  /// The user who created the message.
  User sender;

  /// The space the message belongs to.
  Space space;

  /// Plain-text body of the message.
  core.String text;

  /// The thread the message belongs to.
  Thread thread;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("actionResponse")) {
      actionResponse = new ActionResponse.fromJson(_json["actionResponse"]);
    }
    if (_json.containsKey("annotations")) {
      annotations = (_json["annotations"] as core.List)
          .map<Annotation>((value) => new Annotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("argumentText")) {
      argumentText = _json["argumentText"];
    }
    if (_json.containsKey("cards")) {
      cards = (_json["cards"] as core.List)
          .map<Card>((value) => new Card.fromJson(value))
          .toList();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("fallbackText")) {
      fallbackText = _json["fallbackText"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("previewText")) {
      previewText = _json["previewText"];
    }
    if (_json.containsKey("sender")) {
      sender = new User.fromJson(_json["sender"]);
    }
    if (_json.containsKey("space")) {
      space = new Space.fromJson(_json["space"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("thread")) {
      thread = new Thread.fromJson(_json["thread"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionResponse != null) {
      _json["actionResponse"] = (actionResponse).toJson();
    }
    if (annotations != null) {
      _json["annotations"] =
          annotations.map((value) => (value).toJson()).toList();
    }
    if (argumentText != null) {
      _json["argumentText"] = argumentText;
    }
    if (cards != null) {
      _json["cards"] = cards.map((value) => (value).toJson()).toList();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (fallbackText != null) {
      _json["fallbackText"] = fallbackText;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (previewText != null) {
      _json["previewText"] = previewText;
    }
    if (sender != null) {
      _json["sender"] = (sender).toJson();
    }
    if (space != null) {
      _json["space"] = (space).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    if (thread != null) {
      _json["thread"] = (thread).toJson();
    }
    return _json;
  }
}

/// An onclick action (e.g. open a link).
class OnClick {
  /// A form action will be trigger by this onclick if specified.
  FormAction action;

  /// This onclick triggers an open link action if specified.
  OpenLink openLink;

  OnClick();

  OnClick.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = new FormAction.fromJson(_json["action"]);
    }
    if (_json.containsKey("openLink")) {
      openLink = new OpenLink.fromJson(_json["openLink"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = (action).toJson();
    }
    if (openLink != null) {
      _json["openLink"] = (openLink).toJson();
    }
    return _json;
  }
}

/// A link that opens a new window.
class OpenLink {
  /// The URL to open.
  core.String url;

  OpenLink();

  OpenLink.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// A section contains a collection of widgets that are rendered
/// (vertically) in the order that they are specified. Across all platforms,
/// cards have a narrow fixed width, so
/// there is currently no need for layout properties (e.g. float).
class Section {
  /// The header of the section, text formatted supported.
  core.String header;

  /// A section must contain at least 1 widget.
  core.List<WidgetMarkup> widgets;

  Section();

  Section.fromJson(core.Map _json) {
    if (_json.containsKey("header")) {
      header = _json["header"];
    }
    if (_json.containsKey("widgets")) {
      widgets = (_json["widgets"] as core.List)
          .map<WidgetMarkup>((value) => new WidgetMarkup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (header != null) {
      _json["header"] = header;
    }
    if (widgets != null) {
      _json["widgets"] = widgets.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A room or DM in Hangouts Chat.
class Space {
  /// Output only. The display name (only if the space is a room).
  core.String displayName;

  /// Resource name of the space, in the form "spaces / * ".
  ///
  /// Example: spaces/AAAAMpdlehYs
  core.String name;

  /// Output only. The type of a space.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED"
  /// - "ROOM" : A chat space where memberships are free to change. Messages in
  /// rooms are
  /// threaded.
  /// - "DM" : 1:1 Direct Message between a human and a bot, where all messages
  /// are
  /// flat.
  core.String type;

  Space();

  Space.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A button with text and onclick action.
class TextButton {
  /// The onclick action of the button.
  OnClick onClick;

  /// The text of the button.
  core.String text;

  TextButton();

  TextButton.fromJson(core.Map _json) {
    if (_json.containsKey("onClick")) {
      onClick = new OnClick.fromJson(_json["onClick"]);
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (onClick != null) {
      _json["onClick"] = (onClick).toJson();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// A paragraph of text. Formatted text supported.
class TextParagraph {
  core.String text;

  TextParagraph();

  TextParagraph.fromJson(core.Map _json) {
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// A thread in Hangouts Chat.
class Thread {
  /// Resource name, in the form "spaces / * /threads / * ".
  ///
  /// Example: spaces/AAAAMpdlehY/threads/UMxbHmzDlr4
  core.String name;

  Thread();

  Thread.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A user in Hangouts Chat.
class User {
  /// The user's display name.
  core.String displayName;

  /// Resource name, in the format "users / * ".
  core.String name;

  /// User type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "HUMAN" : Human user.
  /// - "BOT" : Bot user.
  core.String type;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Annotation metadata for user mentions (@).
class UserMentionMetadata {
  /// The type of user mention.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value for the enum. DO NOT USE.
  /// - "ADD" : Add user to space.
  /// - "MENTION" : Mention user in space.
  core.String type;

  /// The user mentioned.
  User user;

  UserMentionMetadata();

  UserMentionMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("user")) {
      user = new User.fromJson(_json["user"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (user != null) {
      _json["user"] = (user).toJson();
    }
    return _json;
  }
}

/// A widget is a UI element that presents texts, images, etc.
class WidgetMarkup {
  /// A list of buttons. Buttons is also oneof data and only one of these
  /// fields should be set.
  core.List<Button> buttons;

  /// Display an image in this widget.
  Image image;

  /// Display a key value item in this widget.
  KeyValue keyValue;

  /// Display a text paragraph in this widget.
  TextParagraph textParagraph;

  WidgetMarkup();

  WidgetMarkup.fromJson(core.Map _json) {
    if (_json.containsKey("buttons")) {
      buttons = (_json["buttons"] as core.List)
          .map<Button>((value) => new Button.fromJson(value))
          .toList();
    }
    if (_json.containsKey("image")) {
      image = new Image.fromJson(_json["image"]);
    }
    if (_json.containsKey("keyValue")) {
      keyValue = new KeyValue.fromJson(_json["keyValue"]);
    }
    if (_json.containsKey("textParagraph")) {
      textParagraph = new TextParagraph.fromJson(_json["textParagraph"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buttons != null) {
      _json["buttons"] = buttons.map((value) => (value).toJson()).toList();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (keyValue != null) {
      _json["keyValue"] = (keyValue).toJson();
    }
    if (textParagraph != null) {
      _json["textParagraph"] = (textParagraph).toJson();
    }
    return _json;
  }
}
