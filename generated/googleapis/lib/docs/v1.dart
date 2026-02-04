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

/// Google Docs API - v1
///
/// Reads and writes Google Docs documents.
///
/// For more information, see <https://developers.google.com/workspace/docs/>
///
/// Create an instance of [DocsApi] to access these resources:
///
/// - [DocumentsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Reads and writes Google Docs documents.
class DocsApi {
  /// See, edit, create, and delete all your Google Docs documents
  static const documentsScope = 'https://www.googleapis.com/auth/documents';

  /// See all your Google Docs documents
  static const documentsReadonlyScope =
      'https://www.googleapis.com/auth/documents.readonly';

  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  final commons.ApiRequester _requester;

  DocumentsResource get documents => DocumentsResource(_requester);

  DocsApi(
    http.Client client, {
    core.String rootUrl = 'https://docs.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class DocumentsResource {
  final commons.ApiRequester _requester;

  DocumentsResource(commons.ApiRequester client) : _requester = client;

  /// Applies one or more updates to the document.
  ///
  /// Each request is validated before being applied. If any request is not
  /// valid, then the entire request will fail and nothing will be applied. Some
  /// requests have replies to give you some information about how they are
  /// applied. Other requests do not need to return information; these each
  /// return an empty reply. The order of replies matches that of the requests.
  /// For example, suppose you call batchUpdate with four updates, and only the
  /// third one returns information. The response would have two empty replies,
  /// the reply to the third request, and another empty reply, in that order.
  /// Because other users may be editing the document, the document might not
  /// exactly reflect your changes: your changes may be altered with respect to
  /// collaborator changes. If there are no collaborators, the document should
  /// reflect your changes. In any case, the updates in your request are
  /// guaranteed to be applied together atomically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [documentId] - The ID of the document to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateDocumentResponse> batchUpdate(
    BatchUpdateDocumentRequest request,
    core.String documentId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/documents/' +
        commons.escapeVariable('$documentId') +
        ':batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateDocumentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a blank document using the title given in the request.
  ///
  /// Other fields in the request, including any provided content, are ignored.
  /// Returns the created document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> create(
    Document request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/documents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest version of the specified document.
  ///
  /// Request parameters:
  ///
  /// [documentId] - The ID of the document to retrieve.
  ///
  /// [includeTabsContent] - Whether to populate the Document.tabs field instead
  /// of the text content fields like `body` and `documentStyle` on Document. -
  /// When `True`: Document content populates in the Document.tabs field instead
  /// of the text content fields in Document. - When `False`: The content of the
  /// document's first tab populates the content fields in Document excluding
  /// Document.tabs. If a document has only one tab, then that tab is used to
  /// populate the document content. Document.tabs will be empty.
  ///
  /// [suggestionsViewMode] - The suggestions view mode to apply to the
  /// document. This allows viewing the document with all suggestions inline,
  /// accepted or rejected. If one is not specified, DEFAULT_FOR_CURRENT_ACCESS
  /// is used.
  /// Possible string values are:
  /// - "DEFAULT_FOR_CURRENT_ACCESS" : The SuggestionsViewMode applied to the
  /// returned document depends on the user's current access level. If the user
  /// only has view access, PREVIEW_WITHOUT_SUGGESTIONS is applied. Otherwise,
  /// SUGGESTIONS_INLINE is applied. This is the default suggestions view mode.
  /// - "SUGGESTIONS_INLINE" : The returned document has suggestions inline.
  /// Suggested changes will be differentiated from base content within the
  /// document. Requests to retrieve a document using this mode will return a
  /// 403 error if the user does not have permission to view suggested changes.
  /// - "PREVIEW_SUGGESTIONS_ACCEPTED" : The returned document is a preview with
  /// all suggested changes accepted. Requests to retrieve a document using this
  /// mode will return a 403 error if the user does not have permission to view
  /// suggested changes.
  /// - "PREVIEW_WITHOUT_SUGGESTIONS" : The returned document is a preview with
  /// all suggested changes rejected if there are any suggestions in the
  /// document.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> get(
    core.String documentId, {
    core.bool? includeTabsContent,
    core.String? suggestionsViewMode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'includeTabsContent': ?includeTabsContent == null
          ? null
          : ['${includeTabsContent}'],
      'suggestionsViewMode': ?suggestionsViewMode == null
          ? null
          : [suggestionsViewMode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/documents/' + commons.escapeVariable('$documentId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Adds a document tab.
///
/// When a tab is added at a given index, all subsequent tabs' indexes are
/// incremented.
class AddDocumentTabRequest {
  /// The properties of the tab to add.
  ///
  /// All properties are optional.
  TabProperties? tabProperties;

  AddDocumentTabRequest({this.tabProperties});

  AddDocumentTabRequest.fromJson(core.Map json_)
    : this(
        tabProperties: json_.containsKey('tabProperties')
            ? TabProperties.fromJson(
                json_['tabProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tabProperties = this.tabProperties;
    return {'tabProperties': ?tabProperties};
  }
}

/// The result of adding a document tab.
class AddDocumentTabResponse {
  /// The properties of the newly added tab.
  TabProperties? tabProperties;

  AddDocumentTabResponse({this.tabProperties});

  AddDocumentTabResponse.fromJson(core.Map json_)
    : this(
        tabProperties: json_.containsKey('tabProperties')
            ? TabProperties.fromJson(
                json_['tabProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tabProperties = this.tabProperties;
    return {'tabProperties': ?tabProperties};
  }
}

/// A ParagraphElement representing a spot in the text that's dynamically
/// replaced with content that can change over time, like a page number.
class AutoText {
  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// An AutoText may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this AutoText, keyed by suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this AutoText.
  TextStyle? textStyle;

  /// The type of this auto text.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified auto text type.
  /// - "PAGE_NUMBER" : Type for auto text that represents the current page
  /// number.
  /// - "PAGE_COUNT" : Type for auto text that represents the total number of
  /// pages in the document.
  core.String? type;

  AutoText({
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
    this.type,
  });

  AutoText.fromJson(core.Map json_)
    : this(
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    final type = this.type;
    return {
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
      'type': ?type,
    };
  }
}

/// Represents the background of a document.
class Background {
  /// The background color.
  OptionalColor? color;

  Background({this.color});

  Background.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? OptionalColor.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    return {'color': ?color};
  }
}

/// A mask that indicates which of the fields on the base Background have been
/// changed in this suggestion.
///
/// For any field set to true, the Backgound has a new suggested value.
class BackgroundSuggestionState {
  /// Indicates whether the current background color has been modified in this
  /// suggestion.
  core.bool? backgroundColorSuggested;

  BackgroundSuggestionState({this.backgroundColorSuggested});

  BackgroundSuggestionState.fromJson(core.Map json_)
    : this(
        backgroundColorSuggested:
            json_['backgroundColorSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColorSuggested = this.backgroundColorSuggested;
    return {'backgroundColorSuggested': ?backgroundColorSuggested};
  }
}

/// Request message for BatchUpdateDocument.
class BatchUpdateDocumentRequest {
  /// A list of updates to apply to the document.
  core.List<Request>? requests;

  /// Provides control over how write requests are executed.
  WriteControl? writeControl;

  BatchUpdateDocumentRequest({this.requests, this.writeControl});

  BatchUpdateDocumentRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => Request.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        writeControl: json_.containsKey('writeControl')
            ? WriteControl.fromJson(
                json_['writeControl'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    final writeControl = this.writeControl;
    return {'requests': ?requests, 'writeControl': ?writeControl};
  }
}

/// Response message from a BatchUpdateDocument request.
class BatchUpdateDocumentResponse {
  /// The ID of the document to which the updates were applied to.
  core.String? documentId;

  /// The reply of the updates.
  ///
  /// This maps 1:1 with the updates, although replies to some requests may be
  /// empty.
  core.List<Response>? replies;

  /// The updated write control after applying the request.
  WriteControl? writeControl;

  BatchUpdateDocumentResponse({
    this.documentId,
    this.replies,
    this.writeControl,
  });

  BatchUpdateDocumentResponse.fromJson(core.Map json_)
    : this(
        documentId: json_['documentId'] as core.String?,
        replies: (json_['replies'] as core.List?)
            ?.map(
              (value) => Response.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        writeControl: json_.containsKey('writeControl')
            ? WriteControl.fromJson(
                json_['writeControl'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentId = this.documentId;
    final replies = this.replies;
    final writeControl = this.writeControl;
    return {
      'documentId': ?documentId,
      'replies': ?replies,
      'writeControl': ?writeControl,
    };
  }
}

/// The document body.
///
/// The body typically contains the full document contents except for headers,
/// footers, and footnotes.
class Body {
  /// The contents of the body.
  ///
  /// The indexes for the body's content begin at zero.
  core.List<StructuralElement>? content;

  Body({this.content});

  Body.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    return {'content': ?content};
  }
}

/// A reference to a bookmark in this document.
class BookmarkLink {
  /// The ID of a bookmark in this document.
  core.String? id;

  /// The ID of the tab containing this bookmark.
  core.String? tabId;

  BookmarkLink({this.id, this.tabId});

  BookmarkLink.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final tabId = this.tabId;
    return {'id': ?id, 'tabId': ?tabId};
  }
}

/// Describes the bullet of a paragraph.
class Bullet {
  /// The ID of the list this paragraph belongs to.
  core.String? listId;

  /// The nesting level of this paragraph in the list.
  core.int? nestingLevel;

  /// The paragraph-specific text style applied to this bullet.
  TextStyle? textStyle;

  Bullet({this.listId, this.nestingLevel, this.textStyle});

  Bullet.fromJson(core.Map json_)
    : this(
        listId: json_['listId'] as core.String?,
        nestingLevel: json_['nestingLevel'] as core.int?,
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listId = this.listId;
    final nestingLevel = this.nestingLevel;
    final textStyle = this.textStyle;
    return {
      'listId': ?listId,
      'nestingLevel': ?nestingLevel,
      'textStyle': ?textStyle,
    };
  }
}

/// A mask that indicates which of the fields on the base Bullet have been
/// changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class BulletSuggestionState {
  /// Indicates if there was a suggested change to the list_id.
  core.bool? listIdSuggested;

  /// Indicates if there was a suggested change to the nesting_level.
  core.bool? nestingLevelSuggested;

  /// A mask that indicates which of the fields in text style have been changed
  /// in this suggestion.
  TextStyleSuggestionState? textStyleSuggestionState;

  BulletSuggestionState({
    this.listIdSuggested,
    this.nestingLevelSuggested,
    this.textStyleSuggestionState,
  });

  BulletSuggestionState.fromJson(core.Map json_)
    : this(
        listIdSuggested: json_['listIdSuggested'] as core.bool?,
        nestingLevelSuggested: json_['nestingLevelSuggested'] as core.bool?,
        textStyleSuggestionState: json_.containsKey('textStyleSuggestionState')
            ? TextStyleSuggestionState.fromJson(
                json_['textStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listIdSuggested = this.listIdSuggested;
    final nestingLevelSuggested = this.nestingLevelSuggested;
    final textStyleSuggestionState = this.textStyleSuggestionState;
    return {
      'listIdSuggested': ?listIdSuggested,
      'nestingLevelSuggested': ?nestingLevelSuggested,
      'textStyleSuggestionState': ?textStyleSuggestionState,
    };
  }
}

/// A solid color.
class Color {
  /// The RGB color value.
  RgbColor? rgbColor;

  Color({this.rgbColor});

  Color.fromJson(core.Map json_)
    : this(
        rgbColor: json_.containsKey('rgbColor')
            ? RgbColor.fromJson(
                json_['rgbColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rgbColor = this.rgbColor;
    return {'rgbColor': ?rgbColor};
  }
}

/// A ParagraphElement representing a column break.
///
/// A column break makes the subsequent text start at the top of the next
/// column.
class ColumnBreak {
  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A ColumnBreak may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this ColumnBreak, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this ColumnBreak.
  ///
  /// Similar to text content, like text runs and footnote references, the text
  /// style of a column break can affect content layout as well as the styling
  /// of text inserted next to it.
  TextStyle? textStyle;

  ColumnBreak({
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  ColumnBreak.fromJson(core.Map json_)
    : this(
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Creates a Footer.
///
/// The new footer is applied to the SectionStyle at the location of the
/// SectionBreak if specified, otherwise it is applied to the DocumentStyle. If
/// a footer of the specified type already exists, a 400 bad request error is
/// returned.
class CreateFooterRequest {
  /// The location of the SectionBreak immediately preceding the section whose
  /// SectionStyle this footer should belong to.
  ///
  /// If this is unset or refers to the first section break in the document, the
  /// footer applies to the document style.
  Location? sectionBreakLocation;

  /// The type of footer to create.
  /// Possible string values are:
  /// - "HEADER_FOOTER_TYPE_UNSPECIFIED" : The header/footer type is
  /// unspecified.
  /// - "DEFAULT" : A default header/footer.
  core.String? type;

  CreateFooterRequest({this.sectionBreakLocation, this.type});

  CreateFooterRequest.fromJson(core.Map json_)
    : this(
        sectionBreakLocation: json_.containsKey('sectionBreakLocation')
            ? Location.fromJson(
                json_['sectionBreakLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sectionBreakLocation = this.sectionBreakLocation;
    final type = this.type;
    return {'sectionBreakLocation': ?sectionBreakLocation, 'type': ?type};
  }
}

/// The result of creating a footer.
class CreateFooterResponse {
  /// The ID of the created footer.
  core.String? footerId;

  CreateFooterResponse({this.footerId});

  CreateFooterResponse.fromJson(core.Map json_)
    : this(footerId: json_['footerId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final footerId = this.footerId;
    return {'footerId': ?footerId};
  }
}

/// Creates a Footnote segment and inserts a new FootnoteReference to it at the
/// given location.
///
/// The new Footnote segment will contain a space followed by a newline
/// character.
class CreateFootnoteRequest {
  /// Inserts the footnote reference at the end of the document body.
  ///
  /// Footnote references cannot be inserted inside a header, footer or
  /// footnote. Since footnote references can only be inserted in the body, the
  /// segment ID field must be empty.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the footnote reference at a specific index in the document.
  ///
  /// The footnote reference must be inserted inside the bounds of an existing
  /// Paragraph. For instance, it cannot be inserted at a table's start index
  /// (i.e. between the table and its preceding paragraph). Footnote references
  /// cannot be inserted inside an equation, header, footer or footnote. Since
  /// footnote references can only be inserted in the body, the segment ID field
  /// must be empty.
  Location? location;

  CreateFootnoteRequest({this.endOfSegmentLocation, this.location});

  CreateFootnoteRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
    };
  }
}

/// The result of creating a footnote.
class CreateFootnoteResponse {
  /// The ID of the created footnote.
  core.String? footnoteId;

  CreateFootnoteResponse({this.footnoteId});

  CreateFootnoteResponse.fromJson(core.Map json_)
    : this(footnoteId: json_['footnoteId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final footnoteId = this.footnoteId;
    return {'footnoteId': ?footnoteId};
  }
}

/// Creates a Header.
///
/// The new header is applied to the SectionStyle at the location of the
/// SectionBreak if specified, otherwise it is applied to the DocumentStyle. If
/// a header of the specified type already exists, a 400 bad request error is
/// returned.
class CreateHeaderRequest {
  /// The location of the SectionBreak which begins the section this header
  /// should belong to.
  ///
  /// If \`section_break_location' is unset or if it refers to the first section
  /// break in the document body, the header applies to the DocumentStyle
  Location? sectionBreakLocation;

  /// The type of header to create.
  /// Possible string values are:
  /// - "HEADER_FOOTER_TYPE_UNSPECIFIED" : The header/footer type is
  /// unspecified.
  /// - "DEFAULT" : A default header/footer.
  core.String? type;

  CreateHeaderRequest({this.sectionBreakLocation, this.type});

  CreateHeaderRequest.fromJson(core.Map json_)
    : this(
        sectionBreakLocation: json_.containsKey('sectionBreakLocation')
            ? Location.fromJson(
                json_['sectionBreakLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sectionBreakLocation = this.sectionBreakLocation;
    final type = this.type;
    return {'sectionBreakLocation': ?sectionBreakLocation, 'type': ?type};
  }
}

/// The result of creating a header.
class CreateHeaderResponse {
  /// The ID of the created header.
  core.String? headerId;

  CreateHeaderResponse({this.headerId});

  CreateHeaderResponse.fromJson(core.Map json_)
    : this(headerId: json_['headerId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final headerId = this.headerId;
    return {'headerId': ?headerId};
  }
}

/// Creates a NamedRange referencing the given range.
class CreateNamedRangeRequest {
  /// The name of the NamedRange.
  ///
  /// Names do not need to be unique. Names must be at least 1 character and no
  /// more than 256 characters, measured in UTF-16 code units.
  core.String? name;

  /// The range to apply the name to.
  Range? range;

  CreateNamedRangeRequest({this.name, this.range});

  CreateNamedRangeRequest.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final range = this.range;
    return {'name': ?name, 'range': ?range};
  }
}

/// The result of creating a named range.
class CreateNamedRangeResponse {
  /// The ID of the created named range.
  core.String? namedRangeId;

  CreateNamedRangeResponse({this.namedRangeId});

  CreateNamedRangeResponse.fromJson(core.Map json_)
    : this(namedRangeId: json_['namedRangeId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final namedRangeId = this.namedRangeId;
    return {'namedRangeId': ?namedRangeId};
  }
}

/// Creates bullets for all of the paragraphs that overlap with the given range.
///
/// The nesting level of each paragraph will be determined by counting leading
/// tabs in front of each paragraph. To avoid excess space between the bullet
/// and the corresponding paragraph, these leading tabs are removed by this
/// request. This may change the indices of parts of the text. If the paragraph
/// immediately before paragraphs being updated is in a list with a matching
/// preset, the paragraphs being updated are added to that preceding list.
class CreateParagraphBulletsRequest {
  /// The kinds of bullet glyphs to be used.
  /// Possible string values are:
  /// - "BULLET_GLYPH_PRESET_UNSPECIFIED" : The bullet glyph preset is
  /// unspecified.
  /// - "BULLET_DISC_CIRCLE_SQUARE" : A bulleted list with a `DISC`, `CIRCLE`
  /// and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_DIAMONDX_ARROW3D_SQUARE" : A bulleted list with a `DIAMONDX`,
  /// `ARROW3D` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_CHECKBOX" : A bulleted list with `CHECKBOX` bullet glyphs for
  /// all list nesting levels.
  /// - "BULLET_ARROW_DIAMOND_DISC" : A bulleted list with a `ARROW`, `DIAMOND`
  /// and `DISC` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_STAR_CIRCLE_SQUARE" : A bulleted list with a `STAR`, `CIRCLE`
  /// and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_ARROW3D_CIRCLE_SQUARE" : A bulleted list with a `ARROW3D`,
  /// `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_LEFTTRIANGLE_DIAMOND_DISC" : A bulleted list with a
  /// `LEFTTRIANGLE`, `DIAMOND` and `DISC` bullet glyph for the first 3 list
  /// nesting levels.
  /// - "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE" : A bulleted list with a
  /// `DIAMONDX`, `HOLLOWDIAMOND` and `SQUARE` bullet glyph for the first 3 list
  /// nesting levels.
  /// - "BULLET_DIAMOND_CIRCLE_SQUARE" : A bulleted list with a `DIAMOND`,
  /// `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "NUMBERED_DECIMAL_ALPHA_ROMAN" : A numbered list with `DECIMAL`, `ALPHA`
  /// and `ROMAN` numeric glyphs for the first 3 list nesting levels, followed
  /// by periods.
  /// - "NUMBERED_DECIMAL_ALPHA_ROMAN_PARENS" : A numbered list with `DECIMAL`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by parenthesis.
  /// - "NUMBERED_DECIMAL_NESTED" : A numbered list with `DECIMAL` numeric
  /// glyphs separated by periods, where each nesting level uses the previous
  /// nesting level's glyph as a prefix. For example: '1.', '1.1.', '2.',
  /// '2.2.'.
  /// - "NUMBERED_UPPERALPHA_ALPHA_ROMAN" : A numbered list with `UPPERALPHA`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by periods.
  /// - "NUMBERED_UPPERROMAN_UPPERALPHA_DECIMAL" : A numbered list with
  /// `UPPERROMAN`, `UPPERALPHA` and `DECIMAL` numeric glyphs for the first 3
  /// list nesting levels, followed by periods.
  /// - "NUMBERED_ZERODECIMAL_ALPHA_ROMAN" : A numbered list with `ZERODECIMAL`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by periods.
  core.String? bulletPreset;

  /// The range to apply the bullet preset to.
  Range? range;

  CreateParagraphBulletsRequest({this.bulletPreset, this.range});

  CreateParagraphBulletsRequest.fromJson(core.Map json_)
    : this(
        bulletPreset: json_['bulletPreset'] as core.String?,
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bulletPreset = this.bulletPreset;
    final range = this.range;
    return {'bulletPreset': ?bulletPreset, 'range': ?range};
  }
}

/// The crop properties of an image.
///
/// The crop rectangle is represented using fractional offsets from the original
/// content's 4 edges. - If the offset is in the interval (0, 1), the
/// corresponding edge of crop rectangle is positioned inside of the image's
/// original bounding rectangle. - If the offset is negative or greater than 1,
/// the corresponding edge of crop rectangle is positioned outside of the
/// image's original bounding rectangle. - If all offsets and rotation angles
/// are 0, the image is not cropped.
class CropProperties {
  /// The clockwise rotation angle of the crop rectangle around its center, in
  /// radians.
  ///
  /// Rotation is applied after the offsets.
  core.double? angle;

  /// The offset specifies how far inwards the bottom edge of the crop rectangle
  /// is from the bottom edge of the original content as a fraction of the
  /// original content's height.
  core.double? offsetBottom;

  /// The offset specifies how far inwards the left edge of the crop rectangle
  /// is from the left edge of the original content as a fraction of the
  /// original content's width.
  core.double? offsetLeft;

  /// The offset specifies how far inwards the right edge of the crop rectangle
  /// is from the right edge of the original content as a fraction of the
  /// original content's width.
  core.double? offsetRight;

  /// The offset specifies how far inwards the top edge of the crop rectangle is
  /// from the top edge of the original content as a fraction of the original
  /// content's height.
  core.double? offsetTop;

  CropProperties({
    this.angle,
    this.offsetBottom,
    this.offsetLeft,
    this.offsetRight,
    this.offsetTop,
  });

  CropProperties.fromJson(core.Map json_)
    : this(
        angle: (json_['angle'] as core.num?)?.toDouble(),
        offsetBottom: (json_['offsetBottom'] as core.num?)?.toDouble(),
        offsetLeft: (json_['offsetLeft'] as core.num?)?.toDouble(),
        offsetRight: (json_['offsetRight'] as core.num?)?.toDouble(),
        offsetTop: (json_['offsetTop'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final angle = this.angle;
    final offsetBottom = this.offsetBottom;
    final offsetLeft = this.offsetLeft;
    final offsetRight = this.offsetRight;
    final offsetTop = this.offsetTop;
    return {
      'angle': ?angle,
      'offsetBottom': ?offsetBottom,
      'offsetLeft': ?offsetLeft,
      'offsetRight': ?offsetRight,
      'offsetTop': ?offsetTop,
    };
  }
}

/// A mask that indicates which of the fields on the base CropProperties have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class CropPropertiesSuggestionState {
  /// Indicates if there was a suggested change to angle.
  core.bool? angleSuggested;

  /// Indicates if there was a suggested change to offset_bottom.
  core.bool? offsetBottomSuggested;

  /// Indicates if there was a suggested change to offset_left.
  core.bool? offsetLeftSuggested;

  /// Indicates if there was a suggested change to offset_right.
  core.bool? offsetRightSuggested;

  /// Indicates if there was a suggested change to offset_top.
  core.bool? offsetTopSuggested;

  CropPropertiesSuggestionState({
    this.angleSuggested,
    this.offsetBottomSuggested,
    this.offsetLeftSuggested,
    this.offsetRightSuggested,
    this.offsetTopSuggested,
  });

  CropPropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        angleSuggested: json_['angleSuggested'] as core.bool?,
        offsetBottomSuggested: json_['offsetBottomSuggested'] as core.bool?,
        offsetLeftSuggested: json_['offsetLeftSuggested'] as core.bool?,
        offsetRightSuggested: json_['offsetRightSuggested'] as core.bool?,
        offsetTopSuggested: json_['offsetTopSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final angleSuggested = this.angleSuggested;
    final offsetBottomSuggested = this.offsetBottomSuggested;
    final offsetLeftSuggested = this.offsetLeftSuggested;
    final offsetRightSuggested = this.offsetRightSuggested;
    final offsetTopSuggested = this.offsetTopSuggested;
    return {
      'angleSuggested': ?angleSuggested,
      'offsetBottomSuggested': ?offsetBottomSuggested,
      'offsetLeftSuggested': ?offsetLeftSuggested,
      'offsetRightSuggested': ?offsetRightSuggested,
      'offsetTopSuggested': ?offsetTopSuggested,
    };
  }
}

/// A date instance mentioned in a document.
class DateElement {
  /// The properties of this DateElement.
  DateElementProperties? dateElementProperties;

  /// The unique ID of this date.
  ///
  /// Output only.
  core.String? dateId;

  /// The suggested changes to the date element properties, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedDateElementProperties>?
  suggestedDateElementPropertiesChanges;

  /// IDs for suggestions that remove this date from the document.
  ///
  /// A DateElement might have multiple deletion IDs if, for example, multiple
  /// users suggest deleting it. If empty, then this date isn't suggested for
  /// deletion.
  core.List<core.String>? suggestedDeletionIds;

  /// IDs for suggestions that insert this date into the document.
  ///
  /// A DateElement might have multiple insertion IDs if it's a nested suggested
  /// change (a suggestion within a suggestion made by a different user, for
  /// example). If empty, then this date isn't a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this DateElement, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this DateElement.
  TextStyle? textStyle;

  DateElement({
    this.dateElementProperties,
    this.dateId,
    this.suggestedDateElementPropertiesChanges,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  DateElement.fromJson(core.Map json_)
    : this(
        dateElementProperties: json_.containsKey('dateElementProperties')
            ? DateElementProperties.fromJson(
                json_['dateElementProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dateId: json_['dateId'] as core.String?,
        suggestedDateElementPropertiesChanges:
            (json_['suggestedDateElementPropertiesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedDateElementProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateElementProperties = this.dateElementProperties;
    final dateId = this.dateId;
    final suggestedDateElementPropertiesChanges =
        this.suggestedDateElementPropertiesChanges;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'dateElementProperties': ?dateElementProperties,
      'dateId': ?dateId,
      'suggestedDateElementPropertiesChanges':
          ?suggestedDateElementPropertiesChanges,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Properties of a DateElement.
class DateElementProperties {
  /// Determines how the date part of the DateElement will be displayed in the
  /// document.
  ///
  /// If unset, the default value is DATE_FORMAT_MONTH_DAY_YEAR_ABBREVIATED,
  /// indicating the DateElement will be formatted as `MMM d, y` in `en_US`, or
  /// locale specific equivalent.
  /// Possible string values are:
  /// - "DATE_FORMAT_UNSPECIFIED" : The date format is unspecified.
  /// - "DATE_FORMAT_CUSTOM" : Output only. The date format is imported from an
  /// external source.
  /// - "DATE_FORMAT_MONTH_DAY_ABBREVIATED" : The date format is an abbreviated
  /// month followed by the day. For example, "Jan 1".
  /// - "DATE_FORMAT_MONTH_DAY_FULL" : The date format is a month followed by
  /// the day. For example, "January 01".
  /// - "DATE_FORMAT_MONTH_DAY_YEAR_ABBREVIATED" : The date format is an
  /// abbreviated month followed by the day and the year. For example, "Jan 1,
  /// 1970".
  /// - "DATE_FORMAT_ISO8601" : The date format is in ISO 8601 format. For
  /// example, "1970-01-01".
  core.String? dateFormat;

  /// Indicates how the DateElement is displayed in the document.
  ///
  /// Output only.
  core.String? displayText;

  /// The locale of the document, as defined by the Unicode Common Locale Data
  /// Repository (CLDR) project.
  ///
  /// For example, `en_US`. If unset, the default locale is `en_US`.
  core.String? locale;

  /// Determines how the time part of the DateElement will be displayed in the
  /// document.
  ///
  /// If unset, the default value is TIME_FORMAT_DISABLED, indicating no time
  /// should be shown.
  /// Possible string values are:
  /// - "TIME_FORMAT_UNSPECIFIED" : The time format is unspecified.
  /// - "TIME_FORMAT_DISABLED" : Indicates that the date does not have a time.
  /// - "TIME_FORMAT_HOUR_MINUTE" : The time format shows the hour and minute.
  /// For example, "Jan 1, 1970 12:00 PM".
  /// - "TIME_FORMAT_HOUR_MINUTE_TIMEZONE" : The time format shows the hour,
  /// minute, and timezone. For example, "Jan 1, 1970 12:00 PM UTC".
  core.String? timeFormat;

  /// The time zone of the DateElement, as defined by the Unicode Common Locale
  /// Data Repository (CLDR) project.
  ///
  /// For example, `America/New York`. If unset, the default time zone is
  /// `etc/UTC`.
  core.String? timeZoneId;

  /// The point in time to represent, in seconds and nanoseconds since Unix
  /// epoch: January 1, 1970 at midnight UTC.
  ///
  /// Timestamp is expected to be in UTC. If time_zone_id is set, the timestamp
  /// is adjusted according to the time zone. For example, a timestamp of
  /// `18000` with a date format of `DATE_FORMAT_ISO8601` and time format of
  /// `TIME_FORMAT_HOUR_MINUTE` would be displayed as `1970-01-01 5:00 AM`. A
  /// timestamp of `18000` with date format of `DATE_FORMAT_8SO8601`, time
  /// format of `TIME_FORMAT_HOUR_MINUTE`, and time zone set to
  /// `America/New_York` will instead be `1970-01-01 12:00 AM`.
  core.String? timestamp;

  DateElementProperties({
    this.dateFormat,
    this.displayText,
    this.locale,
    this.timeFormat,
    this.timeZoneId,
    this.timestamp,
  });

  DateElementProperties.fromJson(core.Map json_)
    : this(
        dateFormat: json_['dateFormat'] as core.String?,
        displayText: json_['displayText'] as core.String?,
        locale: json_['locale'] as core.String?,
        timeFormat: json_['timeFormat'] as core.String?,
        timeZoneId: json_['timeZoneId'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateFormat = this.dateFormat;
    final displayText = this.displayText;
    final locale = this.locale;
    final timeFormat = this.timeFormat;
    final timeZoneId = this.timeZoneId;
    final timestamp = this.timestamp;
    return {
      'dateFormat': ?dateFormat,
      'displayText': ?displayText,
      'locale': ?locale,
      'timeFormat': ?timeFormat,
      'timeZoneId': ?timeZoneId,
      'timestamp': ?timestamp,
    };
  }
}

/// A mask that indicates which of the fields on the base DateElementProperties
/// have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class DateElementPropertiesSuggestionState {
  /// Indicates if there was a suggested change to date_format.
  core.bool? dateFormatSuggested;

  /// Indicates if there was a suggested change to locale.
  core.bool? localeSuggested;

  /// Indicates if there was a suggested change to time_format.
  core.bool? timeFormatSuggested;

  /// Indicates if there was a suggested change to time_zone_id.
  core.bool? timeZoneIdSuggested;

  /// Indicates if there was a suggested change to timestamp.
  core.bool? timestampSuggested;

  DateElementPropertiesSuggestionState({
    this.dateFormatSuggested,
    this.localeSuggested,
    this.timeFormatSuggested,
    this.timeZoneIdSuggested,
    this.timestampSuggested,
  });

  DateElementPropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        dateFormatSuggested: json_['dateFormatSuggested'] as core.bool?,
        localeSuggested: json_['localeSuggested'] as core.bool?,
        timeFormatSuggested: json_['timeFormatSuggested'] as core.bool?,
        timeZoneIdSuggested: json_['timeZoneIdSuggested'] as core.bool?,
        timestampSuggested: json_['timestampSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateFormatSuggested = this.dateFormatSuggested;
    final localeSuggested = this.localeSuggested;
    final timeFormatSuggested = this.timeFormatSuggested;
    final timeZoneIdSuggested = this.timeZoneIdSuggested;
    final timestampSuggested = this.timestampSuggested;
    return {
      'dateFormatSuggested': ?dateFormatSuggested,
      'localeSuggested': ?localeSuggested,
      'timeFormatSuggested': ?timeFormatSuggested,
      'timeZoneIdSuggested': ?timeZoneIdSuggested,
      'timestampSuggested': ?timestampSuggested,
    };
  }
}

/// Deletes content from the document.
class DeleteContentRangeRequest {
  /// The range of content to delete.
  ///
  /// Deleting text that crosses a paragraph boundary may result in changes to
  /// paragraph styles, lists, positioned objects and bookmarks as the two
  /// paragraphs are merged. Attempting to delete certain ranges can result in
  /// an invalid document structure in which case a 400 bad request error is
  /// returned. Some examples of invalid delete requests include: * Deleting one
  /// code unit of a surrogate pair. * Deleting the last newline character of a
  /// Body, Header, Footer, Footnote, TableCell or TableOfContents. * Deleting
  /// the start or end of a Table, TableOfContents or Equation without deleting
  /// the entire element. * Deleting the newline character before a Table,
  /// TableOfContents or SectionBreak without deleting the element. * Deleting
  /// individual rows or cells of a table. Deleting the content within a table
  /// cell is allowed.
  Range? range;

  DeleteContentRangeRequest({this.range});

  DeleteContentRangeRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// Deletes a Footer from the document.
class DeleteFooterRequest {
  /// The id of the footer to delete.
  ///
  /// If this footer is defined on DocumentStyle, the reference to this footer
  /// is removed, resulting in no footer of that type for the first section of
  /// the document. If this footer is defined on a SectionStyle, the reference
  /// to this footer is removed and the footer of that type is now continued
  /// from the previous section.
  core.String? footerId;

  /// The tab that contains the footer to delete.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  DeleteFooterRequest({this.footerId, this.tabId});

  DeleteFooterRequest.fromJson(core.Map json_)
    : this(
        footerId: json_['footerId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final footerId = this.footerId;
    final tabId = this.tabId;
    return {'footerId': ?footerId, 'tabId': ?tabId};
  }
}

/// Deletes a Header from the document.
class DeleteHeaderRequest {
  /// The id of the header to delete.
  ///
  /// If this header is defined on DocumentStyle, the reference to this header
  /// is removed, resulting in no header of that type for the first section of
  /// the document. If this header is defined on a SectionStyle, the reference
  /// to this header is removed and the header of that type is now continued
  /// from the previous section.
  core.String? headerId;

  /// The tab containing the header to delete.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  DeleteHeaderRequest({this.headerId, this.tabId});

  DeleteHeaderRequest.fromJson(core.Map json_)
    : this(
        headerId: json_['headerId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final headerId = this.headerId;
    final tabId = this.tabId;
    return {'headerId': ?headerId, 'tabId': ?tabId};
  }
}

/// Deletes a NamedRange.
class DeleteNamedRangeRequest {
  /// The name of the range(s) to delete.
  ///
  /// All named ranges with the given name will be deleted.
  core.String? name;

  /// The ID of the named range to delete.
  core.String? namedRangeId;

  /// The criteria used to specify which tab(s) the range deletion should occur
  /// in.
  ///
  /// When omitted, the range deletion is applied to all tabs. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the range deletion applies to the singular tab. In a
  /// document containing multiple tabs: - If provided, the range deletion
  /// applies to the specified tabs. - If not provided, the range deletion
  /// applies to all tabs.
  ///
  /// Optional.
  TabsCriteria? tabsCriteria;

  DeleteNamedRangeRequest({this.name, this.namedRangeId, this.tabsCriteria});

  DeleteNamedRangeRequest.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        namedRangeId: json_['namedRangeId'] as core.String?,
        tabsCriteria: json_.containsKey('tabsCriteria')
            ? TabsCriteria.fromJson(
                json_['tabsCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final namedRangeId = this.namedRangeId;
    final tabsCriteria = this.tabsCriteria;
    return {
      'name': ?name,
      'namedRangeId': ?namedRangeId,
      'tabsCriteria': ?tabsCriteria,
    };
  }
}

/// Deletes bullets from all of the paragraphs that overlap with the given
/// range.
///
/// The nesting level of each paragraph will be visually preserved by adding
/// indent to the start of the corresponding paragraph.
class DeleteParagraphBulletsRequest {
  /// The range to delete bullets from.
  Range? range;

  DeleteParagraphBulletsRequest({this.range});

  DeleteParagraphBulletsRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// Deletes a PositionedObject from the document.
class DeletePositionedObjectRequest {
  /// The ID of the positioned object to delete.
  core.String? objectId;

  /// The tab that the positioned object to delete is in.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  DeletePositionedObjectRequest({this.objectId, this.tabId});

  DeletePositionedObjectRequest.fromJson(core.Map json_)
    : this(
        objectId: json_['objectId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    final tabId = this.tabId;
    return {'objectId': ?objectId, 'tabId': ?tabId};
  }
}

/// Deletes a tab.
///
/// If the tab has child tabs, they are deleted as well.
class DeleteTabRequest {
  /// The ID of the tab to delete.
  core.String? tabId;

  DeleteTabRequest({this.tabId});

  DeleteTabRequest.fromJson(core.Map json_)
    : this(tabId: json_['tabId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tabId = this.tabId;
    return {'tabId': ?tabId};
  }
}

/// Deletes a column from a table.
class DeleteTableColumnRequest {
  /// The reference table cell location from which the column will be deleted.
  ///
  /// The column this cell spans will be deleted. If this is a merged cell that
  /// spans multiple columns, all columns that the cell spans will be deleted.
  /// If no columns remain in the table after this deletion, the whole table is
  /// deleted.
  TableCellLocation? tableCellLocation;

  DeleteTableColumnRequest({this.tableCellLocation});

  DeleteTableColumnRequest.fromJson(core.Map json_)
    : this(
        tableCellLocation: json_.containsKey('tableCellLocation')
            ? TableCellLocation.fromJson(
                json_['tableCellLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableCellLocation = this.tableCellLocation;
    return {'tableCellLocation': ?tableCellLocation};
  }
}

/// Deletes a row from a table.
class DeleteTableRowRequest {
  /// The reference table cell location from which the row will be deleted.
  ///
  /// The row this cell spans will be deleted. If this is a merged cell that
  /// spans multiple rows, all rows that the cell spans will be deleted. If no
  /// rows remain in the table after this deletion, the whole table is deleted.
  TableCellLocation? tableCellLocation;

  DeleteTableRowRequest({this.tableCellLocation});

  DeleteTableRowRequest.fromJson(core.Map json_)
    : this(
        tableCellLocation: json_.containsKey('tableCellLocation')
            ? TableCellLocation.fromJson(
                json_['tableCellLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableCellLocation = this.tableCellLocation;
    return {'tableCellLocation': ?tableCellLocation};
  }
}

/// A magnitude in a single direction in the specified units.
class Dimension {
  /// The magnitude.
  core.double? magnitude;

  /// The units for magnitude.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : The units are unknown.
  /// - "PT" : A point, 1/72 of an inch.
  core.String? unit;

  Dimension({this.magnitude, this.unit});

  Dimension.fromJson(core.Map json_)
    : this(
        magnitude: (json_['magnitude'] as core.num?)?.toDouble(),
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final magnitude = this.magnitude;
    final unit = this.unit;
    return {'magnitude': ?magnitude, 'unit': ?unit};
  }
}

/// A Google Docs document.
class Document {
  /// The main body of the document.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.body, which exposes
  /// the actual document content from all tabs when the includeTabsContent
  /// parameter is set to `true`. If `false` or unset, this field contains
  /// information about the first tab in the document.
  ///
  /// Output only.
  Body? body;

  /// The ID of the document.
  ///
  /// Output only.
  core.String? documentId;

  /// The style of the document.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.documentStyle, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  DocumentStyle? documentStyle;

  /// The footers in the document, keyed by footer ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.footers, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, Footer>? footers;

  /// The footnotes in the document, keyed by footnote ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.footnotes, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, Footnote>? footnotes;

  /// The headers in the document, keyed by header ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.headers, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, Header>? headers;

  /// The inline objects in the document, keyed by object ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.inlineObjects, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, InlineObject>? inlineObjects;

  /// The lists in the document, keyed by list ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.lists, which exposes
  /// the actual document content from all tabs when the includeTabsContent
  /// parameter is set to `true`. If `false` or unset, this field contains
  /// information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, List>? lists;

  /// The named ranges in the document, keyed by name.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.namedRanges, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, NamedRanges>? namedRanges;

  /// The named styles of the document.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.namedStyles, which
  /// exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  NamedStyles? namedStyles;

  /// The positioned objects in the document, keyed by object ID.
  ///
  /// Legacy field: Instead, use Document.tabs.documentTab.positionedObjects,
  /// which exposes the actual document content from all tabs when the
  /// includeTabsContent parameter is set to `true`. If `false` or unset, this
  /// field contains information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, PositionedObject>? positionedObjects;

  /// The revision ID of the document.
  ///
  /// Can be used in update requests to specify which revision of a document to
  /// apply updates to and how the request should behave if the document has
  /// been edited since that revision. Only populated if the user has edit
  /// access to the document. The revision ID is not a sequential number but an
  /// opaque string. The format of the revision ID might change over time. A
  /// returned revision ID is only guaranteed to be valid for 24 hours after it
  /// has been returned and cannot be shared across users. If the revision ID is
  /// unchanged between calls, then the document has not changed. Conversely, a
  /// changed ID (for the same document and user) usually means the document has
  /// been updated. However, a changed ID can also be due to internal factors
  /// such as ID format changes.
  ///
  /// Output only.
  core.String? revisionId;

  /// The suggested changes to the style of the document, keyed by suggestion
  /// ID.
  ///
  /// Legacy field: Instead, use
  /// Document.tabs.documentTab.suggestedDocumentStyleChanges, which exposes the
  /// actual document content from all tabs when the includeTabsContent
  /// parameter is set to `true`. If `false` or unset, this field contains
  /// information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, SuggestedDocumentStyle>? suggestedDocumentStyleChanges;

  /// The suggested changes to the named styles of the document, keyed by
  /// suggestion ID.
  ///
  /// Legacy field: Instead, use
  /// Document.tabs.documentTab.suggestedNamedStylesChanges, which exposes the
  /// actual document content from all tabs when the includeTabsContent
  /// parameter is set to `true`. If `false` or unset, this field contains
  /// information about the first tab in the document.
  ///
  /// Output only.
  core.Map<core.String, SuggestedNamedStyles>? suggestedNamedStylesChanges;

  /// The suggestions view mode applied to the document.
  ///
  /// Note: When editing a document, changes must be based on a document with
  /// SUGGESTIONS_INLINE.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEFAULT_FOR_CURRENT_ACCESS" : The SuggestionsViewMode applied to the
  /// returned document depends on the user's current access level. If the user
  /// only has view access, PREVIEW_WITHOUT_SUGGESTIONS is applied. Otherwise,
  /// SUGGESTIONS_INLINE is applied. This is the default suggestions view mode.
  /// - "SUGGESTIONS_INLINE" : The returned document has suggestions inline.
  /// Suggested changes will be differentiated from base content within the
  /// document. Requests to retrieve a document using this mode will return a
  /// 403 error if the user does not have permission to view suggested changes.
  /// - "PREVIEW_SUGGESTIONS_ACCEPTED" : The returned document is a preview with
  /// all suggested changes accepted. Requests to retrieve a document using this
  /// mode will return a 403 error if the user does not have permission to view
  /// suggested changes.
  /// - "PREVIEW_WITHOUT_SUGGESTIONS" : The returned document is a preview with
  /// all suggested changes rejected if there are any suggestions in the
  /// document.
  core.String? suggestionsViewMode;

  /// Tabs that are part of a document.
  ///
  /// Tabs can contain child tabs, a tab nested within another tab. Child tabs
  /// are represented by the Tab.childTabs field.
  core.List<Tab>? tabs;

  /// The title of the document.
  core.String? title;

  Document({
    this.body,
    this.documentId,
    this.documentStyle,
    this.footers,
    this.footnotes,
    this.headers,
    this.inlineObjects,
    this.lists,
    this.namedRanges,
    this.namedStyles,
    this.positionedObjects,
    this.revisionId,
    this.suggestedDocumentStyleChanges,
    this.suggestedNamedStylesChanges,
    this.suggestionsViewMode,
    this.tabs,
    this.title,
  });

  Document.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? Body.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        documentId: json_['documentId'] as core.String?,
        documentStyle: json_.containsKey('documentStyle')
            ? DocumentStyle.fromJson(
                json_['documentStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        footers: (json_['footers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Footer.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        footnotes: (json_['footnotes'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Footnote.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Header.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        inlineObjects:
            (json_['inlineObjects'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    InlineObject.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        lists: (json_['lists'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            List.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        namedRanges:
            (json_['namedRanges'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                NamedRanges.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        namedStyles: json_.containsKey('namedStyles')
            ? NamedStyles.fromJson(
                json_['namedStyles'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positionedObjects:
            (json_['positionedObjects'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    PositionedObject.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        revisionId: json_['revisionId'] as core.String?,
        suggestedDocumentStyleChanges:
            (json_['suggestedDocumentStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedDocumentStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedNamedStylesChanges:
            (json_['suggestedNamedStylesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedNamedStyles.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestionsViewMode: json_['suggestionsViewMode'] as core.String?,
        tabs: (json_['tabs'] as core.List?)
            ?.map(
              (value) =>
                  Tab.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    final documentId = this.documentId;
    final documentStyle = this.documentStyle;
    final footers = this.footers;
    final footnotes = this.footnotes;
    final headers = this.headers;
    final inlineObjects = this.inlineObjects;
    final lists = this.lists;
    final namedRanges = this.namedRanges;
    final namedStyles = this.namedStyles;
    final positionedObjects = this.positionedObjects;
    final revisionId = this.revisionId;
    final suggestedDocumentStyleChanges = this.suggestedDocumentStyleChanges;
    final suggestedNamedStylesChanges = this.suggestedNamedStylesChanges;
    final suggestionsViewMode = this.suggestionsViewMode;
    final tabs = this.tabs;
    final title = this.title;
    return {
      'body': ?body,
      'documentId': ?documentId,
      'documentStyle': ?documentStyle,
      'footers': ?footers,
      'footnotes': ?footnotes,
      'headers': ?headers,
      'inlineObjects': ?inlineObjects,
      'lists': ?lists,
      'namedRanges': ?namedRanges,
      'namedStyles': ?namedStyles,
      'positionedObjects': ?positionedObjects,
      'revisionId': ?revisionId,
      'suggestedDocumentStyleChanges': ?suggestedDocumentStyleChanges,
      'suggestedNamedStylesChanges': ?suggestedNamedStylesChanges,
      'suggestionsViewMode': ?suggestionsViewMode,
      'tabs': ?tabs,
      'title': ?title,
    };
  }
}

/// Represents document-level format settings.
class DocumentFormat {
  /// Whether the document has pages or is pageless.
  /// Possible string values are:
  /// - "DOCUMENT_MODE_UNSPECIFIED" : The document mode is unspecified.
  /// - "PAGES" : The document has pages.
  /// - "PAGELESS" : The document is pageless.
  core.String? documentMode;

  DocumentFormat({this.documentMode});

  DocumentFormat.fromJson(core.Map json_)
    : this(documentMode: json_['documentMode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final documentMode = this.documentMode;
    return {'documentMode': ?documentMode};
  }
}

/// The style of the document.
class DocumentStyle {
  /// The background of the document.
  ///
  /// Documents cannot have a transparent background color.
  Background? background;

  /// The ID of the default footer.
  ///
  /// If not set, there's no default footer. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? defaultFooterId;

  /// The ID of the default header.
  ///
  /// If not set, there's no default header. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? defaultHeaderId;

  /// Specifies document-level format settings, such as the document mode (pages
  /// vs pageless).
  DocumentFormat? documentFormat;

  /// The ID of the footer used only for even pages.
  ///
  /// The value of use_even_page_header_footer determines whether to use the
  /// default_footer_id or this value for the footer on even pages. If not set,
  /// there's no even page footer. If DocumentMode is PAGELESS, this property
  /// will not be rendered. This property is read-only.
  core.String? evenPageFooterId;

  /// The ID of the header used only for even pages.
  ///
  /// The value of use_even_page_header_footer determines whether to use the
  /// default_header_id or this value for the header on even pages. If not set,
  /// there's no even page header. If DocumentMode is PAGELESS, this property
  /// will not be rendered. This property is read-only.
  core.String? evenPageHeaderId;

  /// The ID of the footer used only for the first page.
  ///
  /// If not set then a unique footer for the first page does not exist. The
  /// value of use_first_page_header_footer determines whether to use the
  /// default_footer_id or this value for the footer on the first page. If not
  /// set, there's no first page footer. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? firstPageFooterId;

  /// The ID of the header used only for the first page.
  ///
  /// If not set then a unique header for the first page does not exist. The
  /// value of use_first_page_header_footer determines whether to use the
  /// default_header_id or this value for the header on the first page. If not
  /// set, there's no first page header. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? firstPageHeaderId;

  /// Indicates whether to flip the dimensions of the page_size, which allows
  /// changing the page orientation between portrait and landscape.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  ///
  /// Optional.
  core.bool? flipPageOrientation;

  /// The bottom page margin.
  ///
  /// Updating the bottom page margin on the document style clears the bottom
  /// page margin on all section styles. If DocumentMode is PAGELESS, this
  /// property will not be rendered.
  Dimension? marginBottom;

  /// The amount of space between the bottom of the page and the contents of the
  /// footer.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  Dimension? marginFooter;

  /// The amount of space between the top of the page and the contents of the
  /// header.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  Dimension? marginHeader;

  /// The left page margin.
  ///
  /// Updating the left page margin on the document style clears the left page
  /// margin on all section styles. It may also cause columns to resize in all
  /// sections. If DocumentMode is PAGELESS, this property will not be rendered.
  Dimension? marginLeft;

  /// The right page margin.
  ///
  /// Updating the right page margin on the document style clears the right page
  /// margin on all section styles. It may also cause columns to resize in all
  /// sections. If DocumentMode is PAGELESS, this property will not be rendered.
  Dimension? marginRight;

  /// The top page margin.
  ///
  /// Updating the top page margin on the document style clears the top page
  /// margin on all section styles. If DocumentMode is PAGELESS, this property
  /// will not be rendered.
  Dimension? marginTop;

  /// The page number from which to start counting the number of pages.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  core.int? pageNumberStart;

  /// The size of a page in the document.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  Size? pageSize;

  /// Indicates whether DocumentStyle margin_header, SectionStyle margin_header
  /// and DocumentStyle margin_footer, SectionStyle margin_footer are respected.
  ///
  /// When false, the default values in the Docs editor for header and footer
  /// margin is used. If DocumentMode is PAGELESS, this property will not be
  /// rendered. This property is read-only.
  core.bool? useCustomHeaderFooterMargins;

  /// Indicates whether to use the even page header / footer IDs for the even
  /// pages.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  core.bool? useEvenPageHeaderFooter;

  /// Indicates whether to use the first page header / footer IDs for the first
  /// page.
  ///
  /// If DocumentMode is PAGELESS, this property will not be rendered.
  core.bool? useFirstPageHeaderFooter;

  DocumentStyle({
    this.background,
    this.defaultFooterId,
    this.defaultHeaderId,
    this.documentFormat,
    this.evenPageFooterId,
    this.evenPageHeaderId,
    this.firstPageFooterId,
    this.firstPageHeaderId,
    this.flipPageOrientation,
    this.marginBottom,
    this.marginFooter,
    this.marginHeader,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.pageNumberStart,
    this.pageSize,
    this.useCustomHeaderFooterMargins,
    this.useEvenPageHeaderFooter,
    this.useFirstPageHeaderFooter,
  });

  DocumentStyle.fromJson(core.Map json_)
    : this(
        background: json_.containsKey('background')
            ? Background.fromJson(
                json_['background'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultFooterId: json_['defaultFooterId'] as core.String?,
        defaultHeaderId: json_['defaultHeaderId'] as core.String?,
        documentFormat: json_.containsKey('documentFormat')
            ? DocumentFormat.fromJson(
                json_['documentFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        evenPageFooterId: json_['evenPageFooterId'] as core.String?,
        evenPageHeaderId: json_['evenPageHeaderId'] as core.String?,
        firstPageFooterId: json_['firstPageFooterId'] as core.String?,
        firstPageHeaderId: json_['firstPageHeaderId'] as core.String?,
        flipPageOrientation: json_['flipPageOrientation'] as core.bool?,
        marginBottom: json_.containsKey('marginBottom')
            ? Dimension.fromJson(
                json_['marginBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginFooter: json_.containsKey('marginFooter')
            ? Dimension.fromJson(
                json_['marginFooter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginHeader: json_.containsKey('marginHeader')
            ? Dimension.fromJson(
                json_['marginHeader'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginLeft: json_.containsKey('marginLeft')
            ? Dimension.fromJson(
                json_['marginLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginRight: json_.containsKey('marginRight')
            ? Dimension.fromJson(
                json_['marginRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginTop: json_.containsKey('marginTop')
            ? Dimension.fromJson(
                json_['marginTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pageNumberStart: json_['pageNumberStart'] as core.int?,
        pageSize: json_.containsKey('pageSize')
            ? Size.fromJson(
                json_['pageSize'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        useCustomHeaderFooterMargins:
            json_['useCustomHeaderFooterMargins'] as core.bool?,
        useEvenPageHeaderFooter: json_['useEvenPageHeaderFooter'] as core.bool?,
        useFirstPageHeaderFooter:
            json_['useFirstPageHeaderFooter'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final background = this.background;
    final defaultFooterId = this.defaultFooterId;
    final defaultHeaderId = this.defaultHeaderId;
    final documentFormat = this.documentFormat;
    final evenPageFooterId = this.evenPageFooterId;
    final evenPageHeaderId = this.evenPageHeaderId;
    final firstPageFooterId = this.firstPageFooterId;
    final firstPageHeaderId = this.firstPageHeaderId;
    final flipPageOrientation = this.flipPageOrientation;
    final marginBottom = this.marginBottom;
    final marginFooter = this.marginFooter;
    final marginHeader = this.marginHeader;
    final marginLeft = this.marginLeft;
    final marginRight = this.marginRight;
    final marginTop = this.marginTop;
    final pageNumberStart = this.pageNumberStart;
    final pageSize = this.pageSize;
    final useCustomHeaderFooterMargins = this.useCustomHeaderFooterMargins;
    final useEvenPageHeaderFooter = this.useEvenPageHeaderFooter;
    final useFirstPageHeaderFooter = this.useFirstPageHeaderFooter;
    return {
      'background': ?background,
      'defaultFooterId': ?defaultFooterId,
      'defaultHeaderId': ?defaultHeaderId,
      'documentFormat': ?documentFormat,
      'evenPageFooterId': ?evenPageFooterId,
      'evenPageHeaderId': ?evenPageHeaderId,
      'firstPageFooterId': ?firstPageFooterId,
      'firstPageHeaderId': ?firstPageHeaderId,
      'flipPageOrientation': ?flipPageOrientation,
      'marginBottom': ?marginBottom,
      'marginFooter': ?marginFooter,
      'marginHeader': ?marginHeader,
      'marginLeft': ?marginLeft,
      'marginRight': ?marginRight,
      'marginTop': ?marginTop,
      'pageNumberStart': ?pageNumberStart,
      'pageSize': ?pageSize,
      'useCustomHeaderFooterMargins': ?useCustomHeaderFooterMargins,
      'useEvenPageHeaderFooter': ?useEvenPageHeaderFooter,
      'useFirstPageHeaderFooter': ?useFirstPageHeaderFooter,
    };
  }
}

/// A mask that indicates which of the fields on the base DocumentStyle have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class DocumentStyleSuggestionState {
  /// A mask that indicates which of the fields in background have been changed
  /// in this suggestion.
  BackgroundSuggestionState? backgroundSuggestionState;

  /// Indicates if there was a suggested change to default_footer_id.
  core.bool? defaultFooterIdSuggested;

  /// Indicates if there was a suggested change to default_header_id.
  core.bool? defaultHeaderIdSuggested;

  /// Indicates if there was a suggested change to even_page_footer_id.
  core.bool? evenPageFooterIdSuggested;

  /// Indicates if there was a suggested change to even_page_header_id.
  core.bool? evenPageHeaderIdSuggested;

  /// Indicates if there was a suggested change to first_page_footer_id.
  core.bool? firstPageFooterIdSuggested;

  /// Indicates if there was a suggested change to first_page_header_id.
  core.bool? firstPageHeaderIdSuggested;

  /// Indicates if there was a suggested change to flip_page_orientation.
  ///
  /// Optional.
  core.bool? flipPageOrientationSuggested;

  /// Indicates if there was a suggested change to margin_bottom.
  core.bool? marginBottomSuggested;

  /// Indicates if there was a suggested change to margin_footer.
  core.bool? marginFooterSuggested;

  /// Indicates if there was a suggested change to margin_header.
  core.bool? marginHeaderSuggested;

  /// Indicates if there was a suggested change to margin_left.
  core.bool? marginLeftSuggested;

  /// Indicates if there was a suggested change to margin_right.
  core.bool? marginRightSuggested;

  /// Indicates if there was a suggested change to margin_top.
  core.bool? marginTopSuggested;

  /// Indicates if there was a suggested change to page_number_start.
  core.bool? pageNumberStartSuggested;

  /// A mask that indicates which of the fields in size have been changed in
  /// this suggestion.
  SizeSuggestionState? pageSizeSuggestionState;

  /// Indicates if there was a suggested change to
  /// use_custom_header_footer_margins.
  core.bool? useCustomHeaderFooterMarginsSuggested;

  /// Indicates if there was a suggested change to use_even_page_header_footer.
  core.bool? useEvenPageHeaderFooterSuggested;

  /// Indicates if there was a suggested change to use_first_page_header_footer.
  core.bool? useFirstPageHeaderFooterSuggested;

  DocumentStyleSuggestionState({
    this.backgroundSuggestionState,
    this.defaultFooterIdSuggested,
    this.defaultHeaderIdSuggested,
    this.evenPageFooterIdSuggested,
    this.evenPageHeaderIdSuggested,
    this.firstPageFooterIdSuggested,
    this.firstPageHeaderIdSuggested,
    this.flipPageOrientationSuggested,
    this.marginBottomSuggested,
    this.marginFooterSuggested,
    this.marginHeaderSuggested,
    this.marginLeftSuggested,
    this.marginRightSuggested,
    this.marginTopSuggested,
    this.pageNumberStartSuggested,
    this.pageSizeSuggestionState,
    this.useCustomHeaderFooterMarginsSuggested,
    this.useEvenPageHeaderFooterSuggested,
    this.useFirstPageHeaderFooterSuggested,
  });

  DocumentStyleSuggestionState.fromJson(core.Map json_)
    : this(
        backgroundSuggestionState:
            json_.containsKey('backgroundSuggestionState')
            ? BackgroundSuggestionState.fromJson(
                json_['backgroundSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultFooterIdSuggested:
            json_['defaultFooterIdSuggested'] as core.bool?,
        defaultHeaderIdSuggested:
            json_['defaultHeaderIdSuggested'] as core.bool?,
        evenPageFooterIdSuggested:
            json_['evenPageFooterIdSuggested'] as core.bool?,
        evenPageHeaderIdSuggested:
            json_['evenPageHeaderIdSuggested'] as core.bool?,
        firstPageFooterIdSuggested:
            json_['firstPageFooterIdSuggested'] as core.bool?,
        firstPageHeaderIdSuggested:
            json_['firstPageHeaderIdSuggested'] as core.bool?,
        flipPageOrientationSuggested:
            json_['flipPageOrientationSuggested'] as core.bool?,
        marginBottomSuggested: json_['marginBottomSuggested'] as core.bool?,
        marginFooterSuggested: json_['marginFooterSuggested'] as core.bool?,
        marginHeaderSuggested: json_['marginHeaderSuggested'] as core.bool?,
        marginLeftSuggested: json_['marginLeftSuggested'] as core.bool?,
        marginRightSuggested: json_['marginRightSuggested'] as core.bool?,
        marginTopSuggested: json_['marginTopSuggested'] as core.bool?,
        pageNumberStartSuggested:
            json_['pageNumberStartSuggested'] as core.bool?,
        pageSizeSuggestionState: json_.containsKey('pageSizeSuggestionState')
            ? SizeSuggestionState.fromJson(
                json_['pageSizeSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useCustomHeaderFooterMarginsSuggested:
            json_['useCustomHeaderFooterMarginsSuggested'] as core.bool?,
        useEvenPageHeaderFooterSuggested:
            json_['useEvenPageHeaderFooterSuggested'] as core.bool?,
        useFirstPageHeaderFooterSuggested:
            json_['useFirstPageHeaderFooterSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundSuggestionState = this.backgroundSuggestionState;
    final defaultFooterIdSuggested = this.defaultFooterIdSuggested;
    final defaultHeaderIdSuggested = this.defaultHeaderIdSuggested;
    final evenPageFooterIdSuggested = this.evenPageFooterIdSuggested;
    final evenPageHeaderIdSuggested = this.evenPageHeaderIdSuggested;
    final firstPageFooterIdSuggested = this.firstPageFooterIdSuggested;
    final firstPageHeaderIdSuggested = this.firstPageHeaderIdSuggested;
    final flipPageOrientationSuggested = this.flipPageOrientationSuggested;
    final marginBottomSuggested = this.marginBottomSuggested;
    final marginFooterSuggested = this.marginFooterSuggested;
    final marginHeaderSuggested = this.marginHeaderSuggested;
    final marginLeftSuggested = this.marginLeftSuggested;
    final marginRightSuggested = this.marginRightSuggested;
    final marginTopSuggested = this.marginTopSuggested;
    final pageNumberStartSuggested = this.pageNumberStartSuggested;
    final pageSizeSuggestionState = this.pageSizeSuggestionState;
    final useCustomHeaderFooterMarginsSuggested =
        this.useCustomHeaderFooterMarginsSuggested;
    final useEvenPageHeaderFooterSuggested =
        this.useEvenPageHeaderFooterSuggested;
    final useFirstPageHeaderFooterSuggested =
        this.useFirstPageHeaderFooterSuggested;
    return {
      'backgroundSuggestionState': ?backgroundSuggestionState,
      'defaultFooterIdSuggested': ?defaultFooterIdSuggested,
      'defaultHeaderIdSuggested': ?defaultHeaderIdSuggested,
      'evenPageFooterIdSuggested': ?evenPageFooterIdSuggested,
      'evenPageHeaderIdSuggested': ?evenPageHeaderIdSuggested,
      'firstPageFooterIdSuggested': ?firstPageFooterIdSuggested,
      'firstPageHeaderIdSuggested': ?firstPageHeaderIdSuggested,
      'flipPageOrientationSuggested': ?flipPageOrientationSuggested,
      'marginBottomSuggested': ?marginBottomSuggested,
      'marginFooterSuggested': ?marginFooterSuggested,
      'marginHeaderSuggested': ?marginHeaderSuggested,
      'marginLeftSuggested': ?marginLeftSuggested,
      'marginRightSuggested': ?marginRightSuggested,
      'marginTopSuggested': ?marginTopSuggested,
      'pageNumberStartSuggested': ?pageNumberStartSuggested,
      'pageSizeSuggestionState': ?pageSizeSuggestionState,
      'useCustomHeaderFooterMarginsSuggested':
          ?useCustomHeaderFooterMarginsSuggested,
      'useEvenPageHeaderFooterSuggested': ?useEvenPageHeaderFooterSuggested,
      'useFirstPageHeaderFooterSuggested': ?useFirstPageHeaderFooterSuggested,
    };
  }
}

/// A tab with document contents.
class DocumentTab {
  /// The main body of the document tab.
  Body? body;

  /// The style of the document tab.
  DocumentStyle? documentStyle;

  /// The footers in the document tab, keyed by footer ID.
  core.Map<core.String, Footer>? footers;

  /// The footnotes in the document tab, keyed by footnote ID.
  core.Map<core.String, Footnote>? footnotes;

  /// The headers in the document tab, keyed by header ID.
  core.Map<core.String, Header>? headers;

  /// The inline objects in the document tab, keyed by object ID.
  core.Map<core.String, InlineObject>? inlineObjects;

  /// The lists in the document tab, keyed by list ID.
  core.Map<core.String, List>? lists;

  /// The named ranges in the document tab, keyed by name.
  core.Map<core.String, NamedRanges>? namedRanges;

  /// The named styles of the document tab.
  NamedStyles? namedStyles;

  /// The positioned objects in the document tab, keyed by object ID.
  core.Map<core.String, PositionedObject>? positionedObjects;

  /// The suggested changes to the style of the document tab, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedDocumentStyle>? suggestedDocumentStyleChanges;

  /// The suggested changes to the named styles of the document tab, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedNamedStyles>? suggestedNamedStylesChanges;

  DocumentTab({
    this.body,
    this.documentStyle,
    this.footers,
    this.footnotes,
    this.headers,
    this.inlineObjects,
    this.lists,
    this.namedRanges,
    this.namedStyles,
    this.positionedObjects,
    this.suggestedDocumentStyleChanges,
    this.suggestedNamedStylesChanges,
  });

  DocumentTab.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? Body.fromJson(
                json_['body'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        documentStyle: json_.containsKey('documentStyle')
            ? DocumentStyle.fromJson(
                json_['documentStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        footers: (json_['footers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Footer.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        footnotes: (json_['footnotes'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Footnote.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        headers: (json_['headers'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Header.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        inlineObjects:
            (json_['inlineObjects'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    InlineObject.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        lists: (json_['lists'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            List.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        namedRanges:
            (json_['namedRanges'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                NamedRanges.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        namedStyles: json_.containsKey('namedStyles')
            ? NamedStyles.fromJson(
                json_['namedStyles'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positionedObjects:
            (json_['positionedObjects'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    PositionedObject.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedDocumentStyleChanges:
            (json_['suggestedDocumentStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedDocumentStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedNamedStylesChanges:
            (json_['suggestedNamedStylesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedNamedStyles.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    final documentStyle = this.documentStyle;
    final footers = this.footers;
    final footnotes = this.footnotes;
    final headers = this.headers;
    final inlineObjects = this.inlineObjects;
    final lists = this.lists;
    final namedRanges = this.namedRanges;
    final namedStyles = this.namedStyles;
    final positionedObjects = this.positionedObjects;
    final suggestedDocumentStyleChanges = this.suggestedDocumentStyleChanges;
    final suggestedNamedStylesChanges = this.suggestedNamedStylesChanges;
    return {
      'body': ?body,
      'documentStyle': ?documentStyle,
      'footers': ?footers,
      'footnotes': ?footnotes,
      'headers': ?headers,
      'inlineObjects': ?inlineObjects,
      'lists': ?lists,
      'namedRanges': ?namedRanges,
      'namedStyles': ?namedStyles,
      'positionedObjects': ?positionedObjects,
      'suggestedDocumentStyleChanges': ?suggestedDocumentStyleChanges,
      'suggestedNamedStylesChanges': ?suggestedNamedStylesChanges,
    };
  }
}

/// The properties of an embedded drawing and used to differentiate the object
/// type.
///
/// An embedded drawing is one that's created and edited within a document. Note
/// that extensive details are not supported.
typedef EmbeddedDrawingProperties = $Empty;

/// A mask that indicates which of the fields on the base
/// EmbeddedDrawingProperties have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
typedef EmbeddedDrawingPropertiesSuggestionState = $Empty;

/// An embedded object in the document.
class EmbeddedObject {
  /// The description of the embedded object.
  ///
  /// The `title` and `description` are both combined to display alt text.
  core.String? description;

  /// The properties of an embedded drawing.
  EmbeddedDrawingProperties? embeddedDrawingProperties;

  /// The border of the embedded object.
  EmbeddedObjectBorder? embeddedObjectBorder;

  /// The properties of an image.
  ImageProperties? imageProperties;

  /// A reference to the external linked source content.
  ///
  /// For example, it contains a reference to the source Google Sheets chart
  /// when the embedded object is a linked chart. If unset, then the embedded
  /// object is not linked.
  LinkedContentReference? linkedContentReference;

  /// The bottom margin of the embedded object.
  Dimension? marginBottom;

  /// The left margin of the embedded object.
  Dimension? marginLeft;

  /// The right margin of the embedded object.
  Dimension? marginRight;

  /// The top margin of the embedded object.
  Dimension? marginTop;

  /// The visible size of the image after cropping.
  Size? size;

  /// The title of the embedded object.
  ///
  /// The `title` and `description` are both combined to display alt text.
  core.String? title;

  EmbeddedObject({
    this.description,
    this.embeddedDrawingProperties,
    this.embeddedObjectBorder,
    this.imageProperties,
    this.linkedContentReference,
    this.marginBottom,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.size,
    this.title,
  });

  EmbeddedObject.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        embeddedDrawingProperties:
            json_.containsKey('embeddedDrawingProperties')
            ? EmbeddedDrawingProperties.fromJson(
                json_['embeddedDrawingProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        embeddedObjectBorder: json_.containsKey('embeddedObjectBorder')
            ? EmbeddedObjectBorder.fromJson(
                json_['embeddedObjectBorder']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        imageProperties: json_.containsKey('imageProperties')
            ? ImageProperties.fromJson(
                json_['imageProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        linkedContentReference: json_.containsKey('linkedContentReference')
            ? LinkedContentReference.fromJson(
                json_['linkedContentReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginBottom: json_.containsKey('marginBottom')
            ? Dimension.fromJson(
                json_['marginBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginLeft: json_.containsKey('marginLeft')
            ? Dimension.fromJson(
                json_['marginLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginRight: json_.containsKey('marginRight')
            ? Dimension.fromJson(
                json_['marginRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginTop: json_.containsKey('marginTop')
            ? Dimension.fromJson(
                json_['marginTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        size: json_.containsKey('size')
            ? Size.fromJson(
                json_['size'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final embeddedDrawingProperties = this.embeddedDrawingProperties;
    final embeddedObjectBorder = this.embeddedObjectBorder;
    final imageProperties = this.imageProperties;
    final linkedContentReference = this.linkedContentReference;
    final marginBottom = this.marginBottom;
    final marginLeft = this.marginLeft;
    final marginRight = this.marginRight;
    final marginTop = this.marginTop;
    final size = this.size;
    final title = this.title;
    return {
      'description': ?description,
      'embeddedDrawingProperties': ?embeddedDrawingProperties,
      'embeddedObjectBorder': ?embeddedObjectBorder,
      'imageProperties': ?imageProperties,
      'linkedContentReference': ?linkedContentReference,
      'marginBottom': ?marginBottom,
      'marginLeft': ?marginLeft,
      'marginRight': ?marginRight,
      'marginTop': ?marginTop,
      'size': ?size,
      'title': ?title,
    };
  }
}

/// A border around an EmbeddedObject.
class EmbeddedObjectBorder {
  /// The color of the border.
  OptionalColor? color;

  /// The dash style of the border.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  core.String? dashStyle;

  /// The property state of the border property.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered in the document. This is the default
  /// value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered in the document.
  core.String? propertyState;

  /// The width of the border.
  Dimension? width;

  EmbeddedObjectBorder({
    this.color,
    this.dashStyle,
    this.propertyState,
    this.width,
  });

  EmbeddedObjectBorder.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? OptionalColor.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dashStyle: json_['dashStyle'] as core.String?,
        propertyState: json_['propertyState'] as core.String?,
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final dashStyle = this.dashStyle;
    final propertyState = this.propertyState;
    final width = this.width;
    return {
      'color': ?color,
      'dashStyle': ?dashStyle,
      'propertyState': ?propertyState,
      'width': ?width,
    };
  }
}

/// A mask that indicates which of the fields on the base EmbeddedObjectBorder
/// have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class EmbeddedObjectBorderSuggestionState {
  /// Indicates if there was a suggested change to color.
  core.bool? colorSuggested;

  /// Indicates if there was a suggested change to dash_style.
  core.bool? dashStyleSuggested;

  /// Indicates if there was a suggested change to property_state.
  core.bool? propertyStateSuggested;

  /// Indicates if there was a suggested change to width.
  core.bool? widthSuggested;

  EmbeddedObjectBorderSuggestionState({
    this.colorSuggested,
    this.dashStyleSuggested,
    this.propertyStateSuggested,
    this.widthSuggested,
  });

  EmbeddedObjectBorderSuggestionState.fromJson(core.Map json_)
    : this(
        colorSuggested: json_['colorSuggested'] as core.bool?,
        dashStyleSuggested: json_['dashStyleSuggested'] as core.bool?,
        propertyStateSuggested: json_['propertyStateSuggested'] as core.bool?,
        widthSuggested: json_['widthSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final colorSuggested = this.colorSuggested;
    final dashStyleSuggested = this.dashStyleSuggested;
    final propertyStateSuggested = this.propertyStateSuggested;
    final widthSuggested = this.widthSuggested;
    return {
      'colorSuggested': ?colorSuggested,
      'dashStyleSuggested': ?dashStyleSuggested,
      'propertyStateSuggested': ?propertyStateSuggested,
      'widthSuggested': ?widthSuggested,
    };
  }
}

/// A mask that indicates which of the fields on the base EmbeddedObject have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class EmbeddedObjectSuggestionState {
  /// Indicates if there was a suggested change to description.
  core.bool? descriptionSuggested;

  /// A mask that indicates which of the fields in embedded_drawing_properties
  /// have been changed in this suggestion.
  EmbeddedDrawingPropertiesSuggestionState?
  embeddedDrawingPropertiesSuggestionState;

  /// A mask that indicates which of the fields in embedded_object_border have
  /// been changed in this suggestion.
  EmbeddedObjectBorderSuggestionState? embeddedObjectBorderSuggestionState;

  /// A mask that indicates which of the fields in image_properties have been
  /// changed in this suggestion.
  ImagePropertiesSuggestionState? imagePropertiesSuggestionState;

  /// A mask that indicates which of the fields in linked_content_reference have
  /// been changed in this suggestion.
  LinkedContentReferenceSuggestionState? linkedContentReferenceSuggestionState;

  /// Indicates if there was a suggested change to margin_bottom.
  core.bool? marginBottomSuggested;

  /// Indicates if there was a suggested change to margin_left.
  core.bool? marginLeftSuggested;

  /// Indicates if there was a suggested change to margin_right.
  core.bool? marginRightSuggested;

  /// Indicates if there was a suggested change to margin_top.
  core.bool? marginTopSuggested;

  /// A mask that indicates which of the fields in size have been changed in
  /// this suggestion.
  SizeSuggestionState? sizeSuggestionState;

  /// Indicates if there was a suggested change to title.
  core.bool? titleSuggested;

  EmbeddedObjectSuggestionState({
    this.descriptionSuggested,
    this.embeddedDrawingPropertiesSuggestionState,
    this.embeddedObjectBorderSuggestionState,
    this.imagePropertiesSuggestionState,
    this.linkedContentReferenceSuggestionState,
    this.marginBottomSuggested,
    this.marginLeftSuggested,
    this.marginRightSuggested,
    this.marginTopSuggested,
    this.sizeSuggestionState,
    this.titleSuggested,
  });

  EmbeddedObjectSuggestionState.fromJson(core.Map json_)
    : this(
        descriptionSuggested: json_['descriptionSuggested'] as core.bool?,
        embeddedDrawingPropertiesSuggestionState:
            json_.containsKey('embeddedDrawingPropertiesSuggestionState')
            ? EmbeddedDrawingPropertiesSuggestionState.fromJson(
                json_['embeddedDrawingPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        embeddedObjectBorderSuggestionState:
            json_.containsKey('embeddedObjectBorderSuggestionState')
            ? EmbeddedObjectBorderSuggestionState.fromJson(
                json_['embeddedObjectBorderSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        imagePropertiesSuggestionState:
            json_.containsKey('imagePropertiesSuggestionState')
            ? ImagePropertiesSuggestionState.fromJson(
                json_['imagePropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        linkedContentReferenceSuggestionState:
            json_.containsKey('linkedContentReferenceSuggestionState')
            ? LinkedContentReferenceSuggestionState.fromJson(
                json_['linkedContentReferenceSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginBottomSuggested: json_['marginBottomSuggested'] as core.bool?,
        marginLeftSuggested: json_['marginLeftSuggested'] as core.bool?,
        marginRightSuggested: json_['marginRightSuggested'] as core.bool?,
        marginTopSuggested: json_['marginTopSuggested'] as core.bool?,
        sizeSuggestionState: json_.containsKey('sizeSuggestionState')
            ? SizeSuggestionState.fromJson(
                json_['sizeSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        titleSuggested: json_['titleSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final descriptionSuggested = this.descriptionSuggested;
    final embeddedDrawingPropertiesSuggestionState =
        this.embeddedDrawingPropertiesSuggestionState;
    final embeddedObjectBorderSuggestionState =
        this.embeddedObjectBorderSuggestionState;
    final imagePropertiesSuggestionState = this.imagePropertiesSuggestionState;
    final linkedContentReferenceSuggestionState =
        this.linkedContentReferenceSuggestionState;
    final marginBottomSuggested = this.marginBottomSuggested;
    final marginLeftSuggested = this.marginLeftSuggested;
    final marginRightSuggested = this.marginRightSuggested;
    final marginTopSuggested = this.marginTopSuggested;
    final sizeSuggestionState = this.sizeSuggestionState;
    final titleSuggested = this.titleSuggested;
    return {
      'descriptionSuggested': ?descriptionSuggested,
      'embeddedDrawingPropertiesSuggestionState':
          ?embeddedDrawingPropertiesSuggestionState,
      'embeddedObjectBorderSuggestionState':
          ?embeddedObjectBorderSuggestionState,
      'imagePropertiesSuggestionState': ?imagePropertiesSuggestionState,
      'linkedContentReferenceSuggestionState':
          ?linkedContentReferenceSuggestionState,
      'marginBottomSuggested': ?marginBottomSuggested,
      'marginLeftSuggested': ?marginLeftSuggested,
      'marginRightSuggested': ?marginRightSuggested,
      'marginTopSuggested': ?marginTopSuggested,
      'sizeSuggestionState': ?sizeSuggestionState,
      'titleSuggested': ?titleSuggested,
    };
  }
}

/// Location at the end of a body, header, footer or footnote.
///
/// The location is immediately before the last newline in the document segment.
class EndOfSegmentLocation {
  /// The ID of the header, footer or footnote the location is in.
  ///
  /// An empty segment ID signifies the document's body.
  core.String? segmentId;

  /// The tab that the location is in.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  EndOfSegmentLocation({this.segmentId, this.tabId});

  EndOfSegmentLocation.fromJson(core.Map json_)
    : this(
        segmentId: json_['segmentId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final segmentId = this.segmentId;
    final tabId = this.tabId;
    return {'segmentId': ?segmentId, 'tabId': ?tabId};
  }
}

/// A ParagraphElement representing an equation.
class Equation {
  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// An Equation may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  Equation({this.suggestedDeletionIds, this.suggestedInsertionIds});

  Equation.fromJson(core.Map json_)
    : this(
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    return {
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
    };
  }
}

/// A document footer.
class Footer {
  /// The contents of the footer.
  ///
  /// The indexes for a footer's content begin at zero.
  core.List<StructuralElement>? content;

  /// The ID of the footer.
  core.String? footerId;

  Footer({this.content, this.footerId});

  Footer.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        footerId: json_['footerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final footerId = this.footerId;
    return {'content': ?content, 'footerId': ?footerId};
  }
}

/// A document footnote.
class Footnote {
  /// The contents of the footnote.
  ///
  /// The indexes for a footnote's content begin at zero.
  core.List<StructuralElement>? content;

  /// The ID of the footnote.
  core.String? footnoteId;

  Footnote({this.content, this.footnoteId});

  Footnote.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        footnoteId: json_['footnoteId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final footnoteId = this.footnoteId;
    return {'content': ?content, 'footnoteId': ?footnoteId};
  }
}

/// A ParagraphElement representing a footnote reference.
///
/// A footnote reference is the inline content rendered with a number and is
/// used to identify the footnote.
class FootnoteReference {
  /// The ID of the footnote that contains the content of this footnote
  /// reference.
  core.String? footnoteId;

  /// The rendered number of this footnote.
  core.String? footnoteNumber;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A FootnoteReference may have multiple insertion IDs if it's a nested
  /// suggested change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this FootnoteReference, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this FootnoteReference.
  TextStyle? textStyle;

  FootnoteReference({
    this.footnoteId,
    this.footnoteNumber,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  FootnoteReference.fromJson(core.Map json_)
    : this(
        footnoteId: json_['footnoteId'] as core.String?,
        footnoteNumber: json_['footnoteNumber'] as core.String?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final footnoteId = this.footnoteId;
    final footnoteNumber = this.footnoteNumber;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'footnoteId': ?footnoteId,
      'footnoteNumber': ?footnoteNumber,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// A document header.
class Header {
  /// The contents of the header.
  ///
  /// The indexes for a header's content begin at zero.
  core.List<StructuralElement>? content;

  /// The ID of the header.
  core.String? headerId;

  Header({this.content, this.headerId});

  Header.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        headerId: json_['headerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final headerId = this.headerId;
    return {'content': ?content, 'headerId': ?headerId};
  }
}

/// A reference to a heading in this document.
class HeadingLink {
  /// The ID of a heading in this document.
  core.String? id;

  /// The ID of the tab containing this heading.
  core.String? tabId;

  HeadingLink({this.id, this.tabId});

  HeadingLink.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final tabId = this.tabId;
    return {'id': ?id, 'tabId': ?tabId};
  }
}

/// A ParagraphElement representing a horizontal line.
class HorizontalRule {
  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A HorizontalRule may have multiple insertion IDs if it is a nested
  /// suggested change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this HorizontalRule, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this HorizontalRule.
  ///
  /// Similar to text content, like text runs and footnote references, the text
  /// style of a horizontal rule can affect content layout as well as the
  /// styling of text inserted next to it.
  TextStyle? textStyle;

  HorizontalRule({
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  HorizontalRule.fromJson(core.Map json_)
    : this(
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// The properties of an image.
class ImageProperties {
  /// The clockwise rotation angle of the image, in radians.
  core.double? angle;

  /// The brightness effect of the image.
  ///
  /// The value should be in the interval \[-1.0, 1.0\], where 0 means no
  /// effect.
  core.double? brightness;

  /// A URI to the image with a default lifetime of 30 minutes.
  ///
  /// This URI is tagged with the account of the requester. Anyone with the URI
  /// effectively accesses the image as the original requester. Access to the
  /// image may be lost if the document's sharing settings change.
  core.String? contentUri;

  /// The contrast effect of the image.
  ///
  /// The value should be in the interval \[-1.0, 1.0\], where 0 means no
  /// effect.
  core.double? contrast;

  /// The crop properties of the image.
  CropProperties? cropProperties;

  /// The source URI is the URI used to insert the image.
  ///
  /// The source URI can be empty.
  core.String? sourceUri;

  /// The transparency effect of the image.
  ///
  /// The value should be in the interval \[0.0, 1.0\], where 0 means no effect
  /// and 1 means transparent.
  core.double? transparency;

  ImageProperties({
    this.angle,
    this.brightness,
    this.contentUri,
    this.contrast,
    this.cropProperties,
    this.sourceUri,
    this.transparency,
  });

  ImageProperties.fromJson(core.Map json_)
    : this(
        angle: (json_['angle'] as core.num?)?.toDouble(),
        brightness: (json_['brightness'] as core.num?)?.toDouble(),
        contentUri: json_['contentUri'] as core.String?,
        contrast: (json_['contrast'] as core.num?)?.toDouble(),
        cropProperties: json_.containsKey('cropProperties')
            ? CropProperties.fromJson(
                json_['cropProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceUri: json_['sourceUri'] as core.String?,
        transparency: (json_['transparency'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final angle = this.angle;
    final brightness = this.brightness;
    final contentUri = this.contentUri;
    final contrast = this.contrast;
    final cropProperties = this.cropProperties;
    final sourceUri = this.sourceUri;
    final transparency = this.transparency;
    return {
      'angle': ?angle,
      'brightness': ?brightness,
      'contentUri': ?contentUri,
      'contrast': ?contrast,
      'cropProperties': ?cropProperties,
      'sourceUri': ?sourceUri,
      'transparency': ?transparency,
    };
  }
}

/// A mask that indicates which of the fields on the base ImageProperties have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class ImagePropertiesSuggestionState {
  /// Indicates if there was a suggested change to angle.
  core.bool? angleSuggested;

  /// Indicates if there was a suggested change to brightness.
  core.bool? brightnessSuggested;

  /// Indicates if there was a suggested change to content_uri.
  core.bool? contentUriSuggested;

  /// Indicates if there was a suggested change to contrast.
  core.bool? contrastSuggested;

  /// A mask that indicates which of the fields in crop_properties have been
  /// changed in this suggestion.
  CropPropertiesSuggestionState? cropPropertiesSuggestionState;

  /// Indicates if there was a suggested change to source_uri.
  core.bool? sourceUriSuggested;

  /// Indicates if there was a suggested change to transparency.
  core.bool? transparencySuggested;

  ImagePropertiesSuggestionState({
    this.angleSuggested,
    this.brightnessSuggested,
    this.contentUriSuggested,
    this.contrastSuggested,
    this.cropPropertiesSuggestionState,
    this.sourceUriSuggested,
    this.transparencySuggested,
  });

  ImagePropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        angleSuggested: json_['angleSuggested'] as core.bool?,
        brightnessSuggested: json_['brightnessSuggested'] as core.bool?,
        contentUriSuggested: json_['contentUriSuggested'] as core.bool?,
        contrastSuggested: json_['contrastSuggested'] as core.bool?,
        cropPropertiesSuggestionState:
            json_.containsKey('cropPropertiesSuggestionState')
            ? CropPropertiesSuggestionState.fromJson(
                json_['cropPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceUriSuggested: json_['sourceUriSuggested'] as core.bool?,
        transparencySuggested: json_['transparencySuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final angleSuggested = this.angleSuggested;
    final brightnessSuggested = this.brightnessSuggested;
    final contentUriSuggested = this.contentUriSuggested;
    final contrastSuggested = this.contrastSuggested;
    final cropPropertiesSuggestionState = this.cropPropertiesSuggestionState;
    final sourceUriSuggested = this.sourceUriSuggested;
    final transparencySuggested = this.transparencySuggested;
    return {
      'angleSuggested': ?angleSuggested,
      'brightnessSuggested': ?brightnessSuggested,
      'contentUriSuggested': ?contentUriSuggested,
      'contrastSuggested': ?contrastSuggested,
      'cropPropertiesSuggestionState': ?cropPropertiesSuggestionState,
      'sourceUriSuggested': ?sourceUriSuggested,
      'transparencySuggested': ?transparencySuggested,
    };
  }
}

/// An object that appears inline with text.
///
/// An InlineObject contains an EmbeddedObject such as an image.
class InlineObject {
  /// The properties of this inline object.
  InlineObjectProperties? inlineObjectProperties;

  /// The ID of this inline object.
  ///
  /// Can be used to update an object’s properties.
  core.String? objectId;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested changes to the inline object properties, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedInlineObjectProperties>?
  suggestedInlineObjectPropertiesChanges;

  /// The suggested insertion ID.
  ///
  /// If empty, then this is not a suggested insertion.
  core.String? suggestedInsertionId;

  InlineObject({
    this.inlineObjectProperties,
    this.objectId,
    this.suggestedDeletionIds,
    this.suggestedInlineObjectPropertiesChanges,
    this.suggestedInsertionId,
  });

  InlineObject.fromJson(core.Map json_)
    : this(
        inlineObjectProperties: json_.containsKey('inlineObjectProperties')
            ? InlineObjectProperties.fromJson(
                json_['inlineObjectProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        objectId: json_['objectId'] as core.String?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInlineObjectPropertiesChanges:
            (json_['suggestedInlineObjectPropertiesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedInlineObjectProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedInsertionId: json_['suggestedInsertionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inlineObjectProperties = this.inlineObjectProperties;
    final objectId = this.objectId;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInlineObjectPropertiesChanges =
        this.suggestedInlineObjectPropertiesChanges;
    final suggestedInsertionId = this.suggestedInsertionId;
    return {
      'inlineObjectProperties': ?inlineObjectProperties,
      'objectId': ?objectId,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInlineObjectPropertiesChanges':
          ?suggestedInlineObjectPropertiesChanges,
      'suggestedInsertionId': ?suggestedInsertionId,
    };
  }
}

/// A ParagraphElement that contains an InlineObject.
class InlineObjectElement {
  /// The ID of the InlineObject this element contains.
  core.String? inlineObjectId;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// An InlineObjectElement may have multiple insertion IDs if it's a nested
  /// suggested change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this InlineObject, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this InlineObjectElement.
  ///
  /// Similar to text content, like text runs and footnote references, the text
  /// style of an inline object element can affect content layout as well as the
  /// styling of text inserted next to it.
  TextStyle? textStyle;

  InlineObjectElement({
    this.inlineObjectId,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  InlineObjectElement.fromJson(core.Map json_)
    : this(
        inlineObjectId: json_['inlineObjectId'] as core.String?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inlineObjectId = this.inlineObjectId;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'inlineObjectId': ?inlineObjectId,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Properties of an InlineObject.
class InlineObjectProperties {
  /// The embedded object of this inline object.
  EmbeddedObject? embeddedObject;

  InlineObjectProperties({this.embeddedObject});

  InlineObjectProperties.fromJson(core.Map json_)
    : this(
        embeddedObject: json_.containsKey('embeddedObject')
            ? EmbeddedObject.fromJson(
                json_['embeddedObject'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final embeddedObject = this.embeddedObject;
    return {'embeddedObject': ?embeddedObject};
  }
}

/// A mask that indicates which of the fields on the base InlineObjectProperties
/// have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class InlineObjectPropertiesSuggestionState {
  /// A mask that indicates which of the fields in embedded_object have been
  /// changed in this suggestion.
  EmbeddedObjectSuggestionState? embeddedObjectSuggestionState;

  InlineObjectPropertiesSuggestionState({this.embeddedObjectSuggestionState});

  InlineObjectPropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        embeddedObjectSuggestionState:
            json_.containsKey('embeddedObjectSuggestionState')
            ? EmbeddedObjectSuggestionState.fromJson(
                json_['embeddedObjectSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final embeddedObjectSuggestionState = this.embeddedObjectSuggestionState;
    return {'embeddedObjectSuggestionState': ?embeddedObjectSuggestionState};
  }
}

/// Inserts a date at the specified location.
class InsertDateRequest {
  /// The properties of the date to insert.
  DateElementProperties? dateElementProperties;

  /// Inserts the date at the end of the given header, footer or document body.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the date at a specific index in the document.
  ///
  /// The date must be inserted inside the bounds of an existing Paragraph. For
  /// instance, it cannot be inserted at a table's start index (i.e. between an
  /// existing table and its preceding paragraph).
  Location? location;

  InsertDateRequest({
    this.dateElementProperties,
    this.endOfSegmentLocation,
    this.location,
  });

  InsertDateRequest.fromJson(core.Map json_)
    : this(
        dateElementProperties: json_.containsKey('dateElementProperties')
            ? DateElementProperties.fromJson(
                json_['dateElementProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateElementProperties = this.dateElementProperties;
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    return {
      'dateElementProperties': ?dateElementProperties,
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
    };
  }
}

/// Inserts an InlineObject containing an image at the given location.
class InsertInlineImageRequest {
  /// Inserts the text at the end of a header, footer or the document body.
  ///
  /// Inline images cannot be inserted inside a footnote.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the image at a specific index in the document.
  ///
  /// The image must be inserted inside the bounds of an existing Paragraph. For
  /// instance, it cannot be inserted at a table's start index (i.e. between the
  /// table and its preceding paragraph). Inline images cannot be inserted
  /// inside a footnote or equation.
  Location? location;

  /// The size that the image should appear as in the document.
  ///
  /// This property is optional and the final size of the image in the document
  /// is determined by the following rules: * If neither width nor height is
  /// specified, then a default size of the image is calculated based on its
  /// resolution. * If one dimension is specified then the other dimension is
  /// calculated to preserve the aspect ratio of the image. * If both width and
  /// height are specified, the image is scaled to fit within the provided
  /// dimensions while maintaining its aspect ratio.
  Size? objectSize;

  /// The image URI.
  ///
  /// The image is fetched once at insertion time and a copy is stored for
  /// display inside the document. Images must be less than 50MB in size, cannot
  /// exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The
  /// provided URI must be publicly accessible and at most 2 kB in length. The
  /// URI itself is saved with the image, and exposed via the
  /// ImageProperties.content_uri field.
  core.String? uri;

  InsertInlineImageRequest({
    this.endOfSegmentLocation,
    this.location,
    this.objectSize,
    this.uri,
  });

  InsertInlineImageRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        objectSize: json_.containsKey('objectSize')
            ? Size.fromJson(
                json_['objectSize'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    final objectSize = this.objectSize;
    final uri = this.uri;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
      'objectSize': ?objectSize,
      'uri': ?uri,
    };
  }
}

/// The result of inserting an inline image.
class InsertInlineImageResponse {
  /// The ID of the created InlineObject.
  core.String? objectId;

  InsertInlineImageResponse({this.objectId});

  InsertInlineImageResponse.fromJson(core.Map json_)
    : this(objectId: json_['objectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    return {'objectId': ?objectId};
  }
}

/// The result of inserting an embedded Google Sheets chart.
class InsertInlineSheetsChartResponse {
  /// The object ID of the inserted chart.
  core.String? objectId;

  InsertInlineSheetsChartResponse({this.objectId});

  InsertInlineSheetsChartResponse.fromJson(core.Map json_)
    : this(objectId: json_['objectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    return {'objectId': ?objectId};
  }
}

/// Inserts a page break followed by a newline at the specified location.
class InsertPageBreakRequest {
  /// Inserts the page break at the end of the document body.
  ///
  /// Page breaks cannot be inserted inside a footnote, header or footer. Since
  /// page breaks can only be inserted inside the body, the segment ID field
  /// must be empty.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the page break at a specific index in the document.
  ///
  /// The page break must be inserted inside the bounds of an existing
  /// Paragraph. For instance, it cannot be inserted at a table's start index
  /// (i.e. between the table and its preceding paragraph). Page breaks cannot
  /// be inserted inside a table, equation, footnote, header or footer. Since
  /// page breaks can only be inserted inside the body, the segment ID field
  /// must be empty.
  Location? location;

  InsertPageBreakRequest({this.endOfSegmentLocation, this.location});

  InsertPageBreakRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
    };
  }
}

/// Inserts a person mention.
class InsertPersonRequest {
  /// Inserts the person mention at the end of a header, footer, footnote or the
  /// document body.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the person mention at a specific index in the document.
  ///
  /// The person mention must be inserted inside the bounds of an existing
  /// Paragraph. For instance, it cannot be inserted at a table's start index
  /// (i.e. between the table and its preceding paragraph). Person mentions
  /// cannot be inserted inside an equation.
  Location? location;

  /// The properties of the person mention to insert.
  PersonProperties? personProperties;

  InsertPersonRequest({
    this.endOfSegmentLocation,
    this.location,
    this.personProperties,
  });

  InsertPersonRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        personProperties: json_.containsKey('personProperties')
            ? PersonProperties.fromJson(
                json_['personProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    final personProperties = this.personProperties;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
      'personProperties': ?personProperties,
    };
  }
}

/// Inserts a section break at the given location.
///
/// A newline character will be inserted before the section break.
class InsertSectionBreakRequest {
  /// Inserts a newline and a section break at the end of the document body.
  ///
  /// Section breaks cannot be inserted inside a footnote, header or footer.
  /// Because section breaks can only be inserted inside the body, the segment
  /// ID field must be empty.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts a newline and a section break at a specific index in the document.
  ///
  /// The section break must be inserted inside the bounds of an existing
  /// Paragraph. For instance, it cannot be inserted at a table's start index
  /// (i.e. between the table and its preceding paragraph). Section breaks
  /// cannot be inserted inside a table, equation, footnote, header, or footer.
  /// Since section breaks can only be inserted inside the body, the segment ID
  /// field must be empty.
  Location? location;

  /// The type of section to insert.
  /// Possible string values are:
  /// - "SECTION_TYPE_UNSPECIFIED" : The section type is unspecified.
  /// - "CONTINUOUS" : The section starts immediately after the last paragraph
  /// of the previous section.
  /// - "NEXT_PAGE" : The section starts on the next page.
  core.String? sectionType;

  InsertSectionBreakRequest({
    this.endOfSegmentLocation,
    this.location,
    this.sectionType,
  });

  InsertSectionBreakRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sectionType: json_['sectionType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    final sectionType = this.sectionType;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
      'sectionType': ?sectionType,
    };
  }
}

/// Inserts an empty column into a table.
class InsertTableColumnRequest {
  /// Whether to insert new column to the right of the reference cell location.
  ///
  /// - `True`: insert to the right. - `False`: insert to the left.
  core.bool? insertRight;

  /// The reference table cell location from which columns will be inserted.
  ///
  /// A new column will be inserted to the left (or right) of the column where
  /// the reference cell is. If the reference cell is a merged cell, a new
  /// column will be inserted to the left (or right) of the merged cell.
  TableCellLocation? tableCellLocation;

  InsertTableColumnRequest({this.insertRight, this.tableCellLocation});

  InsertTableColumnRequest.fromJson(core.Map json_)
    : this(
        insertRight: json_['insertRight'] as core.bool?,
        tableCellLocation: json_.containsKey('tableCellLocation')
            ? TableCellLocation.fromJson(
                json_['tableCellLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final insertRight = this.insertRight;
    final tableCellLocation = this.tableCellLocation;
    return {
      'insertRight': ?insertRight,
      'tableCellLocation': ?tableCellLocation,
    };
  }
}

/// Inserts a table at the specified location.
///
/// A newline character will be inserted before the inserted table.
class InsertTableRequest {
  /// The number of columns in the table.
  core.int? columns;

  /// Inserts the table at the end of the given header, footer or document body.
  ///
  /// A newline character will be inserted before the inserted table. Tables
  /// cannot be inserted inside a footnote.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the table at a specific model index.
  ///
  /// A newline character will be inserted before the inserted table, therefore
  /// the table start index will be at the specified location index + 1. The
  /// table must be inserted inside the bounds of an existing Paragraph. For
  /// instance, it cannot be inserted at a table's start index (i.e. between an
  /// existing table and its preceding paragraph). Tables cannot be inserted
  /// inside a footnote or equation.
  Location? location;

  /// The number of rows in the table.
  core.int? rows;

  InsertTableRequest({
    this.columns,
    this.endOfSegmentLocation,
    this.location,
    this.rows,
  });

  InsertTableRequest.fromJson(core.Map json_)
    : this(
        columns: json_['columns'] as core.int?,
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rows: json_['rows'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columns = this.columns;
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    final rows = this.rows;
    return {
      'columns': ?columns,
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
      'rows': ?rows,
    };
  }
}

/// Inserts an empty row into a table.
class InsertTableRowRequest {
  /// Whether to insert new row below the reference cell location.
  ///
  /// - `True`: insert below the cell. - `False`: insert above the cell.
  core.bool? insertBelow;

  /// The reference table cell location from which rows will be inserted.
  ///
  /// A new row will be inserted above (or below) the row where the reference
  /// cell is. If the reference cell is a merged cell, a new row will be
  /// inserted above (or below) the merged cell.
  TableCellLocation? tableCellLocation;

  InsertTableRowRequest({this.insertBelow, this.tableCellLocation});

  InsertTableRowRequest.fromJson(core.Map json_)
    : this(
        insertBelow: json_['insertBelow'] as core.bool?,
        tableCellLocation: json_.containsKey('tableCellLocation')
            ? TableCellLocation.fromJson(
                json_['tableCellLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final insertBelow = this.insertBelow;
    final tableCellLocation = this.tableCellLocation;
    return {
      'insertBelow': ?insertBelow,
      'tableCellLocation': ?tableCellLocation,
    };
  }
}

/// Inserts text at the specified location.
class InsertTextRequest {
  /// Inserts the text at the end of a header, footer, footnote or the document
  /// body.
  EndOfSegmentLocation? endOfSegmentLocation;

  /// Inserts the text at a specific index in the document.
  ///
  /// Text must be inserted inside the bounds of an existing Paragraph. For
  /// instance, text cannot be inserted at a table's start index (i.e. between
  /// the table and its preceding paragraph). The text must be inserted in the
  /// preceding paragraph.
  Location? location;

  /// The text to be inserted.
  ///
  /// Inserting a newline character will implicitly create a new Paragraph at
  /// that index. The paragraph style of the new paragraph will be copied from
  /// the paragraph at the current insertion index, including lists and bullets.
  /// Text styles for inserted text will be determined automatically, generally
  /// preserving the styling of neighboring text. In most cases, the text style
  /// for the inserted text will match the text immediately before the insertion
  /// index. Some control characters (U+0000-U+0008, U+000C-U+001F) and
  /// characters from the Unicode Basic Multilingual Plane Private Use Area
  /// (U+E000-U+F8FF) will be stripped out of the inserted text.
  core.String? text;

  InsertTextRequest({this.endOfSegmentLocation, this.location, this.text});

  InsertTextRequest.fromJson(core.Map json_)
    : this(
        endOfSegmentLocation: json_.containsKey('endOfSegmentLocation')
            ? EndOfSegmentLocation.fromJson(
                json_['endOfSegmentLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        location: json_.containsKey('location')
            ? Location.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endOfSegmentLocation = this.endOfSegmentLocation;
    final location = this.location;
    final text = this.text;
    return {
      'endOfSegmentLocation': ?endOfSegmentLocation,
      'location': ?location,
      'text': ?text,
    };
  }
}

/// A reference to another portion of a document or an external URL resource.
class Link {
  /// A bookmark in this document.
  ///
  /// In documents containing a single tab, links to bookmarks within the
  /// singular tab continue to return Link.bookmarkId when the
  /// includeTabsContent parameter is set to `false` or unset. Otherwise, this
  /// field is returned.
  BookmarkLink? bookmark;

  /// The ID of a bookmark in this document.
  ///
  /// Legacy field: Instead, set includeTabsContent to `true` and use
  /// Link.bookmark for read and write operations. This field is only returned
  /// when includeTabsContent is set to `false` in documents containing a single
  /// tab and links to a bookmark within the singular tab. Otherwise,
  /// Link.bookmark is returned. If this field is used in a write request, the
  /// bookmark is considered to be from the tab ID specified in the request. If
  /// a tab ID is not specified in the request, it is considered to be from the
  /// first tab in the document.
  core.String? bookmarkId;

  /// A heading in this document.
  ///
  /// In documents containing a single tab, links to headings within the
  /// singular tab continue to return Link.headingId when the includeTabsContent
  /// parameter is set to `false` or unset. Otherwise, this field is returned.
  HeadingLink? heading;

  /// The ID of a heading in this document.
  ///
  /// Legacy field: Instead, set includeTabsContent to `true` and use
  /// Link.heading for read and write operations. This field is only returned
  /// when includeTabsContent is set to `false` in documents containing a single
  /// tab and links to a heading within the singular tab. Otherwise,
  /// Link.heading is returned. If this field is used in a write request, the
  /// heading is considered to be from the tab ID specified in the request. If a
  /// tab ID is not specified in the request, it is considered to be from the
  /// first tab in the document.
  core.String? headingId;

  /// The ID of a tab in this document.
  core.String? tabId;

  /// An external URL.
  core.String? url;

  Link({
    this.bookmark,
    this.bookmarkId,
    this.heading,
    this.headingId,
    this.tabId,
    this.url,
  });

  Link.fromJson(core.Map json_)
    : this(
        bookmark: json_.containsKey('bookmark')
            ? BookmarkLink.fromJson(
                json_['bookmark'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bookmarkId: json_['bookmarkId'] as core.String?,
        heading: json_.containsKey('heading')
            ? HeadingLink.fromJson(
                json_['heading'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        headingId: json_['headingId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bookmark = this.bookmark;
    final bookmarkId = this.bookmarkId;
    final heading = this.heading;
    final headingId = this.headingId;
    final tabId = this.tabId;
    final url = this.url;
    return {
      'bookmark': ?bookmark,
      'bookmarkId': ?bookmarkId,
      'heading': ?heading,
      'headingId': ?headingId,
      'tabId': ?tabId,
      'url': ?url,
    };
  }
}

/// A reference to the external linked source content.
class LinkedContentReference {
  /// A reference to the linked chart.
  SheetsChartReference? sheetsChartReference;

  LinkedContentReference({this.sheetsChartReference});

  LinkedContentReference.fromJson(core.Map json_)
    : this(
        sheetsChartReference: json_.containsKey('sheetsChartReference')
            ? SheetsChartReference.fromJson(
                json_['sheetsChartReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sheetsChartReference = this.sheetsChartReference;
    return {'sheetsChartReference': ?sheetsChartReference};
  }
}

/// A mask that indicates which of the fields on the base LinkedContentReference
/// have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class LinkedContentReferenceSuggestionState {
  /// A mask that indicates which of the fields in sheets_chart_reference have
  /// been changed in this suggestion.
  SheetsChartReferenceSuggestionState? sheetsChartReferenceSuggestionState;

  LinkedContentReferenceSuggestionState({
    this.sheetsChartReferenceSuggestionState,
  });

  LinkedContentReferenceSuggestionState.fromJson(core.Map json_)
    : this(
        sheetsChartReferenceSuggestionState:
            json_.containsKey('sheetsChartReferenceSuggestionState')
            ? SheetsChartReferenceSuggestionState.fromJson(
                json_['sheetsChartReferenceSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sheetsChartReferenceSuggestionState =
        this.sheetsChartReferenceSuggestionState;
    return {
      'sheetsChartReferenceSuggestionState':
          ?sheetsChartReferenceSuggestionState,
    };
  }
}

/// A List represents the list attributes for a group of paragraphs that all
/// belong to the same list.
///
/// A paragraph that's part of a list has a reference to the list's ID in its
/// bullet.
class List {
  /// The properties of the list.
  ListProperties? listProperties;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this list.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion ID.
  ///
  /// If empty, then this is not a suggested insertion.
  core.String? suggestedInsertionId;

  /// The suggested changes to the list properties, keyed by suggestion ID.
  core.Map<core.String, SuggestedListProperties>?
  suggestedListPropertiesChanges;

  List({
    this.listProperties,
    this.suggestedDeletionIds,
    this.suggestedInsertionId,
    this.suggestedListPropertiesChanges,
  });

  List.fromJson(core.Map json_)
    : this(
        listProperties: json_.containsKey('listProperties')
            ? ListProperties.fromJson(
                json_['listProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionId: json_['suggestedInsertionId'] as core.String?,
        suggestedListPropertiesChanges:
            (json_['suggestedListPropertiesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedListProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listProperties = this.listProperties;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionId = this.suggestedInsertionId;
    final suggestedListPropertiesChanges = this.suggestedListPropertiesChanges;
    return {
      'listProperties': ?listProperties,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionId': ?suggestedInsertionId,
      'suggestedListPropertiesChanges': ?suggestedListPropertiesChanges,
    };
  }
}

/// The properties of a list that describe the look and feel of bullets
/// belonging to paragraphs associated with a list.
class ListProperties {
  /// Describes the properties of the bullets at the associated level.
  ///
  /// A list has at most 9 levels of nesting with nesting level 0 corresponding
  /// to the top-most level and nesting level 8 corresponding to the most nested
  /// level. The nesting levels are returned in ascending order with the least
  /// nested returned first.
  core.List<NestingLevel>? nestingLevels;

  ListProperties({this.nestingLevels});

  ListProperties.fromJson(core.Map json_)
    : this(
        nestingLevels: (json_['nestingLevels'] as core.List?)
            ?.map(
              (value) => NestingLevel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nestingLevels = this.nestingLevels;
    return {'nestingLevels': ?nestingLevels};
  }
}

/// A mask that indicates which of the fields on the base ListProperties have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class ListPropertiesSuggestionState {
  /// A mask that indicates which of the fields on the corresponding
  /// NestingLevel in nesting_levels have been changed in this suggestion.
  ///
  /// The nesting level suggestion states are returned in ascending order of the
  /// nesting level with the least nested returned first.
  core.List<NestingLevelSuggestionState>? nestingLevelsSuggestionStates;

  ListPropertiesSuggestionState({this.nestingLevelsSuggestionStates});

  ListPropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        nestingLevelsSuggestionStates:
            (json_['nestingLevelsSuggestionStates'] as core.List?)
                ?.map(
                  (value) => NestingLevelSuggestionState.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nestingLevelsSuggestionStates = this.nestingLevelsSuggestionStates;
    return {'nestingLevelsSuggestionStates': ?nestingLevelsSuggestionStates};
  }
}

/// A particular location in the document.
class Location {
  /// The zero-based index, in UTF-16 code units.
  ///
  /// The index is relative to the beginning of the segment specified by
  /// segment_id.
  core.int? index;

  /// The ID of the header, footer or footnote the location is in.
  ///
  /// An empty segment ID signifies the document's body.
  core.String? segmentId;

  /// The tab that the location is in.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  Location({this.index, this.segmentId, this.tabId});

  Location.fromJson(core.Map json_)
    : this(
        index: json_['index'] as core.int?,
        segmentId: json_['segmentId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final index = this.index;
    final segmentId = this.segmentId;
    final tabId = this.tabId;
    return {'index': ?index, 'segmentId': ?segmentId, 'tabId': ?tabId};
  }
}

/// Merges cells in a Table.
class MergeTableCellsRequest {
  /// The table range specifying which cells of the table to merge.
  ///
  /// Any text in the cells being merged will be concatenated and stored in the
  /// "head" cell of the range. This is the upper-left cell of the range when
  /// the content direction is left to right, and the upper-right cell of the
  /// range otherwise. If the range is non-rectangular (which can occur in some
  /// cases where the range covers cells that are already merged or where the
  /// table is non-rectangular), a 400 bad request error is returned.
  TableRange? tableRange;

  MergeTableCellsRequest({this.tableRange});

  MergeTableCellsRequest.fromJson(core.Map json_)
    : this(
        tableRange: json_.containsKey('tableRange')
            ? TableRange.fromJson(
                json_['tableRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableRange = this.tableRange;
    return {'tableRange': ?tableRange};
  }
}

/// A collection of Ranges with the same named range ID.
///
/// Named ranges allow developers to associate parts of a document with an
/// arbitrary user-defined label so their contents can be programmatically read
/// or edited later. A document can contain multiple named ranges with the same
/// name, but every named range has a unique ID. A named range is created with a
/// single Range, and content inserted inside a named range generally expands
/// that range. However, certain document changes can cause the range to be
/// split into multiple ranges. Named ranges are not private. All applications
/// and collaborators that have access to the document can see its named ranges.
class NamedRange {
  /// The name of the named range.
  core.String? name;

  /// The ID of the named range.
  core.String? namedRangeId;

  /// The ranges that belong to this named range.
  core.List<Range>? ranges;

  NamedRange({this.name, this.namedRangeId, this.ranges});

  NamedRange.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        namedRangeId: json_['namedRangeId'] as core.String?,
        ranges: (json_['ranges'] as core.List?)
            ?.map(
              (value) =>
                  Range.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final namedRangeId = this.namedRangeId;
    final ranges = this.ranges;
    return {'name': ?name, 'namedRangeId': ?namedRangeId, 'ranges': ?ranges};
  }
}

/// A collection of all the NamedRanges in the document that share a given name.
class NamedRanges {
  /// The name that all the named ranges share.
  core.String? name;

  /// The NamedRanges that share the same name.
  core.List<NamedRange>? namedRanges;

  NamedRanges({this.name, this.namedRanges});

  NamedRanges.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        namedRanges: (json_['namedRanges'] as core.List?)
            ?.map(
              (value) => NamedRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final namedRanges = this.namedRanges;
    return {'name': ?name, 'namedRanges': ?namedRanges};
  }
}

/// A named style.
///
/// Paragraphs in the document can inherit their TextStyle and ParagraphStyle
/// from this named style when they have the same named style type.
class NamedStyle {
  /// The type of this named style.
  /// Possible string values are:
  /// - "NAMED_STYLE_TYPE_UNSPECIFIED" : The type of named style is unspecified.
  /// - "NORMAL_TEXT" : Normal text.
  /// - "TITLE" : Title.
  /// - "SUBTITLE" : Subtitle.
  /// - "HEADING_1" : Heading 1.
  /// - "HEADING_2" : Heading 2.
  /// - "HEADING_3" : Heading 3.
  /// - "HEADING_4" : Heading 4.
  /// - "HEADING_5" : Heading 5.
  /// - "HEADING_6" : Heading 6.
  core.String? namedStyleType;

  /// The paragraph style of this named style.
  ParagraphStyle? paragraphStyle;

  /// The text style of this named style.
  TextStyle? textStyle;

  NamedStyle({this.namedStyleType, this.paragraphStyle, this.textStyle});

  NamedStyle.fromJson(core.Map json_)
    : this(
        namedStyleType: json_['namedStyleType'] as core.String?,
        paragraphStyle: json_.containsKey('paragraphStyle')
            ? ParagraphStyle.fromJson(
                json_['paragraphStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedStyleType = this.namedStyleType;
    final paragraphStyle = this.paragraphStyle;
    final textStyle = this.textStyle;
    return {
      'namedStyleType': ?namedStyleType,
      'paragraphStyle': ?paragraphStyle,
      'textStyle': ?textStyle,
    };
  }
}

/// A suggestion state of a NamedStyle message.
class NamedStyleSuggestionState {
  /// The named style type that this suggestion state corresponds to.
  ///
  /// This field is provided as a convenience for matching the
  /// NamedStyleSuggestionState with its corresponding NamedStyle.
  /// Possible string values are:
  /// - "NAMED_STYLE_TYPE_UNSPECIFIED" : The type of named style is unspecified.
  /// - "NORMAL_TEXT" : Normal text.
  /// - "TITLE" : Title.
  /// - "SUBTITLE" : Subtitle.
  /// - "HEADING_1" : Heading 1.
  /// - "HEADING_2" : Heading 2.
  /// - "HEADING_3" : Heading 3.
  /// - "HEADING_4" : Heading 4.
  /// - "HEADING_5" : Heading 5.
  /// - "HEADING_6" : Heading 6.
  core.String? namedStyleType;

  /// A mask that indicates which of the fields in paragraph style have been
  /// changed in this suggestion.
  ParagraphStyleSuggestionState? paragraphStyleSuggestionState;

  /// A mask that indicates which of the fields in text style have been changed
  /// in this suggestion.
  TextStyleSuggestionState? textStyleSuggestionState;

  NamedStyleSuggestionState({
    this.namedStyleType,
    this.paragraphStyleSuggestionState,
    this.textStyleSuggestionState,
  });

  NamedStyleSuggestionState.fromJson(core.Map json_)
    : this(
        namedStyleType: json_['namedStyleType'] as core.String?,
        paragraphStyleSuggestionState:
            json_.containsKey('paragraphStyleSuggestionState')
            ? ParagraphStyleSuggestionState.fromJson(
                json_['paragraphStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textStyleSuggestionState: json_.containsKey('textStyleSuggestionState')
            ? TextStyleSuggestionState.fromJson(
                json_['textStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedStyleType = this.namedStyleType;
    final paragraphStyleSuggestionState = this.paragraphStyleSuggestionState;
    final textStyleSuggestionState = this.textStyleSuggestionState;
    return {
      'namedStyleType': ?namedStyleType,
      'paragraphStyleSuggestionState': ?paragraphStyleSuggestionState,
      'textStyleSuggestionState': ?textStyleSuggestionState,
    };
  }
}

/// The named styles.
///
/// Paragraphs in the document can inherit their TextStyle and ParagraphStyle
/// from these named styles.
class NamedStyles {
  /// The named styles.
  ///
  /// There's an entry for each of the possible named style types.
  core.List<NamedStyle>? styles;

  NamedStyles({this.styles});

  NamedStyles.fromJson(core.Map json_)
    : this(
        styles: (json_['styles'] as core.List?)
            ?.map(
              (value) => NamedStyle.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final styles = this.styles;
    return {'styles': ?styles};
  }
}

/// The suggestion state of a NamedStyles message.
class NamedStylesSuggestionState {
  /// A mask that indicates which of the fields on the corresponding NamedStyle
  /// in styles have been changed in this suggestion.
  ///
  /// The order of these named style suggestion states matches the order of the
  /// corresponding named style within the named styles suggestion.
  core.List<NamedStyleSuggestionState>? stylesSuggestionStates;

  NamedStylesSuggestionState({this.stylesSuggestionStates});

  NamedStylesSuggestionState.fromJson(core.Map json_)
    : this(
        stylesSuggestionStates: (json_['stylesSuggestionStates'] as core.List?)
            ?.map(
              (value) => NamedStyleSuggestionState.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final stylesSuggestionStates = this.stylesSuggestionStates;
    return {'stylesSuggestionStates': ?stylesSuggestionStates};
  }
}

/// Contains properties describing the look and feel of a list bullet at a given
/// level of nesting.
class NestingLevel {
  /// The alignment of the bullet within the space allotted for rendering the
  /// bullet.
  /// Possible string values are:
  /// - "BULLET_ALIGNMENT_UNSPECIFIED" : The bullet alignment is unspecified.
  /// - "START" : The bullet is aligned to the start of the space allotted for
  /// rendering the bullet. Left-aligned for LTR text, right-aligned otherwise.
  /// - "CENTER" : The bullet is aligned to the center of the space allotted for
  /// rendering the bullet.
  /// - "END" : The bullet is aligned to the end of the space allotted for
  /// rendering the bullet. Right-aligned for LTR text, left-aligned otherwise.
  core.String? bulletAlignment;

  /// The format string used by bullets at this level of nesting.
  ///
  /// The glyph format contains one or more placeholders, and these placeholders
  /// are replaced with the appropriate values depending on the glyph_type or
  /// glyph_symbol. The placeholders follow the pattern `%[nesting_level]`.
  /// Furthermore, placeholders can have prefixes and suffixes. Thus, the glyph
  /// format follows the pattern `%[nesting_level]`. Note that the prefix and
  /// suffix are optional and can be arbitrary strings. For example, the glyph
  /// format `%0.` indicates that the rendered glyph will replace the
  /// placeholder with the corresponding glyph for nesting level 0 followed by a
  /// period as the suffix. So a list with a glyph type of UPPER_ALPHA and glyph
  /// format `%0.` at nesting level 0 will result in a list with rendered glyphs
  /// `A.` `B.` `C.` The glyph format can contain placeholders for the current
  /// nesting level as well as placeholders for parent nesting levels. For
  /// example, a list can have a glyph format of `%0.` at nesting level 0 and a
  /// glyph format of `%0.%1.` at nesting level 1. Assuming both nesting levels
  /// have DECIMAL glyph types, this would result in a list with rendered glyphs
  /// `1.` `2.` ` 2.1.` ` 2.2.` `3.` For nesting levels that are ordered, the
  /// string that replaces a placeholder in the glyph format for a particular
  /// paragraph depends on the paragraph's order within the list.
  core.String? glyphFormat;

  /// A custom glyph symbol used by bullets when paragraphs at this level of
  /// nesting is unordered.
  ///
  /// The glyph symbol replaces placeholders within the glyph_format. For
  /// example, if the glyph_symbol is the solid circle corresponding to Unicode
  /// U+25cf code point and the glyph_format is `%0`, the rendered glyph would
  /// be the solid circle.
  core.String? glyphSymbol;

  /// The type of glyph used by bullets when paragraphs at this level of nesting
  /// is ordered.
  ///
  /// The glyph type determines the type of glyph used to replace placeholders
  /// within the glyph_format when paragraphs at this level of nesting are
  /// ordered. For example, if the nesting level is 0, the glyph_format is `%0.`
  /// and the glyph type is DECIMAL, then the rendered glyph would replace the
  /// placeholder `%0` in the glyph format with a number corresponding to the
  /// list item's order within the list.
  /// Possible string values are:
  /// - "GLYPH_TYPE_UNSPECIFIED" : The glyph type is unspecified or unsupported.
  /// - "NONE" : An empty string.
  /// - "DECIMAL" : A number, like `1`, `2`, or `3`.
  /// - "ZERO_DECIMAL" : A number where single digit numbers are prefixed with a
  /// zero, like `01`, `02`, or `03`. Numbers with more than one digit are not
  /// prefixed with a zero.
  /// - "UPPER_ALPHA" : An uppercase letter, like `A`, `B`, or `C`.
  /// - "ALPHA" : A lowercase letter, like `a`, `b`, or `c`.
  /// - "UPPER_ROMAN" : An uppercase Roman numeral, like `I`, `II`, or `III`.
  /// - "ROMAN" : A lowercase Roman numeral, like `i`, `ii`, or `iii`.
  core.String? glyphType;

  /// The amount of indentation for the first line of paragraphs at this level
  /// of nesting.
  Dimension? indentFirstLine;

  /// The amount of indentation for paragraphs at this level of nesting.
  ///
  /// Applied to the side that corresponds to the start of the text, based on
  /// the paragraph's content direction.
  Dimension? indentStart;

  /// The number of the first list item at this nesting level.
  ///
  /// A value of 0 is treated as a value of 1 for lettered lists and Roman
  /// numeral lists. For values of both 0 and 1, lettered and Roman numeral
  /// lists will begin at `a` and `i` respectively. This value is ignored for
  /// nesting levels with unordered glyphs.
  core.int? startNumber;

  /// The text style of bullets at this level of nesting.
  TextStyle? textStyle;

  NestingLevel({
    this.bulletAlignment,
    this.glyphFormat,
    this.glyphSymbol,
    this.glyphType,
    this.indentFirstLine,
    this.indentStart,
    this.startNumber,
    this.textStyle,
  });

  NestingLevel.fromJson(core.Map json_)
    : this(
        bulletAlignment: json_['bulletAlignment'] as core.String?,
        glyphFormat: json_['glyphFormat'] as core.String?,
        glyphSymbol: json_['glyphSymbol'] as core.String?,
        glyphType: json_['glyphType'] as core.String?,
        indentFirstLine: json_.containsKey('indentFirstLine')
            ? Dimension.fromJson(
                json_['indentFirstLine'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        indentStart: json_.containsKey('indentStart')
            ? Dimension.fromJson(
                json_['indentStart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startNumber: json_['startNumber'] as core.int?,
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bulletAlignment = this.bulletAlignment;
    final glyphFormat = this.glyphFormat;
    final glyphSymbol = this.glyphSymbol;
    final glyphType = this.glyphType;
    final indentFirstLine = this.indentFirstLine;
    final indentStart = this.indentStart;
    final startNumber = this.startNumber;
    final textStyle = this.textStyle;
    return {
      'bulletAlignment': ?bulletAlignment,
      'glyphFormat': ?glyphFormat,
      'glyphSymbol': ?glyphSymbol,
      'glyphType': ?glyphType,
      'indentFirstLine': ?indentFirstLine,
      'indentStart': ?indentStart,
      'startNumber': ?startNumber,
      'textStyle': ?textStyle,
    };
  }
}

/// A mask that indicates which of the fields on the base NestingLevel have been
/// changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class NestingLevelSuggestionState {
  /// Indicates if there was a suggested change to bullet_alignment.
  core.bool? bulletAlignmentSuggested;

  /// Indicates if there was a suggested change to glyph_format.
  core.bool? glyphFormatSuggested;

  /// Indicates if there was a suggested change to glyph_symbol.
  core.bool? glyphSymbolSuggested;

  /// Indicates if there was a suggested change to glyph_type.
  core.bool? glyphTypeSuggested;

  /// Indicates if there was a suggested change to indent_first_line.
  core.bool? indentFirstLineSuggested;

  /// Indicates if there was a suggested change to indent_start.
  core.bool? indentStartSuggested;

  /// Indicates if there was a suggested change to start_number.
  core.bool? startNumberSuggested;

  /// A mask that indicates which of the fields in text style have been changed
  /// in this suggestion.
  TextStyleSuggestionState? textStyleSuggestionState;

  NestingLevelSuggestionState({
    this.bulletAlignmentSuggested,
    this.glyphFormatSuggested,
    this.glyphSymbolSuggested,
    this.glyphTypeSuggested,
    this.indentFirstLineSuggested,
    this.indentStartSuggested,
    this.startNumberSuggested,
    this.textStyleSuggestionState,
  });

  NestingLevelSuggestionState.fromJson(core.Map json_)
    : this(
        bulletAlignmentSuggested:
            json_['bulletAlignmentSuggested'] as core.bool?,
        glyphFormatSuggested: json_['glyphFormatSuggested'] as core.bool?,
        glyphSymbolSuggested: json_['glyphSymbolSuggested'] as core.bool?,
        glyphTypeSuggested: json_['glyphTypeSuggested'] as core.bool?,
        indentFirstLineSuggested:
            json_['indentFirstLineSuggested'] as core.bool?,
        indentStartSuggested: json_['indentStartSuggested'] as core.bool?,
        startNumberSuggested: json_['startNumberSuggested'] as core.bool?,
        textStyleSuggestionState: json_.containsKey('textStyleSuggestionState')
            ? TextStyleSuggestionState.fromJson(
                json_['textStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bulletAlignmentSuggested = this.bulletAlignmentSuggested;
    final glyphFormatSuggested = this.glyphFormatSuggested;
    final glyphSymbolSuggested = this.glyphSymbolSuggested;
    final glyphTypeSuggested = this.glyphTypeSuggested;
    final indentFirstLineSuggested = this.indentFirstLineSuggested;
    final indentStartSuggested = this.indentStartSuggested;
    final startNumberSuggested = this.startNumberSuggested;
    final textStyleSuggestionState = this.textStyleSuggestionState;
    return {
      'bulletAlignmentSuggested': ?bulletAlignmentSuggested,
      'glyphFormatSuggested': ?glyphFormatSuggested,
      'glyphSymbolSuggested': ?glyphSymbolSuggested,
      'glyphTypeSuggested': ?glyphTypeSuggested,
      'indentFirstLineSuggested': ?indentFirstLineSuggested,
      'indentStartSuggested': ?indentStartSuggested,
      'startNumberSuggested': ?startNumberSuggested,
      'textStyleSuggestionState': ?textStyleSuggestionState,
    };
  }
}

/// A collection of object IDs.
class ObjectReferences {
  /// The object IDs.
  core.List<core.String>? objectIds;

  ObjectReferences({this.objectIds});

  ObjectReferences.fromJson(core.Map json_)
    : this(
        objectIds: (json_['objectIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final objectIds = this.objectIds;
    return {'objectIds': ?objectIds};
  }
}

/// A color that can either be fully opaque or fully transparent.
class OptionalColor {
  /// If set, this will be used as an opaque color.
  ///
  /// If unset, this represents a transparent color.
  Color? color;

  OptionalColor({this.color});

  OptionalColor.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    return {'color': ?color};
  }
}

/// A ParagraphElement representing a page break.
///
/// A page break makes the subsequent text start at the top of the next page.
class PageBreak {
  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A PageBreak may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this PageBreak, keyed by suggestion
  /// ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this PageBreak.
  ///
  /// Similar to text content, like text runs and footnote references, the text
  /// style of a page break can affect content layout as well as the styling of
  /// text inserted next to it.
  TextStyle? textStyle;

  PageBreak({
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  PageBreak.fromJson(core.Map json_)
    : this(
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// A StructuralElement representing a paragraph.
///
/// A paragraph is a range of content that's terminated with a newline
/// character.
class Paragraph {
  /// The bullet for this paragraph.
  ///
  /// If not present, the paragraph does not belong to a list.
  Bullet? bullet;

  /// The content of the paragraph, broken down into its component parts.
  core.List<ParagraphElement>? elements;

  /// The style of this paragraph.
  ParagraphStyle? paragraphStyle;

  /// The IDs of the positioned objects tethered to this paragraph.
  core.List<core.String>? positionedObjectIds;

  /// The suggested changes to this paragraph's bullet.
  core.Map<core.String, SuggestedBullet>? suggestedBulletChanges;

  /// The suggested paragraph style changes to this paragraph, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedParagraphStyle>?
  suggestedParagraphStyleChanges;

  /// The IDs of the positioned objects suggested to be attached to this
  /// paragraph, keyed by suggestion ID.
  core.Map<core.String, ObjectReferences>? suggestedPositionedObjectIds;

  Paragraph({
    this.bullet,
    this.elements,
    this.paragraphStyle,
    this.positionedObjectIds,
    this.suggestedBulletChanges,
    this.suggestedParagraphStyleChanges,
    this.suggestedPositionedObjectIds,
  });

  Paragraph.fromJson(core.Map json_)
    : this(
        bullet: json_.containsKey('bullet')
            ? Bullet.fromJson(
                json_['bullet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        elements: (json_['elements'] as core.List?)
            ?.map(
              (value) => ParagraphElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        paragraphStyle: json_.containsKey('paragraphStyle')
            ? ParagraphStyle.fromJson(
                json_['paragraphStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positionedObjectIds: (json_['positionedObjectIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedBulletChanges:
            (json_['suggestedBulletChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedBullet.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedParagraphStyleChanges:
            (json_['suggestedParagraphStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedParagraphStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        suggestedPositionedObjectIds:
            (json_['suggestedPositionedObjectIds']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    ObjectReferences.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bullet = this.bullet;
    final elements = this.elements;
    final paragraphStyle = this.paragraphStyle;
    final positionedObjectIds = this.positionedObjectIds;
    final suggestedBulletChanges = this.suggestedBulletChanges;
    final suggestedParagraphStyleChanges = this.suggestedParagraphStyleChanges;
    final suggestedPositionedObjectIds = this.suggestedPositionedObjectIds;
    return {
      'bullet': ?bullet,
      'elements': ?elements,
      'paragraphStyle': ?paragraphStyle,
      'positionedObjectIds': ?positionedObjectIds,
      'suggestedBulletChanges': ?suggestedBulletChanges,
      'suggestedParagraphStyleChanges': ?suggestedParagraphStyleChanges,
      'suggestedPositionedObjectIds': ?suggestedPositionedObjectIds,
    };
  }
}

/// A border around a paragraph.
class ParagraphBorder {
  /// The color of the border.
  OptionalColor? color;

  /// The dash style of the border.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  core.String? dashStyle;

  /// The padding of the border.
  Dimension? padding;

  /// The width of the border.
  Dimension? width;

  ParagraphBorder({this.color, this.dashStyle, this.padding, this.width});

  ParagraphBorder.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? OptionalColor.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dashStyle: json_['dashStyle'] as core.String?,
        padding: json_.containsKey('padding')
            ? Dimension.fromJson(
                json_['padding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final dashStyle = this.dashStyle;
    final padding = this.padding;
    final width = this.width;
    return {
      'color': ?color,
      'dashStyle': ?dashStyle,
      'padding': ?padding,
      'width': ?width,
    };
  }
}

/// A ParagraphElement describes content within a Paragraph.
class ParagraphElement {
  /// An auto text paragraph element.
  AutoText? autoText;

  /// A column break paragraph element.
  ColumnBreak? columnBreak;

  /// A paragraph element that represents a date.
  DateElement? dateElement;

  /// The zero-base end index of this paragraph element, exclusive, in UTF-16
  /// code units.
  core.int? endIndex;

  /// An equation paragraph element.
  Equation? equation;

  /// A footnote reference paragraph element.
  FootnoteReference? footnoteReference;

  /// A horizontal rule paragraph element.
  HorizontalRule? horizontalRule;

  /// An inline object paragraph element.
  InlineObjectElement? inlineObjectElement;

  /// A page break paragraph element.
  PageBreak? pageBreak;

  /// A paragraph element that links to a person or email address.
  Person? person;

  /// A paragraph element that links to a Google resource (such as a file in
  /// Google Drive, a YouTube video, or a Calendar event.)
  RichLink? richLink;

  /// The zero-based start index of this paragraph element, in UTF-16 code
  /// units.
  core.int? startIndex;

  /// A text run paragraph element.
  TextRun? textRun;

  ParagraphElement({
    this.autoText,
    this.columnBreak,
    this.dateElement,
    this.endIndex,
    this.equation,
    this.footnoteReference,
    this.horizontalRule,
    this.inlineObjectElement,
    this.pageBreak,
    this.person,
    this.richLink,
    this.startIndex,
    this.textRun,
  });

  ParagraphElement.fromJson(core.Map json_)
    : this(
        autoText: json_.containsKey('autoText')
            ? AutoText.fromJson(
                json_['autoText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        columnBreak: json_.containsKey('columnBreak')
            ? ColumnBreak.fromJson(
                json_['columnBreak'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dateElement: json_.containsKey('dateElement')
            ? DateElement.fromJson(
                json_['dateElement'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        endIndex: json_['endIndex'] as core.int?,
        equation: json_.containsKey('equation')
            ? Equation.fromJson(
                json_['equation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        footnoteReference: json_.containsKey('footnoteReference')
            ? FootnoteReference.fromJson(
                json_['footnoteReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        horizontalRule: json_.containsKey('horizontalRule')
            ? HorizontalRule.fromJson(
                json_['horizontalRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inlineObjectElement: json_.containsKey('inlineObjectElement')
            ? InlineObjectElement.fromJson(
                json_['inlineObjectElement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pageBreak: json_.containsKey('pageBreak')
            ? PageBreak.fromJson(
                json_['pageBreak'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        person: json_.containsKey('person')
            ? Person.fromJson(
                json_['person'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        richLink: json_.containsKey('richLink')
            ? RichLink.fromJson(
                json_['richLink'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startIndex: json_['startIndex'] as core.int?,
        textRun: json_.containsKey('textRun')
            ? TextRun.fromJson(
                json_['textRun'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoText = this.autoText;
    final columnBreak = this.columnBreak;
    final dateElement = this.dateElement;
    final endIndex = this.endIndex;
    final equation = this.equation;
    final footnoteReference = this.footnoteReference;
    final horizontalRule = this.horizontalRule;
    final inlineObjectElement = this.inlineObjectElement;
    final pageBreak = this.pageBreak;
    final person = this.person;
    final richLink = this.richLink;
    final startIndex = this.startIndex;
    final textRun = this.textRun;
    return {
      'autoText': ?autoText,
      'columnBreak': ?columnBreak,
      'dateElement': ?dateElement,
      'endIndex': ?endIndex,
      'equation': ?equation,
      'footnoteReference': ?footnoteReference,
      'horizontalRule': ?horizontalRule,
      'inlineObjectElement': ?inlineObjectElement,
      'pageBreak': ?pageBreak,
      'person': ?person,
      'richLink': ?richLink,
      'startIndex': ?startIndex,
      'textRun': ?textRun,
    };
  }
}

/// Styles that apply to a whole paragraph.
///
/// Inherited paragraph styles are represented as unset fields in this message.
/// A paragraph style's parent depends on where the paragraph style is defined:
/// * The ParagraphStyle on a Paragraph inherits from the paragraph's
/// corresponding named style type. * The ParagraphStyle on a named style
/// inherits from the normal text named style. * The ParagraphStyle of the
/// normal text named style inherits from the default paragraph style in the
/// Docs editor. * The ParagraphStyle on a Paragraph element that's contained in
/// a table may inherit its paragraph style from the table style. If the
/// paragraph style does not inherit from a parent, unsetting fields will revert
/// the style to a value matching the defaults in the Docs editor.
class ParagraphStyle {
  /// The text alignment for this paragraph.
  /// Possible string values are:
  /// - "ALIGNMENT_UNSPECIFIED" : The paragraph alignment is inherited from the
  /// parent.
  /// - "START" : The paragraph is aligned to the start of the line.
  /// Left-aligned for LTR text, right-aligned otherwise.
  /// - "CENTER" : The paragraph is centered.
  /// - "END" : The paragraph is aligned to the end of the line. Right-aligned
  /// for LTR text, left-aligned otherwise.
  /// - "JUSTIFIED" : The paragraph is justified.
  core.String? alignment;

  /// Whether to avoid widows and orphans for the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  core.bool? avoidWidowAndOrphan;

  /// The border between this paragraph and the next and previous paragraphs.
  ///
  /// If unset, the value is inherited from the parent. The between border is
  /// rendered when the adjacent paragraph has the same border and indent
  /// properties. Paragraph borders cannot be partially updated. When changing a
  /// paragraph border, the new border must be specified in its entirety.
  ParagraphBorder? borderBetween;

  /// The border at the bottom of this paragraph.
  ///
  /// If unset, the value is inherited from the parent. The bottom border is
  /// rendered when the paragraph below has different border and indent
  /// properties. Paragraph borders cannot be partially updated. When changing a
  /// paragraph border, the new border must be specified in its entirety.
  ParagraphBorder? borderBottom;

  /// The border to the left of this paragraph.
  ///
  /// If unset, the value is inherited from the parent. Paragraph borders cannot
  /// be partially updated. When changing a paragraph border, the new border
  /// must be specified in its entirety.
  ParagraphBorder? borderLeft;

  /// The border to the right of this paragraph.
  ///
  /// If unset, the value is inherited from the parent. Paragraph borders cannot
  /// be partially updated. When changing a paragraph border, the new border
  /// must be specified in its entirety.
  ParagraphBorder? borderRight;

  /// The border at the top of this paragraph.
  ///
  /// If unset, the value is inherited from the parent. The top border is
  /// rendered when the paragraph above has different border and indent
  /// properties. Paragraph borders cannot be partially updated. When changing a
  /// paragraph border, the new border must be specified in its entirety.
  ParagraphBorder? borderTop;

  /// The text direction of this paragraph.
  ///
  /// If unset, the value defaults to LEFT_TO_RIGHT since paragraph direction is
  /// not inherited.
  /// Possible string values are:
  /// - "CONTENT_DIRECTION_UNSPECIFIED" : The content direction is unspecified.
  /// - "LEFT_TO_RIGHT" : The content goes from left to right.
  /// - "RIGHT_TO_LEFT" : The content goes from right to left.
  core.String? direction;

  /// The heading ID of the paragraph.
  ///
  /// If empty, then this paragraph is not a heading. This property is
  /// read-only.
  core.String? headingId;

  /// The amount of indentation for the paragraph on the side that corresponds
  /// to the end of the text, based on the current paragraph direction.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentEnd;

  /// The amount of indentation for the first line of the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentFirstLine;

  /// The amount of indentation for the paragraph on the side that corresponds
  /// to the start of the text, based on the current paragraph direction.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentStart;

  /// Whether all lines of the paragraph should be laid out on the same page or
  /// column if possible.
  ///
  /// If unset, the value is inherited from the parent.
  core.bool? keepLinesTogether;

  /// Whether at least a part of this paragraph should be laid out on the same
  /// page or column as the next paragraph if possible.
  ///
  /// If unset, the value is inherited from the parent.
  core.bool? keepWithNext;

  /// The amount of space between lines, as a percentage of normal, where normal
  /// is represented as 100.0.
  ///
  /// If unset, the value is inherited from the parent.
  core.double? lineSpacing;

  /// The named style type of the paragraph.
  ///
  /// Since updating the named style type affects other properties within
  /// ParagraphStyle, the named style type is applied before the other
  /// properties are updated.
  /// Possible string values are:
  /// - "NAMED_STYLE_TYPE_UNSPECIFIED" : The type of named style is unspecified.
  /// - "NORMAL_TEXT" : Normal text.
  /// - "TITLE" : Title.
  /// - "SUBTITLE" : Subtitle.
  /// - "HEADING_1" : Heading 1.
  /// - "HEADING_2" : Heading 2.
  /// - "HEADING_3" : Heading 3.
  /// - "HEADING_4" : Heading 4.
  /// - "HEADING_5" : Heading 5.
  /// - "HEADING_6" : Heading 6.
  core.String? namedStyleType;

  /// Whether the current paragraph should always start at the beginning of a
  /// page.
  ///
  /// If unset, the value is inherited from the parent. Attempting to update
  /// page_break_before for paragraphs in unsupported regions, including Table,
  /// Header, Footer and Footnote, can result in an invalid document state that
  /// returns a 400 bad request error.
  core.bool? pageBreakBefore;

  /// The shading of the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Shading? shading;

  /// The amount of extra space above the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? spaceAbove;

  /// The amount of extra space below the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? spaceBelow;

  /// The spacing mode for the paragraph.
  /// Possible string values are:
  /// - "SPACING_MODE_UNSPECIFIED" : The spacing mode is inherited from the
  /// parent.
  /// - "NEVER_COLLAPSE" : Paragraph spacing is always rendered.
  /// - "COLLAPSE_LISTS" : Paragraph spacing is skipped between list elements.
  core.String? spacingMode;

  /// A list of the tab stops for this paragraph.
  ///
  /// The list of tab stops is not inherited. This property is read-only.
  core.List<TabStop>? tabStops;

  ParagraphStyle({
    this.alignment,
    this.avoidWidowAndOrphan,
    this.borderBetween,
    this.borderBottom,
    this.borderLeft,
    this.borderRight,
    this.borderTop,
    this.direction,
    this.headingId,
    this.indentEnd,
    this.indentFirstLine,
    this.indentStart,
    this.keepLinesTogether,
    this.keepWithNext,
    this.lineSpacing,
    this.namedStyleType,
    this.pageBreakBefore,
    this.shading,
    this.spaceAbove,
    this.spaceBelow,
    this.spacingMode,
    this.tabStops,
  });

  ParagraphStyle.fromJson(core.Map json_)
    : this(
        alignment: json_['alignment'] as core.String?,
        avoidWidowAndOrphan: json_['avoidWidowAndOrphan'] as core.bool?,
        borderBetween: json_.containsKey('borderBetween')
            ? ParagraphBorder.fromJson(
                json_['borderBetween'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderBottom: json_.containsKey('borderBottom')
            ? ParagraphBorder.fromJson(
                json_['borderBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderLeft: json_.containsKey('borderLeft')
            ? ParagraphBorder.fromJson(
                json_['borderLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderRight: json_.containsKey('borderRight')
            ? ParagraphBorder.fromJson(
                json_['borderRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderTop: json_.containsKey('borderTop')
            ? ParagraphBorder.fromJson(
                json_['borderTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        direction: json_['direction'] as core.String?,
        headingId: json_['headingId'] as core.String?,
        indentEnd: json_.containsKey('indentEnd')
            ? Dimension.fromJson(
                json_['indentEnd'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        indentFirstLine: json_.containsKey('indentFirstLine')
            ? Dimension.fromJson(
                json_['indentFirstLine'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        indentStart: json_.containsKey('indentStart')
            ? Dimension.fromJson(
                json_['indentStart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        keepLinesTogether: json_['keepLinesTogether'] as core.bool?,
        keepWithNext: json_['keepWithNext'] as core.bool?,
        lineSpacing: (json_['lineSpacing'] as core.num?)?.toDouble(),
        namedStyleType: json_['namedStyleType'] as core.String?,
        pageBreakBefore: json_['pageBreakBefore'] as core.bool?,
        shading: json_.containsKey('shading')
            ? Shading.fromJson(
                json_['shading'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        spaceAbove: json_.containsKey('spaceAbove')
            ? Dimension.fromJson(
                json_['spaceAbove'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        spaceBelow: json_.containsKey('spaceBelow')
            ? Dimension.fromJson(
                json_['spaceBelow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        spacingMode: json_['spacingMode'] as core.String?,
        tabStops: (json_['tabStops'] as core.List?)
            ?.map(
              (value) => TabStop.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alignment = this.alignment;
    final avoidWidowAndOrphan = this.avoidWidowAndOrphan;
    final borderBetween = this.borderBetween;
    final borderBottom = this.borderBottom;
    final borderLeft = this.borderLeft;
    final borderRight = this.borderRight;
    final borderTop = this.borderTop;
    final direction = this.direction;
    final headingId = this.headingId;
    final indentEnd = this.indentEnd;
    final indentFirstLine = this.indentFirstLine;
    final indentStart = this.indentStart;
    final keepLinesTogether = this.keepLinesTogether;
    final keepWithNext = this.keepWithNext;
    final lineSpacing = this.lineSpacing;
    final namedStyleType = this.namedStyleType;
    final pageBreakBefore = this.pageBreakBefore;
    final shading = this.shading;
    final spaceAbove = this.spaceAbove;
    final spaceBelow = this.spaceBelow;
    final spacingMode = this.spacingMode;
    final tabStops = this.tabStops;
    return {
      'alignment': ?alignment,
      'avoidWidowAndOrphan': ?avoidWidowAndOrphan,
      'borderBetween': ?borderBetween,
      'borderBottom': ?borderBottom,
      'borderLeft': ?borderLeft,
      'borderRight': ?borderRight,
      'borderTop': ?borderTop,
      'direction': ?direction,
      'headingId': ?headingId,
      'indentEnd': ?indentEnd,
      'indentFirstLine': ?indentFirstLine,
      'indentStart': ?indentStart,
      'keepLinesTogether': ?keepLinesTogether,
      'keepWithNext': ?keepWithNext,
      'lineSpacing': ?lineSpacing,
      'namedStyleType': ?namedStyleType,
      'pageBreakBefore': ?pageBreakBefore,
      'shading': ?shading,
      'spaceAbove': ?spaceAbove,
      'spaceBelow': ?spaceBelow,
      'spacingMode': ?spacingMode,
      'tabStops': ?tabStops,
    };
  }
}

/// A mask that indicates which of the fields on the base ParagraphStyle have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class ParagraphStyleSuggestionState {
  /// Indicates if there was a suggested change to alignment.
  core.bool? alignmentSuggested;

  /// Indicates if there was a suggested change to avoid_widow_and_orphan.
  core.bool? avoidWidowAndOrphanSuggested;

  /// Indicates if there was a suggested change to border_between.
  core.bool? borderBetweenSuggested;

  /// Indicates if there was a suggested change to border_bottom.
  core.bool? borderBottomSuggested;

  /// Indicates if there was a suggested change to border_left.
  core.bool? borderLeftSuggested;

  /// Indicates if there was a suggested change to border_right.
  core.bool? borderRightSuggested;

  /// Indicates if there was a suggested change to border_top.
  core.bool? borderTopSuggested;

  /// Indicates if there was a suggested change to direction.
  core.bool? directionSuggested;

  /// Indicates if there was a suggested change to heading_id.
  core.bool? headingIdSuggested;

  /// Indicates if there was a suggested change to indent_end.
  core.bool? indentEndSuggested;

  /// Indicates if there was a suggested change to indent_first_line.
  core.bool? indentFirstLineSuggested;

  /// Indicates if there was a suggested change to indent_start.
  core.bool? indentStartSuggested;

  /// Indicates if there was a suggested change to keep_lines_together.
  core.bool? keepLinesTogetherSuggested;

  /// Indicates if there was a suggested change to keep_with_next.
  core.bool? keepWithNextSuggested;

  /// Indicates if there was a suggested change to line_spacing.
  core.bool? lineSpacingSuggested;

  /// Indicates if there was a suggested change to named_style_type.
  core.bool? namedStyleTypeSuggested;

  /// Indicates if there was a suggested change to page_break_before.
  core.bool? pageBreakBeforeSuggested;

  /// A mask that indicates which of the fields in shading have been changed in
  /// this suggestion.
  ShadingSuggestionState? shadingSuggestionState;

  /// Indicates if there was a suggested change to space_above.
  core.bool? spaceAboveSuggested;

  /// Indicates if there was a suggested change to space_below.
  core.bool? spaceBelowSuggested;

  /// Indicates if there was a suggested change to spacing_mode.
  core.bool? spacingModeSuggested;

  ParagraphStyleSuggestionState({
    this.alignmentSuggested,
    this.avoidWidowAndOrphanSuggested,
    this.borderBetweenSuggested,
    this.borderBottomSuggested,
    this.borderLeftSuggested,
    this.borderRightSuggested,
    this.borderTopSuggested,
    this.directionSuggested,
    this.headingIdSuggested,
    this.indentEndSuggested,
    this.indentFirstLineSuggested,
    this.indentStartSuggested,
    this.keepLinesTogetherSuggested,
    this.keepWithNextSuggested,
    this.lineSpacingSuggested,
    this.namedStyleTypeSuggested,
    this.pageBreakBeforeSuggested,
    this.shadingSuggestionState,
    this.spaceAboveSuggested,
    this.spaceBelowSuggested,
    this.spacingModeSuggested,
  });

  ParagraphStyleSuggestionState.fromJson(core.Map json_)
    : this(
        alignmentSuggested: json_['alignmentSuggested'] as core.bool?,
        avoidWidowAndOrphanSuggested:
            json_['avoidWidowAndOrphanSuggested'] as core.bool?,
        borderBetweenSuggested: json_['borderBetweenSuggested'] as core.bool?,
        borderBottomSuggested: json_['borderBottomSuggested'] as core.bool?,
        borderLeftSuggested: json_['borderLeftSuggested'] as core.bool?,
        borderRightSuggested: json_['borderRightSuggested'] as core.bool?,
        borderTopSuggested: json_['borderTopSuggested'] as core.bool?,
        directionSuggested: json_['directionSuggested'] as core.bool?,
        headingIdSuggested: json_['headingIdSuggested'] as core.bool?,
        indentEndSuggested: json_['indentEndSuggested'] as core.bool?,
        indentFirstLineSuggested:
            json_['indentFirstLineSuggested'] as core.bool?,
        indentStartSuggested: json_['indentStartSuggested'] as core.bool?,
        keepLinesTogetherSuggested:
            json_['keepLinesTogetherSuggested'] as core.bool?,
        keepWithNextSuggested: json_['keepWithNextSuggested'] as core.bool?,
        lineSpacingSuggested: json_['lineSpacingSuggested'] as core.bool?,
        namedStyleTypeSuggested: json_['namedStyleTypeSuggested'] as core.bool?,
        pageBreakBeforeSuggested:
            json_['pageBreakBeforeSuggested'] as core.bool?,
        shadingSuggestionState: json_.containsKey('shadingSuggestionState')
            ? ShadingSuggestionState.fromJson(
                json_['shadingSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        spaceAboveSuggested: json_['spaceAboveSuggested'] as core.bool?,
        spaceBelowSuggested: json_['spaceBelowSuggested'] as core.bool?,
        spacingModeSuggested: json_['spacingModeSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alignmentSuggested = this.alignmentSuggested;
    final avoidWidowAndOrphanSuggested = this.avoidWidowAndOrphanSuggested;
    final borderBetweenSuggested = this.borderBetweenSuggested;
    final borderBottomSuggested = this.borderBottomSuggested;
    final borderLeftSuggested = this.borderLeftSuggested;
    final borderRightSuggested = this.borderRightSuggested;
    final borderTopSuggested = this.borderTopSuggested;
    final directionSuggested = this.directionSuggested;
    final headingIdSuggested = this.headingIdSuggested;
    final indentEndSuggested = this.indentEndSuggested;
    final indentFirstLineSuggested = this.indentFirstLineSuggested;
    final indentStartSuggested = this.indentStartSuggested;
    final keepLinesTogetherSuggested = this.keepLinesTogetherSuggested;
    final keepWithNextSuggested = this.keepWithNextSuggested;
    final lineSpacingSuggested = this.lineSpacingSuggested;
    final namedStyleTypeSuggested = this.namedStyleTypeSuggested;
    final pageBreakBeforeSuggested = this.pageBreakBeforeSuggested;
    final shadingSuggestionState = this.shadingSuggestionState;
    final spaceAboveSuggested = this.spaceAboveSuggested;
    final spaceBelowSuggested = this.spaceBelowSuggested;
    final spacingModeSuggested = this.spacingModeSuggested;
    return {
      'alignmentSuggested': ?alignmentSuggested,
      'avoidWidowAndOrphanSuggested': ?avoidWidowAndOrphanSuggested,
      'borderBetweenSuggested': ?borderBetweenSuggested,
      'borderBottomSuggested': ?borderBottomSuggested,
      'borderLeftSuggested': ?borderLeftSuggested,
      'borderRightSuggested': ?borderRightSuggested,
      'borderTopSuggested': ?borderTopSuggested,
      'directionSuggested': ?directionSuggested,
      'headingIdSuggested': ?headingIdSuggested,
      'indentEndSuggested': ?indentEndSuggested,
      'indentFirstLineSuggested': ?indentFirstLineSuggested,
      'indentStartSuggested': ?indentStartSuggested,
      'keepLinesTogetherSuggested': ?keepLinesTogetherSuggested,
      'keepWithNextSuggested': ?keepWithNextSuggested,
      'lineSpacingSuggested': ?lineSpacingSuggested,
      'namedStyleTypeSuggested': ?namedStyleTypeSuggested,
      'pageBreakBeforeSuggested': ?pageBreakBeforeSuggested,
      'shadingSuggestionState': ?shadingSuggestionState,
      'spaceAboveSuggested': ?spaceAboveSuggested,
      'spaceBelowSuggested': ?spaceBelowSuggested,
      'spacingModeSuggested': ?spacingModeSuggested,
    };
  }
}

/// A person or email address mentioned in a document.
///
/// These mentions behave as a single, immutable element containing the person's
/// name or email address.
class Person {
  /// The unique ID of this link.
  ///
  /// Output only.
  core.String? personId;

  /// The properties of this Person.
  ///
  /// This field is always present.
  ///
  /// Output only.
  PersonProperties? personProperties;

  /// IDs for suggestions that remove this person link from the document.
  ///
  /// A Person might have multiple deletion IDs if, for example, multiple users
  /// suggest deleting it. If empty, then this person link isn't suggested for
  /// deletion.
  core.List<core.String>? suggestedDeletionIds;

  /// IDs for suggestions that insert this person link into the document.
  ///
  /// A Person might have multiple insertion IDs if it's a nested suggested
  /// change (a suggestion within a suggestion made by a different user, for
  /// example). If empty, then this person link isn't a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this Person, keyed by suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this Person.
  TextStyle? textStyle;

  Person({
    this.personId,
    this.personProperties,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  Person.fromJson(core.Map json_)
    : this(
        personId: json_['personId'] as core.String?,
        personProperties: json_.containsKey('personProperties')
            ? PersonProperties.fromJson(
                json_['personProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final personId = this.personId;
    final personProperties = this.personProperties;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'personId': ?personId,
      'personProperties': ?personProperties,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Properties specific to a linked Person.
class PersonProperties {
  /// The email address linked to this Person.
  ///
  /// This field is always present.
  core.String? email;

  /// The name of the person if it's displayed in the link text instead of the
  /// person's email address.
  core.String? name;

  PersonProperties({this.email, this.name});

  PersonProperties.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final name = this.name;
    return {'email': ?email, 'name': ?name};
  }
}

/// Updates the number of pinned table header rows in a table.
class PinTableHeaderRowsRequest {
  /// The number of table rows to pin, where 0 implies that all rows are
  /// unpinned.
  core.int? pinnedHeaderRowsCount;

  /// The location where the table starts in the document.
  Location? tableStartLocation;

  PinTableHeaderRowsRequest({
    this.pinnedHeaderRowsCount,
    this.tableStartLocation,
  });

  PinTableHeaderRowsRequest.fromJson(core.Map json_)
    : this(
        pinnedHeaderRowsCount: json_['pinnedHeaderRowsCount'] as core.int?,
        tableStartLocation: json_.containsKey('tableStartLocation')
            ? Location.fromJson(
                json_['tableStartLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pinnedHeaderRowsCount = this.pinnedHeaderRowsCount;
    final tableStartLocation = this.tableStartLocation;
    return {
      'pinnedHeaderRowsCount': ?pinnedHeaderRowsCount,
      'tableStartLocation': ?tableStartLocation,
    };
  }
}

/// An object that's tethered to a Paragraph and positioned relative to the
/// beginning of the paragraph.
///
/// A PositionedObject contains an EmbeddedObject such as an image.
class PositionedObject {
  /// The ID of this positioned object.
  core.String? objectId;

  /// The properties of this positioned object.
  PositionedObjectProperties? positionedObjectProperties;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion ID.
  ///
  /// If empty, then this is not a suggested insertion.
  core.String? suggestedInsertionId;

  /// The suggested changes to the positioned object properties, keyed by
  /// suggestion ID.
  core.Map<core.String, SuggestedPositionedObjectProperties>?
  suggestedPositionedObjectPropertiesChanges;

  PositionedObject({
    this.objectId,
    this.positionedObjectProperties,
    this.suggestedDeletionIds,
    this.suggestedInsertionId,
    this.suggestedPositionedObjectPropertiesChanges,
  });

  PositionedObject.fromJson(core.Map json_)
    : this(
        objectId: json_['objectId'] as core.String?,
        positionedObjectProperties:
            json_.containsKey('positionedObjectProperties')
            ? PositionedObjectProperties.fromJson(
                json_['positionedObjectProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionId: json_['suggestedInsertionId'] as core.String?,
        suggestedPositionedObjectPropertiesChanges:
            (json_['suggestedPositionedObjectPropertiesChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedPositionedObjectProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    final positionedObjectProperties = this.positionedObjectProperties;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionId = this.suggestedInsertionId;
    final suggestedPositionedObjectPropertiesChanges =
        this.suggestedPositionedObjectPropertiesChanges;
    return {
      'objectId': ?objectId,
      'positionedObjectProperties': ?positionedObjectProperties,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionId': ?suggestedInsertionId,
      'suggestedPositionedObjectPropertiesChanges':
          ?suggestedPositionedObjectPropertiesChanges,
    };
  }
}

/// The positioning of a PositionedObject.
///
/// The positioned object is positioned relative to the beginning of the
/// Paragraph it's tethered to.
class PositionedObjectPositioning {
  /// The layout of this positioned object.
  /// Possible string values are:
  /// - "POSITIONED_OBJECT_LAYOUT_UNSPECIFIED" : The layout is unspecified.
  /// - "WRAP_TEXT" : The text wraps around the positioned object.
  /// - "BREAK_LEFT" : Breaks text such that the positioned object is on the
  /// left and text is on the right.
  /// - "BREAK_RIGHT" : Breaks text such that the positioned object is on the
  /// right and text is on the left.
  /// - "BREAK_LEFT_RIGHT" : Breaks text such that there's no text on the left
  /// or right of the positioned object.
  /// - "IN_FRONT_OF_TEXT" : The positioned object is in front of the text.
  /// - "BEHIND_TEXT" : The positioned object is behind the text.
  core.String? layout;

  /// The offset of the left edge of the positioned object relative to the
  /// beginning of the Paragraph it's tethered to.
  ///
  /// The exact positioning of the object can depend on other content in the
  /// document and the document's styling.
  Dimension? leftOffset;

  /// The offset of the top edge of the positioned object relative to the
  /// beginning of the Paragraph it's tethered to.
  ///
  /// The exact positioning of the object can depend on other content in the
  /// document and the document's styling.
  Dimension? topOffset;

  PositionedObjectPositioning({this.layout, this.leftOffset, this.topOffset});

  PositionedObjectPositioning.fromJson(core.Map json_)
    : this(
        layout: json_['layout'] as core.String?,
        leftOffset: json_.containsKey('leftOffset')
            ? Dimension.fromJson(
                json_['leftOffset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        topOffset: json_.containsKey('topOffset')
            ? Dimension.fromJson(
                json_['topOffset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final layout = this.layout;
    final leftOffset = this.leftOffset;
    final topOffset = this.topOffset;
    return {
      'layout': ?layout,
      'leftOffset': ?leftOffset,
      'topOffset': ?topOffset,
    };
  }
}

/// A mask that indicates which of the fields on the base
/// PositionedObjectPositioning have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class PositionedObjectPositioningSuggestionState {
  /// Indicates if there was a suggested change to layout.
  core.bool? layoutSuggested;

  /// Indicates if there was a suggested change to left_offset.
  core.bool? leftOffsetSuggested;

  /// Indicates if there was a suggested change to top_offset.
  core.bool? topOffsetSuggested;

  PositionedObjectPositioningSuggestionState({
    this.layoutSuggested,
    this.leftOffsetSuggested,
    this.topOffsetSuggested,
  });

  PositionedObjectPositioningSuggestionState.fromJson(core.Map json_)
    : this(
        layoutSuggested: json_['layoutSuggested'] as core.bool?,
        leftOffsetSuggested: json_['leftOffsetSuggested'] as core.bool?,
        topOffsetSuggested: json_['topOffsetSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final layoutSuggested = this.layoutSuggested;
    final leftOffsetSuggested = this.leftOffsetSuggested;
    final topOffsetSuggested = this.topOffsetSuggested;
    return {
      'layoutSuggested': ?layoutSuggested,
      'leftOffsetSuggested': ?leftOffsetSuggested,
      'topOffsetSuggested': ?topOffsetSuggested,
    };
  }
}

/// Properties of a PositionedObject.
class PositionedObjectProperties {
  /// The embedded object of this positioned object.
  EmbeddedObject? embeddedObject;

  /// The positioning of this positioned object relative to the newline of the
  /// Paragraph that references this positioned object.
  PositionedObjectPositioning? positioning;

  PositionedObjectProperties({this.embeddedObject, this.positioning});

  PositionedObjectProperties.fromJson(core.Map json_)
    : this(
        embeddedObject: json_.containsKey('embeddedObject')
            ? EmbeddedObject.fromJson(
                json_['embeddedObject'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positioning: json_.containsKey('positioning')
            ? PositionedObjectPositioning.fromJson(
                json_['positioning'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final embeddedObject = this.embeddedObject;
    final positioning = this.positioning;
    return {'embeddedObject': ?embeddedObject, 'positioning': ?positioning};
  }
}

/// A mask that indicates which of the fields on the base
/// PositionedObjectProperties have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class PositionedObjectPropertiesSuggestionState {
  /// A mask that indicates which of the fields in embedded_object have been
  /// changed in this suggestion.
  EmbeddedObjectSuggestionState? embeddedObjectSuggestionState;

  /// A mask that indicates which of the fields in positioning have been changed
  /// in this suggestion.
  PositionedObjectPositioningSuggestionState? positioningSuggestionState;

  PositionedObjectPropertiesSuggestionState({
    this.embeddedObjectSuggestionState,
    this.positioningSuggestionState,
  });

  PositionedObjectPropertiesSuggestionState.fromJson(core.Map json_)
    : this(
        embeddedObjectSuggestionState:
            json_.containsKey('embeddedObjectSuggestionState')
            ? EmbeddedObjectSuggestionState.fromJson(
                json_['embeddedObjectSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        positioningSuggestionState:
            json_.containsKey('positioningSuggestionState')
            ? PositionedObjectPositioningSuggestionState.fromJson(
                json_['positioningSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final embeddedObjectSuggestionState = this.embeddedObjectSuggestionState;
    final positioningSuggestionState = this.positioningSuggestionState;
    return {
      'embeddedObjectSuggestionState': ?embeddedObjectSuggestionState,
      'positioningSuggestionState': ?positioningSuggestionState,
    };
  }
}

/// Specifies a contiguous range of text.
class Range {
  /// The zero-based end index of this range, exclusive, in UTF-16 code units.
  ///
  /// In all current uses, an end index must be provided. This field is an
  /// Int32Value in order to accommodate future use cases with open-ended
  /// ranges.
  core.int? endIndex;

  /// The ID of the header, footer, or footnote that this range is contained in.
  ///
  /// An empty segment ID signifies the document's body.
  core.String? segmentId;

  /// The zero-based start index of this range, in UTF-16 code units.
  ///
  /// In all current uses, a start index must be provided. This field is an
  /// Int32Value in order to accommodate future use cases with open-ended
  /// ranges.
  core.int? startIndex;

  /// The tab that contains this range.
  ///
  /// When omitted, the request applies to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  Range({this.endIndex, this.segmentId, this.startIndex, this.tabId});

  Range.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.int?,
        segmentId: json_['segmentId'] as core.String?,
        startIndex: json_['startIndex'] as core.int?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endIndex = this.endIndex;
    final segmentId = this.segmentId;
    final startIndex = this.startIndex;
    final tabId = this.tabId;
    return {
      'endIndex': ?endIndex,
      'segmentId': ?segmentId,
      'startIndex': ?startIndex,
      'tabId': ?tabId,
    };
  }
}

/// Replaces all instances of text matching a criteria with replace text.
class ReplaceAllTextRequest {
  /// Finds text in the document matching this substring.
  SubstringMatchCriteria? containsText;

  /// The text that will replace the matched text.
  core.String? replaceText;

  /// The criteria used to specify in which tabs the replacement occurs.
  ///
  /// When omitted, the replacement applies to all tabs. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the replacement applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the replacement applies to the
  /// specified tabs. - If omitted, the replacement applies to all tabs.
  ///
  /// Optional.
  TabsCriteria? tabsCriteria;

  ReplaceAllTextRequest({
    this.containsText,
    this.replaceText,
    this.tabsCriteria,
  });

  ReplaceAllTextRequest.fromJson(core.Map json_)
    : this(
        containsText: json_.containsKey('containsText')
            ? SubstringMatchCriteria.fromJson(
                json_['containsText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replaceText: json_['replaceText'] as core.String?,
        tabsCriteria: json_.containsKey('tabsCriteria')
            ? TabsCriteria.fromJson(
                json_['tabsCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containsText = this.containsText;
    final replaceText = this.replaceText;
    final tabsCriteria = this.tabsCriteria;
    return {
      'containsText': ?containsText,
      'replaceText': ?replaceText,
      'tabsCriteria': ?tabsCriteria,
    };
  }
}

/// The result of replacing text.
typedef ReplaceAllTextResponse = $ReplaceAllTextResponse;

/// Replaces an existing image with a new image.
///
/// Replacing an image removes some image effects from the existing image in
/// order to mirror the behavior of the Docs editor.
class ReplaceImageRequest {
  /// The ID of the existing image that will be replaced.
  ///
  /// The ID can be retrieved from the response of a get request.
  core.String? imageObjectId;

  /// The replacement method.
  /// Possible string values are:
  /// - "IMAGE_REPLACE_METHOD_UNSPECIFIED" : Unspecified image replace method.
  /// This value must not be used.
  /// - "CENTER_CROP" : Scales and centers the image to fill the bounds of the
  /// original image. The image may be cropped in order to fill the original
  /// image's bounds. The rendered size of the image will be the same as the
  /// original image.
  core.String? imageReplaceMethod;

  /// The tab that the image to be replaced is in.
  ///
  /// When omitted, the request is applied to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If omitted, the request applies to the first tab in the
  /// document.
  core.String? tabId;

  /// The URI of the new image.
  ///
  /// The image is fetched once at insertion time and a copy is stored for
  /// display inside the document. Images must be less than 50MB, cannot exceed
  /// 25 megapixels, and must be in PNG, JPEG, or GIF format. The provided URI
  /// can't surpass 2 KB in length. The URI is saved with the image, and exposed
  /// through the ImageProperties.source_uri field.
  core.String? uri;

  ReplaceImageRequest({
    this.imageObjectId,
    this.imageReplaceMethod,
    this.tabId,
    this.uri,
  });

  ReplaceImageRequest.fromJson(core.Map json_)
    : this(
        imageObjectId: json_['imageObjectId'] as core.String?,
        imageReplaceMethod: json_['imageReplaceMethod'] as core.String?,
        tabId: json_['tabId'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final imageObjectId = this.imageObjectId;
    final imageReplaceMethod = this.imageReplaceMethod;
    final tabId = this.tabId;
    final uri = this.uri;
    return {
      'imageObjectId': ?imageObjectId,
      'imageReplaceMethod': ?imageReplaceMethod,
      'tabId': ?tabId,
      'uri': ?uri,
    };
  }
}

/// Replaces the contents of the specified NamedRange or NamedRanges with the
/// given replacement content.
///
/// Note that an individual NamedRange may consist of multiple discontinuous
/// ranges. In this case, only the content in the first range will be replaced.
/// The other ranges and their content will be deleted. In cases where replacing
/// or deleting any ranges would result in an invalid document structure, a 400
/// bad request error is returned.
class ReplaceNamedRangeContentRequest {
  /// The ID of the named range whose content will be replaced.
  ///
  /// If there is no named range with the given ID a 400 bad request error is
  /// returned.
  core.String? namedRangeId;

  /// The name of the NamedRanges whose content will be replaced.
  ///
  /// If there are multiple named ranges with the given name, then the content
  /// of each one will be replaced. If there are no named ranges with the given
  /// name, then the request will be a no-op.
  core.String? namedRangeName;

  /// The criteria used to specify in which tabs the replacement occurs.
  ///
  /// When omitted, the replacement applies to all tabs. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the replacement applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the replacement applies to the
  /// specified tabs. - If omitted, the replacement applies to all tabs.
  ///
  /// Optional.
  TabsCriteria? tabsCriteria;

  /// Replaces the content of the specified named range(s) with the given text.
  core.String? text;

  ReplaceNamedRangeContentRequest({
    this.namedRangeId,
    this.namedRangeName,
    this.tabsCriteria,
    this.text,
  });

  ReplaceNamedRangeContentRequest.fromJson(core.Map json_)
    : this(
        namedRangeId: json_['namedRangeId'] as core.String?,
        namedRangeName: json_['namedRangeName'] as core.String?,
        tabsCriteria: json_.containsKey('tabsCriteria')
            ? TabsCriteria.fromJson(
                json_['tabsCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedRangeId = this.namedRangeId;
    final namedRangeName = this.namedRangeName;
    final tabsCriteria = this.tabsCriteria;
    final text = this.text;
    return {
      'namedRangeId': ?namedRangeId,
      'namedRangeName': ?namedRangeName,
      'tabsCriteria': ?tabsCriteria,
      'text': ?text,
    };
  }
}

/// A single update to apply to a document.
class Request {
  /// Adds a document tab.
  AddDocumentTabRequest? addDocumentTab;

  /// Creates a footer.
  CreateFooterRequest? createFooter;

  /// Creates a footnote.
  CreateFootnoteRequest? createFootnote;

  /// Creates a header.
  CreateHeaderRequest? createHeader;

  /// Creates a named range.
  CreateNamedRangeRequest? createNamedRange;

  /// Creates bullets for paragraphs.
  CreateParagraphBulletsRequest? createParagraphBullets;

  /// Deletes content from the document.
  DeleteContentRangeRequest? deleteContentRange;

  /// Deletes a footer from the document.
  DeleteFooterRequest? deleteFooter;

  /// Deletes a header from the document.
  DeleteHeaderRequest? deleteHeader;

  /// Deletes a named range.
  DeleteNamedRangeRequest? deleteNamedRange;

  /// Deletes bullets from paragraphs.
  DeleteParagraphBulletsRequest? deleteParagraphBullets;

  /// Deletes a positioned object from the document.
  DeletePositionedObjectRequest? deletePositionedObject;

  /// Deletes a document tab.
  DeleteTabRequest? deleteTab;

  /// Deletes a column from a table.
  DeleteTableColumnRequest? deleteTableColumn;

  /// Deletes a row from a table.
  DeleteTableRowRequest? deleteTableRow;

  /// Inserts a date.
  InsertDateRequest? insertDate;

  /// Inserts an inline image at the specified location.
  InsertInlineImageRequest? insertInlineImage;

  /// Inserts a page break at the specified location.
  InsertPageBreakRequest? insertPageBreak;

  /// Inserts a person mention.
  InsertPersonRequest? insertPerson;

  /// Inserts a section break at the specified location.
  InsertSectionBreakRequest? insertSectionBreak;

  /// Inserts a table at the specified location.
  InsertTableRequest? insertTable;

  /// Inserts an empty column into a table.
  InsertTableColumnRequest? insertTableColumn;

  /// Inserts an empty row into a table.
  InsertTableRowRequest? insertTableRow;

  /// Inserts text at the specified location.
  InsertTextRequest? insertText;

  /// Merges cells in a table.
  MergeTableCellsRequest? mergeTableCells;

  /// Updates the number of pinned header rows in a table.
  PinTableHeaderRowsRequest? pinTableHeaderRows;

  /// Replaces all instances of the specified text.
  ReplaceAllTextRequest? replaceAllText;

  /// Replaces an image in the document.
  ReplaceImageRequest? replaceImage;

  /// Replaces the content in a named range.
  ReplaceNamedRangeContentRequest? replaceNamedRangeContent;

  /// Unmerges cells in a table.
  UnmergeTableCellsRequest? unmergeTableCells;

  /// Updates the style of the document.
  UpdateDocumentStyleRequest? updateDocumentStyle;

  /// Updates the properties of a document tab.
  UpdateDocumentTabPropertiesRequest? updateDocumentTabProperties;

  /// Updates the paragraph style at the specified range.
  UpdateParagraphStyleRequest? updateParagraphStyle;

  /// Updates the section style of the specified range.
  UpdateSectionStyleRequest? updateSectionStyle;

  /// Updates the style of table cells.
  UpdateTableCellStyleRequest? updateTableCellStyle;

  /// Updates the properties of columns in a table.
  UpdateTableColumnPropertiesRequest? updateTableColumnProperties;

  /// Updates the row style in a table.
  UpdateTableRowStyleRequest? updateTableRowStyle;

  /// Updates the text style at the specified range.
  UpdateTextStyleRequest? updateTextStyle;

  Request({
    this.addDocumentTab,
    this.createFooter,
    this.createFootnote,
    this.createHeader,
    this.createNamedRange,
    this.createParagraphBullets,
    this.deleteContentRange,
    this.deleteFooter,
    this.deleteHeader,
    this.deleteNamedRange,
    this.deleteParagraphBullets,
    this.deletePositionedObject,
    this.deleteTab,
    this.deleteTableColumn,
    this.deleteTableRow,
    this.insertDate,
    this.insertInlineImage,
    this.insertPageBreak,
    this.insertPerson,
    this.insertSectionBreak,
    this.insertTable,
    this.insertTableColumn,
    this.insertTableRow,
    this.insertText,
    this.mergeTableCells,
    this.pinTableHeaderRows,
    this.replaceAllText,
    this.replaceImage,
    this.replaceNamedRangeContent,
    this.unmergeTableCells,
    this.updateDocumentStyle,
    this.updateDocumentTabProperties,
    this.updateParagraphStyle,
    this.updateSectionStyle,
    this.updateTableCellStyle,
    this.updateTableColumnProperties,
    this.updateTableRowStyle,
    this.updateTextStyle,
  });

  Request.fromJson(core.Map json_)
    : this(
        addDocumentTab: json_.containsKey('addDocumentTab')
            ? AddDocumentTabRequest.fromJson(
                json_['addDocumentTab'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createFooter: json_.containsKey('createFooter')
            ? CreateFooterRequest.fromJson(
                json_['createFooter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createFootnote: json_.containsKey('createFootnote')
            ? CreateFootnoteRequest.fromJson(
                json_['createFootnote'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createHeader: json_.containsKey('createHeader')
            ? CreateHeaderRequest.fromJson(
                json_['createHeader'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createNamedRange: json_.containsKey('createNamedRange')
            ? CreateNamedRangeRequest.fromJson(
                json_['createNamedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createParagraphBullets: json_.containsKey('createParagraphBullets')
            ? CreateParagraphBulletsRequest.fromJson(
                json_['createParagraphBullets']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteContentRange: json_.containsKey('deleteContentRange')
            ? DeleteContentRangeRequest.fromJson(
                json_['deleteContentRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteFooter: json_.containsKey('deleteFooter')
            ? DeleteFooterRequest.fromJson(
                json_['deleteFooter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteHeader: json_.containsKey('deleteHeader')
            ? DeleteHeaderRequest.fromJson(
                json_['deleteHeader'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteNamedRange: json_.containsKey('deleteNamedRange')
            ? DeleteNamedRangeRequest.fromJson(
                json_['deleteNamedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteParagraphBullets: json_.containsKey('deleteParagraphBullets')
            ? DeleteParagraphBulletsRequest.fromJson(
                json_['deleteParagraphBullets']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deletePositionedObject: json_.containsKey('deletePositionedObject')
            ? DeletePositionedObjectRequest.fromJson(
                json_['deletePositionedObject']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTab: json_.containsKey('deleteTab')
            ? DeleteTabRequest.fromJson(
                json_['deleteTab'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTableColumn: json_.containsKey('deleteTableColumn')
            ? DeleteTableColumnRequest.fromJson(
                json_['deleteTableColumn']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTableRow: json_.containsKey('deleteTableRow')
            ? DeleteTableRowRequest.fromJson(
                json_['deleteTableRow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertDate: json_.containsKey('insertDate')
            ? InsertDateRequest.fromJson(
                json_['insertDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertInlineImage: json_.containsKey('insertInlineImage')
            ? InsertInlineImageRequest.fromJson(
                json_['insertInlineImage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertPageBreak: json_.containsKey('insertPageBreak')
            ? InsertPageBreakRequest.fromJson(
                json_['insertPageBreak'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertPerson: json_.containsKey('insertPerson')
            ? InsertPersonRequest.fromJson(
                json_['insertPerson'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertSectionBreak: json_.containsKey('insertSectionBreak')
            ? InsertSectionBreakRequest.fromJson(
                json_['insertSectionBreak']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertTable: json_.containsKey('insertTable')
            ? InsertTableRequest.fromJson(
                json_['insertTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertTableColumn: json_.containsKey('insertTableColumn')
            ? InsertTableColumnRequest.fromJson(
                json_['insertTableColumn']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertTableRow: json_.containsKey('insertTableRow')
            ? InsertTableRowRequest.fromJson(
                json_['insertTableRow'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertText: json_.containsKey('insertText')
            ? InsertTextRequest.fromJson(
                json_['insertText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mergeTableCells: json_.containsKey('mergeTableCells')
            ? MergeTableCellsRequest.fromJson(
                json_['mergeTableCells'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pinTableHeaderRows: json_.containsKey('pinTableHeaderRows')
            ? PinTableHeaderRowsRequest.fromJson(
                json_['pinTableHeaderRows']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        replaceAllText: json_.containsKey('replaceAllText')
            ? ReplaceAllTextRequest.fromJson(
                json_['replaceAllText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replaceImage: json_.containsKey('replaceImage')
            ? ReplaceImageRequest.fromJson(
                json_['replaceImage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replaceNamedRangeContent: json_.containsKey('replaceNamedRangeContent')
            ? ReplaceNamedRangeContentRequest.fromJson(
                json_['replaceNamedRangeContent']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        unmergeTableCells: json_.containsKey('unmergeTableCells')
            ? UnmergeTableCellsRequest.fromJson(
                json_['unmergeTableCells']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDocumentStyle: json_.containsKey('updateDocumentStyle')
            ? UpdateDocumentStyleRequest.fromJson(
                json_['updateDocumentStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDocumentTabProperties:
            json_.containsKey('updateDocumentTabProperties')
            ? UpdateDocumentTabPropertiesRequest.fromJson(
                json_['updateDocumentTabProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateParagraphStyle: json_.containsKey('updateParagraphStyle')
            ? UpdateParagraphStyleRequest.fromJson(
                json_['updateParagraphStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateSectionStyle: json_.containsKey('updateSectionStyle')
            ? UpdateSectionStyleRequest.fromJson(
                json_['updateSectionStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTableCellStyle: json_.containsKey('updateTableCellStyle')
            ? UpdateTableCellStyleRequest.fromJson(
                json_['updateTableCellStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTableColumnProperties:
            json_.containsKey('updateTableColumnProperties')
            ? UpdateTableColumnPropertiesRequest.fromJson(
                json_['updateTableColumnProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTableRowStyle: json_.containsKey('updateTableRowStyle')
            ? UpdateTableRowStyleRequest.fromJson(
                json_['updateTableRowStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTextStyle: json_.containsKey('updateTextStyle')
            ? UpdateTextStyleRequest.fromJson(
                json_['updateTextStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addDocumentTab = this.addDocumentTab;
    final createFooter = this.createFooter;
    final createFootnote = this.createFootnote;
    final createHeader = this.createHeader;
    final createNamedRange = this.createNamedRange;
    final createParagraphBullets = this.createParagraphBullets;
    final deleteContentRange = this.deleteContentRange;
    final deleteFooter = this.deleteFooter;
    final deleteHeader = this.deleteHeader;
    final deleteNamedRange = this.deleteNamedRange;
    final deleteParagraphBullets = this.deleteParagraphBullets;
    final deletePositionedObject = this.deletePositionedObject;
    final deleteTab = this.deleteTab;
    final deleteTableColumn = this.deleteTableColumn;
    final deleteTableRow = this.deleteTableRow;
    final insertDate = this.insertDate;
    final insertInlineImage = this.insertInlineImage;
    final insertPageBreak = this.insertPageBreak;
    final insertPerson = this.insertPerson;
    final insertSectionBreak = this.insertSectionBreak;
    final insertTable = this.insertTable;
    final insertTableColumn = this.insertTableColumn;
    final insertTableRow = this.insertTableRow;
    final insertText = this.insertText;
    final mergeTableCells = this.mergeTableCells;
    final pinTableHeaderRows = this.pinTableHeaderRows;
    final replaceAllText = this.replaceAllText;
    final replaceImage = this.replaceImage;
    final replaceNamedRangeContent = this.replaceNamedRangeContent;
    final unmergeTableCells = this.unmergeTableCells;
    final updateDocumentStyle = this.updateDocumentStyle;
    final updateDocumentTabProperties = this.updateDocumentTabProperties;
    final updateParagraphStyle = this.updateParagraphStyle;
    final updateSectionStyle = this.updateSectionStyle;
    final updateTableCellStyle = this.updateTableCellStyle;
    final updateTableColumnProperties = this.updateTableColumnProperties;
    final updateTableRowStyle = this.updateTableRowStyle;
    final updateTextStyle = this.updateTextStyle;
    return {
      'addDocumentTab': ?addDocumentTab,
      'createFooter': ?createFooter,
      'createFootnote': ?createFootnote,
      'createHeader': ?createHeader,
      'createNamedRange': ?createNamedRange,
      'createParagraphBullets': ?createParagraphBullets,
      'deleteContentRange': ?deleteContentRange,
      'deleteFooter': ?deleteFooter,
      'deleteHeader': ?deleteHeader,
      'deleteNamedRange': ?deleteNamedRange,
      'deleteParagraphBullets': ?deleteParagraphBullets,
      'deletePositionedObject': ?deletePositionedObject,
      'deleteTab': ?deleteTab,
      'deleteTableColumn': ?deleteTableColumn,
      'deleteTableRow': ?deleteTableRow,
      'insertDate': ?insertDate,
      'insertInlineImage': ?insertInlineImage,
      'insertPageBreak': ?insertPageBreak,
      'insertPerson': ?insertPerson,
      'insertSectionBreak': ?insertSectionBreak,
      'insertTable': ?insertTable,
      'insertTableColumn': ?insertTableColumn,
      'insertTableRow': ?insertTableRow,
      'insertText': ?insertText,
      'mergeTableCells': ?mergeTableCells,
      'pinTableHeaderRows': ?pinTableHeaderRows,
      'replaceAllText': ?replaceAllText,
      'replaceImage': ?replaceImage,
      'replaceNamedRangeContent': ?replaceNamedRangeContent,
      'unmergeTableCells': ?unmergeTableCells,
      'updateDocumentStyle': ?updateDocumentStyle,
      'updateDocumentTabProperties': ?updateDocumentTabProperties,
      'updateParagraphStyle': ?updateParagraphStyle,
      'updateSectionStyle': ?updateSectionStyle,
      'updateTableCellStyle': ?updateTableCellStyle,
      'updateTableColumnProperties': ?updateTableColumnProperties,
      'updateTableRowStyle': ?updateTableRowStyle,
      'updateTextStyle': ?updateTextStyle,
    };
  }
}

/// A single response from an update.
class Response {
  /// The result of adding a document tab.
  AddDocumentTabResponse? addDocumentTab;

  /// The result of creating a footer.
  CreateFooterResponse? createFooter;

  /// The result of creating a footnote.
  CreateFootnoteResponse? createFootnote;

  /// The result of creating a header.
  CreateHeaderResponse? createHeader;

  /// The result of creating a named range.
  CreateNamedRangeResponse? createNamedRange;

  /// The result of inserting an inline image.
  InsertInlineImageResponse? insertInlineImage;

  /// The result of inserting an inline Google Sheets chart.
  InsertInlineSheetsChartResponse? insertInlineSheetsChart;

  /// The result of replacing text.
  ReplaceAllTextResponse? replaceAllText;

  Response({
    this.addDocumentTab,
    this.createFooter,
    this.createFootnote,
    this.createHeader,
    this.createNamedRange,
    this.insertInlineImage,
    this.insertInlineSheetsChart,
    this.replaceAllText,
  });

  Response.fromJson(core.Map json_)
    : this(
        addDocumentTab: json_.containsKey('addDocumentTab')
            ? AddDocumentTabResponse.fromJson(
                json_['addDocumentTab'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createFooter: json_.containsKey('createFooter')
            ? CreateFooterResponse.fromJson(
                json_['createFooter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createFootnote: json_.containsKey('createFootnote')
            ? CreateFootnoteResponse.fromJson(
                json_['createFootnote'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createHeader: json_.containsKey('createHeader')
            ? CreateHeaderResponse.fromJson(
                json_['createHeader'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createNamedRange: json_.containsKey('createNamedRange')
            ? CreateNamedRangeResponse.fromJson(
                json_['createNamedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertInlineImage: json_.containsKey('insertInlineImage')
            ? InsertInlineImageResponse.fromJson(
                json_['insertInlineImage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertInlineSheetsChart: json_.containsKey('insertInlineSheetsChart')
            ? InsertInlineSheetsChartResponse.fromJson(
                json_['insertInlineSheetsChart']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        replaceAllText: json_.containsKey('replaceAllText')
            ? ReplaceAllTextResponse.fromJson(
                json_['replaceAllText'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addDocumentTab = this.addDocumentTab;
    final createFooter = this.createFooter;
    final createFootnote = this.createFootnote;
    final createHeader = this.createHeader;
    final createNamedRange = this.createNamedRange;
    final insertInlineImage = this.insertInlineImage;
    final insertInlineSheetsChart = this.insertInlineSheetsChart;
    final replaceAllText = this.replaceAllText;
    return {
      'addDocumentTab': ?addDocumentTab,
      'createFooter': ?createFooter,
      'createFootnote': ?createFootnote,
      'createHeader': ?createHeader,
      'createNamedRange': ?createNamedRange,
      'insertInlineImage': ?insertInlineImage,
      'insertInlineSheetsChart': ?insertInlineSheetsChart,
      'replaceAllText': ?replaceAllText,
    };
  }
}

/// An RGB color.
typedef RgbColor = $RgbColor;

/// A link to a Google resource (such as a file in Drive, a YouTube video, or a
/// Calendar event).
class RichLink {
  /// The ID of this link.
  ///
  /// Output only.
  core.String? richLinkId;

  /// The properties of this RichLink.
  ///
  /// This field is always present.
  ///
  /// Output only.
  RichLinkProperties? richLinkProperties;

  /// IDs for suggestions that remove this link from the document.
  ///
  /// A RichLink might have multiple deletion IDs if, for example, multiple
  /// users suggest deleting it. If empty, then this person link isn't suggested
  /// for deletion.
  core.List<core.String>? suggestedDeletionIds;

  /// IDs for suggestions that insert this link into the document.
  ///
  /// A RichLink might have multiple insertion IDs if it's a nested suggested
  /// change (a suggestion within a suggestion made by a different user, for
  /// example). If empty, then this person link isn't a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this RichLink, keyed by suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this RichLink.
  TextStyle? textStyle;

  RichLink({
    this.richLinkId,
    this.richLinkProperties,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  RichLink.fromJson(core.Map json_)
    : this(
        richLinkId: json_['richLinkId'] as core.String?,
        richLinkProperties: json_.containsKey('richLinkProperties')
            ? RichLinkProperties.fromJson(
                json_['richLinkProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final richLinkId = this.richLinkId;
    final richLinkProperties = this.richLinkProperties;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'richLinkId': ?richLinkId,
      'richLinkProperties': ?richLinkProperties,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Properties specific to a RichLink.
class RichLinkProperties {
  /// The [MIME type](https://developers.google.com/drive/api/v3/mime-types) of
  /// the RichLink, if there's one (for example, when it's a file in Drive).
  core.String? mimeType;

  /// The title of the RichLink as displayed in the link.
  ///
  /// This title matches the title of the linked resource at the time of the
  /// insertion or last update of the link. This field is always present.
  core.String? title;

  /// The URI to the RichLink.
  ///
  /// This is always present.
  core.String? uri;

  RichLinkProperties({this.mimeType, this.title, this.uri});

  RichLinkProperties.fromJson(core.Map json_)
    : this(
        mimeType: json_['mimeType'] as core.String?,
        title: json_['title'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mimeType = this.mimeType;
    final title = this.title;
    final uri = this.uri;
    return {'mimeType': ?mimeType, 'title': ?title, 'uri': ?uri};
  }
}

/// A StructuralElement representing a section break.
///
/// A section is a range of content that has the same SectionStyle. A section
/// break represents the start of a new section, and the section style applies
/// to the section after the section break. The document body always begins with
/// a section break.
class SectionBreak {
  /// The style of the section after this section break.
  SectionStyle? sectionStyle;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A SectionBreak may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  SectionBreak({
    this.sectionStyle,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
  });

  SectionBreak.fromJson(core.Map json_)
    : this(
        sectionStyle: json_.containsKey('sectionStyle')
            ? SectionStyle.fromJson(
                json_['sectionStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sectionStyle = this.sectionStyle;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    return {
      'sectionStyle': ?sectionStyle,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
    };
  }
}

/// Properties that apply to a section's column.
class SectionColumnProperties {
  /// The padding at the end of the column.
  Dimension? paddingEnd;

  /// The width of the column.
  ///
  /// Output only.
  Dimension? width;

  SectionColumnProperties({this.paddingEnd, this.width});

  SectionColumnProperties.fromJson(core.Map json_)
    : this(
        paddingEnd: json_.containsKey('paddingEnd')
            ? Dimension.fromJson(
                json_['paddingEnd'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final paddingEnd = this.paddingEnd;
    final width = this.width;
    return {'paddingEnd': ?paddingEnd, 'width': ?width};
  }
}

/// The styling that applies to a section.
class SectionStyle {
  /// The section's columns properties.
  ///
  /// If empty, the section contains one column with the default properties in
  /// the Docs editor. A section can be updated to have no more than 3 columns.
  /// When updating this property, setting a concrete value is required.
  /// Unsetting this property will result in a 400 bad request error.
  core.List<SectionColumnProperties>? columnProperties;

  /// The style of column separators.
  ///
  /// This style can be set even when there's one column in the section. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  /// Possible string values are:
  /// - "COLUMN_SEPARATOR_STYLE_UNSPECIFIED" : An unspecified column separator
  /// style.
  /// - "NONE" : No column separator lines between columns.
  /// - "BETWEEN_EACH_COLUMN" : Renders a column separator line between each
  /// column.
  core.String? columnSeparatorStyle;

  /// The content direction of this section.
  ///
  /// If unset, the value defaults to LEFT_TO_RIGHT. When updating this
  /// property, setting a concrete value is required. Unsetting this property
  /// results in a 400 bad request error.
  /// Possible string values are:
  /// - "CONTENT_DIRECTION_UNSPECIFIED" : The content direction is unspecified.
  /// - "LEFT_TO_RIGHT" : The content goes from left to right.
  /// - "RIGHT_TO_LEFT" : The content goes from right to left.
  core.String? contentDirection;

  /// The ID of the default footer.
  ///
  /// If unset, the value inherits from the previous SectionBreak's
  /// SectionStyle. If the value is unset in the first SectionBreak, it inherits
  /// from DocumentStyle's default_footer_id. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? defaultFooterId;

  /// The ID of the default header.
  ///
  /// If unset, the value inherits from the previous SectionBreak's
  /// SectionStyle. If the value is unset in the first SectionBreak, it inherits
  /// from DocumentStyle's default_header_id. If DocumentMode is PAGELESS, this
  /// property will not be rendered. This property is read-only.
  core.String? defaultHeaderId;

  /// The ID of the footer used only for even pages.
  ///
  /// If the value of DocumentStyle's use_even_page_header_footer is true, this
  /// value is used for the footers on even pages in the section. If it is
  /// false, the footers on even pages use the default_footer_id. If unset, the
  /// value inherits from the previous SectionBreak's SectionStyle. If the value
  /// is unset in the first SectionBreak, it inherits from DocumentStyle's
  /// even_page_footer_id. If DocumentMode is PAGELESS, this property will not
  /// be rendered. This property is read-only.
  core.String? evenPageFooterId;

  /// The ID of the header used only for even pages.
  ///
  /// If the value of DocumentStyle's use_even_page_header_footer is true, this
  /// value is used for the headers on even pages in the section. If it is
  /// false, the headers on even pages use the default_header_id. If unset, the
  /// value inherits from the previous SectionBreak's SectionStyle. If the value
  /// is unset in the first SectionBreak, it inherits from DocumentStyle's
  /// even_page_header_id. If DocumentMode is PAGELESS, this property will not
  /// be rendered. This property is read-only.
  core.String? evenPageHeaderId;

  /// The ID of the footer used only for the first page of the section.
  ///
  /// If use_first_page_header_footer is true, this value is used for the footer
  /// on the first page of the section. If it's false, the footer on the first
  /// page of the section uses the default_footer_id. If unset, the value
  /// inherits from the previous SectionBreak's SectionStyle. If the value is
  /// unset in the first SectionBreak, it inherits from DocumentStyle's
  /// first_page_footer_id. If DocumentMode is PAGELESS, this property will not
  /// be rendered. This property is read-only.
  core.String? firstPageFooterId;

  /// The ID of the header used only for the first page of the section.
  ///
  /// If use_first_page_header_footer is true, this value is used for the header
  /// on the first page of the section. If it's false, the header on the first
  /// page of the section uses the default_header_id. If unset, the value
  /// inherits from the previous SectionBreak's SectionStyle. If the value is
  /// unset in the first SectionBreak, it inherits from DocumentStyle's
  /// first_page_header_id. If DocumentMode is PAGELESS, this property will not
  /// be rendered. This property is read-only.
  core.String? firstPageHeaderId;

  /// Indicates whether to flip the dimensions of DocumentStyle's page_size for
  /// this section, which allows changing the page orientation between portrait
  /// and landscape.
  ///
  /// If unset, the value inherits from DocumentStyle's flip_page_orientation.
  /// If DocumentMode is PAGELESS, this property will not be rendered. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  ///
  /// Optional.
  core.bool? flipPageOrientation;

  /// The bottom page margin of the section.
  ///
  /// If unset, the value defaults to margin_bottom from DocumentStyle. If
  /// DocumentMode is PAGELESS, this property will not be rendered. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  Dimension? marginBottom;

  /// The footer margin of the section.
  ///
  /// If unset, the value defaults to margin_footer from DocumentStyle. If
  /// updated, use_custom_header_footer_margins is set to true on DocumentStyle.
  /// The value of use_custom_header_footer_margins on DocumentStyle indicates
  /// if a footer margin is being respected for this section If DocumentMode is
  /// PAGELESS, this property will not be rendered. When updating this property,
  /// setting a concrete value is required. Unsetting this property results in a
  /// 400 bad request error.
  Dimension? marginFooter;

  /// The header margin of the section.
  ///
  /// If unset, the value defaults to margin_header from DocumentStyle. If
  /// updated, use_custom_header_footer_margins is set to true on DocumentStyle.
  /// The value of use_custom_header_footer_margins on DocumentStyle indicates
  /// if a header margin is being respected for this section. If DocumentMode is
  /// PAGELESS, this property will not be rendered. When updating this property,
  /// setting a concrete value is required. Unsetting this property results in a
  /// 400 bad request error.
  Dimension? marginHeader;

  /// The left page margin of the section.
  ///
  /// If unset, the value defaults to margin_left from DocumentStyle. Updating
  /// the left margin causes columns in this section to resize. Since the margin
  /// affects column width, it's applied before column properties. If
  /// DocumentMode is PAGELESS, this property will not be rendered. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  Dimension? marginLeft;

  /// The right page margin of the section.
  ///
  /// If unset, the value defaults to margin_right from DocumentStyle. Updating
  /// the right margin causes columns in this section to resize. Since the
  /// margin affects column width, it's applied before column properties. If
  /// DocumentMode is PAGELESS, this property will not be rendered. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  Dimension? marginRight;

  /// The top page margin of the section.
  ///
  /// If unset, the value defaults to margin_top from DocumentStyle. If
  /// DocumentMode is PAGELESS, this property will not be rendered. When
  /// updating this property, setting a concrete value is required. Unsetting
  /// this property results in a 400 bad request error.
  Dimension? marginTop;

  /// The page number from which to start counting the number of pages for this
  /// section.
  ///
  /// If unset, page numbering continues from the previous section. If the value
  /// is unset in the first SectionBreak, refer to DocumentStyle's
  /// page_number_start. If DocumentMode is PAGELESS, this property will not be
  /// rendered. When updating this property, setting a concrete value is
  /// required. Unsetting this property results in a 400 bad request error.
  core.int? pageNumberStart;

  /// The type of section.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SECTION_TYPE_UNSPECIFIED" : The section type is unspecified.
  /// - "CONTINUOUS" : The section starts immediately after the last paragraph
  /// of the previous section.
  /// - "NEXT_PAGE" : The section starts on the next page.
  core.String? sectionType;

  /// Indicates whether to use the first page header / footer IDs for the first
  /// page of the section.
  ///
  /// If unset, it inherits from DocumentStyle's use_first_page_header_footer
  /// for the first section. If the value is unset for subsequent sectors, it
  /// should be interpreted as false. If DocumentMode is PAGELESS, this property
  /// will not be rendered. When updating this property, setting a concrete
  /// value is required. Unsetting this property results in a 400 bad request
  /// error.
  core.bool? useFirstPageHeaderFooter;

  SectionStyle({
    this.columnProperties,
    this.columnSeparatorStyle,
    this.contentDirection,
    this.defaultFooterId,
    this.defaultHeaderId,
    this.evenPageFooterId,
    this.evenPageHeaderId,
    this.firstPageFooterId,
    this.firstPageHeaderId,
    this.flipPageOrientation,
    this.marginBottom,
    this.marginFooter,
    this.marginHeader,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.pageNumberStart,
    this.sectionType,
    this.useFirstPageHeaderFooter,
  });

  SectionStyle.fromJson(core.Map json_)
    : this(
        columnProperties: (json_['columnProperties'] as core.List?)
            ?.map(
              (value) => SectionColumnProperties.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        columnSeparatorStyle: json_['columnSeparatorStyle'] as core.String?,
        contentDirection: json_['contentDirection'] as core.String?,
        defaultFooterId: json_['defaultFooterId'] as core.String?,
        defaultHeaderId: json_['defaultHeaderId'] as core.String?,
        evenPageFooterId: json_['evenPageFooterId'] as core.String?,
        evenPageHeaderId: json_['evenPageHeaderId'] as core.String?,
        firstPageFooterId: json_['firstPageFooterId'] as core.String?,
        firstPageHeaderId: json_['firstPageHeaderId'] as core.String?,
        flipPageOrientation: json_['flipPageOrientation'] as core.bool?,
        marginBottom: json_.containsKey('marginBottom')
            ? Dimension.fromJson(
                json_['marginBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginFooter: json_.containsKey('marginFooter')
            ? Dimension.fromJson(
                json_['marginFooter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginHeader: json_.containsKey('marginHeader')
            ? Dimension.fromJson(
                json_['marginHeader'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginLeft: json_.containsKey('marginLeft')
            ? Dimension.fromJson(
                json_['marginLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginRight: json_.containsKey('marginRight')
            ? Dimension.fromJson(
                json_['marginRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        marginTop: json_.containsKey('marginTop')
            ? Dimension.fromJson(
                json_['marginTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pageNumberStart: json_['pageNumberStart'] as core.int?,
        sectionType: json_['sectionType'] as core.String?,
        useFirstPageHeaderFooter:
            json_['useFirstPageHeaderFooter'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnProperties = this.columnProperties;
    final columnSeparatorStyle = this.columnSeparatorStyle;
    final contentDirection = this.contentDirection;
    final defaultFooterId = this.defaultFooterId;
    final defaultHeaderId = this.defaultHeaderId;
    final evenPageFooterId = this.evenPageFooterId;
    final evenPageHeaderId = this.evenPageHeaderId;
    final firstPageFooterId = this.firstPageFooterId;
    final firstPageHeaderId = this.firstPageHeaderId;
    final flipPageOrientation = this.flipPageOrientation;
    final marginBottom = this.marginBottom;
    final marginFooter = this.marginFooter;
    final marginHeader = this.marginHeader;
    final marginLeft = this.marginLeft;
    final marginRight = this.marginRight;
    final marginTop = this.marginTop;
    final pageNumberStart = this.pageNumberStart;
    final sectionType = this.sectionType;
    final useFirstPageHeaderFooter = this.useFirstPageHeaderFooter;
    return {
      'columnProperties': ?columnProperties,
      'columnSeparatorStyle': ?columnSeparatorStyle,
      'contentDirection': ?contentDirection,
      'defaultFooterId': ?defaultFooterId,
      'defaultHeaderId': ?defaultHeaderId,
      'evenPageFooterId': ?evenPageFooterId,
      'evenPageHeaderId': ?evenPageHeaderId,
      'firstPageFooterId': ?firstPageFooterId,
      'firstPageHeaderId': ?firstPageHeaderId,
      'flipPageOrientation': ?flipPageOrientation,
      'marginBottom': ?marginBottom,
      'marginFooter': ?marginFooter,
      'marginHeader': ?marginHeader,
      'marginLeft': ?marginLeft,
      'marginRight': ?marginRight,
      'marginTop': ?marginTop,
      'pageNumberStart': ?pageNumberStart,
      'sectionType': ?sectionType,
      'useFirstPageHeaderFooter': ?useFirstPageHeaderFooter,
    };
  }
}

/// The shading of a paragraph.
class Shading {
  /// The background color of this paragraph shading.
  OptionalColor? backgroundColor;

  Shading({this.backgroundColor});

  Shading.fromJson(core.Map json_)
    : this(
        backgroundColor: json_.containsKey('backgroundColor')
            ? OptionalColor.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColor = this.backgroundColor;
    return {'backgroundColor': ?backgroundColor};
  }
}

/// A mask that indicates which of the fields on the base Shading have been
/// changed in this suggested change.
///
/// For any field set to true, there's a new suggested value.
class ShadingSuggestionState {
  /// Indicates if there was a suggested change to the Shading.
  core.bool? backgroundColorSuggested;

  ShadingSuggestionState({this.backgroundColorSuggested});

  ShadingSuggestionState.fromJson(core.Map json_)
    : this(
        backgroundColorSuggested:
            json_['backgroundColorSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColorSuggested = this.backgroundColorSuggested;
    return {'backgroundColorSuggested': ?backgroundColorSuggested};
  }
}

/// A reference to a linked chart embedded from Google Sheets.
class SheetsChartReference {
  /// The ID of the specific chart in the Google Sheets spreadsheet that's
  /// embedded.
  core.int? chartId;

  /// The ID of the Google Sheets spreadsheet that contains the source chart.
  core.String? spreadsheetId;

  SheetsChartReference({this.chartId, this.spreadsheetId});

  SheetsChartReference.fromJson(core.Map json_)
    : this(
        chartId: json_['chartId'] as core.int?,
        spreadsheetId: json_['spreadsheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chartId = this.chartId;
    final spreadsheetId = this.spreadsheetId;
    return {'chartId': ?chartId, 'spreadsheetId': ?spreadsheetId};
  }
}

/// A mask that indicates which of the fields on the base SheetsChartReference
/// have been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class SheetsChartReferenceSuggestionState {
  /// Indicates if there was a suggested change to chart_id.
  core.bool? chartIdSuggested;

  /// Indicates if there was a suggested change to spreadsheet_id.
  core.bool? spreadsheetIdSuggested;

  SheetsChartReferenceSuggestionState({
    this.chartIdSuggested,
    this.spreadsheetIdSuggested,
  });

  SheetsChartReferenceSuggestionState.fromJson(core.Map json_)
    : this(
        chartIdSuggested: json_['chartIdSuggested'] as core.bool?,
        spreadsheetIdSuggested: json_['spreadsheetIdSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chartIdSuggested = this.chartIdSuggested;
    final spreadsheetIdSuggested = this.spreadsheetIdSuggested;
    return {
      'chartIdSuggested': ?chartIdSuggested,
      'spreadsheetIdSuggested': ?spreadsheetIdSuggested,
    };
  }
}

/// A width and height.
class Size {
  /// The height of the object.
  Dimension? height;

  /// The width of the object.
  Dimension? width;

  Size({this.height, this.width});

  Size.fromJson(core.Map json_)
    : this(
        height: json_.containsKey('height')
            ? Dimension.fromJson(
                json_['height'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final height = this.height;
    final width = this.width;
    return {'height': ?height, 'width': ?width};
  }
}

/// A mask that indicates which of the fields on the base Size have been changed
/// in this suggestion.
///
/// For any field set to true, the Size has a new suggested value.
class SizeSuggestionState {
  /// Indicates if there was a suggested change to height.
  core.bool? heightSuggested;

  /// Indicates if there was a suggested change to width.
  core.bool? widthSuggested;

  SizeSuggestionState({this.heightSuggested, this.widthSuggested});

  SizeSuggestionState.fromJson(core.Map json_)
    : this(
        heightSuggested: json_['heightSuggested'] as core.bool?,
        widthSuggested: json_['widthSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heightSuggested = this.heightSuggested;
    final widthSuggested = this.widthSuggested;
    return {
      'heightSuggested': ?heightSuggested,
      'widthSuggested': ?widthSuggested,
    };
  }
}

/// A StructuralElement describes content that provides structure to the
/// document.
class StructuralElement {
  /// The zero-based end index of this structural element, exclusive, in UTF-16
  /// code units.
  core.int? endIndex;

  /// A paragraph type of structural element.
  Paragraph? paragraph;

  /// A section break type of structural element.
  SectionBreak? sectionBreak;

  /// The zero-based start index of this structural element, in UTF-16 code
  /// units.
  core.int? startIndex;

  /// A table type of structural element.
  Table? table;

  /// A table of contents type of structural element.
  TableOfContents? tableOfContents;

  StructuralElement({
    this.endIndex,
    this.paragraph,
    this.sectionBreak,
    this.startIndex,
    this.table,
    this.tableOfContents,
  });

  StructuralElement.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.int?,
        paragraph: json_.containsKey('paragraph')
            ? Paragraph.fromJson(
                json_['paragraph'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sectionBreak: json_.containsKey('sectionBreak')
            ? SectionBreak.fromJson(
                json_['sectionBreak'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startIndex: json_['startIndex'] as core.int?,
        table: json_.containsKey('table')
            ? Table.fromJson(
                json_['table'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableOfContents: json_.containsKey('tableOfContents')
            ? TableOfContents.fromJson(
                json_['tableOfContents'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endIndex = this.endIndex;
    final paragraph = this.paragraph;
    final sectionBreak = this.sectionBreak;
    final startIndex = this.startIndex;
    final table = this.table;
    final tableOfContents = this.tableOfContents;
    return {
      'endIndex': ?endIndex,
      'paragraph': ?paragraph,
      'sectionBreak': ?sectionBreak,
      'startIndex': ?startIndex,
      'table': ?table,
      'tableOfContents': ?tableOfContents,
    };
  }
}

/// A criteria that matches a specific string of text in the document.
class SubstringMatchCriteria {
  /// Indicates whether the search should respect case: - `True`: the search is
  /// case sensitive.
  ///
  /// - `False`: the search is case insensitive.
  core.bool? matchCase;

  /// True if the find value should be treated as a regular expression.
  ///
  /// Any backslashes in the pattern should be escaped. - `True`: the search
  /// text is treated as a regular expressions. - `False`: the search text is
  /// treated as a substring for matching.
  ///
  /// Optional.
  core.bool? searchByRegex;

  /// The text to search for in the document.
  core.String? text;

  SubstringMatchCriteria({this.matchCase, this.searchByRegex, this.text});

  SubstringMatchCriteria.fromJson(core.Map json_)
    : this(
        matchCase: json_['matchCase'] as core.bool?,
        searchByRegex: json_['searchByRegex'] as core.bool?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final matchCase = this.matchCase;
    final searchByRegex = this.searchByRegex;
    final text = this.text;
    return {
      'matchCase': ?matchCase,
      'searchByRegex': ?searchByRegex,
      'text': ?text,
    };
  }
}

/// A suggested change to a Bullet.
class SuggestedBullet {
  /// A Bullet that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the bullet_suggestion_state to see which
  /// fields have changed and their new values.
  Bullet? bullet;

  /// A mask that indicates which of the fields on the base Bullet have been
  /// changed in this suggestion.
  BulletSuggestionState? bulletSuggestionState;

  SuggestedBullet({this.bullet, this.bulletSuggestionState});

  SuggestedBullet.fromJson(core.Map json_)
    : this(
        bullet: json_.containsKey('bullet')
            ? Bullet.fromJson(
                json_['bullet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bulletSuggestionState: json_.containsKey('bulletSuggestionState')
            ? BulletSuggestionState.fromJson(
                json_['bulletSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bullet = this.bullet;
    final bulletSuggestionState = this.bulletSuggestionState;
    return {'bullet': ?bullet, 'bulletSuggestionState': ?bulletSuggestionState};
  }
}

/// A suggested change to a DateElementProperties.
class SuggestedDateElementProperties {
  /// DateElementProperties that only includes the changes made in this
  /// suggestion.
  ///
  /// This can be used along with the date_element_properties_suggestion_state
  /// to see which fields have changed and their new values.
  DateElementProperties? dateElementProperties;

  /// A mask that indicates which of the fields on the base
  /// DateElementProperties have been changed in this suggestion.
  DateElementPropertiesSuggestionState? dateElementPropertiesSuggestionState;

  SuggestedDateElementProperties({
    this.dateElementProperties,
    this.dateElementPropertiesSuggestionState,
  });

  SuggestedDateElementProperties.fromJson(core.Map json_)
    : this(
        dateElementProperties: json_.containsKey('dateElementProperties')
            ? DateElementProperties.fromJson(
                json_['dateElementProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dateElementPropertiesSuggestionState:
            json_.containsKey('dateElementPropertiesSuggestionState')
            ? DateElementPropertiesSuggestionState.fromJson(
                json_['dateElementPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateElementProperties = this.dateElementProperties;
    final dateElementPropertiesSuggestionState =
        this.dateElementPropertiesSuggestionState;
    return {
      'dateElementProperties': ?dateElementProperties,
      'dateElementPropertiesSuggestionState':
          ?dateElementPropertiesSuggestionState,
    };
  }
}

/// A suggested change to the DocumentStyle.
class SuggestedDocumentStyle {
  /// A DocumentStyle that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the document_style_suggestion_state to see
  /// which fields have changed and their new values.
  DocumentStyle? documentStyle;

  /// A mask that indicates which of the fields on the base DocumentStyle have
  /// been changed in this suggestion.
  DocumentStyleSuggestionState? documentStyleSuggestionState;

  SuggestedDocumentStyle({
    this.documentStyle,
    this.documentStyleSuggestionState,
  });

  SuggestedDocumentStyle.fromJson(core.Map json_)
    : this(
        documentStyle: json_.containsKey('documentStyle')
            ? DocumentStyle.fromJson(
                json_['documentStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        documentStyleSuggestionState:
            json_.containsKey('documentStyleSuggestionState')
            ? DocumentStyleSuggestionState.fromJson(
                json_['documentStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentStyle = this.documentStyle;
    final documentStyleSuggestionState = this.documentStyleSuggestionState;
    return {
      'documentStyle': ?documentStyle,
      'documentStyleSuggestionState': ?documentStyleSuggestionState,
    };
  }
}

/// A suggested change to InlineObjectProperties.
class SuggestedInlineObjectProperties {
  /// An InlineObjectProperties that only includes the changes made in this
  /// suggestion.
  ///
  /// This can be used along with the inline_object_properties_suggestion_state
  /// to see which fields have changed and their new values.
  InlineObjectProperties? inlineObjectProperties;

  /// A mask that indicates which of the fields on the base
  /// InlineObjectProperties have been changed in this suggestion.
  InlineObjectPropertiesSuggestionState? inlineObjectPropertiesSuggestionState;

  SuggestedInlineObjectProperties({
    this.inlineObjectProperties,
    this.inlineObjectPropertiesSuggestionState,
  });

  SuggestedInlineObjectProperties.fromJson(core.Map json_)
    : this(
        inlineObjectProperties: json_.containsKey('inlineObjectProperties')
            ? InlineObjectProperties.fromJson(
                json_['inlineObjectProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        inlineObjectPropertiesSuggestionState:
            json_.containsKey('inlineObjectPropertiesSuggestionState')
            ? InlineObjectPropertiesSuggestionState.fromJson(
                json_['inlineObjectPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inlineObjectProperties = this.inlineObjectProperties;
    final inlineObjectPropertiesSuggestionState =
        this.inlineObjectPropertiesSuggestionState;
    return {
      'inlineObjectProperties': ?inlineObjectProperties,
      'inlineObjectPropertiesSuggestionState':
          ?inlineObjectPropertiesSuggestionState,
    };
  }
}

/// A suggested change to ListProperties.
class SuggestedListProperties {
  /// A ListProperties that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the list_properties_suggestion_state to see
  /// which fields have changed and their new values.
  ListProperties? listProperties;

  /// A mask that indicates which of the fields on the base ListProperties have
  /// been changed in this suggestion.
  ListPropertiesSuggestionState? listPropertiesSuggestionState;

  SuggestedListProperties({
    this.listProperties,
    this.listPropertiesSuggestionState,
  });

  SuggestedListProperties.fromJson(core.Map json_)
    : this(
        listProperties: json_.containsKey('listProperties')
            ? ListProperties.fromJson(
                json_['listProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        listPropertiesSuggestionState:
            json_.containsKey('listPropertiesSuggestionState')
            ? ListPropertiesSuggestionState.fromJson(
                json_['listPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listProperties = this.listProperties;
    final listPropertiesSuggestionState = this.listPropertiesSuggestionState;
    return {
      'listProperties': ?listProperties,
      'listPropertiesSuggestionState': ?listPropertiesSuggestionState,
    };
  }
}

/// A suggested change to the NamedStyles.
class SuggestedNamedStyles {
  /// A NamedStyles that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the named_styles_suggestion_state to see which
  /// fields have changed and their new values.
  NamedStyles? namedStyles;

  /// A mask that indicates which of the fields on the base NamedStyles have
  /// been changed in this suggestion.
  NamedStylesSuggestionState? namedStylesSuggestionState;

  SuggestedNamedStyles({this.namedStyles, this.namedStylesSuggestionState});

  SuggestedNamedStyles.fromJson(core.Map json_)
    : this(
        namedStyles: json_.containsKey('namedStyles')
            ? NamedStyles.fromJson(
                json_['namedStyles'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        namedStylesSuggestionState:
            json_.containsKey('namedStylesSuggestionState')
            ? NamedStylesSuggestionState.fromJson(
                json_['namedStylesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedStyles = this.namedStyles;
    final namedStylesSuggestionState = this.namedStylesSuggestionState;
    return {
      'namedStyles': ?namedStyles,
      'namedStylesSuggestionState': ?namedStylesSuggestionState,
    };
  }
}

/// A suggested change to a ParagraphStyle.
class SuggestedParagraphStyle {
  /// A ParagraphStyle that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the paragraph_style_suggestion_state to see
  /// which fields have changed and their new values.
  ParagraphStyle? paragraphStyle;

  /// A mask that indicates which of the fields on the base ParagraphStyle have
  /// been changed in this suggestion.
  ParagraphStyleSuggestionState? paragraphStyleSuggestionState;

  SuggestedParagraphStyle({
    this.paragraphStyle,
    this.paragraphStyleSuggestionState,
  });

  SuggestedParagraphStyle.fromJson(core.Map json_)
    : this(
        paragraphStyle: json_.containsKey('paragraphStyle')
            ? ParagraphStyle.fromJson(
                json_['paragraphStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        paragraphStyleSuggestionState:
            json_.containsKey('paragraphStyleSuggestionState')
            ? ParagraphStyleSuggestionState.fromJson(
                json_['paragraphStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final paragraphStyle = this.paragraphStyle;
    final paragraphStyleSuggestionState = this.paragraphStyleSuggestionState;
    return {
      'paragraphStyle': ?paragraphStyle,
      'paragraphStyleSuggestionState': ?paragraphStyleSuggestionState,
    };
  }
}

/// A suggested change to PositionedObjectProperties.
class SuggestedPositionedObjectProperties {
  /// A PositionedObjectProperties that only includes the changes made in this
  /// suggestion.
  ///
  /// This can be used along with the
  /// positioned_object_properties_suggestion_state to see which fields have
  /// changed and their new values.
  PositionedObjectProperties? positionedObjectProperties;

  /// A mask that indicates which of the fields on the base
  /// PositionedObjectProperties have been changed in this suggestion.
  PositionedObjectPropertiesSuggestionState?
  positionedObjectPropertiesSuggestionState;

  SuggestedPositionedObjectProperties({
    this.positionedObjectProperties,
    this.positionedObjectPropertiesSuggestionState,
  });

  SuggestedPositionedObjectProperties.fromJson(core.Map json_)
    : this(
        positionedObjectProperties:
            json_.containsKey('positionedObjectProperties')
            ? PositionedObjectProperties.fromJson(
                json_['positionedObjectProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        positionedObjectPropertiesSuggestionState:
            json_.containsKey('positionedObjectPropertiesSuggestionState')
            ? PositionedObjectPropertiesSuggestionState.fromJson(
                json_['positionedObjectPropertiesSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final positionedObjectProperties = this.positionedObjectProperties;
    final positionedObjectPropertiesSuggestionState =
        this.positionedObjectPropertiesSuggestionState;
    return {
      'positionedObjectProperties': ?positionedObjectProperties,
      'positionedObjectPropertiesSuggestionState':
          ?positionedObjectPropertiesSuggestionState,
    };
  }
}

/// A suggested change to a TableCellStyle.
class SuggestedTableCellStyle {
  /// A TableCellStyle that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the table_cell_style_suggestion_state to see
  /// which fields have changed and their new values.
  TableCellStyle? tableCellStyle;

  /// A mask that indicates which of the fields on the base TableCellStyle have
  /// been changed in this suggestion.
  TableCellStyleSuggestionState? tableCellStyleSuggestionState;

  SuggestedTableCellStyle({
    this.tableCellStyle,
    this.tableCellStyleSuggestionState,
  });

  SuggestedTableCellStyle.fromJson(core.Map json_)
    : this(
        tableCellStyle: json_.containsKey('tableCellStyle')
            ? TableCellStyle.fromJson(
                json_['tableCellStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableCellStyleSuggestionState:
            json_.containsKey('tableCellStyleSuggestionState')
            ? TableCellStyleSuggestionState.fromJson(
                json_['tableCellStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableCellStyle = this.tableCellStyle;
    final tableCellStyleSuggestionState = this.tableCellStyleSuggestionState;
    return {
      'tableCellStyle': ?tableCellStyle,
      'tableCellStyleSuggestionState': ?tableCellStyleSuggestionState,
    };
  }
}

/// A suggested change to a TableRowStyle.
class SuggestedTableRowStyle {
  /// A TableRowStyle that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the table_row_style_suggestion_state to see
  /// which fields have changed and their new values.
  TableRowStyle? tableRowStyle;

  /// A mask that indicates which of the fields on the base TableRowStyle have
  /// been changed in this suggestion.
  TableRowStyleSuggestionState? tableRowStyleSuggestionState;

  SuggestedTableRowStyle({
    this.tableRowStyle,
    this.tableRowStyleSuggestionState,
  });

  SuggestedTableRowStyle.fromJson(core.Map json_)
    : this(
        tableRowStyle: json_.containsKey('tableRowStyle')
            ? TableRowStyle.fromJson(
                json_['tableRowStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableRowStyleSuggestionState:
            json_.containsKey('tableRowStyleSuggestionState')
            ? TableRowStyleSuggestionState.fromJson(
                json_['tableRowStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableRowStyle = this.tableRowStyle;
    final tableRowStyleSuggestionState = this.tableRowStyleSuggestionState;
    return {
      'tableRowStyle': ?tableRowStyle,
      'tableRowStyleSuggestionState': ?tableRowStyleSuggestionState,
    };
  }
}

/// A suggested change to a TextStyle.
class SuggestedTextStyle {
  /// A TextStyle that only includes the changes made in this suggestion.
  ///
  /// This can be used along with the text_style_suggestion_state to see which
  /// fields have changed and their new values.
  TextStyle? textStyle;

  /// A mask that indicates which of the fields on the base TextStyle have been
  /// changed in this suggestion.
  TextStyleSuggestionState? textStyleSuggestionState;

  SuggestedTextStyle({this.textStyle, this.textStyleSuggestionState});

  SuggestedTextStyle.fromJson(core.Map json_)
    : this(
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textStyleSuggestionState: json_.containsKey('textStyleSuggestionState')
            ? TextStyleSuggestionState.fromJson(
                json_['textStyleSuggestionState']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final textStyle = this.textStyle;
    final textStyleSuggestionState = this.textStyleSuggestionState;
    return {
      'textStyle': ?textStyle,
      'textStyleSuggestionState': ?textStyleSuggestionState,
    };
  }
}

/// A tab in a document.
class Tab {
  /// The child tabs nested within this tab.
  core.List<Tab>? childTabs;

  /// A tab with document contents, like text and images.
  DocumentTab? documentTab;

  /// The properties of the tab, like ID and title.
  TabProperties? tabProperties;

  Tab({this.childTabs, this.documentTab, this.tabProperties});

  Tab.fromJson(core.Map json_)
    : this(
        childTabs: (json_['childTabs'] as core.List?)
            ?.map(
              (value) =>
                  Tab.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        documentTab: json_.containsKey('documentTab')
            ? DocumentTab.fromJson(
                json_['documentTab'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tabProperties: json_.containsKey('tabProperties')
            ? TabProperties.fromJson(
                json_['tabProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final childTabs = this.childTabs;
    final documentTab = this.documentTab;
    final tabProperties = this.tabProperties;
    return {
      'childTabs': ?childTabs,
      'documentTab': ?documentTab,
      'tabProperties': ?tabProperties,
    };
  }
}

/// Properties of a tab.
class TabProperties {
  /// The emoji icon displayed with the tab.
  ///
  /// A valid emoji icon is represented by a non-empty Unicode string. Any set
  /// of characters that don't represent a single emoji is invalid. If an emoji
  /// is invalid, a 400 bad request error is returned. If this value is unset or
  /// empty, the tab will display the default tab icon.
  ///
  /// Optional.
  core.String? iconEmoji;

  /// The zero-based index of the tab within the parent.
  core.int? index;

  /// The depth of the tab within the document.
  ///
  /// Root-level tabs start at 0.
  ///
  /// Output only.
  core.int? nestingLevel;

  /// The ID of the parent tab.
  ///
  /// Empty when the current tab is a root-level tab, which means it doesn't
  /// have any parents.
  ///
  /// Optional.
  core.String? parentTabId;

  /// The immutable ID of the tab.
  core.String? tabId;

  /// The user-visible name of the tab.
  core.String? title;

  TabProperties({
    this.iconEmoji,
    this.index,
    this.nestingLevel,
    this.parentTabId,
    this.tabId,
    this.title,
  });

  TabProperties.fromJson(core.Map json_)
    : this(
        iconEmoji: json_['iconEmoji'] as core.String?,
        index: json_['index'] as core.int?,
        nestingLevel: json_['nestingLevel'] as core.int?,
        parentTabId: json_['parentTabId'] as core.String?,
        tabId: json_['tabId'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iconEmoji = this.iconEmoji;
    final index = this.index;
    final nestingLevel = this.nestingLevel;
    final parentTabId = this.parentTabId;
    final tabId = this.tabId;
    final title = this.title;
    return {
      'iconEmoji': ?iconEmoji,
      'index': ?index,
      'nestingLevel': ?nestingLevel,
      'parentTabId': ?parentTabId,
      'tabId': ?tabId,
      'title': ?title,
    };
  }
}

/// A tab stop within a paragraph.
class TabStop {
  /// The alignment of this tab stop.
  ///
  /// If unset, the value defaults to START.
  /// Possible string values are:
  /// - "TAB_STOP_ALIGNMENT_UNSPECIFIED" : The tab stop alignment is
  /// unspecified.
  /// - "START" : The tab stop is aligned to the start of the line. This is the
  /// default.
  /// - "CENTER" : The tab stop is aligned to the center of the line.
  /// - "END" : The tab stop is aligned to the end of the line.
  core.String? alignment;

  /// The offset between this tab stop and the start margin.
  Dimension? offset;

  TabStop({this.alignment, this.offset});

  TabStop.fromJson(core.Map json_)
    : this(
        alignment: json_['alignment'] as core.String?,
        offset: json_.containsKey('offset')
            ? Dimension.fromJson(
                json_['offset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alignment = this.alignment;
    final offset = this.offset;
    return {'alignment': ?alignment, 'offset': ?offset};
  }
}

/// A StructuralElement representing a table.
class Table {
  /// Number of columns in the table.
  ///
  /// It's possible for a table to be non-rectangular, so some rows may have a
  /// different number of cells.
  core.int? columns;

  /// Number of rows in the table.
  core.int? rows;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A Table may have multiple insertion IDs if it's a nested suggested change.
  /// If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The contents and style of each row.
  core.List<TableRow>? tableRows;

  /// The style of the table.
  TableStyle? tableStyle;

  Table({
    this.columns,
    this.rows,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.tableRows,
    this.tableStyle,
  });

  Table.fromJson(core.Map json_)
    : this(
        columns: json_['columns'] as core.int?,
        rows: json_['rows'] as core.int?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tableRows: (json_['tableRows'] as core.List?)
            ?.map(
              (value) => TableRow.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tableStyle: json_.containsKey('tableStyle')
            ? TableStyle.fromJson(
                json_['tableStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columns = this.columns;
    final rows = this.rows;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final tableRows = this.tableRows;
    final tableStyle = this.tableStyle;
    return {
      'columns': ?columns,
      'rows': ?rows,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'tableRows': ?tableRows,
      'tableStyle': ?tableStyle,
    };
  }
}

/// The contents and style of a cell in a Table.
class TableCell {
  /// The content of the cell.
  core.List<StructuralElement>? content;

  /// The zero-based end index of this cell, exclusive, in UTF-16 code units.
  core.int? endIndex;

  /// The zero-based start index of this cell, in UTF-16 code units.
  core.int? startIndex;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A TableCell may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested changes to the table cell style, keyed by suggestion ID.
  core.Map<core.String, SuggestedTableCellStyle>?
  suggestedTableCellStyleChanges;

  /// The style of the cell.
  TableCellStyle? tableCellStyle;

  TableCell({
    this.content,
    this.endIndex,
    this.startIndex,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTableCellStyleChanges,
    this.tableCellStyle,
  });

  TableCell.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        endIndex: json_['endIndex'] as core.int?,
        startIndex: json_['startIndex'] as core.int?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTableCellStyleChanges:
            (json_['suggestedTableCellStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTableCellStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        tableCellStyle: json_.containsKey('tableCellStyle')
            ? TableCellStyle.fromJson(
                json_['tableCellStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final endIndex = this.endIndex;
    final startIndex = this.startIndex;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTableCellStyleChanges = this.suggestedTableCellStyleChanges;
    final tableCellStyle = this.tableCellStyle;
    return {
      'content': ?content,
      'endIndex': ?endIndex,
      'startIndex': ?startIndex,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTableCellStyleChanges': ?suggestedTableCellStyleChanges,
      'tableCellStyle': ?tableCellStyle,
    };
  }
}

/// A border around a table cell.
///
/// Table cell borders cannot be transparent. To hide a table cell border, make
/// its width 0.
class TableCellBorder {
  /// The color of the border.
  ///
  /// This color cannot be transparent.
  OptionalColor? color;

  /// The dash style of the border.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  core.String? dashStyle;

  /// The width of the border.
  Dimension? width;

  TableCellBorder({this.color, this.dashStyle, this.width});

  TableCellBorder.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? OptionalColor.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dashStyle: json_['dashStyle'] as core.String?,
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final dashStyle = this.dashStyle;
    final width = this.width;
    return {'color': ?color, 'dashStyle': ?dashStyle, 'width': ?width};
  }
}

/// Location of a single cell within a table.
class TableCellLocation {
  /// The zero-based column index.
  ///
  /// For example, the second column in the table has a column index of 1.
  core.int? columnIndex;

  /// The zero-based row index.
  ///
  /// For example, the second row in the table has a row index of 1.
  core.int? rowIndex;

  /// The location where the table starts in the document.
  Location? tableStartLocation;

  TableCellLocation({this.columnIndex, this.rowIndex, this.tableStartLocation});

  TableCellLocation.fromJson(core.Map json_)
    : this(
        columnIndex: json_['columnIndex'] as core.int?,
        rowIndex: json_['rowIndex'] as core.int?,
        tableStartLocation: json_.containsKey('tableStartLocation')
            ? Location.fromJson(
                json_['tableStartLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnIndex = this.columnIndex;
    final rowIndex = this.rowIndex;
    final tableStartLocation = this.tableStartLocation;
    return {
      'columnIndex': ?columnIndex,
      'rowIndex': ?rowIndex,
      'tableStartLocation': ?tableStartLocation,
    };
  }
}

/// The style of a TableCell.
///
/// Inherited table cell styles are represented as unset fields in this message.
/// A table cell style can inherit from the table's style.
class TableCellStyle {
  /// The background color of the cell.
  OptionalColor? backgroundColor;

  /// The bottom border of the cell.
  TableCellBorder? borderBottom;

  /// The left border of the cell.
  TableCellBorder? borderLeft;

  /// The right border of the cell.
  TableCellBorder? borderRight;

  /// The top border of the cell.
  TableCellBorder? borderTop;

  /// The column span of the cell.
  ///
  /// This property is read-only.
  core.int? columnSpan;

  /// The alignment of the content in the table cell.
  ///
  /// The default alignment matches the alignment for newly created table cells
  /// in the Docs editor.
  /// Possible string values are:
  /// - "CONTENT_ALIGNMENT_UNSPECIFIED" : An unspecified content alignment. The
  /// content alignment is inherited from the parent if one exists.
  /// - "CONTENT_ALIGNMENT_UNSUPPORTED" : An unsupported content alignment.
  /// - "TOP" : An alignment that aligns the content to the top of the content
  /// holder. Corresponds to ECMA-376 ST_TextAnchoringType 't'.
  /// - "MIDDLE" : An alignment that aligns the content to the middle of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'ctr'.
  /// - "BOTTOM" : An alignment that aligns the content to the bottom of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'b'.
  core.String? contentAlignment;

  /// The bottom padding of the cell.
  Dimension? paddingBottom;

  /// The left padding of the cell.
  Dimension? paddingLeft;

  /// The right padding of the cell.
  Dimension? paddingRight;

  /// The top padding of the cell.
  Dimension? paddingTop;

  /// The row span of the cell.
  ///
  /// This property is read-only.
  core.int? rowSpan;

  TableCellStyle({
    this.backgroundColor,
    this.borderBottom,
    this.borderLeft,
    this.borderRight,
    this.borderTop,
    this.columnSpan,
    this.contentAlignment,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.rowSpan,
  });

  TableCellStyle.fromJson(core.Map json_)
    : this(
        backgroundColor: json_.containsKey('backgroundColor')
            ? OptionalColor.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderBottom: json_.containsKey('borderBottom')
            ? TableCellBorder.fromJson(
                json_['borderBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderLeft: json_.containsKey('borderLeft')
            ? TableCellBorder.fromJson(
                json_['borderLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderRight: json_.containsKey('borderRight')
            ? TableCellBorder.fromJson(
                json_['borderRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        borderTop: json_.containsKey('borderTop')
            ? TableCellBorder.fromJson(
                json_['borderTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        columnSpan: json_['columnSpan'] as core.int?,
        contentAlignment: json_['contentAlignment'] as core.String?,
        paddingBottom: json_.containsKey('paddingBottom')
            ? Dimension.fromJson(
                json_['paddingBottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        paddingLeft: json_.containsKey('paddingLeft')
            ? Dimension.fromJson(
                json_['paddingLeft'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        paddingRight: json_.containsKey('paddingRight')
            ? Dimension.fromJson(
                json_['paddingRight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        paddingTop: json_.containsKey('paddingTop')
            ? Dimension.fromJson(
                json_['paddingTop'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rowSpan: json_['rowSpan'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColor = this.backgroundColor;
    final borderBottom = this.borderBottom;
    final borderLeft = this.borderLeft;
    final borderRight = this.borderRight;
    final borderTop = this.borderTop;
    final columnSpan = this.columnSpan;
    final contentAlignment = this.contentAlignment;
    final paddingBottom = this.paddingBottom;
    final paddingLeft = this.paddingLeft;
    final paddingRight = this.paddingRight;
    final paddingTop = this.paddingTop;
    final rowSpan = this.rowSpan;
    return {
      'backgroundColor': ?backgroundColor,
      'borderBottom': ?borderBottom,
      'borderLeft': ?borderLeft,
      'borderRight': ?borderRight,
      'borderTop': ?borderTop,
      'columnSpan': ?columnSpan,
      'contentAlignment': ?contentAlignment,
      'paddingBottom': ?paddingBottom,
      'paddingLeft': ?paddingLeft,
      'paddingRight': ?paddingRight,
      'paddingTop': ?paddingTop,
      'rowSpan': ?rowSpan,
    };
  }
}

/// A mask that indicates which of the fields on the base TableCellStyle have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class TableCellStyleSuggestionState {
  /// Indicates if there was a suggested change to background_color.
  core.bool? backgroundColorSuggested;

  /// Indicates if there was a suggested change to border_bottom.
  core.bool? borderBottomSuggested;

  /// Indicates if there was a suggested change to border_left.
  core.bool? borderLeftSuggested;

  /// Indicates if there was a suggested change to border_right.
  core.bool? borderRightSuggested;

  /// Indicates if there was a suggested change to border_top.
  core.bool? borderTopSuggested;

  /// Indicates if there was a suggested change to column_span.
  core.bool? columnSpanSuggested;

  /// Indicates if there was a suggested change to content_alignment.
  core.bool? contentAlignmentSuggested;

  /// Indicates if there was a suggested change to padding_bottom.
  core.bool? paddingBottomSuggested;

  /// Indicates if there was a suggested change to padding_left.
  core.bool? paddingLeftSuggested;

  /// Indicates if there was a suggested change to padding_right.
  core.bool? paddingRightSuggested;

  /// Indicates if there was a suggested change to padding_top.
  core.bool? paddingTopSuggested;

  /// Indicates if there was a suggested change to row_span.
  core.bool? rowSpanSuggested;

  TableCellStyleSuggestionState({
    this.backgroundColorSuggested,
    this.borderBottomSuggested,
    this.borderLeftSuggested,
    this.borderRightSuggested,
    this.borderTopSuggested,
    this.columnSpanSuggested,
    this.contentAlignmentSuggested,
    this.paddingBottomSuggested,
    this.paddingLeftSuggested,
    this.paddingRightSuggested,
    this.paddingTopSuggested,
    this.rowSpanSuggested,
  });

  TableCellStyleSuggestionState.fromJson(core.Map json_)
    : this(
        backgroundColorSuggested:
            json_['backgroundColorSuggested'] as core.bool?,
        borderBottomSuggested: json_['borderBottomSuggested'] as core.bool?,
        borderLeftSuggested: json_['borderLeftSuggested'] as core.bool?,
        borderRightSuggested: json_['borderRightSuggested'] as core.bool?,
        borderTopSuggested: json_['borderTopSuggested'] as core.bool?,
        columnSpanSuggested: json_['columnSpanSuggested'] as core.bool?,
        contentAlignmentSuggested:
            json_['contentAlignmentSuggested'] as core.bool?,
        paddingBottomSuggested: json_['paddingBottomSuggested'] as core.bool?,
        paddingLeftSuggested: json_['paddingLeftSuggested'] as core.bool?,
        paddingRightSuggested: json_['paddingRightSuggested'] as core.bool?,
        paddingTopSuggested: json_['paddingTopSuggested'] as core.bool?,
        rowSpanSuggested: json_['rowSpanSuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColorSuggested = this.backgroundColorSuggested;
    final borderBottomSuggested = this.borderBottomSuggested;
    final borderLeftSuggested = this.borderLeftSuggested;
    final borderRightSuggested = this.borderRightSuggested;
    final borderTopSuggested = this.borderTopSuggested;
    final columnSpanSuggested = this.columnSpanSuggested;
    final contentAlignmentSuggested = this.contentAlignmentSuggested;
    final paddingBottomSuggested = this.paddingBottomSuggested;
    final paddingLeftSuggested = this.paddingLeftSuggested;
    final paddingRightSuggested = this.paddingRightSuggested;
    final paddingTopSuggested = this.paddingTopSuggested;
    final rowSpanSuggested = this.rowSpanSuggested;
    return {
      'backgroundColorSuggested': ?backgroundColorSuggested,
      'borderBottomSuggested': ?borderBottomSuggested,
      'borderLeftSuggested': ?borderLeftSuggested,
      'borderRightSuggested': ?borderRightSuggested,
      'borderTopSuggested': ?borderTopSuggested,
      'columnSpanSuggested': ?columnSpanSuggested,
      'contentAlignmentSuggested': ?contentAlignmentSuggested,
      'paddingBottomSuggested': ?paddingBottomSuggested,
      'paddingLeftSuggested': ?paddingLeftSuggested,
      'paddingRightSuggested': ?paddingRightSuggested,
      'paddingTopSuggested': ?paddingTopSuggested,
      'rowSpanSuggested': ?rowSpanSuggested,
    };
  }
}

/// The properties of a column in a table.
class TableColumnProperties {
  /// The width of the column.
  ///
  /// Set when the column's `width_type` is FIXED_WIDTH.
  Dimension? width;

  /// The width type of the column.
  /// Possible string values are:
  /// - "WIDTH_TYPE_UNSPECIFIED" : The column width type is unspecified.
  /// - "EVENLY_DISTRIBUTED" : The column width is evenly distributed among the
  /// other evenly distributed columns. The width of the column is automatically
  /// determined and will have an equal portion of the width remaining for the
  /// table after accounting for all columns with specified widths.
  /// - "FIXED_WIDTH" : A fixed column width. The width property contains the
  /// column's width.
  core.String? widthType;

  TableColumnProperties({this.width, this.widthType});

  TableColumnProperties.fromJson(core.Map json_)
    : this(
        width: json_.containsKey('width')
            ? Dimension.fromJson(
                json_['width'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        widthType: json_['widthType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final width = this.width;
    final widthType = this.widthType;
    return {'width': ?width, 'widthType': ?widthType};
  }
}

/// A StructuralElement representing a table of contents.
class TableOfContents {
  /// The content of the table of contents.
  core.List<StructuralElement>? content;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A TableOfContents may have multiple insertion IDs if it is a nested
  /// suggested change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  TableOfContents({
    this.content,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
  });

  TableOfContents.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) => StructuralElement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    return {
      'content': ?content,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
    };
  }
}

/// A table range represents a reference to a subset of a table.
///
/// It's important to note that the cells specified by a table range do not
/// necessarily form a rectangle. For example, let's say we have a 3 x 3 table
/// where all the cells of the last row are merged together. The table looks
/// like this: \[ \] A table range with table cell location =
/// (table_start_location, row = 0, column = 0), row span = 3 and column span =
/// 2 specifies the following cells: x x \[ x x x \]
class TableRange {
  /// The column span of the table range.
  core.int? columnSpan;

  /// The row span of the table range.
  core.int? rowSpan;

  /// The cell location where the table range starts.
  TableCellLocation? tableCellLocation;

  TableRange({this.columnSpan, this.rowSpan, this.tableCellLocation});

  TableRange.fromJson(core.Map json_)
    : this(
        columnSpan: json_['columnSpan'] as core.int?,
        rowSpan: json_['rowSpan'] as core.int?,
        tableCellLocation: json_.containsKey('tableCellLocation')
            ? TableCellLocation.fromJson(
                json_['tableCellLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnSpan = this.columnSpan;
    final rowSpan = this.rowSpan;
    final tableCellLocation = this.tableCellLocation;
    return {
      'columnSpan': ?columnSpan,
      'rowSpan': ?rowSpan,
      'tableCellLocation': ?tableCellLocation,
    };
  }
}

/// The contents and style of a row in a Table.
class TableRow {
  /// The zero-based end index of this row, exclusive, in UTF-16 code units.
  core.int? endIndex;

  /// The zero-based start index of this row, in UTF-16 code units.
  core.int? startIndex;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A TableRow may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested style changes to this row, keyed by suggestion ID.
  core.Map<core.String, SuggestedTableRowStyle>? suggestedTableRowStyleChanges;

  /// The contents and style of each cell in this row.
  ///
  /// It's possible for a table to be non-rectangular, so some rows may have a
  /// different number of cells than other rows in the same table.
  core.List<TableCell>? tableCells;

  /// The style of the table row.
  TableRowStyle? tableRowStyle;

  TableRow({
    this.endIndex,
    this.startIndex,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTableRowStyleChanges,
    this.tableCells,
    this.tableRowStyle,
  });

  TableRow.fromJson(core.Map json_)
    : this(
        endIndex: json_['endIndex'] as core.int?,
        startIndex: json_['startIndex'] as core.int?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTableRowStyleChanges:
            (json_['suggestedTableRowStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTableRowStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        tableCells: (json_['tableCells'] as core.List?)
            ?.map(
              (value) => TableCell.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tableRowStyle: json_.containsKey('tableRowStyle')
            ? TableRowStyle.fromJson(
                json_['tableRowStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endIndex = this.endIndex;
    final startIndex = this.startIndex;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTableRowStyleChanges = this.suggestedTableRowStyleChanges;
    final tableCells = this.tableCells;
    final tableRowStyle = this.tableRowStyle;
    return {
      'endIndex': ?endIndex,
      'startIndex': ?startIndex,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTableRowStyleChanges': ?suggestedTableRowStyleChanges,
      'tableCells': ?tableCells,
      'tableRowStyle': ?tableRowStyle,
    };
  }
}

/// Styles that apply to a table row.
class TableRowStyle {
  /// The minimum height of the row.
  ///
  /// The row will be rendered in the Docs editor at a height equal to or
  /// greater than this value in order to show all the content in the row's
  /// cells.
  Dimension? minRowHeight;

  /// Whether the row cannot overflow across page or column boundaries.
  core.bool? preventOverflow;

  /// Whether the row is a table header.
  core.bool? tableHeader;

  TableRowStyle({this.minRowHeight, this.preventOverflow, this.tableHeader});

  TableRowStyle.fromJson(core.Map json_)
    : this(
        minRowHeight: json_.containsKey('minRowHeight')
            ? Dimension.fromJson(
                json_['minRowHeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        preventOverflow: json_['preventOverflow'] as core.bool?,
        tableHeader: json_['tableHeader'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minRowHeight = this.minRowHeight;
    final preventOverflow = this.preventOverflow;
    final tableHeader = this.tableHeader;
    return {
      'minRowHeight': ?minRowHeight,
      'preventOverflow': ?preventOverflow,
      'tableHeader': ?tableHeader,
    };
  }
}

/// A mask that indicates which of the fields on the base TableRowStyle have
/// been changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class TableRowStyleSuggestionState {
  /// Indicates if there was a suggested change to min_row_height.
  core.bool? minRowHeightSuggested;

  TableRowStyleSuggestionState({this.minRowHeightSuggested});

  TableRowStyleSuggestionState.fromJson(core.Map json_)
    : this(minRowHeightSuggested: json_['minRowHeightSuggested'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final minRowHeightSuggested = this.minRowHeightSuggested;
    return {'minRowHeightSuggested': ?minRowHeightSuggested};
  }
}

/// Styles that apply to a table.
class TableStyle {
  /// The properties of each column.
  ///
  /// Note that in Docs, tables contain rows and rows contain cells, similar to
  /// HTML. So the properties for a row can be found on the row's
  /// table_row_style.
  core.List<TableColumnProperties>? tableColumnProperties;

  TableStyle({this.tableColumnProperties});

  TableStyle.fromJson(core.Map json_)
    : this(
        tableColumnProperties: (json_['tableColumnProperties'] as core.List?)
            ?.map(
              (value) => TableColumnProperties.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableColumnProperties = this.tableColumnProperties;
    return {'tableColumnProperties': ?tableColumnProperties};
  }
}

/// A criteria that specifies in which tabs a request executes.
class TabsCriteria {
  /// The list of tab IDs in which the request executes.
  core.List<core.String>? tabIds;

  TabsCriteria({this.tabIds});

  TabsCriteria.fromJson(core.Map json_)
    : this(
        tabIds: (json_['tabIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tabIds = this.tabIds;
    return {'tabIds': ?tabIds};
  }
}

/// A ParagraphElement that represents a run of text that all has the same
/// styling.
class TextRun {
  /// The text of this run.
  ///
  /// Any non-text elements in the run are replaced with the Unicode character
  /// U+E907.
  core.String? content;

  /// The suggested deletion IDs.
  ///
  /// If empty, then there are no suggested deletions of this content.
  core.List<core.String>? suggestedDeletionIds;

  /// The suggested insertion IDs.
  ///
  /// A TextRun may have multiple insertion IDs if it's a nested suggested
  /// change. If empty, then this is not a suggested insertion.
  core.List<core.String>? suggestedInsertionIds;

  /// The suggested text style changes to this run, keyed by suggestion ID.
  core.Map<core.String, SuggestedTextStyle>? suggestedTextStyleChanges;

  /// The text style of this run.
  TextStyle? textStyle;

  TextRun({
    this.content,
    this.suggestedDeletionIds,
    this.suggestedInsertionIds,
    this.suggestedTextStyleChanges,
    this.textStyle,
  });

  TextRun.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        suggestedDeletionIds: (json_['suggestedDeletionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedInsertionIds: (json_['suggestedInsertionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        suggestedTextStyleChanges:
            (json_['suggestedTextStyleChanges']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SuggestedTextStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final suggestedDeletionIds = this.suggestedDeletionIds;
    final suggestedInsertionIds = this.suggestedInsertionIds;
    final suggestedTextStyleChanges = this.suggestedTextStyleChanges;
    final textStyle = this.textStyle;
    return {
      'content': ?content,
      'suggestedDeletionIds': ?suggestedDeletionIds,
      'suggestedInsertionIds': ?suggestedInsertionIds,
      'suggestedTextStyleChanges': ?suggestedTextStyleChanges,
      'textStyle': ?textStyle,
    };
  }
}

/// Represents the styling that can be applied to text.
///
/// Inherited text styles are represented as unset fields in this message. A
/// text style's parent depends on where the text style is defined: * The
/// TextStyle of text in a Paragraph inherits from the paragraph's corresponding
/// named style type. * The TextStyle on a named style inherits from the normal
/// text named style. * The TextStyle of the normal text named style inherits
/// from the default text style in the Docs editor. * The TextStyle on a
/// Paragraph element that's contained in a table may inherit its text style
/// from the table style. If the text style does not inherit from a parent,
/// unsetting fields will revert the style to a value matching the defaults in
/// the Docs editor.
class TextStyle {
  /// The background color of the text.
  ///
  /// If set, the color is either an RGB color or transparent, depending on the
  /// `color` field.
  OptionalColor? backgroundColor;

  /// The text's vertical offset from its normal position.
  ///
  /// Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically
  /// rendered in a smaller font size, computed based on the `font_size` field.
  /// Changes in this field don't affect the `font_size`.
  /// Possible string values are:
  /// - "BASELINE_OFFSET_UNSPECIFIED" : The text's baseline offset is inherited
  /// from the parent.
  /// - "NONE" : The text is not vertically offset.
  /// - "SUPERSCRIPT" : The text is vertically offset upwards (superscript).
  /// - "SUBSCRIPT" : The text is vertically offset downwards (subscript).
  core.String? baselineOffset;

  /// Whether or not the text is rendered as bold.
  core.bool? bold;

  /// The size of the text's font.
  Dimension? fontSize;

  /// The foreground color of the text.
  ///
  /// If set, the color is either an RGB color or transparent, depending on the
  /// `color` field.
  OptionalColor? foregroundColor;

  /// Whether or not the text is italicized.
  core.bool? italic;

  /// The hyperlink destination of the text.
  ///
  /// If unset, there's no link. Links are not inherited from parent text.
  /// Changing the link in an update request causes some other changes to the
  /// text style of the range: * When setting a link, the text foreground color
  /// will be updated to the default link color and the text will be underlined.
  /// If these fields are modified in the same request, those values will be
  /// used instead of the link defaults. * Setting a link on a text range that
  /// overlaps with an existing link will also update the existing link to point
  /// to the new URL. * Links are not settable on newline characters. As a
  /// result, setting a link on a text range that crosses a paragraph boundary,
  /// such as `"ABC\n123"`, will separate the newline character(s) into their
  /// own text runs. The link will be applied separately to the runs before and
  /// after the newline. * Removing a link will update the text style of the
  /// range to match the style of the preceding text (or the default text styles
  /// if the preceding text is another link) unless different styles are being
  /// set in the same request.
  Link? link;

  /// Whether or not the text is in small capital letters.
  core.bool? smallCaps;

  /// Whether or not the text is struck through.
  core.bool? strikethrough;

  /// Whether or not the text is underlined.
  core.bool? underline;

  /// The font family and rendered weight of the text.
  ///
  /// If an update request specifies values for both `weighted_font_family` and
  /// `bold`, the `weighted_font_family` is applied first, then `bold`. If
  /// `weighted_font_family#weight` is not set, it defaults to `400`. If
  /// `weighted_font_family` is set, then `weighted_font_family#font_family`
  /// must also be set with a non-empty value. Otherwise, a 400 bad request
  /// error is returned.
  WeightedFontFamily? weightedFontFamily;

  TextStyle({
    this.backgroundColor,
    this.baselineOffset,
    this.bold,
    this.fontSize,
    this.foregroundColor,
    this.italic,
    this.link,
    this.smallCaps,
    this.strikethrough,
    this.underline,
    this.weightedFontFamily,
  });

  TextStyle.fromJson(core.Map json_)
    : this(
        backgroundColor: json_.containsKey('backgroundColor')
            ? OptionalColor.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        baselineOffset: json_['baselineOffset'] as core.String?,
        bold: json_['bold'] as core.bool?,
        fontSize: json_.containsKey('fontSize')
            ? Dimension.fromJson(
                json_['fontSize'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        foregroundColor: json_.containsKey('foregroundColor')
            ? OptionalColor.fromJson(
                json_['foregroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        italic: json_['italic'] as core.bool?,
        link: json_.containsKey('link')
            ? Link.fromJson(
                json_['link'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        smallCaps: json_['smallCaps'] as core.bool?,
        strikethrough: json_['strikethrough'] as core.bool?,
        underline: json_['underline'] as core.bool?,
        weightedFontFamily: json_.containsKey('weightedFontFamily')
            ? WeightedFontFamily.fromJson(
                json_['weightedFontFamily']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColor = this.backgroundColor;
    final baselineOffset = this.baselineOffset;
    final bold = this.bold;
    final fontSize = this.fontSize;
    final foregroundColor = this.foregroundColor;
    final italic = this.italic;
    final link = this.link;
    final smallCaps = this.smallCaps;
    final strikethrough = this.strikethrough;
    final underline = this.underline;
    final weightedFontFamily = this.weightedFontFamily;
    return {
      'backgroundColor': ?backgroundColor,
      'baselineOffset': ?baselineOffset,
      'bold': ?bold,
      'fontSize': ?fontSize,
      'foregroundColor': ?foregroundColor,
      'italic': ?italic,
      'link': ?link,
      'smallCaps': ?smallCaps,
      'strikethrough': ?strikethrough,
      'underline': ?underline,
      'weightedFontFamily': ?weightedFontFamily,
    };
  }
}

/// A mask that indicates which of the fields on the base TextStyle have been
/// changed in this suggestion.
///
/// For any field set to true, there's a new suggested value.
class TextStyleSuggestionState {
  /// Indicates if there was a suggested change to background_color.
  core.bool? backgroundColorSuggested;

  /// Indicates if there was a suggested change to baseline_offset.
  core.bool? baselineOffsetSuggested;

  /// Indicates if there was a suggested change to bold.
  core.bool? boldSuggested;

  /// Indicates if there was a suggested change to font_size.
  core.bool? fontSizeSuggested;

  /// Indicates if there was a suggested change to foreground_color.
  core.bool? foregroundColorSuggested;

  /// Indicates if there was a suggested change to italic.
  core.bool? italicSuggested;

  /// Indicates if there was a suggested change to link.
  core.bool? linkSuggested;

  /// Indicates if there was a suggested change to small_caps.
  core.bool? smallCapsSuggested;

  /// Indicates if there was a suggested change to strikethrough.
  core.bool? strikethroughSuggested;

  /// Indicates if there was a suggested change to underline.
  core.bool? underlineSuggested;

  /// Indicates if there was a suggested change to weighted_font_family.
  core.bool? weightedFontFamilySuggested;

  TextStyleSuggestionState({
    this.backgroundColorSuggested,
    this.baselineOffsetSuggested,
    this.boldSuggested,
    this.fontSizeSuggested,
    this.foregroundColorSuggested,
    this.italicSuggested,
    this.linkSuggested,
    this.smallCapsSuggested,
    this.strikethroughSuggested,
    this.underlineSuggested,
    this.weightedFontFamilySuggested,
  });

  TextStyleSuggestionState.fromJson(core.Map json_)
    : this(
        backgroundColorSuggested:
            json_['backgroundColorSuggested'] as core.bool?,
        baselineOffsetSuggested: json_['baselineOffsetSuggested'] as core.bool?,
        boldSuggested: json_['boldSuggested'] as core.bool?,
        fontSizeSuggested: json_['fontSizeSuggested'] as core.bool?,
        foregroundColorSuggested:
            json_['foregroundColorSuggested'] as core.bool?,
        italicSuggested: json_['italicSuggested'] as core.bool?,
        linkSuggested: json_['linkSuggested'] as core.bool?,
        smallCapsSuggested: json_['smallCapsSuggested'] as core.bool?,
        strikethroughSuggested: json_['strikethroughSuggested'] as core.bool?,
        underlineSuggested: json_['underlineSuggested'] as core.bool?,
        weightedFontFamilySuggested:
            json_['weightedFontFamilySuggested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColorSuggested = this.backgroundColorSuggested;
    final baselineOffsetSuggested = this.baselineOffsetSuggested;
    final boldSuggested = this.boldSuggested;
    final fontSizeSuggested = this.fontSizeSuggested;
    final foregroundColorSuggested = this.foregroundColorSuggested;
    final italicSuggested = this.italicSuggested;
    final linkSuggested = this.linkSuggested;
    final smallCapsSuggested = this.smallCapsSuggested;
    final strikethroughSuggested = this.strikethroughSuggested;
    final underlineSuggested = this.underlineSuggested;
    final weightedFontFamilySuggested = this.weightedFontFamilySuggested;
    return {
      'backgroundColorSuggested': ?backgroundColorSuggested,
      'baselineOffsetSuggested': ?baselineOffsetSuggested,
      'boldSuggested': ?boldSuggested,
      'fontSizeSuggested': ?fontSizeSuggested,
      'foregroundColorSuggested': ?foregroundColorSuggested,
      'italicSuggested': ?italicSuggested,
      'linkSuggested': ?linkSuggested,
      'smallCapsSuggested': ?smallCapsSuggested,
      'strikethroughSuggested': ?strikethroughSuggested,
      'underlineSuggested': ?underlineSuggested,
      'weightedFontFamilySuggested': ?weightedFontFamilySuggested,
    };
  }
}

/// Unmerges cells in a Table.
class UnmergeTableCellsRequest {
  /// The table range specifying which cells of the table to unmerge.
  ///
  /// All merged cells in this range will be unmerged, and cells that are
  /// already unmerged will not be affected. If the range has no merged cells,
  /// the request will do nothing. If there is text in any of the merged cells,
  /// the text will remain in the "head" cell of the resulting block of unmerged
  /// cells. The "head" cell is the upper-left cell when the content direction
  /// is from left to right, and the upper-right otherwise.
  TableRange? tableRange;

  UnmergeTableCellsRequest({this.tableRange});

  UnmergeTableCellsRequest.fromJson(core.Map json_)
    : this(
        tableRange: json_.containsKey('tableRange')
            ? TableRange.fromJson(
                json_['tableRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tableRange = this.tableRange;
    return {'tableRange': ?tableRange};
  }
}

/// Updates the DocumentStyle.
class UpdateDocumentStyleRequest {
  /// The styles to set on the document.
  ///
  /// Certain document style changes may cause other changes in order to mirror
  /// the behavior of the Docs editor. See the documentation of DocumentStyle
  /// for more information.
  DocumentStyle? documentStyle;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `document_style` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the background, set `fields` to
  /// `"background"`.
  core.String? fields;

  /// The tab that contains the style to update.
  ///
  /// When omitted, the request applies to the first tab. In a document
  /// containing a single tab: - If provided, must match the singular tab's ID.
  /// - If omitted, the request applies to the singular tab. In a document
  /// containing multiple tabs: - If provided, the request applies to the
  /// specified tab. - If not provided, the request applies to the first tab in
  /// the document.
  core.String? tabId;

  UpdateDocumentStyleRequest({this.documentStyle, this.fields, this.tabId});

  UpdateDocumentStyleRequest.fromJson(core.Map json_)
    : this(
        documentStyle: json_.containsKey('documentStyle')
            ? DocumentStyle.fromJson(
                json_['documentStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
        tabId: json_['tabId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentStyle = this.documentStyle;
    final fields = this.fields;
    final tabId = this.tabId;
    return {
      'documentStyle': ?documentStyle,
      'fields': ?fields,
      'tabId': ?tabId,
    };
  }
}

/// Update the properties of a document tab.
class UpdateDocumentTabPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tab_properties` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The tab properties to update.
  TabProperties? tabProperties;

  UpdateDocumentTabPropertiesRequest({this.fields, this.tabProperties});

  UpdateDocumentTabPropertiesRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        tabProperties: json_.containsKey('tabProperties')
            ? TabProperties.fromJson(
                json_['tabProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final tabProperties = this.tabProperties;
    return {'fields': ?fields, 'tabProperties': ?tabProperties};
  }
}

/// Update the styling of all paragraphs that overlap with the given range.
class UpdateParagraphStyleRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `paragraph_style` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example, to update the paragraph
  /// style's alignment property, set `fields` to `"alignment"`. To reset a
  /// property to its default value, include its field name in the field mask
  /// but leave the field itself unset.
  core.String? fields;

  /// The styles to set on the paragraphs.
  ///
  /// Certain paragraph style changes may cause other changes in order to mirror
  /// the behavior of the Docs editor. See the documentation of ParagraphStyle
  /// for more information.
  ParagraphStyle? paragraphStyle;

  /// The range overlapping the paragraphs to style.
  Range? range;

  UpdateParagraphStyleRequest({this.fields, this.paragraphStyle, this.range});

  UpdateParagraphStyleRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        paragraphStyle: json_.containsKey('paragraphStyle')
            ? ParagraphStyle.fromJson(
                json_['paragraphStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final paragraphStyle = this.paragraphStyle;
    final range = this.range;
    return {
      'fields': ?fields,
      'paragraphStyle': ?paragraphStyle,
      'range': ?range,
    };
  }
}

/// Updates the SectionStyle.
class UpdateSectionStyleRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `section_style` is implied
  /// and must not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the left margin, set `fields`
  /// to `"margin_left"`.
  core.String? fields;

  /// The range overlapping the sections to style.
  ///
  /// Because section breaks can only be inserted inside the body, the segment
  /// ID field must be empty.
  Range? range;

  /// The styles to be set on the section.
  ///
  /// Certain section style changes may cause other changes in order to mirror
  /// the behavior of the Docs editor. See the documentation of SectionStyle for
  /// more information.
  SectionStyle? sectionStyle;

  UpdateSectionStyleRequest({this.fields, this.range, this.sectionStyle});

  UpdateSectionStyleRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sectionStyle: json_.containsKey('sectionStyle')
            ? SectionStyle.fromJson(
                json_['sectionStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final range = this.range;
    final sectionStyle = this.sectionStyle;
    return {'fields': ?fields, 'range': ?range, 'sectionStyle': ?sectionStyle};
  }
}

/// Updates the style of a range of table cells.
class UpdateTableCellStyleRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableCellStyle` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the table cell background
  /// color, set `fields` to `"backgroundColor"`. To reset a property to its
  /// default value, include its field name in the field mask but leave the
  /// field itself unset.
  core.String? fields;

  /// The style to set on the table cells.
  ///
  /// When updating borders, if a cell shares a border with an adjacent cell,
  /// the corresponding border property of the adjacent cell is updated as well.
  /// Borders that are merged and invisible are not updated. Since updating a
  /// border shared by adjacent cells in the same request can cause conflicting
  /// border updates, border updates are applied in the following order: -
  /// `border_right` - `border_left` - `border_bottom` - `border_top`
  TableCellStyle? tableCellStyle;

  /// The table range representing the subset of the table to which the updates
  /// are applied.
  TableRange? tableRange;

  /// The location where the table starts in the document.
  ///
  /// When specified, the updates are applied to all the cells in the table.
  Location? tableStartLocation;

  UpdateTableCellStyleRequest({
    this.fields,
    this.tableCellStyle,
    this.tableRange,
    this.tableStartLocation,
  });

  UpdateTableCellStyleRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        tableCellStyle: json_.containsKey('tableCellStyle')
            ? TableCellStyle.fromJson(
                json_['tableCellStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableRange: json_.containsKey('tableRange')
            ? TableRange.fromJson(
                json_['tableRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableStartLocation: json_.containsKey('tableStartLocation')
            ? Location.fromJson(
                json_['tableStartLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final tableCellStyle = this.tableCellStyle;
    final tableRange = this.tableRange;
    final tableStartLocation = this.tableStartLocation;
    return {
      'fields': ?fields,
      'tableCellStyle': ?tableCellStyle,
      'tableRange': ?tableRange,
      'tableStartLocation': ?tableStartLocation,
    };
  }
}

/// Updates the TableColumnProperties of columns in a table.
class UpdateTableColumnPropertiesRequest {
  /// The list of zero-based column indices whose property should be updated.
  ///
  /// If no indices are specified, all columns will be updated.
  core.List<core.int>? columnIndices;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableColumnProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the column
  /// width, set `fields` to `"width"`.
  core.String? fields;

  /// The table column properties to update.
  ///
  /// If the value of `table_column_properties#width` is less than 5 points
  /// (5/72 inch), a 400 bad request error is returned.
  TableColumnProperties? tableColumnProperties;

  /// The location where the table starts in the document.
  Location? tableStartLocation;

  UpdateTableColumnPropertiesRequest({
    this.columnIndices,
    this.fields,
    this.tableColumnProperties,
    this.tableStartLocation,
  });

  UpdateTableColumnPropertiesRequest.fromJson(core.Map json_)
    : this(
        columnIndices: (json_['columnIndices'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        fields: json_['fields'] as core.String?,
        tableColumnProperties: json_.containsKey('tableColumnProperties')
            ? TableColumnProperties.fromJson(
                json_['tableColumnProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableStartLocation: json_.containsKey('tableStartLocation')
            ? Location.fromJson(
                json_['tableStartLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnIndices = this.columnIndices;
    final fields = this.fields;
    final tableColumnProperties = this.tableColumnProperties;
    final tableStartLocation = this.tableStartLocation;
    return {
      'columnIndices': ?columnIndices,
      'fields': ?fields,
      'tableColumnProperties': ?tableColumnProperties,
      'tableStartLocation': ?tableStartLocation,
    };
  }
}

/// Updates the TableRowStyle of rows in a table.
class UpdateTableRowStyleRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableRowStyle` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the minimum row height, set
  /// `fields` to `"min_row_height"`.
  core.String? fields;

  /// The list of zero-based row indices whose style should be updated.
  ///
  /// If no indices are specified, all rows will be updated.
  core.List<core.int>? rowIndices;

  /// The styles to be set on the rows.
  TableRowStyle? tableRowStyle;

  /// The location where the table starts in the document.
  Location? tableStartLocation;

  UpdateTableRowStyleRequest({
    this.fields,
    this.rowIndices,
    this.tableRowStyle,
    this.tableStartLocation,
  });

  UpdateTableRowStyleRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        rowIndices: (json_['rowIndices'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        tableRowStyle: json_.containsKey('tableRowStyle')
            ? TableRowStyle.fromJson(
                json_['tableRowStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableStartLocation: json_.containsKey('tableStartLocation')
            ? Location.fromJson(
                json_['tableStartLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final rowIndices = this.rowIndices;
    final tableRowStyle = this.tableRowStyle;
    final tableStartLocation = this.tableStartLocation;
    return {
      'fields': ?fields,
      'rowIndices': ?rowIndices,
      'tableRowStyle': ?tableRowStyle,
      'tableStartLocation': ?tableStartLocation,
    };
  }
}

/// Update the styling of text.
class UpdateTextStyleRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `text_style` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example, to update the text style to bold, set
  /// `fields` to `"bold"`. To reset a property to its default value, include
  /// its field name in the field mask but leave the field itself unset.
  core.String? fields;

  /// The range of text to style.
  ///
  /// The range may be extended to include adjacent newlines. If the range fully
  /// contains a paragraph belonging to a list, the paragraph's bullet is also
  /// updated with the matching text style. Ranges cannot be inserted inside a
  /// relative UpdateTextStyleRequest.
  Range? range;

  /// The styles to set on the text.
  ///
  /// If the value for a particular style matches that of the parent, that style
  /// will be set to inherit. Certain text style changes may cause other changes
  /// in order to to mirror the behavior of the Docs editor. See the
  /// documentation of TextStyle for more information.
  TextStyle? textStyle;

  UpdateTextStyleRequest({this.fields, this.range, this.textStyle});

  UpdateTextStyleRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        range: json_.containsKey('range')
            ? Range.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textStyle: json_.containsKey('textStyle')
            ? TextStyle.fromJson(
                json_['textStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final range = this.range;
    final textStyle = this.textStyle;
    return {'fields': ?fields, 'range': ?range, 'textStyle': ?textStyle};
  }
}

/// Represents a font family and weight of text.
class WeightedFontFamily {
  /// The font family of the text.
  ///
  /// The font family can be any font from the Font menu in Docs or from
  /// [Google Fonts](https://fonts.google.com/). If the font name is
  /// unrecognized, the text is rendered in `Arial`.
  core.String? fontFamily;

  /// The weight of the font.
  ///
  /// This field can have any value that's a multiple of `100` between `100` and
  /// `900`, inclusive. This range corresponds to the numerical values described
  /// in the CSS 2.1 Specification,
  /// [section 15.6](https://www.w3.org/TR/CSS21/fonts.html#font-boldness), with
  /// non-numerical values disallowed. The default value is `400` ("normal").
  /// The font weight makes up just one component of the rendered font weight. A
  /// combination of the `weight` and the text style's resolved `bold` value
  /// determine the rendered weight, after accounting for inheritance: * If the
  /// text is bold and the weight is less than `400`, the rendered weight is
  /// 400. * If the text is bold and the weight is greater than or equal to
  /// `400` but is less than `700`, the rendered weight is `700`. * If the
  /// weight is greater than or equal to `700`, the rendered weight is equal to
  /// the weight. * If the text is not bold, the rendered weight is equal to the
  /// weight.
  core.int? weight;

  WeightedFontFamily({this.fontFamily, this.weight});

  WeightedFontFamily.fromJson(core.Map json_)
    : this(
        fontFamily: json_['fontFamily'] as core.String?,
        weight: json_['weight'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fontFamily = this.fontFamily;
    final weight = this.weight;
    return {'fontFamily': ?fontFamily, 'weight': ?weight};
  }
}

/// Provides control over how write requests are executed.
class WriteControl {
  /// The optional revision ID of the document the write request is applied to.
  ///
  /// If this is not the latest revision of the document, the request is not
  /// processed and returns a 400 bad request error. When a required revision ID
  /// is returned in a response, it indicates the revision ID of the document
  /// after the request was applied.
  core.String? requiredRevisionId;

  /// The optional target revision ID of the document the write request is
  /// applied to.
  ///
  /// If collaborator changes have occurred after the document was read using
  /// the API, the changes produced by this write request are applied against
  /// the collaborator changes. This results in a new revision of the document
  /// that incorporates both the collaborator changes and the changes in the
  /// request, with the Docs server resolving conflicting changes. When using
  /// target revision ID, the API client can be thought of as another
  /// collaborator of the document. The target revision ID can only be used to
  /// write to recent versions of a document. If the target revision is too far
  /// behind the latest revision, the request is not processed and returns a 400
  /// bad request error. The request should be tried again after retrieving the
  /// latest version of the document. Usually a revision ID remains valid for
  /// use as a target revision for several minutes after it's read, but for
  /// frequently edited documents this window might be shorter.
  core.String? targetRevisionId;

  WriteControl({this.requiredRevisionId, this.targetRevisionId});

  WriteControl.fromJson(core.Map json_)
    : this(
        requiredRevisionId: json_['requiredRevisionId'] as core.String?,
        targetRevisionId: json_['targetRevisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requiredRevisionId = this.requiredRevisionId;
    final targetRevisionId = this.targetRevisionId;
    return {
      'requiredRevisionId': ?requiredRevisionId,
      'targetRevisionId': ?targetRevisionId,
    };
  }
}
