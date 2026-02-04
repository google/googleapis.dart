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

/// Google Sheets API - v4
///
/// Reads and writes Google Sheets.
///
/// For more information, see <https://developers.google.com/workspace/sheets/>
///
/// Create an instance of [SheetsApi] to access these resources:
///
/// - [SpreadsheetsResource]
///   - [SpreadsheetsDeveloperMetadataResource]
///   - [SpreadsheetsSheetsResource]
///   - [SpreadsheetsValuesResource]
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

/// Reads and writes Google Sheets.
class SheetsApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// See, edit, create, and delete all your Google Sheets spreadsheets
  static const spreadsheetsScope =
      'https://www.googleapis.com/auth/spreadsheets';

  /// See all your Google Sheets spreadsheets
  static const spreadsheetsReadonlyScope =
      'https://www.googleapis.com/auth/spreadsheets.readonly';

  final commons.ApiRequester _requester;

  SpreadsheetsResource get spreadsheets => SpreadsheetsResource(_requester);

  SheetsApi(
    http.Client client, {
    core.String rootUrl = 'https://sheets.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class SpreadsheetsResource {
  final commons.ApiRequester _requester;

  SpreadsheetsDeveloperMetadataResource get developerMetadata =>
      SpreadsheetsDeveloperMetadataResource(_requester);
  SpreadsheetsSheetsResource get sheets =>
      SpreadsheetsSheetsResource(_requester);
  SpreadsheetsValuesResource get values =>
      SpreadsheetsValuesResource(_requester);

  SpreadsheetsResource(commons.ApiRequester client) : _requester = client;

  /// Applies one or more updates to the spreadsheet.
  ///
  /// Each request is validated before being applied. If any request is not
  /// valid then the entire request will fail and nothing will be applied. Some
  /// requests have replies to give you some information about how they are
  /// applied. The replies will mirror the requests. For example, if you applied
  /// 4 updates and the 3rd one had a reply, then the response will have 2 empty
  /// replies, the actual reply, and another empty reply, in that order. Due to
  /// the collaborative nature of spreadsheets, it is not guaranteed that the
  /// spreadsheet will reflect exactly your changes after this completes,
  /// however it is guaranteed that the updates in the request will be applied
  /// together atomically. Your changes may be altered with respect to
  /// collaborator changes. If there are no collaborators, the spreadsheet
  /// should reflect your changes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The spreadsheet to apply the updates to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateSpreadsheetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateSpreadsheetResponse> batchUpdate(
    BatchUpdateSpreadsheetRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        ':batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateSpreadsheetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a spreadsheet, returning the newly created spreadsheet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Spreadsheet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Spreadsheet> create(
    Spreadsheet request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v4/spreadsheets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the spreadsheet at the given ID.
  ///
  /// The caller must specify the spreadsheet ID. By default, data within grids
  /// is not returned. You can include grid data in one of 2 ways: * Specify a
  /// [field mask](https://developers.google.com/workspace/sheets/api/guides/field-masks)
  /// listing your desired fields using the `fields` URL parameter in HTTP * Set
  /// the includeGridData URL parameter to true. If a field mask is set, the
  /// `includeGridData` parameter is ignored For large spreadsheets, as a best
  /// practice, retrieve only the specific spreadsheet fields that you want. To
  /// retrieve only subsets of spreadsheet data, use the ranges URL parameter.
  /// Ranges are specified using
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell).
  /// You can define a single cell (for example, `A1`) or multiple cells (for
  /// example, `A1:D5`). You can also get cells from other sheets within the
  /// same spreadsheet (for example, `Sheet2!A1:C4`) or retrieve multiple ranges
  /// at once (for example, `?ranges=A1:D5&ranges=Sheet2!A1:C4`). Limiting the
  /// range returns only the portions of the spreadsheet that intersect the
  /// requested ranges.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The spreadsheet to request.
  ///
  /// [excludeTablesInBandedRanges] - True if tables should be excluded in the
  /// banded ranges. False if not set.
  ///
  /// [includeGridData] - True if grid data should be returned. This parameter
  /// is ignored if a field mask was set in the request.
  ///
  /// [ranges] - The ranges to retrieve from the spreadsheet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Spreadsheet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Spreadsheet> get(
    core.String spreadsheetId, {
    core.bool? excludeTablesInBandedRanges,
    core.bool? includeGridData,
    core.List<core.String>? ranges,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'excludeTablesInBandedRanges': ?excludeTablesInBandedRanges == null
          ? null
          : ['${excludeTablesInBandedRanges}'],
      'includeGridData': ?includeGridData == null
          ? null
          : ['${includeGridData}'],
      'ranges': ?ranges,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v4/spreadsheets/' + commons.escapeVariable('$spreadsheetId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the spreadsheet at the given ID.
  ///
  /// The caller must specify the spreadsheet ID. This method differs from
  /// GetSpreadsheet in that it allows selecting which subsets of spreadsheet
  /// data to return by specifying a dataFilters parameter. Multiple DataFilters
  /// can be specified. Specifying one or more data filters returns the portions
  /// of the spreadsheet that intersect ranges matched by any of the filters. By
  /// default, data within grids is not returned. You can include grid data one
  /// of 2 ways: * Specify a
  /// [field mask](https://developers.google.com/workspace/sheets/api/guides/field-masks)
  /// listing your desired fields using the `fields` URL parameter in HTTP * Set
  /// the includeGridData parameter to true. If a field mask is set, the
  /// `includeGridData` parameter is ignored For large spreadsheets, as a best
  /// practice, retrieve only the specific spreadsheet fields that you want.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The spreadsheet to request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Spreadsheet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Spreadsheet> getByDataFilter(
    GetSpreadsheetByDataFilterRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        ':getByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SpreadsheetsDeveloperMetadataResource {
  final commons.ApiRequester _requester;

  SpreadsheetsDeveloperMetadataResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns the developer metadata with the specified ID.
  ///
  /// The caller must specify the spreadsheet ID and the developer metadata's
  /// unique metadataId.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve metadata from.
  ///
  /// [metadataId] - The ID of the developer metadata to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeveloperMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeveloperMetadata> get(
    core.String spreadsheetId,
    core.int metadataId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/developerMetadata/' +
        commons.escapeVariable('$metadataId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeveloperMetadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns all developer metadata matching the specified DataFilter.
  ///
  /// If the provided DataFilter represents a DeveloperMetadataLookup object,
  /// this will return all DeveloperMetadata entries selected by it. If the
  /// DataFilter represents a location in a spreadsheet, this will return all
  /// developer metadata associated with locations intersecting that region.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve metadata from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchDeveloperMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchDeveloperMetadataResponse> search(
    SearchDeveloperMetadataRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/developerMetadata:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchDeveloperMetadataResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SpreadsheetsSheetsResource {
  final commons.ApiRequester _requester;

  SpreadsheetsSheetsResource(commons.ApiRequester client) : _requester = client;

  /// Copies a single sheet from a spreadsheet to another spreadsheet.
  ///
  /// Returns the properties of the newly created sheet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet containing the sheet to copy.
  ///
  /// [sheetId] - The ID of the sheet to copy.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SheetProperties].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SheetProperties> copyTo(
    CopySheetToAnotherSpreadsheetRequest request,
    core.String spreadsheetId,
    core.int sheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/sheets/' +
        commons.escapeVariable('$sheetId') +
        ':copyTo';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SheetProperties.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SpreadsheetsValuesResource {
  final commons.ApiRequester _requester;

  SpreadsheetsValuesResource(commons.ApiRequester client) : _requester = client;

  /// Appends values to a spreadsheet.
  ///
  /// The input range is used to search for existing data and find a "table"
  /// within that range. Values will be appended to the next row of the table,
  /// starting with the first column of the table. See the
  /// [guide](https://developers.google.com/workspace/sheets/api/guides/values#appending_values)
  /// and
  /// [sample code](https://developers.google.com/workspace/sheets/api/samples/writing#append_values)
  /// for specific details of how tables are detected and data is appended. The
  /// caller must specify the spreadsheet ID, range, and a valueInputOption. The
  /// `valueInputOption` only controls how the input data will be added to the
  /// sheet (column-wise or row-wise), it does not influence what cell the data
  /// starts being written to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell)
  /// of a range to search for a logical table of data. Values are appended
  /// after the last row of the table.
  ///
  /// [includeValuesInResponse] - Determines if the update response should
  /// include the values of the cells that were appended. By default, responses
  /// do not include the updated values.
  ///
  /// [insertDataOption] - How the input data should be inserted.
  /// Possible string values are:
  /// - "OVERWRITE" : The new data overwrites existing data in the areas it is
  /// written. (Note: adding data to the end of the sheet will still insert new
  /// rows or columns so the data can be written.)
  /// - "INSERT_ROWS" : Rows are inserted for the new data.
  ///
  /// [responseDateTimeRenderOption] - Determines how dates, times, and
  /// durations in the response should be rendered. This is ignored if
  /// response_value_render_option is FORMATTED_VALUE. The default dateTime
  /// render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  ///
  /// [responseValueRenderOption] - Determines how values in the response should
  /// be rendered. The default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  ///
  /// [valueInputOption] - How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI. Numbers will stay as numbers, but strings may be converted to
  /// numbers, dates, etc. following the same rules that are applied when
  /// entering text into a cell via the Google Sheets UI.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppendValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppendValuesResponse> append(
    ValueRange request,
    core.String spreadsheetId,
    core.String range, {
    core.bool? includeValuesInResponse,
    core.String? insertDataOption,
    core.String? responseDateTimeRenderOption,
    core.String? responseValueRenderOption,
    core.String? valueInputOption,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'includeValuesInResponse': ?includeValuesInResponse == null
          ? null
          : ['${includeValuesInResponse}'],
      'insertDataOption': ?insertDataOption == null ? null : [insertDataOption],
      'responseDateTimeRenderOption': ?responseDateTimeRenderOption == null
          ? null
          : [responseDateTimeRenderOption],
      'responseValueRenderOption': ?responseValueRenderOption == null
          ? null
          : [responseValueRenderOption],
      'valueInputOption': ?valueInputOption == null ? null : [valueInputOption],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values/' +
        commons.escapeVariable('$range') +
        ':append';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AppendValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Clears one or more ranges of values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and one or more ranges. Only
  /// values are cleared -- all other properties of the cell (such as formatting
  /// and data validation) are kept.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchClearValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchClearValuesResponse> batchClear(
    BatchClearValuesRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchClear';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchClearValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Clears one or more ranges of values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and one or more DataFilters.
  /// Ranges matching any of the specified data filters will be cleared. Only
  /// values are cleared -- all other properties of the cell (such as
  /// formatting, data validation, etc..) are kept.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchClearValuesByDataFilterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchClearValuesByDataFilterResponse> batchClearByDataFilter(
    BatchClearValuesByDataFilterRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchClearByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchClearValuesByDataFilterResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns one or more ranges of values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and one or more ranges.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [dateTimeRenderOption] - How dates, times, and durations should be
  /// represented in the output. This is ignored if value_render_option is
  /// FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  ///
  /// [majorDimension] - The major dimension that results should use. For
  /// example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then
  /// requesting `ranges=["A1:B2"],majorDimension=ROWS` returns `[[1,2],[3,4]]`,
  /// whereas requesting `ranges=["A1:B2"],majorDimension=COLUMNS` returns
  /// `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  ///
  /// [ranges] - The
  /// [A1 notation or R1C1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell)
  /// of the range to retrieve values from.
  ///
  /// [valueRenderOption] - How values should be represented in the output. The
  /// default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetValuesResponse> batchGet(
    core.String spreadsheetId, {
    core.String? dateTimeRenderOption,
    core.String? majorDimension,
    core.List<core.String>? ranges,
    core.String? valueRenderOption,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'dateTimeRenderOption': ?dateTimeRenderOption == null
          ? null
          : [dateTimeRenderOption],
      'majorDimension': ?majorDimension == null ? null : [majorDimension],
      'ranges': ?ranges,
      'valueRenderOption': ?valueRenderOption == null
          ? null
          : [valueRenderOption],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns one or more ranges of values that match the specified data
  /// filters.
  ///
  /// The caller must specify the spreadsheet ID and one or more DataFilters.
  /// Ranges that match any of the data filters in the request will be returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetValuesByDataFilterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetValuesByDataFilterResponse> batchGetByDataFilter(
    BatchGetValuesByDataFilterRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchGetByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetValuesByDataFilterResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets values in one or more ranges of a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID, a valueInputOption, and one or
  /// more ValueRanges.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateValuesResponse> batchUpdate(
    BatchUpdateValuesRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets values in one or more ranges of a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID, a valueInputOption, and one or
  /// more DataFilterValueRanges.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateValuesByDataFilterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateValuesByDataFilterResponse> batchUpdateByDataFilter(
    BatchUpdateValuesByDataFilterRequest request,
    core.String spreadsheetId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchUpdateByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateValuesByDataFilterResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Clears values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and range. Only values are
  /// cleared -- all other properties of the cell (such as formatting, data
  /// validation, etc..) are kept.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The
  /// [A1 notation or R1C1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell)
  /// of the values to clear.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClearValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClearValuesResponse> clear(
    ClearValuesRequest request,
    core.String spreadsheetId,
    core.String range, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values/' +
        commons.escapeVariable('$range') +
        ':clear';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClearValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a range of values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and a range.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [range] - The
  /// [A1 notation or R1C1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell)
  /// of the range to retrieve values from.
  ///
  /// [dateTimeRenderOption] - How dates, times, and durations should be
  /// represented in the output. This is ignored if value_render_option is
  /// FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  ///
  /// [majorDimension] - The major dimension that results should use. For
  /// example, if the spreadsheet data in Sheet1 is: `A1=1,B1=2,A2=3,B2=4`, then
  /// requesting `range=Sheet1!A1:B2?majorDimension=ROWS` returns
  /// `[[1,2],[3,4]]`, whereas requesting
  /// `range=Sheet1!A1:B2?majorDimension=COLUMNS` returns `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  ///
  /// [valueRenderOption] - How values should be represented in the output. The
  /// default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValueRange].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValueRange> get(
    core.String spreadsheetId,
    core.String range, {
    core.String? dateTimeRenderOption,
    core.String? majorDimension,
    core.String? valueRenderOption,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'dateTimeRenderOption': ?dateTimeRenderOption == null
          ? null
          : [dateTimeRenderOption],
      'majorDimension': ?majorDimension == null ? null : [majorDimension],
      'valueRenderOption': ?valueRenderOption == null
          ? null
          : [valueRenderOption],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values/' +
        commons.escapeVariable('$range');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ValueRange.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets values in a range of a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID, range, and a valueInputOption.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell)
  /// of the values to update.
  ///
  /// [includeValuesInResponse] - Determines if the update response should
  /// include the values of the cells that were updated. By default, responses
  /// do not include the updated values. If the range to write was larger than
  /// the range actually written, the response includes all values in the
  /// requested range (excluding trailing empty rows and columns).
  ///
  /// [responseDateTimeRenderOption] - Determines how dates, times, and
  /// durations in the response should be rendered. This is ignored if
  /// response_value_render_option is FORMATTED_VALUE. The default dateTime
  /// render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  ///
  /// [responseValueRenderOption] - Determines how values in the response should
  /// be rendered. The default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  ///
  /// [valueInputOption] - How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI. Numbers will stay as numbers, but strings may be converted to
  /// numbers, dates, etc. following the same rules that are applied when
  /// entering text into a cell via the Google Sheets UI.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UpdateValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UpdateValuesResponse> update(
    ValueRange request,
    core.String spreadsheetId,
    core.String range, {
    core.bool? includeValuesInResponse,
    core.String? responseDateTimeRenderOption,
    core.String? responseValueRenderOption,
    core.String? valueInputOption,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'includeValuesInResponse': ?includeValuesInResponse == null
          ? null
          : ['${includeValuesInResponse}'],
      'responseDateTimeRenderOption': ?responseDateTimeRenderOption == null
          ? null
          : [responseDateTimeRenderOption],
      'responseValueRenderOption': ?responseValueRenderOption == null
          ? null
          : [responseValueRenderOption],
      'valueInputOption': ?valueInputOption == null ? null : [valueInputOption],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values/' +
        commons.escapeVariable('$range');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return UpdateValuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Adds a new banded range to the spreadsheet.
class AddBandingRequest {
  /// The banded range to add.
  ///
  /// The bandedRangeId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a range that
  /// already exists.)
  BandedRange? bandedRange;

  AddBandingRequest({this.bandedRange});

  AddBandingRequest.fromJson(core.Map json_)
    : this(
        bandedRange: json_.containsKey('bandedRange')
            ? BandedRange.fromJson(
                json_['bandedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRange = this.bandedRange;
    return {'bandedRange': ?bandedRange};
  }
}

/// The result of adding a banded range.
class AddBandingResponse {
  /// The banded range that was added.
  BandedRange? bandedRange;

  AddBandingResponse({this.bandedRange});

  AddBandingResponse.fromJson(core.Map json_)
    : this(
        bandedRange: json_.containsKey('bandedRange')
            ? BandedRange.fromJson(
                json_['bandedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRange = this.bandedRange;
    return {'bandedRange': ?bandedRange};
  }
}

/// Adds a chart to a sheet in the spreadsheet.
class AddChartRequest {
  /// The chart that should be added to the spreadsheet, including the position
  /// where it should be placed.
  ///
  /// The chartId field is optional; if one is not set, an id will be randomly
  /// generated. (It is an error to specify the ID of an embedded object that
  /// already exists.)
  EmbeddedChart? chart;

  AddChartRequest({this.chart});

  AddChartRequest.fromJson(core.Map json_)
    : this(
        chart: json_.containsKey('chart')
            ? EmbeddedChart.fromJson(
                json_['chart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chart = this.chart;
    return {'chart': ?chart};
  }
}

/// The result of adding a chart to a spreadsheet.
class AddChartResponse {
  /// The newly added chart.
  EmbeddedChart? chart;

  AddChartResponse({this.chart});

  AddChartResponse.fromJson(core.Map json_)
    : this(
        chart: json_.containsKey('chart')
            ? EmbeddedChart.fromJson(
                json_['chart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chart = this.chart;
    return {'chart': ?chart};
  }
}

/// Adds a new conditional format rule at the given index.
///
/// All subsequent rules' indexes are incremented.
class AddConditionalFormatRuleRequest {
  /// The zero-based index where the rule should be inserted.
  core.int? index;

  /// The rule to add.
  ConditionalFormatRule? rule;

  AddConditionalFormatRuleRequest({this.index, this.rule});

  AddConditionalFormatRuleRequest.fromJson(core.Map json_)
    : this(
        index: json_['index'] as core.int?,
        rule: json_.containsKey('rule')
            ? ConditionalFormatRule.fromJson(
                json_['rule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final index = this.index;
    final rule = this.rule;
    return {'index': ?index, 'rule': ?rule};
  }
}

/// Adds a data source.
///
/// After the data source is added successfully, an associated DATA_SOURCE sheet
/// is created and an execution is triggered to refresh the sheet to read data
/// from the data source. The request requires an additional `bigquery.readonly`
/// OAuth scope if you are adding a BigQuery data source.
class AddDataSourceRequest {
  /// The data source to add.
  DataSource? dataSource;

  AddDataSourceRequest({this.dataSource});

  AddDataSourceRequest.fromJson(core.Map json_)
    : this(
        dataSource: json_.containsKey('dataSource')
            ? DataSource.fromJson(
                json_['dataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSource = this.dataSource;
    return {'dataSource': ?dataSource};
  }
}

/// The result of adding a data source.
class AddDataSourceResponse {
  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// The data source that was created.
  DataSource? dataSource;

  AddDataSourceResponse({this.dataExecutionStatus, this.dataSource});

  AddDataSourceResponse.fromJson(core.Map json_)
    : this(
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSource: json_.containsKey('dataSource')
            ? DataSource.fromJson(
                json_['dataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSource = this.dataSource;
    return {
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSource': ?dataSource,
    };
  }
}

/// Creates a group over the specified range.
///
/// If the requested range is a superset of the range of an existing group G,
/// then the depth of G is incremented and this new group G' has the depth of
/// that group. For example, a group \[C:D, depth 1\] + \[B:E\] results in
/// groups \[B:E, depth 1\] and \[C:D, depth 2\]. If the requested range is a
/// subset of the range of an existing group G, then the depth of the new group
/// G' becomes one greater than the depth of G. For example, a group \[B:E,
/// depth 1\] + \[C:D\] results in groups \[B:E, depth 1\] and \[C:D, depth 2\].
/// If the requested range starts before and ends within, or starts within and
/// ends after, the range of an existing group G, then the range of the existing
/// group G becomes the union of the ranges, and the new group G' has depth one
/// greater than the depth of G and range as the intersection of the ranges. For
/// example, a group \[B:D, depth 1\] + \[C:E\] results in groups \[B:E, depth
/// 1\] and \[C:D, depth 2\].
class AddDimensionGroupRequest {
  /// The range over which to create a group.
  DimensionRange? range;

  AddDimensionGroupRequest({this.range});

  AddDimensionGroupRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// The result of adding a group.
class AddDimensionGroupResponse {
  /// All groups of a dimension after adding a group to that dimension.
  core.List<DimensionGroup>? dimensionGroups;

  AddDimensionGroupResponse({this.dimensionGroups});

  AddDimensionGroupResponse.fromJson(core.Map json_)
    : this(
        dimensionGroups: (json_['dimensionGroups'] as core.List?)
            ?.map(
              (value) => DimensionGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionGroups = this.dimensionGroups;
    return {'dimensionGroups': ?dimensionGroups};
  }
}

/// Adds a filter view.
class AddFilterViewRequest {
  /// The filter to add.
  ///
  /// The filterViewId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a filter that
  /// already exists.)
  FilterView? filter;

  AddFilterViewRequest({this.filter});

  AddFilterViewRequest.fromJson(core.Map json_)
    : this(
        filter: json_.containsKey('filter')
            ? FilterView.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    return {'filter': ?filter};
  }
}

/// The result of adding a filter view.
class AddFilterViewResponse {
  /// The newly added filter view.
  FilterView? filter;

  AddFilterViewResponse({this.filter});

  AddFilterViewResponse.fromJson(core.Map json_)
    : this(
        filter: json_.containsKey('filter')
            ? FilterView.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    return {'filter': ?filter};
  }
}

/// Adds a named range to the spreadsheet.
class AddNamedRangeRequest {
  /// The named range to add.
  ///
  /// The namedRangeId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a range that
  /// already exists.)
  NamedRange? namedRange;

  AddNamedRangeRequest({this.namedRange});

  AddNamedRangeRequest.fromJson(core.Map json_)
    : this(
        namedRange: json_.containsKey('namedRange')
            ? NamedRange.fromJson(
                json_['namedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedRange = this.namedRange;
    return {'namedRange': ?namedRange};
  }
}

/// The result of adding a named range.
class AddNamedRangeResponse {
  /// The named range to add.
  NamedRange? namedRange;

  AddNamedRangeResponse({this.namedRange});

  AddNamedRangeResponse.fromJson(core.Map json_)
    : this(
        namedRange: json_.containsKey('namedRange')
            ? NamedRange.fromJson(
                json_['namedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final namedRange = this.namedRange;
    return {'namedRange': ?namedRange};
  }
}

/// Adds a new protected range.
class AddProtectedRangeRequest {
  /// The protected range to be added.
  ///
  /// The protectedRangeId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a range that
  /// already exists.)
  ProtectedRange? protectedRange;

  AddProtectedRangeRequest({this.protectedRange});

  AddProtectedRangeRequest.fromJson(core.Map json_)
    : this(
        protectedRange: json_.containsKey('protectedRange')
            ? ProtectedRange.fromJson(
                json_['protectedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final protectedRange = this.protectedRange;
    return {'protectedRange': ?protectedRange};
  }
}

/// The result of adding a new protected range.
class AddProtectedRangeResponse {
  /// The newly added protected range.
  ProtectedRange? protectedRange;

  AddProtectedRangeResponse({this.protectedRange});

  AddProtectedRangeResponse.fromJson(core.Map json_)
    : this(
        protectedRange: json_.containsKey('protectedRange')
            ? ProtectedRange.fromJson(
                json_['protectedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final protectedRange = this.protectedRange;
    return {'protectedRange': ?protectedRange};
  }
}

/// Adds a new sheet.
///
/// When a sheet is added at a given index, all subsequent sheets' indexes are
/// incremented. To add an object sheet, use AddChartRequest instead and specify
/// EmbeddedObjectPosition.sheetId or EmbeddedObjectPosition.newSheet.
class AddSheetRequest {
  /// The properties the new sheet should have.
  ///
  /// All properties are optional. The sheetId field is optional; if one is not
  /// set, an id will be randomly generated. (It is an error to specify the ID
  /// of a sheet that already exists.)
  SheetProperties? properties;

  AddSheetRequest({this.properties});

  AddSheetRequest.fromJson(core.Map json_)
    : this(
        properties: json_.containsKey('properties')
            ? SheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final properties = this.properties;
    return {'properties': ?properties};
  }
}

/// The result of adding a sheet.
class AddSheetResponse {
  /// The properties of the newly added sheet.
  SheetProperties? properties;

  AddSheetResponse({this.properties});

  AddSheetResponse.fromJson(core.Map json_)
    : this(
        properties: json_.containsKey('properties')
            ? SheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final properties = this.properties;
    return {'properties': ?properties};
  }
}

/// Adds a slicer to a sheet in the spreadsheet.
class AddSlicerRequest {
  /// The slicer that should be added to the spreadsheet, including the position
  /// where it should be placed.
  ///
  /// The slicerId field is optional; if one is not set, an id will be randomly
  /// generated. (It is an error to specify the ID of a slicer that already
  /// exists.)
  Slicer? slicer;

  AddSlicerRequest({this.slicer});

  AddSlicerRequest.fromJson(core.Map json_)
    : this(
        slicer: json_.containsKey('slicer')
            ? Slicer.fromJson(
                json_['slicer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final slicer = this.slicer;
    return {'slicer': ?slicer};
  }
}

/// The result of adding a slicer to a spreadsheet.
class AddSlicerResponse {
  /// The newly added slicer.
  Slicer? slicer;

  AddSlicerResponse({this.slicer});

  AddSlicerResponse.fromJson(core.Map json_)
    : this(
        slicer: json_.containsKey('slicer')
            ? Slicer.fromJson(
                json_['slicer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final slicer = this.slicer;
    return {'slicer': ?slicer};
  }
}

/// Adds a new table to the spreadsheet.
class AddTableRequest {
  /// The table to add.
  ///
  /// Required.
  Table? table;

  AddTableRequest({this.table});

  AddTableRequest.fromJson(core.Map json_)
    : this(
        table: json_.containsKey('table')
            ? Table.fromJson(
                json_['table'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final table = this.table;
    return {'table': ?table};
  }
}

/// The result of adding a table.
class AddTableResponse {
  /// The table that was added.
  ///
  /// Output only.
  Table? table;

  AddTableResponse({this.table});

  AddTableResponse.fromJson(core.Map json_)
    : this(
        table: json_.containsKey('table')
            ? Table.fromJson(
                json_['table'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final table = this.table;
    return {'table': ?table};
  }
}

/// Adds new cells after the last row with data in a sheet, inserting new rows
/// into the sheet if necessary.
class AppendCellsRequest {
  /// The fields of CellData that should be updated.
  ///
  /// At least one field must be specified. The root is the CellData;
  /// 'row.values.' should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field.
  core.String? fields;

  /// The data to append.
  core.List<RowData>? rows;

  /// The sheet ID to append the data to.
  core.int? sheetId;

  /// The ID of the table to append data to.
  ///
  /// The data will be only appended to the table body. This field also takes
  /// precedence over the `sheet_id` field.
  core.String? tableId;

  AppendCellsRequest({this.fields, this.rows, this.sheetId, this.tableId});

  AppendCellsRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) => RowData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sheetId: json_['sheetId'] as core.int?,
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final rows = this.rows;
    final sheetId = this.sheetId;
    final tableId = this.tableId;
    return {
      'fields': ?fields,
      'rows': ?rows,
      'sheetId': ?sheetId,
      'tableId': ?tableId,
    };
  }
}

/// Appends rows or columns to the end of a sheet.
class AppendDimensionRequest {
  /// Whether rows or columns should be appended.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? dimension;

  /// The number of rows or columns to append.
  core.int? length;

  /// The sheet to append rows or columns to.
  core.int? sheetId;

  AppendDimensionRequest({this.dimension, this.length, this.sheetId});

  AppendDimensionRequest.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        length: json_['length'] as core.int?,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final length = this.length;
    final sheetId = this.sheetId;
    return {'dimension': ?dimension, 'length': ?length, 'sheetId': ?sheetId};
  }
}

/// The response when updating a range of values in a spreadsheet.
class AppendValuesResponse {
  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  /// The range (in A1 notation) of the table that values are being appended to
  /// (before the values were appended).
  ///
  /// Empty if no table was found.
  core.String? tableRange;

  /// Information about the updates that were applied.
  UpdateValuesResponse? updates;

  AppendValuesResponse({this.spreadsheetId, this.tableRange, this.updates});

  AppendValuesResponse.fromJson(core.Map json_)
    : this(
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        tableRange: json_['tableRange'] as core.String?,
        updates: json_.containsKey('updates')
            ? UpdateValuesResponse.fromJson(
                json_['updates'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final spreadsheetId = this.spreadsheetId;
    final tableRange = this.tableRange;
    final updates = this.updates;
    return {
      'spreadsheetId': ?spreadsheetId,
      'tableRange': ?tableRange,
      'updates': ?updates,
    };
  }
}

/// Fills in more data based on existing data.
class AutoFillRequest {
  /// The range to autofill.
  ///
  /// This will examine the range and detect the location that has data and
  /// automatically fill that data in to the rest of the range.
  GridRange? range;

  /// The source and destination areas to autofill.
  ///
  /// This explicitly lists the source of the autofill and where to extend that
  /// data.
  SourceAndDestination? sourceAndDestination;

  /// True if we should generate data with the "alternate" series.
  ///
  /// This differs based on the type and amount of source data.
  core.bool? useAlternateSeries;

  AutoFillRequest({
    this.range,
    this.sourceAndDestination,
    this.useAlternateSeries,
  });

  AutoFillRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceAndDestination: json_.containsKey('sourceAndDestination')
            ? SourceAndDestination.fromJson(
                json_['sourceAndDestination']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useAlternateSeries: json_['useAlternateSeries'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    final sourceAndDestination = this.sourceAndDestination;
    final useAlternateSeries = this.useAlternateSeries;
    return {
      'range': ?range,
      'sourceAndDestination': ?sourceAndDestination,
      'useAlternateSeries': ?useAlternateSeries,
    };
  }
}

/// Automatically resizes one or more dimensions based on the contents of the
/// cells in that dimension.
class AutoResizeDimensionsRequest {
  /// The dimensions on a data source sheet to automatically resize.
  DataSourceSheetDimensionRange? dataSourceSheetDimensions;

  /// The dimensions to automatically resize.
  DimensionRange? dimensions;

  AutoResizeDimensionsRequest({
    this.dataSourceSheetDimensions,
    this.dimensions,
  });

  AutoResizeDimensionsRequest.fromJson(core.Map json_)
    : this(
        dataSourceSheetDimensions:
            json_.containsKey('dataSourceSheetDimensions')
            ? DataSourceSheetDimensionRange.fromJson(
                json_['dataSourceSheetDimensions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensions: json_.containsKey('dimensions')
            ? DimensionRange.fromJson(
                json_['dimensions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceSheetDimensions = this.dataSourceSheetDimensions;
    final dimensions = this.dimensions;
    return {
      'dataSourceSheetDimensions': ?dataSourceSheetDimensions,
      'dimensions': ?dimensions,
    };
  }
}

/// A banded (alternating colors) range in a sheet.
class BandedRange {
  /// The ID of the banded range.
  ///
  /// If unset, refer to banded_range_reference.
  core.int? bandedRangeId;

  /// The reference of the banded range, used to identify the ID that is not
  /// supported by the banded_range_id.
  ///
  /// Output only.
  core.String? bandedRangeReference;

  /// Properties for column bands.
  ///
  /// These properties are applied on a column- by-column basis throughout all
  /// the columns in the range. At least one of row_properties or
  /// column_properties must be specified.
  BandingProperties? columnProperties;

  /// The range over which these properties are applied.
  GridRange? range;

  /// Properties for row bands.
  ///
  /// These properties are applied on a row-by-row basis throughout all the rows
  /// in the range. At least one of row_properties or column_properties must be
  /// specified.
  BandingProperties? rowProperties;

  BandedRange({
    this.bandedRangeId,
    this.bandedRangeReference,
    this.columnProperties,
    this.range,
    this.rowProperties,
  });

  BandedRange.fromJson(core.Map json_)
    : this(
        bandedRangeId: json_['bandedRangeId'] as core.int?,
        bandedRangeReference: json_['bandedRangeReference'] as core.String?,
        columnProperties: json_.containsKey('columnProperties')
            ? BandingProperties.fromJson(
                json_['columnProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rowProperties: json_.containsKey('rowProperties')
            ? BandingProperties.fromJson(
                json_['rowProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRangeId = this.bandedRangeId;
    final bandedRangeReference = this.bandedRangeReference;
    final columnProperties = this.columnProperties;
    final range = this.range;
    final rowProperties = this.rowProperties;
    return {
      'bandedRangeId': ?bandedRangeId,
      'bandedRangeReference': ?bandedRangeReference,
      'columnProperties': ?columnProperties,
      'range': ?range,
      'rowProperties': ?rowProperties,
    };
  }
}

/// Properties referring a single dimension (either row or column).
///
/// If both BandedRange.row_properties and BandedRange.column_properties are
/// set, the fill colors are applied to cells according to the following rules:
/// * header_color and footer_color take priority over band colors. *
/// first_band_color takes priority over second_band_color. * row_properties
/// takes priority over column_properties. For example, the first row color
/// takes priority over the first column color, but the first column color takes
/// priority over the second row color. Similarly, the row header takes priority
/// over the column header in the top left cell, but the column header takes
/// priority over the first row color if the row header is not set.
class BandingProperties {
  /// The first color that is alternating.
  ///
  /// (Required) Deprecated: Use first_band_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? firstBandColor;

  /// The first color that is alternating.
  ///
  /// (Required) If first_band_color is also set, this field takes precedence.
  ColorStyle? firstBandColorStyle;

  /// The color of the last row or column.
  ///
  /// If this field is not set, the last row or column is filled with either
  /// first_band_color or second_band_color, depending on the color of the
  /// previous row or column. Deprecated: Use footer_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? footerColor;

  /// The color of the last row or column.
  ///
  /// If this field is not set, the last row or column is filled with either
  /// first_band_color or second_band_color, depending on the color of the
  /// previous row or column. If footer_color is also set, this field takes
  /// precedence.
  ColorStyle? footerColorStyle;

  /// The color of the first row or column.
  ///
  /// If this field is set, the first row or column is filled with this color
  /// and the colors alternate between first_band_color and second_band_color
  /// starting from the second row or column. Otherwise, the first row or column
  /// is filled with first_band_color and the colors proceed to alternate as
  /// they normally would. Deprecated: Use header_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? headerColor;

  /// The color of the first row or column.
  ///
  /// If this field is set, the first row or column is filled with this color
  /// and the colors alternate between first_band_color and second_band_color
  /// starting from the second row or column. Otherwise, the first row or column
  /// is filled with first_band_color and the colors proceed to alternate as
  /// they normally would. If header_color is also set, this field takes
  /// precedence.
  ColorStyle? headerColorStyle;

  /// The second color that is alternating.
  ///
  /// (Required) Deprecated: Use second_band_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? secondBandColor;

  /// The second color that is alternating.
  ///
  /// (Required) If second_band_color is also set, this field takes precedence.
  ColorStyle? secondBandColorStyle;

  BandingProperties({
    this.firstBandColor,
    this.firstBandColorStyle,
    this.footerColor,
    this.footerColorStyle,
    this.headerColor,
    this.headerColorStyle,
    this.secondBandColor,
    this.secondBandColorStyle,
  });

  BandingProperties.fromJson(core.Map json_)
    : this(
        firstBandColor: json_.containsKey('firstBandColor')
            ? Color.fromJson(
                json_['firstBandColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        firstBandColorStyle: json_.containsKey('firstBandColorStyle')
            ? ColorStyle.fromJson(
                json_['firstBandColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        footerColor: json_.containsKey('footerColor')
            ? Color.fromJson(
                json_['footerColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        footerColorStyle: json_.containsKey('footerColorStyle')
            ? ColorStyle.fromJson(
                json_['footerColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        headerColor: json_.containsKey('headerColor')
            ? Color.fromJson(
                json_['headerColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        headerColorStyle: json_.containsKey('headerColorStyle')
            ? ColorStyle.fromJson(
                json_['headerColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        secondBandColor: json_.containsKey('secondBandColor')
            ? Color.fromJson(
                json_['secondBandColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        secondBandColorStyle: json_.containsKey('secondBandColorStyle')
            ? ColorStyle.fromJson(
                json_['secondBandColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final firstBandColor = this.firstBandColor;
    final firstBandColorStyle = this.firstBandColorStyle;
    final footerColor = this.footerColor;
    final footerColorStyle = this.footerColorStyle;
    final headerColor = this.headerColor;
    final headerColorStyle = this.headerColorStyle;
    final secondBandColor = this.secondBandColor;
    final secondBandColorStyle = this.secondBandColorStyle;
    return {
      'firstBandColor': ?firstBandColor,
      'firstBandColorStyle': ?firstBandColorStyle,
      'footerColor': ?footerColor,
      'footerColorStyle': ?footerColorStyle,
      'headerColor': ?headerColor,
      'headerColorStyle': ?headerColorStyle,
      'secondBandColor': ?secondBandColor,
      'secondBandColorStyle': ?secondBandColorStyle,
    };
  }
}

/// Formatting options for baseline value.
class BaselineValueFormat {
  /// The comparison type of key value with baseline value.
  /// Possible string values are:
  /// - "COMPARISON_TYPE_UNDEFINED" : Default value, do not use.
  /// - "ABSOLUTE_DIFFERENCE" : Use absolute difference between key and baseline
  /// value.
  /// - "PERCENTAGE_DIFFERENCE" : Use percentage difference between key and
  /// baseline value.
  core.String? comparisonType;

  /// Description which is appended after the baseline value.
  ///
  /// This field is optional.
  core.String? description;

  /// Color to be used, in case baseline value represents a negative change for
  /// key value.
  ///
  /// This field is optional. Deprecated: Use negative_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? negativeColor;

  /// Color to be used, in case baseline value represents a negative change for
  /// key value.
  ///
  /// This field is optional. If negative_color is also set, this field takes
  /// precedence.
  ColorStyle? negativeColorStyle;

  /// Specifies the horizontal text positioning of baseline value.
  ///
  /// This field is optional. If not specified, default positioning is used.
  TextPosition? position;

  /// Color to be used, in case baseline value represents a positive change for
  /// key value.
  ///
  /// This field is optional. Deprecated: Use positive_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? positiveColor;

  /// Color to be used, in case baseline value represents a positive change for
  /// key value.
  ///
  /// This field is optional. If positive_color is also set, this field takes
  /// precedence.
  ColorStyle? positiveColorStyle;

  /// Text formatting options for baseline value.
  ///
  /// The link field is not supported.
  TextFormat? textFormat;

  BaselineValueFormat({
    this.comparisonType,
    this.description,
    this.negativeColor,
    this.negativeColorStyle,
    this.position,
    this.positiveColor,
    this.positiveColorStyle,
    this.textFormat,
  });

  BaselineValueFormat.fromJson(core.Map json_)
    : this(
        comparisonType: json_['comparisonType'] as core.String?,
        description: json_['description'] as core.String?,
        negativeColor: json_.containsKey('negativeColor')
            ? Color.fromJson(
                json_['negativeColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        negativeColorStyle: json_.containsKey('negativeColorStyle')
            ? ColorStyle.fromJson(
                json_['negativeColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        position: json_.containsKey('position')
            ? TextPosition.fromJson(
                json_['position'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positiveColor: json_.containsKey('positiveColor')
            ? Color.fromJson(
                json_['positiveColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positiveColorStyle: json_.containsKey('positiveColorStyle')
            ? ColorStyle.fromJson(
                json_['positiveColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comparisonType = this.comparisonType;
    final description = this.description;
    final negativeColor = this.negativeColor;
    final negativeColorStyle = this.negativeColorStyle;
    final position = this.position;
    final positiveColor = this.positiveColor;
    final positiveColorStyle = this.positiveColorStyle;
    final textFormat = this.textFormat;
    return {
      'comparisonType': ?comparisonType,
      'description': ?description,
      'negativeColor': ?negativeColor,
      'negativeColorStyle': ?negativeColorStyle,
      'position': ?position,
      'positiveColor': ?positiveColor,
      'positiveColorStyle': ?positiveColorStyle,
      'textFormat': ?textFormat,
    };
  }
}

/// An axis of the chart.
///
/// A chart may not have more than one axis per axis position.
class BasicChartAxis {
  /// The format of the title.
  ///
  /// Only valid if the axis is not associated with the domain. The link field
  /// is not supported.
  TextFormat? format;

  /// The position of this axis.
  /// Possible string values are:
  /// - "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_AXIS" : The axis rendered at the bottom of a chart. For most
  /// charts, this is the standard major axis. For bar charts, this is a minor
  /// axis.
  /// - "LEFT_AXIS" : The axis rendered at the left of a chart. For most charts,
  /// this is a minor axis. For bar charts, this is the standard major axis.
  /// - "RIGHT_AXIS" : The axis rendered at the right of a chart. For most
  /// charts, this is a minor axis. For bar charts, this is an unusual major
  /// axis.
  core.String? position;

  /// The title of this axis.
  ///
  /// If set, this overrides any title inferred from headers of the data.
  core.String? title;

  /// The axis title text position.
  TextPosition? titleTextPosition;

  /// The view window options for this axis.
  ChartAxisViewWindowOptions? viewWindowOptions;

  BasicChartAxis({
    this.format,
    this.position,
    this.title,
    this.titleTextPosition,
    this.viewWindowOptions,
  });

  BasicChartAxis.fromJson(core.Map json_)
    : this(
        format: json_.containsKey('format')
            ? TextFormat.fromJson(
                json_['format'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        position: json_['position'] as core.String?,
        title: json_['title'] as core.String?,
        titleTextPosition: json_.containsKey('titleTextPosition')
            ? TextPosition.fromJson(
                json_['titleTextPosition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        viewWindowOptions: json_.containsKey('viewWindowOptions')
            ? ChartAxisViewWindowOptions.fromJson(
                json_['viewWindowOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final format = this.format;
    final position = this.position;
    final title = this.title;
    final titleTextPosition = this.titleTextPosition;
    final viewWindowOptions = this.viewWindowOptions;
    return {
      'format': ?format,
      'position': ?position,
      'title': ?title,
      'titleTextPosition': ?titleTextPosition,
      'viewWindowOptions': ?viewWindowOptions,
    };
  }
}

/// The domain of a chart.
///
/// For example, if charting stock prices over time, this would be the date.
class BasicChartDomain {
  /// The data of the domain.
  ///
  /// For example, if charting stock prices over time, this is the data
  /// representing the dates.
  ChartData? domain;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool? reversed;

  BasicChartDomain({this.domain, this.reversed});

  BasicChartDomain.fromJson(core.Map json_)
    : this(
        domain: json_.containsKey('domain')
            ? ChartData.fromJson(
                json_['domain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reversed: json_['reversed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domain = this.domain;
    final reversed = this.reversed;
    return {'domain': ?domain, 'reversed': ?reversed};
  }
}

/// A single series of data in a chart.
///
/// For example, if charting stock prices over time, multiple series may exist,
/// one for the "Open Price", "High Price", "Low Price" and "Close Price".
class BasicChartSeries {
  /// The color for elements (such as bars, lines, and points) associated with
  /// this series.
  ///
  /// If empty, a default color is used. Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// The color for elements (such as bars, lines, and points) associated with
  /// this series.
  ///
  /// If empty, a default color is used. If color is also set, this field takes
  /// precedence.
  ColorStyle? colorStyle;

  /// Information about the data labels for this series.
  DataLabel? dataLabel;

  /// The line style of this series.
  ///
  /// Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are
  /// also supported if the series chart type is AREA or LINE.
  LineStyle? lineStyle;

  /// The style for points associated with this series.
  ///
  /// Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are
  /// also supported if the series chart type is AREA, LINE, or SCATTER. If
  /// empty, a default point style is used.
  PointStyle? pointStyle;

  /// The data being visualized in this chart series.
  ChartData? series;

  /// Style override settings for series data points.
  core.List<BasicSeriesDataPointStyleOverride>? styleOverrides;

  /// The minor axis that will specify the range of values for this series.
  ///
  /// For example, if charting stocks over time, the "Volume" series may want to
  /// be pinned to the right with the prices pinned to the left, because the
  /// scale of trading volume is different than the scale of prices. It is an
  /// error to specify an axis that isn't a valid minor axis for the chart's
  /// type.
  /// Possible string values are:
  /// - "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_AXIS" : The axis rendered at the bottom of a chart. For most
  /// charts, this is the standard major axis. For bar charts, this is a minor
  /// axis.
  /// - "LEFT_AXIS" : The axis rendered at the left of a chart. For most charts,
  /// this is a minor axis. For bar charts, this is the standard major axis.
  /// - "RIGHT_AXIS" : The axis rendered at the right of a chart. For most
  /// charts, this is a minor axis. For bar charts, this is an unusual major
  /// axis.
  core.String? targetAxis;

  /// The type of this series.
  ///
  /// Valid only if the chartType is COMBO. Different types will change the way
  /// the series is visualized. Only LINE, AREA, and COLUMN are supported.
  /// Possible string values are:
  /// - "BASIC_CHART_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "BAR" : A bar chart.
  /// - "LINE" : A line chart.
  /// - "AREA" : An area chart.
  /// - "COLUMN" : A column chart.
  /// - "SCATTER" : A scatter chart.
  /// - "COMBO" : A combo chart.
  /// - "STEPPED_AREA" : A stepped area chart.
  core.String? type;

  BasicChartSeries({
    this.color,
    this.colorStyle,
    this.dataLabel,
    this.lineStyle,
    this.pointStyle,
    this.series,
    this.styleOverrides,
    this.targetAxis,
    this.type,
  });

  BasicChartSeries.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataLabel: json_.containsKey('dataLabel')
            ? DataLabel.fromJson(
                json_['dataLabel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lineStyle: json_.containsKey('lineStyle')
            ? LineStyle.fromJson(
                json_['lineStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pointStyle: json_.containsKey('pointStyle')
            ? PointStyle.fromJson(
                json_['pointStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        series: json_.containsKey('series')
            ? ChartData.fromJson(
                json_['series'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        styleOverrides: (json_['styleOverrides'] as core.List?)
            ?.map(
              (value) => BasicSeriesDataPointStyleOverride.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        targetAxis: json_['targetAxis'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    final dataLabel = this.dataLabel;
    final lineStyle = this.lineStyle;
    final pointStyle = this.pointStyle;
    final series = this.series;
    final styleOverrides = this.styleOverrides;
    final targetAxis = this.targetAxis;
    final type = this.type;
    return {
      'color': ?color,
      'colorStyle': ?colorStyle,
      'dataLabel': ?dataLabel,
      'lineStyle': ?lineStyle,
      'pointStyle': ?pointStyle,
      'series': ?series,
      'styleOverrides': ?styleOverrides,
      'targetAxis': ?targetAxis,
      'type': ?type,
    };
  }
}

/// The specification for a basic chart.
///
/// See BasicChartType for the list of charts this supports.
class BasicChartSpec {
  /// The axis on the chart.
  core.List<BasicChartAxis>? axis;

  /// The type of the chart.
  /// Possible string values are:
  /// - "BASIC_CHART_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "BAR" : A bar chart.
  /// - "LINE" : A line chart.
  /// - "AREA" : An area chart.
  /// - "COLUMN" : A column chart.
  /// - "SCATTER" : A scatter chart.
  /// - "COMBO" : A combo chart.
  /// - "STEPPED_AREA" : A stepped area chart.
  core.String? chartType;

  /// The behavior of tooltips and data highlighting when hovering on data and
  /// chart area.
  /// Possible string values are:
  /// - "BASIC_CHART_COMPARE_MODE_UNSPECIFIED" : Default value, do not use.
  /// - "DATUM" : Only the focused data element is highlighted and shown in the
  /// tooltip.
  /// - "CATEGORY" : All data elements with the same category (e.g., domain
  /// value) are highlighted and shown in the tooltip.
  core.String? compareMode;

  /// The domain of data this is charting.
  ///
  /// Only a single domain is supported.
  core.List<BasicChartDomain>? domains;

  /// The number of rows or columns in the data that are "headers".
  ///
  /// If not set, Google Sheets will guess how many rows are headers based on
  /// the data. (Note that BasicChartAxis.title may override the axis title
  /// inferred from the header values.)
  core.int? headerCount;

  /// If some values in a series are missing, gaps may appear in the chart (e.g,
  /// segments of lines in a line chart will be missing).
  ///
  /// To eliminate these gaps set this to true. Applies to Line, Area, and Combo
  /// charts.
  core.bool? interpolateNulls;

  /// The position of the chart legend.
  /// Possible string values are:
  /// - "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  core.String? legendPosition;

  /// Gets whether all lines should be rendered smooth or straight by default.
  ///
  /// Applies to Line charts.
  core.bool? lineSmoothing;

  /// The data this chart is visualizing.
  core.List<BasicChartSeries>? series;

  /// The stacked type for charts that support vertical stacking.
  ///
  /// Applies to Area, Bar, Column, Combo, and Stepped Area charts.
  /// Possible string values are:
  /// - "BASIC_CHART_STACKED_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "NOT_STACKED" : Series are not stacked.
  /// - "STACKED" : Series values are stacked, each value is rendered vertically
  /// beginning from the top of the value below it.
  /// - "PERCENT_STACKED" : Vertical stacks are stretched to reach the top of
  /// the chart, with values laid out as percentages of each other.
  core.String? stackedType;

  /// True to make the chart 3D.
  ///
  /// Applies to Bar and Column charts.
  core.bool? threeDimensional;

  /// Controls whether to display additional data labels on stacked charts which
  /// sum the total value of all stacked values at each value along the domain
  /// axis.
  ///
  /// These data labels can only be set when chart_type is one of AREA, BAR,
  /// COLUMN, COMBO or STEPPED_AREA and stacked_type is either STACKED or
  /// PERCENT_STACKED. In addition, for COMBO, this will only be supported if
  /// there is only one type of stackable series type or one type has more
  /// series than the others and each of the other types have no more than one
  /// series. For example, if a chart has two stacked bar series and one area
  /// series, the total data labels will be supported. If it has three bar
  /// series and two area series, total data labels are not allowed. Neither
  /// CUSTOM nor placement can be set on the total_data_label.
  DataLabel? totalDataLabel;

  BasicChartSpec({
    this.axis,
    this.chartType,
    this.compareMode,
    this.domains,
    this.headerCount,
    this.interpolateNulls,
    this.legendPosition,
    this.lineSmoothing,
    this.series,
    this.stackedType,
    this.threeDimensional,
    this.totalDataLabel,
  });

  BasicChartSpec.fromJson(core.Map json_)
    : this(
        axis: (json_['axis'] as core.List?)
            ?.map(
              (value) => BasicChartAxis.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        chartType: json_['chartType'] as core.String?,
        compareMode: json_['compareMode'] as core.String?,
        domains: (json_['domains'] as core.List?)
            ?.map(
              (value) => BasicChartDomain.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        headerCount: json_['headerCount'] as core.int?,
        interpolateNulls: json_['interpolateNulls'] as core.bool?,
        legendPosition: json_['legendPosition'] as core.String?,
        lineSmoothing: json_['lineSmoothing'] as core.bool?,
        series: (json_['series'] as core.List?)
            ?.map(
              (value) => BasicChartSeries.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        stackedType: json_['stackedType'] as core.String?,
        threeDimensional: json_['threeDimensional'] as core.bool?,
        totalDataLabel: json_.containsKey('totalDataLabel')
            ? DataLabel.fromJson(
                json_['totalDataLabel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final axis = this.axis;
    final chartType = this.chartType;
    final compareMode = this.compareMode;
    final domains = this.domains;
    final headerCount = this.headerCount;
    final interpolateNulls = this.interpolateNulls;
    final legendPosition = this.legendPosition;
    final lineSmoothing = this.lineSmoothing;
    final series = this.series;
    final stackedType = this.stackedType;
    final threeDimensional = this.threeDimensional;
    final totalDataLabel = this.totalDataLabel;
    return {
      'axis': ?axis,
      'chartType': ?chartType,
      'compareMode': ?compareMode,
      'domains': ?domains,
      'headerCount': ?headerCount,
      'interpolateNulls': ?interpolateNulls,
      'legendPosition': ?legendPosition,
      'lineSmoothing': ?lineSmoothing,
      'series': ?series,
      'stackedType': ?stackedType,
      'threeDimensional': ?threeDimensional,
      'totalDataLabel': ?totalDataLabel,
    };
  }
}

/// The default filter associated with a sheet.
class BasicFilter {
  /// The criteria for showing/hiding values per column.
  ///
  /// The map's key is the column index, and the value is the criteria for that
  /// column. This field is deprecated in favor of filter_specs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, FilterCriteria>? criteria;

  /// The filter criteria per column.
  ///
  /// Both criteria and filter_specs are populated in responses. If both fields
  /// are specified in an update request, this field takes precedence.
  core.List<FilterSpec>? filterSpecs;

  /// The range the filter covers.
  GridRange? range;

  /// The sort order per column.
  ///
  /// Later specifications are used when values are equal in the earlier
  /// specifications.
  core.List<SortSpec>? sortSpecs;

  /// The table this filter is backed by, if any.
  ///
  /// When writing, only one of range or table_id may be set.
  core.String? tableId;

  BasicFilter({
    this.criteria,
    this.filterSpecs,
    this.range,
    this.sortSpecs,
    this.tableId,
  });

  BasicFilter.fromJson(core.Map json_)
    : this(
        criteria: (json_['criteria'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                FilterCriteria.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => FilterSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortSpecs: (json_['sortSpecs'] as core.List?)
            ?.map(
              (value) => SortSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final criteria = this.criteria;
    final filterSpecs = this.filterSpecs;
    final range = this.range;
    final sortSpecs = this.sortSpecs;
    final tableId = this.tableId;
    return {
      'criteria': ?criteria,
      'filterSpecs': ?filterSpecs,
      'range': ?range,
      'sortSpecs': ?sortSpecs,
      'tableId': ?tableId,
    };
  }
}

/// Style override settings for a single series data point.
class BasicSeriesDataPointStyleOverride {
  /// Color of the series data point.
  ///
  /// If empty, the series default is used. Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// Color of the series data point.
  ///
  /// If empty, the series default is used. If color is also set, this field
  /// takes precedence.
  ColorStyle? colorStyle;

  /// The zero-based index of the series data point.
  core.int? index;

  /// Point style of the series data point.
  ///
  /// Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are
  /// also supported if the series chart type is AREA, LINE, or SCATTER. If
  /// empty, the series default is used.
  PointStyle? pointStyle;

  BasicSeriesDataPointStyleOverride({
    this.color,
    this.colorStyle,
    this.index,
    this.pointStyle,
  });

  BasicSeriesDataPointStyleOverride.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        index: json_['index'] as core.int?,
        pointStyle: json_.containsKey('pointStyle')
            ? PointStyle.fromJson(
                json_['pointStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    final index = this.index;
    final pointStyle = this.pointStyle;
    return {
      'color': ?color,
      'colorStyle': ?colorStyle,
      'index': ?index,
      'pointStyle': ?pointStyle,
    };
  }
}

/// The request for clearing more than one range selected by a DataFilter in a
/// spreadsheet.
class BatchClearValuesByDataFilterRequest {
  /// The DataFilters used to determine which ranges to clear.
  core.List<DataFilter>? dataFilters;

  BatchClearValuesByDataFilterRequest({this.dataFilters});

  BatchClearValuesByDataFilterRequest.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    return {'dataFilters': ?dataFilters};
  }
}

/// The response when clearing a range of values selected with DataFilters in a
/// spreadsheet.
class BatchClearValuesByDataFilterResponse {
  /// The ranges that were cleared, in
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell).
  ///
  /// If the requests are for an unbounded range or a ranger larger than the
  /// bounds of the sheet, this is the actual ranges that were cleared, bounded
  /// to the sheet's limits.
  core.List<core.String>? clearedRanges;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  BatchClearValuesByDataFilterResponse({
    this.clearedRanges,
    this.spreadsheetId,
  });

  BatchClearValuesByDataFilterResponse.fromJson(core.Map json_)
    : this(
        clearedRanges: (json_['clearedRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clearedRanges = this.clearedRanges;
    final spreadsheetId = this.spreadsheetId;
    return {'clearedRanges': ?clearedRanges, 'spreadsheetId': ?spreadsheetId};
  }
}

/// The request for clearing more than one range of values in a spreadsheet.
class BatchClearValuesRequest {
  /// The ranges to clear, in
  /// [A1 notation or R1C1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell).
  core.List<core.String>? ranges;

  BatchClearValuesRequest({this.ranges});

  BatchClearValuesRequest.fromJson(core.Map json_)
    : this(
        ranges: (json_['ranges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ranges = this.ranges;
    return {'ranges': ?ranges};
  }
}

/// The response when clearing a range of values in a spreadsheet.
class BatchClearValuesResponse {
  /// The ranges that were cleared, in A1 notation.
  ///
  /// If the requests are for an unbounded range or a ranger larger than the
  /// bounds of the sheet, this is the actual ranges that were cleared, bounded
  /// to the sheet's limits.
  core.List<core.String>? clearedRanges;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  BatchClearValuesResponse({this.clearedRanges, this.spreadsheetId});

  BatchClearValuesResponse.fromJson(core.Map json_)
    : this(
        clearedRanges: (json_['clearedRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clearedRanges = this.clearedRanges;
    final spreadsheetId = this.spreadsheetId;
    return {'clearedRanges': ?clearedRanges, 'spreadsheetId': ?spreadsheetId};
  }
}

/// The request for retrieving a range of values in a spreadsheet selected by a
/// set of DataFilters.
class BatchGetValuesByDataFilterRequest {
  /// The data filters used to match the ranges of values to retrieve.
  ///
  /// Ranges that match any of the specified data filters are included in the
  /// response.
  core.List<DataFilter>? dataFilters;

  /// How dates, times, and durations should be represented in the output.
  ///
  /// This is ignored if value_render_option is FORMATTED_VALUE. The default
  /// dateTime render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  core.String? dateTimeRenderOption;

  /// The major dimension that results should use.
  ///
  /// For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then a
  /// request that selects that range and sets `majorDimension=ROWS` returns
  /// `[[1,2],[3,4]]`, whereas a request that sets `majorDimension=COLUMNS`
  /// returns `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? majorDimension;

  /// How values should be represented in the output.
  ///
  /// The default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  core.String? valueRenderOption;

  BatchGetValuesByDataFilterRequest({
    this.dataFilters,
    this.dateTimeRenderOption,
    this.majorDimension,
    this.valueRenderOption,
  });

  BatchGetValuesByDataFilterRequest.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dateTimeRenderOption: json_['dateTimeRenderOption'] as core.String?,
        majorDimension: json_['majorDimension'] as core.String?,
        valueRenderOption: json_['valueRenderOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    final dateTimeRenderOption = this.dateTimeRenderOption;
    final majorDimension = this.majorDimension;
    final valueRenderOption = this.valueRenderOption;
    return {
      'dataFilters': ?dataFilters,
      'dateTimeRenderOption': ?dateTimeRenderOption,
      'majorDimension': ?majorDimension,
      'valueRenderOption': ?valueRenderOption,
    };
  }
}

/// The response when retrieving more than one range of values in a spreadsheet
/// selected by DataFilters.
class BatchGetValuesByDataFilterResponse {
  /// The ID of the spreadsheet the data was retrieved from.
  core.String? spreadsheetId;

  /// The requested values with the list of data filters that matched them.
  core.List<MatchedValueRange>? valueRanges;

  BatchGetValuesByDataFilterResponse({this.spreadsheetId, this.valueRanges});

  BatchGetValuesByDataFilterResponse.fromJson(core.Map json_)
    : this(
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        valueRanges: (json_['valueRanges'] as core.List?)
            ?.map(
              (value) => MatchedValueRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final spreadsheetId = this.spreadsheetId;
    final valueRanges = this.valueRanges;
    return {'spreadsheetId': ?spreadsheetId, 'valueRanges': ?valueRanges};
  }
}

/// The response when retrieving more than one range of values in a spreadsheet.
class BatchGetValuesResponse {
  /// The ID of the spreadsheet the data was retrieved from.
  core.String? spreadsheetId;

  /// The requested values.
  ///
  /// The order of the ValueRanges is the same as the order of the requested
  /// ranges.
  core.List<ValueRange>? valueRanges;

  BatchGetValuesResponse({this.spreadsheetId, this.valueRanges});

  BatchGetValuesResponse.fromJson(core.Map json_)
    : this(
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        valueRanges: (json_['valueRanges'] as core.List?)
            ?.map(
              (value) => ValueRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final spreadsheetId = this.spreadsheetId;
    final valueRanges = this.valueRanges;
    return {'spreadsheetId': ?spreadsheetId, 'valueRanges': ?valueRanges};
  }
}

/// The request for updating any aspect of a spreadsheet.
class BatchUpdateSpreadsheetRequest {
  /// Determines if the update response should include the spreadsheet resource.
  core.bool? includeSpreadsheetInResponse;

  /// A list of updates to apply to the spreadsheet.
  ///
  /// Requests will be applied in the order they are specified. If any request
  /// is not valid, no requests will be applied.
  core.List<Request>? requests;

  /// True if grid data should be returned.
  ///
  /// Meaningful only if include_spreadsheet_in_response is 'true'. This
  /// parameter is ignored if a field mask was set in the request.
  core.bool? responseIncludeGridData;

  /// Limits the ranges included in the response spreadsheet.
  ///
  /// Meaningful only if include_spreadsheet_in_response is 'true'.
  core.List<core.String>? responseRanges;

  BatchUpdateSpreadsheetRequest({
    this.includeSpreadsheetInResponse,
    this.requests,
    this.responseIncludeGridData,
    this.responseRanges,
  });

  BatchUpdateSpreadsheetRequest.fromJson(core.Map json_)
    : this(
        includeSpreadsheetInResponse:
            json_['includeSpreadsheetInResponse'] as core.bool?,
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => Request.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        responseIncludeGridData: json_['responseIncludeGridData'] as core.bool?,
        responseRanges: (json_['responseRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final includeSpreadsheetInResponse = this.includeSpreadsheetInResponse;
    final requests = this.requests;
    final responseIncludeGridData = this.responseIncludeGridData;
    final responseRanges = this.responseRanges;
    return {
      'includeSpreadsheetInResponse': ?includeSpreadsheetInResponse,
      'requests': ?requests,
      'responseIncludeGridData': ?responseIncludeGridData,
      'responseRanges': ?responseRanges,
    };
  }
}

/// The reply for batch updating a spreadsheet.
class BatchUpdateSpreadsheetResponse {
  /// The reply of the updates.
  ///
  /// This maps 1:1 with the updates, although replies to some requests may be
  /// empty.
  core.List<Response>? replies;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  /// The spreadsheet after updates were applied.
  ///
  /// This is only set if
  /// BatchUpdateSpreadsheetRequest.include_spreadsheet_in_response is `true`.
  Spreadsheet? updatedSpreadsheet;

  BatchUpdateSpreadsheetResponse({
    this.replies,
    this.spreadsheetId,
    this.updatedSpreadsheet,
  });

  BatchUpdateSpreadsheetResponse.fromJson(core.Map json_)
    : this(
        replies: (json_['replies'] as core.List?)
            ?.map(
              (value) => Response.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        updatedSpreadsheet: json_.containsKey('updatedSpreadsheet')
            ? Spreadsheet.fromJson(
                json_['updatedSpreadsheet']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final replies = this.replies;
    final spreadsheetId = this.spreadsheetId;
    final updatedSpreadsheet = this.updatedSpreadsheet;
    return {
      'replies': ?replies,
      'spreadsheetId': ?spreadsheetId,
      'updatedSpreadsheet': ?updatedSpreadsheet,
    };
  }
}

/// The request for updating more than one range of values in a spreadsheet.
class BatchUpdateValuesByDataFilterRequest {
  /// The new values to apply to the spreadsheet.
  ///
  /// If more than one range is matched by the specified DataFilter the
  /// specified values are applied to all of those ranges.
  core.List<DataFilterValueRange>? data;

  /// Determines if the update response should include the values of the cells
  /// that were updated.
  ///
  /// By default, responses do not include the updated values. The `updatedData`
  /// field within each of the BatchUpdateValuesResponse.responses contains the
  /// updated values. If the range to write was larger than the range actually
  /// written, the response includes all values in the requested range
  /// (excluding trailing empty rows and columns).
  core.bool? includeValuesInResponse;

  /// Determines how dates, times, and durations in the response should be
  /// rendered.
  ///
  /// This is ignored if response_value_render_option is FORMATTED_VALUE. The
  /// default dateTime render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  core.String? responseDateTimeRenderOption;

  /// Determines how values in the response should be rendered.
  ///
  /// The default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  core.String? responseValueRenderOption;

  /// How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI. Numbers will stay as numbers, but strings may be converted to
  /// numbers, dates, etc. following the same rules that are applied when
  /// entering text into a cell via the Google Sheets UI.
  core.String? valueInputOption;

  BatchUpdateValuesByDataFilterRequest({
    this.data,
    this.includeValuesInResponse,
    this.responseDateTimeRenderOption,
    this.responseValueRenderOption,
    this.valueInputOption,
  });

  BatchUpdateValuesByDataFilterRequest.fromJson(core.Map json_)
    : this(
        data: (json_['data'] as core.List?)
            ?.map(
              (value) => DataFilterValueRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        includeValuesInResponse: json_['includeValuesInResponse'] as core.bool?,
        responseDateTimeRenderOption:
            json_['responseDateTimeRenderOption'] as core.String?,
        responseValueRenderOption:
            json_['responseValueRenderOption'] as core.String?,
        valueInputOption: json_['valueInputOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final includeValuesInResponse = this.includeValuesInResponse;
    final responseDateTimeRenderOption = this.responseDateTimeRenderOption;
    final responseValueRenderOption = this.responseValueRenderOption;
    final valueInputOption = this.valueInputOption;
    return {
      'data': ?data,
      'includeValuesInResponse': ?includeValuesInResponse,
      'responseDateTimeRenderOption': ?responseDateTimeRenderOption,
      'responseValueRenderOption': ?responseValueRenderOption,
      'valueInputOption': ?valueInputOption,
    };
  }
}

/// The response when updating a range of values in a spreadsheet.
class BatchUpdateValuesByDataFilterResponse {
  /// The response for each range updated.
  core.List<UpdateValuesByDataFilterResponse>? responses;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  /// The total number of cells updated.
  core.int? totalUpdatedCells;

  /// The total number of columns where at least one cell in the column was
  /// updated.
  core.int? totalUpdatedColumns;

  /// The total number of rows where at least one cell in the row was updated.
  core.int? totalUpdatedRows;

  /// The total number of sheets where at least one cell in the sheet was
  /// updated.
  core.int? totalUpdatedSheets;

  BatchUpdateValuesByDataFilterResponse({
    this.responses,
    this.spreadsheetId,
    this.totalUpdatedCells,
    this.totalUpdatedColumns,
    this.totalUpdatedRows,
    this.totalUpdatedSheets,
  });

  BatchUpdateValuesByDataFilterResponse.fromJson(core.Map json_)
    : this(
        responses: (json_['responses'] as core.List?)
            ?.map(
              (value) => UpdateValuesByDataFilterResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        totalUpdatedCells: json_['totalUpdatedCells'] as core.int?,
        totalUpdatedColumns: json_['totalUpdatedColumns'] as core.int?,
        totalUpdatedRows: json_['totalUpdatedRows'] as core.int?,
        totalUpdatedSheets: json_['totalUpdatedSheets'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final responses = this.responses;
    final spreadsheetId = this.spreadsheetId;
    final totalUpdatedCells = this.totalUpdatedCells;
    final totalUpdatedColumns = this.totalUpdatedColumns;
    final totalUpdatedRows = this.totalUpdatedRows;
    final totalUpdatedSheets = this.totalUpdatedSheets;
    return {
      'responses': ?responses,
      'spreadsheetId': ?spreadsheetId,
      'totalUpdatedCells': ?totalUpdatedCells,
      'totalUpdatedColumns': ?totalUpdatedColumns,
      'totalUpdatedRows': ?totalUpdatedRows,
      'totalUpdatedSheets': ?totalUpdatedSheets,
    };
  }
}

/// The request for updating more than one range of values in a spreadsheet.
class BatchUpdateValuesRequest {
  /// The new values to apply to the spreadsheet.
  core.List<ValueRange>? data;

  /// Determines if the update response should include the values of the cells
  /// that were updated.
  ///
  /// By default, responses do not include the updated values. The `updatedData`
  /// field within each of the BatchUpdateValuesResponse.responses contains the
  /// updated values. If the range to write was larger than the range actually
  /// written, the response includes all values in the requested range
  /// (excluding trailing empty rows and columns).
  core.bool? includeValuesInResponse;

  /// Determines how dates, times, and durations in the response should be
  /// rendered.
  ///
  /// This is ignored if response_value_render_option is FORMATTED_VALUE. The
  /// default dateTime render option is SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output as doubles in "serial number" format, as popularized by Lotus
  /// 1-2-3. The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of the
  /// decimal) counts the time as a fraction of the day. For example, January
  /// 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th
  /// 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be
  /// 33.625. This correctly treats the year 1900 as not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output as strings in their given number format (which depends on the
  /// spreadsheet locale).
  core.String? responseDateTimeRenderOption;

  /// Determines how values in the response should be rendered.
  ///
  /// The default render option is FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the
  /// response according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`. Sheets treats date and time
  /// values as decimal values. This lets you perform arithmetic on them in
  /// formulas. For more information on interpreting date and time values, see
  /// \[About date & time
  /// values\](https://developers.google.com/workspace/sheets/api/guides/formats#about_date_time_values).
  core.String? responseValueRenderOption;

  /// How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI. Numbers will stay as numbers, but strings may be converted to
  /// numbers, dates, etc. following the same rules that are applied when
  /// entering text into a cell via the Google Sheets UI.
  core.String? valueInputOption;

  BatchUpdateValuesRequest({
    this.data,
    this.includeValuesInResponse,
    this.responseDateTimeRenderOption,
    this.responseValueRenderOption,
    this.valueInputOption,
  });

  BatchUpdateValuesRequest.fromJson(core.Map json_)
    : this(
        data: (json_['data'] as core.List?)
            ?.map(
              (value) => ValueRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        includeValuesInResponse: json_['includeValuesInResponse'] as core.bool?,
        responseDateTimeRenderOption:
            json_['responseDateTimeRenderOption'] as core.String?,
        responseValueRenderOption:
            json_['responseValueRenderOption'] as core.String?,
        valueInputOption: json_['valueInputOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final includeValuesInResponse = this.includeValuesInResponse;
    final responseDateTimeRenderOption = this.responseDateTimeRenderOption;
    final responseValueRenderOption = this.responseValueRenderOption;
    final valueInputOption = this.valueInputOption;
    return {
      'data': ?data,
      'includeValuesInResponse': ?includeValuesInResponse,
      'responseDateTimeRenderOption': ?responseDateTimeRenderOption,
      'responseValueRenderOption': ?responseValueRenderOption,
      'valueInputOption': ?valueInputOption,
    };
  }
}

/// The response when updating a range of values in a spreadsheet.
class BatchUpdateValuesResponse {
  /// One UpdateValuesResponse per requested range, in the same order as the
  /// requests appeared.
  core.List<UpdateValuesResponse>? responses;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  /// The total number of cells updated.
  core.int? totalUpdatedCells;

  /// The total number of columns where at least one cell in the column was
  /// updated.
  core.int? totalUpdatedColumns;

  /// The total number of rows where at least one cell in the row was updated.
  core.int? totalUpdatedRows;

  /// The total number of sheets where at least one cell in the sheet was
  /// updated.
  core.int? totalUpdatedSheets;

  BatchUpdateValuesResponse({
    this.responses,
    this.spreadsheetId,
    this.totalUpdatedCells,
    this.totalUpdatedColumns,
    this.totalUpdatedRows,
    this.totalUpdatedSheets,
  });

  BatchUpdateValuesResponse.fromJson(core.Map json_)
    : this(
        responses: (json_['responses'] as core.List?)
            ?.map(
              (value) => UpdateValuesResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        totalUpdatedCells: json_['totalUpdatedCells'] as core.int?,
        totalUpdatedColumns: json_['totalUpdatedColumns'] as core.int?,
        totalUpdatedRows: json_['totalUpdatedRows'] as core.int?,
        totalUpdatedSheets: json_['totalUpdatedSheets'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final responses = this.responses;
    final spreadsheetId = this.spreadsheetId;
    final totalUpdatedCells = this.totalUpdatedCells;
    final totalUpdatedColumns = this.totalUpdatedColumns;
    final totalUpdatedRows = this.totalUpdatedRows;
    final totalUpdatedSheets = this.totalUpdatedSheets;
    return {
      'responses': ?responses,
      'spreadsheetId': ?spreadsheetId,
      'totalUpdatedCells': ?totalUpdatedCells,
      'totalUpdatedColumns': ?totalUpdatedColumns,
      'totalUpdatedRows': ?totalUpdatedRows,
      'totalUpdatedSheets': ?totalUpdatedSheets,
    };
  }
}

/// The specification of a BigQuery data source that's connected to a sheet.
class BigQueryDataSourceSpec {
  /// The ID of a BigQuery enabled Google Cloud project with a billing account
  /// attached.
  ///
  /// For any queries executed against the data source, the project is charged.
  core.String? projectId;

  /// A BigQueryQuerySpec.
  BigQueryQuerySpec? querySpec;

  /// A BigQueryTableSpec.
  BigQueryTableSpec? tableSpec;

  BigQueryDataSourceSpec({this.projectId, this.querySpec, this.tableSpec});

  BigQueryDataSourceSpec.fromJson(core.Map json_)
    : this(
        projectId: json_['projectId'] as core.String?,
        querySpec: json_.containsKey('querySpec')
            ? BigQueryQuerySpec.fromJson(
                json_['querySpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableSpec: json_.containsKey('tableSpec')
            ? BigQueryTableSpec.fromJson(
                json_['tableSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    final querySpec = this.querySpec;
    final tableSpec = this.tableSpec;
    return {
      'projectId': ?projectId,
      'querySpec': ?querySpec,
      'tableSpec': ?tableSpec,
    };
  }
}

/// Specifies a custom BigQuery query.
class BigQueryQuerySpec {
  /// The raw query string.
  core.String? rawQuery;

  BigQueryQuerySpec({this.rawQuery});

  BigQueryQuerySpec.fromJson(core.Map json_)
    : this(rawQuery: json_['rawQuery'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final rawQuery = this.rawQuery;
    return {'rawQuery': ?rawQuery};
  }
}

/// Specifies a BigQuery table definition.
///
/// Only [native tables](https://cloud.google.com/bigquery/docs/tables-intro)
/// are allowed.
class BigQueryTableSpec {
  /// The BigQuery dataset id.
  core.String? datasetId;

  /// The BigQuery table id.
  core.String? tableId;

  /// The ID of a BigQuery project the table belongs to.
  ///
  /// If not specified, the project_id is assumed.
  core.String? tableProjectId;

  BigQueryTableSpec({this.datasetId, this.tableId, this.tableProjectId});

  BigQueryTableSpec.fromJson(core.Map json_)
    : this(
        datasetId: json_['datasetId'] as core.String?,
        tableId: json_['tableId'] as core.String?,
        tableProjectId: json_['tableProjectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datasetId = this.datasetId;
    final tableId = this.tableId;
    final tableProjectId = this.tableProjectId;
    return {
      'datasetId': ?datasetId,
      'tableId': ?tableId,
      'tableProjectId': ?tableProjectId,
    };
  }
}

/// A condition that can evaluate to true or false.
///
/// BooleanConditions are used by conditional formatting, data validation, and
/// the criteria in filters.
class BooleanCondition {
  /// The type of condition.
  /// Possible string values are:
  /// - "CONDITION_TYPE_UNSPECIFIED" : The default value, do not use.
  /// - "NUMBER_GREATER" : The cell's value must be greater than the condition's
  /// value. Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_GREATER_THAN_EQ" : The cell's value must be greater than or
  /// equal to the condition's value. Supported by data validation, conditional
  /// formatting and filters. Requires a single ConditionValue.
  /// - "NUMBER_LESS" : The cell's value must be less than the condition's
  /// value. Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_LESS_THAN_EQ" : The cell's value must be less than or equal to
  /// the condition's value. Supported by data validation, conditional
  /// formatting and filters. Requires a single ConditionValue.
  /// - "NUMBER_EQ" : The cell's value must be equal to the condition's value.
  /// Supported by data validation, conditional formatting and filters. Requires
  /// a single ConditionValue for data validation, conditional formatting, and
  /// filters on non-data source objects and at least one ConditionValue for
  /// filters on data source objects.
  /// - "NUMBER_NOT_EQ" : The cell's value must be not equal to the condition's
  /// value. Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue for data validation, conditional
  /// formatting, and filters on non-data source objects and at least one
  /// ConditionValue for filters on data source objects.
  /// - "NUMBER_BETWEEN" : The cell's value must be between the two condition
  /// values. Supported by data validation, conditional formatting and filters.
  /// Requires exactly two ConditionValues.
  /// - "NUMBER_NOT_BETWEEN" : The cell's value must not be between the two
  /// condition values. Supported by data validation, conditional formatting and
  /// filters. Requires exactly two ConditionValues.
  /// - "TEXT_CONTAINS" : The cell's value must contain the condition's value.
  /// Supported by data validation, conditional formatting and filters. Requires
  /// a single ConditionValue.
  /// - "TEXT_NOT_CONTAINS" : The cell's value must not contain the condition's
  /// value. Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_STARTS_WITH" : The cell's value must start with the condition's
  /// value. Supported by conditional formatting and filters. Requires a single
  /// ConditionValue.
  /// - "TEXT_ENDS_WITH" : The cell's value must end with the condition's value.
  /// Supported by conditional formatting and filters. Requires a single
  /// ConditionValue.
  /// - "TEXT_EQ" : The cell's value must be exactly the condition's value.
  /// Supported by data validation, conditional formatting and filters. Requires
  /// a single ConditionValue for data validation, conditional formatting, and
  /// filters on non-data source objects and at least one ConditionValue for
  /// filters on data source objects.
  /// - "TEXT_IS_EMAIL" : The cell's value must be a valid email address.
  /// Supported by data validation. Requires no ConditionValues.
  /// - "TEXT_IS_URL" : The cell's value must be a valid URL. Supported by data
  /// validation. Requires no ConditionValues.
  /// - "DATE_EQ" : The cell's value must be the same date as the condition's
  /// value. Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue for data validation, conditional
  /// formatting, and filters on non-data source objects and at least one
  /// ConditionValue for filters on data source objects.
  /// - "DATE_BEFORE" : The cell's value must be before the date of the
  /// condition's value. Supported by data validation, conditional formatting
  /// and filters. Requires a single ConditionValue that may be a relative date.
  /// - "DATE_AFTER" : The cell's value must be after the date of the
  /// condition's value. Supported by data validation, conditional formatting
  /// and filters. Requires a single ConditionValue that may be a relative date.
  /// - "DATE_ON_OR_BEFORE" : The cell's value must be on or before the date of
  /// the condition's value. Supported by data validation. Requires a single
  /// ConditionValue that may be a relative date.
  /// - "DATE_ON_OR_AFTER" : The cell's value must be on or after the date of
  /// the condition's value. Supported by data validation. Requires a single
  /// ConditionValue that may be a relative date.
  /// - "DATE_BETWEEN" : The cell's value must be between the dates of the two
  /// condition values. Supported by data validation. Requires exactly two
  /// ConditionValues.
  /// - "DATE_NOT_BETWEEN" : The cell's value must be outside the dates of the
  /// two condition values. Supported by data validation. Requires exactly two
  /// ConditionValues.
  /// - "DATE_IS_VALID" : The cell's value must be a date. Supported by data
  /// validation. Requires no ConditionValues.
  /// - "ONE_OF_RANGE" : The cell's value must be listed in the grid in
  /// condition value's range. Supported by data validation. Requires a single
  /// ConditionValue, and the value must be a valid range in A1 notation.
  /// - "ONE_OF_LIST" : The cell's value must be in the list of condition
  /// values. Supported by data validation. Supports any number of condition
  /// values, one per item in the list. Formulas are not supported in the
  /// values.
  /// - "BLANK" : The cell's value must be empty. Supported by conditional
  /// formatting and filters. Requires no ConditionValues.
  /// - "NOT_BLANK" : The cell's value must not be empty. Supported by
  /// conditional formatting and filters. Requires no ConditionValues.
  /// - "CUSTOM_FORMULA" : The condition's formula must evaluate to true.
  /// Supported by data validation, conditional formatting and filters. Not
  /// supported by data source sheet filters. Requires a single ConditionValue.
  /// - "BOOLEAN" : The cell's value must be TRUE/FALSE or in the list of
  /// condition values. Supported by data validation. Renders as a cell
  /// checkbox. Supports zero, one or two ConditionValues. No values indicates
  /// the cell must be TRUE or FALSE, where TRUE renders as checked and FALSE
  /// renders as unchecked. One value indicates the cell will render as checked
  /// when it contains that value and unchecked when it is blank. Two values
  /// indicate that the cell will render as checked when it contains the first
  /// value and unchecked when it contains the second value. For example,
  /// \["Yes","No"\] indicates that the cell will render a checked box when it
  /// has the value "Yes" and an unchecked box when it has the value "No".
  /// - "TEXT_NOT_EQ" : The cell's value must be exactly not the condition's
  /// value. Supported by filters on data source objects. Requires at least one
  /// ConditionValue.
  /// - "DATE_NOT_EQ" : The cell's value must be exactly not the condition's
  /// value. Supported by filters on data source objects. Requires at least one
  /// ConditionValue.
  /// - "FILTER_EXPRESSION" : The cell's value must follow the pattern
  /// specified. Requires a single ConditionValue.
  core.String? type;

  /// The values of the condition.
  ///
  /// The number of supported values depends on the condition type. Some support
  /// zero values, others one or two values, and ConditionType.ONE_OF_LIST
  /// supports an arbitrary number of values.
  core.List<ConditionValue>? values;

  BooleanCondition({this.type, this.values});

  BooleanCondition.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => ConditionValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    final values = this.values;
    return {'type': ?type, 'values': ?values};
  }
}

/// A rule that may or may not match, depending on the condition.
class BooleanRule {
  /// The condition of the rule.
  ///
  /// If the condition evaluates to true, the format is applied.
  BooleanCondition? condition;

  /// The format to apply.
  ///
  /// Conditional formatting can only apply a subset of formatting: bold,
  /// italic, strikethrough, foreground color and, background color.
  CellFormat? format;

  BooleanRule({this.condition, this.format});

  BooleanRule.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? BooleanCondition.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        format: json_.containsKey('format')
            ? CellFormat.fromJson(
                json_['format'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final format = this.format;
    return {'condition': ?condition, 'format': ?format};
  }
}

/// A border along a cell.
class Border {
  /// The color of the border.
  ///
  /// Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// The color of the border.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  /// The style of the border.
  /// Possible string values are:
  /// - "STYLE_UNSPECIFIED" : The style is not specified. Do not use this.
  /// - "DOTTED" : The border is dotted.
  /// - "DASHED" : The border is dashed.
  /// - "SOLID" : The border is a thin solid line.
  /// - "SOLID_MEDIUM" : The border is a medium solid line.
  /// - "SOLID_THICK" : The border is a thick solid line.
  /// - "NONE" : No border. Used only when updating a border in order to erase
  /// it.
  /// - "DOUBLE" : The border is two solid lines.
  core.String? style;

  /// The width of the border, in pixels.
  ///
  /// Deprecated; the width is determined by the "style" field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? width;

  Border({this.color, this.colorStyle, this.style, this.width});

  Border.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        style: json_['style'] as core.String?,
        width: json_['width'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    final style = this.style;
    final width = this.width;
    return {
      'color': ?color,
      'colorStyle': ?colorStyle,
      'style': ?style,
      'width': ?width,
    };
  }
}

/// The borders of the cell.
class Borders {
  /// The bottom border of the cell.
  Border? bottom;

  /// The left border of the cell.
  Border? left;

  /// The right border of the cell.
  Border? right;

  /// The top border of the cell.
  Border? top;

  Borders({this.bottom, this.left, this.right, this.top});

  Borders.fromJson(core.Map json_)
    : this(
        bottom: json_.containsKey('bottom')
            ? Border.fromJson(
                json_['bottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        left: json_.containsKey('left')
            ? Border.fromJson(
                json_['left'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        right: json_.containsKey('right')
            ? Border.fromJson(
                json_['right'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        top: json_.containsKey('top')
            ? Border.fromJson(
                json_['top'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bottom = this.bottom;
    final left = this.left;
    final right = this.right;
    final top = this.top;
    return {'bottom': ?bottom, 'left': ?left, 'right': ?right, 'top': ?top};
  }
}

/// A bubble chart.
class BubbleChartSpec {
  /// The bubble border color.
  ///
  /// Deprecated: Use bubble_border_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? bubbleBorderColor;

  /// The bubble border color.
  ///
  /// If bubble_border_color is also set, this field takes precedence.
  ColorStyle? bubbleBorderColorStyle;

  /// The data containing the bubble labels.
  ///
  /// These do not need to be unique.
  ChartData? bubbleLabels;

  /// The max radius size of the bubbles, in pixels.
  ///
  /// If specified, the field must be a positive value.
  core.int? bubbleMaxRadiusSize;

  /// The minimum radius size of the bubbles, in pixels.
  ///
  /// If specific, the field must be a positive value.
  core.int? bubbleMinRadiusSize;

  /// The opacity of the bubbles between 0 and 1.0.
  ///
  /// 0 is fully transparent and 1 is fully opaque.
  core.double? bubbleOpacity;

  /// The data containing the bubble sizes.
  ///
  /// Bubble sizes are used to draw the bubbles at different sizes relative to
  /// each other. If specified, group_ids must also be specified. This field is
  /// optional.
  ChartData? bubbleSizes;

  /// The format of the text inside the bubbles.
  ///
  /// Strikethrough, underline, and link are not supported.
  TextFormat? bubbleTextStyle;

  /// The data containing the bubble x-values.
  ///
  /// These values locate the bubbles in the chart horizontally.
  ChartData? domain;

  /// The data containing the bubble group IDs.
  ///
  /// All bubbles with the same group ID are drawn in the same color. If
  /// bubble_sizes is specified then this field must also be specified but may
  /// contain blank values. This field is optional.
  ChartData? groupIds;

  /// Where the legend of the chart should be drawn.
  /// Possible string values are:
  /// - "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  /// - "INSIDE_LEGEND" : The legend is rendered inside the chart area.
  core.String? legendPosition;

  /// The data containing the bubble y-values.
  ///
  /// These values locate the bubbles in the chart vertically.
  ChartData? series;

  BubbleChartSpec({
    this.bubbleBorderColor,
    this.bubbleBorderColorStyle,
    this.bubbleLabels,
    this.bubbleMaxRadiusSize,
    this.bubbleMinRadiusSize,
    this.bubbleOpacity,
    this.bubbleSizes,
    this.bubbleTextStyle,
    this.domain,
    this.groupIds,
    this.legendPosition,
    this.series,
  });

  BubbleChartSpec.fromJson(core.Map json_)
    : this(
        bubbleBorderColor: json_.containsKey('bubbleBorderColor')
            ? Color.fromJson(
                json_['bubbleBorderColor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bubbleBorderColorStyle: json_.containsKey('bubbleBorderColorStyle')
            ? ColorStyle.fromJson(
                json_['bubbleBorderColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        bubbleLabels: json_.containsKey('bubbleLabels')
            ? ChartData.fromJson(
                json_['bubbleLabels'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bubbleMaxRadiusSize: json_['bubbleMaxRadiusSize'] as core.int?,
        bubbleMinRadiusSize: json_['bubbleMinRadiusSize'] as core.int?,
        bubbleOpacity: (json_['bubbleOpacity'] as core.num?)?.toDouble(),
        bubbleSizes: json_.containsKey('bubbleSizes')
            ? ChartData.fromJson(
                json_['bubbleSizes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bubbleTextStyle: json_.containsKey('bubbleTextStyle')
            ? TextFormat.fromJson(
                json_['bubbleTextStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        domain: json_.containsKey('domain')
            ? ChartData.fromJson(
                json_['domain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        groupIds: json_.containsKey('groupIds')
            ? ChartData.fromJson(
                json_['groupIds'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        legendPosition: json_['legendPosition'] as core.String?,
        series: json_.containsKey('series')
            ? ChartData.fromJson(
                json_['series'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bubbleBorderColor = this.bubbleBorderColor;
    final bubbleBorderColorStyle = this.bubbleBorderColorStyle;
    final bubbleLabels = this.bubbleLabels;
    final bubbleMaxRadiusSize = this.bubbleMaxRadiusSize;
    final bubbleMinRadiusSize = this.bubbleMinRadiusSize;
    final bubbleOpacity = this.bubbleOpacity;
    final bubbleSizes = this.bubbleSizes;
    final bubbleTextStyle = this.bubbleTextStyle;
    final domain = this.domain;
    final groupIds = this.groupIds;
    final legendPosition = this.legendPosition;
    final series = this.series;
    return {
      'bubbleBorderColor': ?bubbleBorderColor,
      'bubbleBorderColorStyle': ?bubbleBorderColorStyle,
      'bubbleLabels': ?bubbleLabels,
      'bubbleMaxRadiusSize': ?bubbleMaxRadiusSize,
      'bubbleMinRadiusSize': ?bubbleMinRadiusSize,
      'bubbleOpacity': ?bubbleOpacity,
      'bubbleSizes': ?bubbleSizes,
      'bubbleTextStyle': ?bubbleTextStyle,
      'domain': ?domain,
      'groupIds': ?groupIds,
      'legendPosition': ?legendPosition,
      'series': ?series,
    };
  }
}

/// Cancels one or multiple refreshes of data source objects in the spreadsheet
/// by the specified references.
///
/// The request requires an additional `bigquery.readonly` OAuth scope if you
/// are cancelling a refresh on a BigQuery data source.
class CancelDataSourceRefreshRequest {
  /// Reference to a DataSource.
  ///
  /// If specified, cancels all associated data source object refreshes for this
  /// data source.
  core.String? dataSourceId;

  /// Cancels all existing data source object refreshes for all data sources in
  /// the spreadsheet.
  core.bool? isAll;

  /// References to data source objects whose refreshes are to be cancelled.
  DataSourceObjectReferences? references;

  CancelDataSourceRefreshRequest({
    this.dataSourceId,
    this.isAll,
    this.references,
  });

  CancelDataSourceRefreshRequest.fromJson(core.Map json_)
    : this(
        dataSourceId: json_['dataSourceId'] as core.String?,
        isAll: json_['isAll'] as core.bool?,
        references: json_.containsKey('references')
            ? DataSourceObjectReferences.fromJson(
                json_['references'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceId = this.dataSourceId;
    final isAll = this.isAll;
    final references = this.references;
    return {
      'dataSourceId': ?dataSourceId,
      'isAll': ?isAll,
      'references': ?references,
    };
  }
}

/// The response from cancelling one or multiple data source object refreshes.
class CancelDataSourceRefreshResponse {
  /// The cancellation statuses of refreshes of all data source objects
  /// specified in the request.
  ///
  /// If is_all is specified, the field contains only those in failure status.
  /// Refreshing and canceling refresh the same data source object is also not
  /// allowed in the same `batchUpdate`.
  core.List<CancelDataSourceRefreshStatus>? statuses;

  CancelDataSourceRefreshResponse({this.statuses});

  CancelDataSourceRefreshResponse.fromJson(core.Map json_)
    : this(
        statuses: (json_['statuses'] as core.List?)
            ?.map(
              (value) => CancelDataSourceRefreshStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final statuses = this.statuses;
    return {'statuses': ?statuses};
  }
}

/// The status of cancelling a single data source object refresh.
class CancelDataSourceRefreshStatus {
  /// Reference to the data source object whose refresh is being cancelled.
  DataSourceObjectReference? reference;

  /// The cancellation status.
  RefreshCancellationStatus? refreshCancellationStatus;

  CancelDataSourceRefreshStatus({
    this.reference,
    this.refreshCancellationStatus,
  });

  CancelDataSourceRefreshStatus.fromJson(core.Map json_)
    : this(
        reference: json_.containsKey('reference')
            ? DataSourceObjectReference.fromJson(
                json_['reference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refreshCancellationStatus:
            json_.containsKey('refreshCancellationStatus')
            ? RefreshCancellationStatus.fromJson(
                json_['refreshCancellationStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reference = this.reference;
    final refreshCancellationStatus = this.refreshCancellationStatus;
    return {
      'reference': ?reference,
      'refreshCancellationStatus': ?refreshCancellationStatus,
    };
  }
}

/// A candlestick chart.
class CandlestickChartSpec {
  /// The Candlestick chart data.
  ///
  /// Only one CandlestickData is supported.
  core.List<CandlestickData>? data;

  /// The domain data (horizontal axis) for the candlestick chart.
  ///
  /// String data will be treated as discrete labels, other data will be treated
  /// as continuous values.
  CandlestickDomain? domain;

  CandlestickChartSpec({this.data, this.domain});

  CandlestickChartSpec.fromJson(core.Map json_)
    : this(
        data: (json_['data'] as core.List?)
            ?.map(
              (value) => CandlestickData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        domain: json_.containsKey('domain')
            ? CandlestickDomain.fromJson(
                json_['domain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final domain = this.domain;
    return {'data': ?data, 'domain': ?domain};
  }
}

/// The Candlestick chart data, each containing the low, open, close, and high
/// values for a series.
class CandlestickData {
  /// The range data (vertical axis) for the close/final value for each candle.
  ///
  /// This is the top of the candle body. If greater than the open value the
  /// candle will be filled. Otherwise the candle will be hollow.
  CandlestickSeries? closeSeries;

  /// The range data (vertical axis) for the high/maximum value for each candle.
  ///
  /// This is the top of the candle's center line.
  CandlestickSeries? highSeries;

  /// The range data (vertical axis) for the low/minimum value for each candle.
  ///
  /// This is the bottom of the candle's center line.
  CandlestickSeries? lowSeries;

  /// The range data (vertical axis) for the open/initial value for each candle.
  ///
  /// This is the bottom of the candle body. If less than the close value the
  /// candle will be filled. Otherwise the candle will be hollow.
  CandlestickSeries? openSeries;

  CandlestickData({
    this.closeSeries,
    this.highSeries,
    this.lowSeries,
    this.openSeries,
  });

  CandlestickData.fromJson(core.Map json_)
    : this(
        closeSeries: json_.containsKey('closeSeries')
            ? CandlestickSeries.fromJson(
                json_['closeSeries'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        highSeries: json_.containsKey('highSeries')
            ? CandlestickSeries.fromJson(
                json_['highSeries'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lowSeries: json_.containsKey('lowSeries')
            ? CandlestickSeries.fromJson(
                json_['lowSeries'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        openSeries: json_.containsKey('openSeries')
            ? CandlestickSeries.fromJson(
                json_['openSeries'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final closeSeries = this.closeSeries;
    final highSeries = this.highSeries;
    final lowSeries = this.lowSeries;
    final openSeries = this.openSeries;
    return {
      'closeSeries': ?closeSeries,
      'highSeries': ?highSeries,
      'lowSeries': ?lowSeries,
      'openSeries': ?openSeries,
    };
  }
}

/// The domain of a CandlestickChart.
class CandlestickDomain {
  /// The data of the CandlestickDomain.
  ChartData? data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool? reversed;

  CandlestickDomain({this.data, this.reversed});

  CandlestickDomain.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? ChartData.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reversed: json_['reversed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final reversed = this.reversed;
    return {'data': ?data, 'reversed': ?reversed};
  }
}

/// The series of a CandlestickData.
class CandlestickSeries {
  /// The data of the CandlestickSeries.
  ChartData? data;

  CandlestickSeries({this.data});

  CandlestickSeries.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? ChartData.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    return {'data': ?data};
  }
}

/// Data about a specific cell.
class CellData {
  /// Runs of chips applied to subsections of the cell.
  ///
  /// Properties of a run start at a specific index in the text and continue
  /// until the next run. When reading, all chipped and non-chipped runs are
  /// included. Non-chipped runs will have an empty Chip. When writing, only
  /// runs with chips are included. Runs containing chips are of length 1 and
  /// are represented in the user-entered text by an “@” placeholder symbol. New
  /// runs will overwrite any prior runs. Writing a new user_entered_value will
  /// erase previous runs.
  ///
  /// Optional.
  core.List<ChipRun>? chipRuns;

  /// Information about a data source formula on the cell.
  ///
  /// The field is set if user_entered_value is a formula referencing some
  /// DATA_SOURCE sheet, e.g. `=SUM(DataSheet!Column)`.
  ///
  /// Output only.
  DataSourceFormula? dataSourceFormula;

  /// A data source table anchored at this cell.
  ///
  /// The size of data source table itself is computed dynamically based on its
  /// configuration. Only the first cell of the data source table contains the
  /// data source table definition. The other cells will contain the display
  /// values of the data source table result in their effective_value fields.
  DataSourceTable? dataSourceTable;

  /// A data validation rule on the cell, if any.
  ///
  /// When writing, the new data validation rule will overwrite any prior rule.
  DataValidationRule? dataValidation;

  /// The effective format being used by the cell.
  ///
  /// This includes the results of applying any conditional formatting and, if
  /// the cell contains a formula, the computed number format. If the effective
  /// format is the default format, effective format will not be written. This
  /// field is read-only.
  CellFormat? effectiveFormat;

  /// The effective value of the cell.
  ///
  /// For cells with formulas, this is the calculated value. For cells with
  /// literals, this is the same as the user_entered_value. This field is
  /// read-only.
  ExtendedValue? effectiveValue;

  /// The formatted value of the cell.
  ///
  /// This is the value as it's shown to the user. This field is read-only.
  core.String? formattedValue;

  /// A hyperlink this cell points to, if any.
  ///
  /// If the cell contains multiple hyperlinks, this field will be empty. This
  /// field is read-only. To set it, use a `=HYPERLINK` formula in the
  /// userEnteredValue.formulaValue field. A cell-level link can also be set
  /// from the userEnteredFormat.textFormat field. Alternatively, set a
  /// hyperlink in the textFormatRun.format.link field that spans the entire
  /// cell.
  core.String? hyperlink;

  /// Any note on the cell.
  core.String? note;

  /// A pivot table anchored at this cell.
  ///
  /// The size of pivot table itself is computed dynamically based on its data,
  /// grouping, filters, values, etc. Only the top-left cell of the pivot table
  /// contains the pivot table definition. The other cells will contain the
  /// calculated values of the results of the pivot in their effective_value
  /// fields.
  PivotTable? pivotTable;

  /// Runs of rich text applied to subsections of the cell.
  ///
  /// Runs are only valid on user entered strings, not formulas, bools, or
  /// numbers. Properties of a run start at a specific index in the text and
  /// continue until the next run. Runs will inherit the properties of the cell
  /// unless explicitly changed. When writing, the new runs will overwrite any
  /// prior runs. When writing a new user_entered_value, previous runs are
  /// erased.
  core.List<TextFormatRun>? textFormatRuns;

  /// The format the user entered for the cell.
  ///
  /// When writing, the new format will be merged with the existing format.
  CellFormat? userEnteredFormat;

  /// The value the user entered in the cell.
  ///
  /// e.g., `1234`, `'Hello'`, or `=NOW()` Note: Dates, Times and DateTimes are
  /// represented as doubles in serial number format.
  ExtendedValue? userEnteredValue;

  CellData({
    this.chipRuns,
    this.dataSourceFormula,
    this.dataSourceTable,
    this.dataValidation,
    this.effectiveFormat,
    this.effectiveValue,
    this.formattedValue,
    this.hyperlink,
    this.note,
    this.pivotTable,
    this.textFormatRuns,
    this.userEnteredFormat,
    this.userEnteredValue,
  });

  CellData.fromJson(core.Map json_)
    : this(
        chipRuns: (json_['chipRuns'] as core.List?)
            ?.map(
              (value) => ChipRun.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataSourceFormula: json_.containsKey('dataSourceFormula')
            ? DataSourceFormula.fromJson(
                json_['dataSourceFormula']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceTable: json_.containsKey('dataSourceTable')
            ? DataSourceTable.fromJson(
                json_['dataSourceTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataValidation: json_.containsKey('dataValidation')
            ? DataValidationRule.fromJson(
                json_['dataValidation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        effectiveFormat: json_.containsKey('effectiveFormat')
            ? CellFormat.fromJson(
                json_['effectiveFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        effectiveValue: json_.containsKey('effectiveValue')
            ? ExtendedValue.fromJson(
                json_['effectiveValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        formattedValue: json_['formattedValue'] as core.String?,
        hyperlink: json_['hyperlink'] as core.String?,
        note: json_['note'] as core.String?,
        pivotTable: json_.containsKey('pivotTable')
            ? PivotTable.fromJson(
                json_['pivotTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textFormatRuns: (json_['textFormatRuns'] as core.List?)
            ?.map(
              (value) => TextFormatRun.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        userEnteredFormat: json_.containsKey('userEnteredFormat')
            ? CellFormat.fromJson(
                json_['userEnteredFormat']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userEnteredValue: json_.containsKey('userEnteredValue')
            ? ExtendedValue.fromJson(
                json_['userEnteredValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chipRuns = this.chipRuns;
    final dataSourceFormula = this.dataSourceFormula;
    final dataSourceTable = this.dataSourceTable;
    final dataValidation = this.dataValidation;
    final effectiveFormat = this.effectiveFormat;
    final effectiveValue = this.effectiveValue;
    final formattedValue = this.formattedValue;
    final hyperlink = this.hyperlink;
    final note = this.note;
    final pivotTable = this.pivotTable;
    final textFormatRuns = this.textFormatRuns;
    final userEnteredFormat = this.userEnteredFormat;
    final userEnteredValue = this.userEnteredValue;
    return {
      'chipRuns': ?chipRuns,
      'dataSourceFormula': ?dataSourceFormula,
      'dataSourceTable': ?dataSourceTable,
      'dataValidation': ?dataValidation,
      'effectiveFormat': ?effectiveFormat,
      'effectiveValue': ?effectiveValue,
      'formattedValue': ?formattedValue,
      'hyperlink': ?hyperlink,
      'note': ?note,
      'pivotTable': ?pivotTable,
      'textFormatRuns': ?textFormatRuns,
      'userEnteredFormat': ?userEnteredFormat,
      'userEnteredValue': ?userEnteredValue,
    };
  }
}

/// The format of a cell.
class CellFormat {
  /// The background color of the cell.
  ///
  /// Deprecated: Use background_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? backgroundColor;

  /// The background color of the cell.
  ///
  /// If background_color is also set, this field takes precedence.
  ColorStyle? backgroundColorStyle;

  /// The borders of the cell.
  Borders? borders;

  /// The horizontal alignment of the value in the cell.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGN_UNSPECIFIED" : The horizontal alignment is not
  /// specified. Do not use this.
  /// - "LEFT" : The text is explicitly aligned to the left of the cell.
  /// - "CENTER" : The text is explicitly aligned to the center of the cell.
  /// - "RIGHT" : The text is explicitly aligned to the right of the cell.
  core.String? horizontalAlignment;

  /// If one exists, how a hyperlink should be displayed in the cell.
  /// Possible string values are:
  /// - "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED" : The default value: the hyperlink
  /// is rendered. Do not use this.
  /// - "LINKED" : A hyperlink should be explicitly rendered.
  /// - "PLAIN_TEXT" : A hyperlink should not be rendered.
  core.String? hyperlinkDisplayType;

  /// A format describing how number values should be represented to the user.
  NumberFormat? numberFormat;

  /// The padding of the cell.
  Padding? padding;

  /// The direction of the text in the cell.
  /// Possible string values are:
  /// - "TEXT_DIRECTION_UNSPECIFIED" : The text direction is not specified. Do
  /// not use this.
  /// - "LEFT_TO_RIGHT" : The text direction of left-to-right was set by the
  /// user.
  /// - "RIGHT_TO_LEFT" : The text direction of right-to-left was set by the
  /// user.
  core.String? textDirection;

  /// The format of the text in the cell (unless overridden by a format run).
  ///
  /// Setting a cell-level link here clears the cell's existing links. Setting
  /// the link field in a TextFormatRun takes precedence over the cell-level
  /// link.
  TextFormat? textFormat;

  /// The rotation applied to text in the cell.
  TextRotation? textRotation;

  /// The vertical alignment of the value in the cell.
  /// Possible string values are:
  /// - "VERTICAL_ALIGN_UNSPECIFIED" : The vertical alignment is not specified.
  /// Do not use this.
  /// - "TOP" : The text is explicitly aligned to the top of the cell.
  /// - "MIDDLE" : The text is explicitly aligned to the middle of the cell.
  /// - "BOTTOM" : The text is explicitly aligned to the bottom of the cell.
  core.String? verticalAlignment;

  /// The wrap strategy for the value in the cell.
  /// Possible string values are:
  /// - "WRAP_STRATEGY_UNSPECIFIED" : The default value, do not use.
  /// - "OVERFLOW_CELL" : Lines that are longer than the cell width will be
  /// written in the next cell over, so long as that cell is empty. If the next
  /// cell over is non-empty, this behaves the same as `CLIP`. The text will
  /// never wrap to the next line unless the user manually inserts a new line.
  /// Example: | First sentence. | | Manual newline that is very long. \<- Text
  /// continues into next cell | Next newline. |
  /// - "LEGACY_WRAP" : This wrap strategy represents the old Google Sheets wrap
  /// strategy where words that are longer than a line are clipped rather than
  /// broken. This strategy is not supported on all platforms and is being
  /// phased out. Example: | Cell has a | | loooooooooo| \<- Word is clipped. |
  /// word. |
  /// - "CLIP" : Lines that are longer than the cell width will be clipped. The
  /// text will never wrap to the next line unless the user manually inserts a
  /// new line. Example: | First sentence. | | Manual newline t| \<- Text is
  /// clipped | Next newline. |
  /// - "WRAP" : Words that are longer than a line are wrapped at the character
  /// level rather than clipped. Example: | Cell has a | | loooooooooo| \<- Word
  /// is broken. | ong word. |
  core.String? wrapStrategy;

  CellFormat({
    this.backgroundColor,
    this.backgroundColorStyle,
    this.borders,
    this.horizontalAlignment,
    this.hyperlinkDisplayType,
    this.numberFormat,
    this.padding,
    this.textDirection,
    this.textFormat,
    this.textRotation,
    this.verticalAlignment,
    this.wrapStrategy,
  });

  CellFormat.fromJson(core.Map json_)
    : this(
        backgroundColor: json_.containsKey('backgroundColor')
            ? Color.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backgroundColorStyle: json_.containsKey('backgroundColorStyle')
            ? ColorStyle.fromJson(
                json_['backgroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        borders: json_.containsKey('borders')
            ? Borders.fromJson(
                json_['borders'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        horizontalAlignment: json_['horizontalAlignment'] as core.String?,
        hyperlinkDisplayType: json_['hyperlinkDisplayType'] as core.String?,
        numberFormat: json_.containsKey('numberFormat')
            ? NumberFormat.fromJson(
                json_['numberFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        padding: json_.containsKey('padding')
            ? Padding.fromJson(
                json_['padding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textDirection: json_['textDirection'] as core.String?,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textRotation: json_.containsKey('textRotation')
            ? TextRotation.fromJson(
                json_['textRotation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        verticalAlignment: json_['verticalAlignment'] as core.String?,
        wrapStrategy: json_['wrapStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColor = this.backgroundColor;
    final backgroundColorStyle = this.backgroundColorStyle;
    final borders = this.borders;
    final horizontalAlignment = this.horizontalAlignment;
    final hyperlinkDisplayType = this.hyperlinkDisplayType;
    final numberFormat = this.numberFormat;
    final padding = this.padding;
    final textDirection = this.textDirection;
    final textFormat = this.textFormat;
    final textRotation = this.textRotation;
    final verticalAlignment = this.verticalAlignment;
    final wrapStrategy = this.wrapStrategy;
    return {
      'backgroundColor': ?backgroundColor,
      'backgroundColorStyle': ?backgroundColorStyle,
      'borders': ?borders,
      'horizontalAlignment': ?horizontalAlignment,
      'hyperlinkDisplayType': ?hyperlinkDisplayType,
      'numberFormat': ?numberFormat,
      'padding': ?padding,
      'textDirection': ?textDirection,
      'textFormat': ?textFormat,
      'textRotation': ?textRotation,
      'verticalAlignment': ?verticalAlignment,
      'wrapStrategy': ?wrapStrategy,
    };
  }
}

/// The options that define a "view window" for a chart (such as the visible
/// values in an axis).
class ChartAxisViewWindowOptions {
  /// The maximum numeric value to be shown in this view window.
  ///
  /// If unset, will automatically determine a maximum value that looks good for
  /// the data.
  core.double? viewWindowMax;

  /// The minimum numeric value to be shown in this view window.
  ///
  /// If unset, will automatically determine a minimum value that looks good for
  /// the data.
  core.double? viewWindowMin;

  /// The view window's mode.
  /// Possible string values are:
  /// - "DEFAULT_VIEW_WINDOW_MODE" : The default view window mode used in the
  /// Sheets editor for this chart type. In most cases, if set, the default mode
  /// is equivalent to `PRETTY`.
  /// - "VIEW_WINDOW_MODE_UNSUPPORTED" : Do not use. Represents that the
  /// currently set mode is not supported by the API.
  /// - "EXPLICIT" : Follows the min and max exactly if specified. If a value is
  /// unspecified, it will fall back to the `PRETTY` value.
  /// - "PRETTY" : Chooses a min and max that make the chart look good. Both min
  /// and max are ignored in this mode.
  core.String? viewWindowMode;

  ChartAxisViewWindowOptions({
    this.viewWindowMax,
    this.viewWindowMin,
    this.viewWindowMode,
  });

  ChartAxisViewWindowOptions.fromJson(core.Map json_)
    : this(
        viewWindowMax: (json_['viewWindowMax'] as core.num?)?.toDouble(),
        viewWindowMin: (json_['viewWindowMin'] as core.num?)?.toDouble(),
        viewWindowMode: json_['viewWindowMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final viewWindowMax = this.viewWindowMax;
    final viewWindowMin = this.viewWindowMin;
    final viewWindowMode = this.viewWindowMode;
    return {
      'viewWindowMax': ?viewWindowMax,
      'viewWindowMin': ?viewWindowMin,
      'viewWindowMode': ?viewWindowMode,
    };
  }
}

/// Custom number formatting options for chart attributes.
class ChartCustomNumberFormatOptions {
  /// Custom prefix to be prepended to the chart attribute.
  ///
  /// This field is optional.
  core.String? prefix;

  /// Custom suffix to be appended to the chart attribute.
  ///
  /// This field is optional.
  core.String? suffix;

  ChartCustomNumberFormatOptions({this.prefix, this.suffix});

  ChartCustomNumberFormatOptions.fromJson(core.Map json_)
    : this(
        prefix: json_['prefix'] as core.String?,
        suffix: json_['suffix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final prefix = this.prefix;
    final suffix = this.suffix;
    return {'prefix': ?prefix, 'suffix': ?suffix};
  }
}

/// The data included in a domain or series.
class ChartData {
  /// The aggregation type for the series of a data source chart.
  ///
  /// Only supported for data source charts.
  /// Possible string values are:
  /// - "CHART_AGGREGATE_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "AVERAGE" : Average aggregate function.
  /// - "COUNT" : Count aggregate function.
  /// - "MAX" : Maximum aggregate function.
  /// - "MEDIAN" : Median aggregate function.
  /// - "MIN" : Minimum aggregate function.
  /// - "SUM" : Sum aggregate function.
  core.String? aggregateType;

  /// The reference to the data source column that the data reads from.
  DataSourceColumnReference? columnReference;

  /// The rule to group the data by if the ChartData backs the domain of a data
  /// source chart.
  ///
  /// Only supported for data source charts.
  ChartGroupRule? groupRule;

  /// The source ranges of the data.
  ChartSourceRange? sourceRange;

  ChartData({
    this.aggregateType,
    this.columnReference,
    this.groupRule,
    this.sourceRange,
  });

  ChartData.fromJson(core.Map json_)
    : this(
        aggregateType: json_['aggregateType'] as core.String?,
        columnReference: json_.containsKey('columnReference')
            ? DataSourceColumnReference.fromJson(
                json_['columnReference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        groupRule: json_.containsKey('groupRule')
            ? ChartGroupRule.fromJson(
                json_['groupRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceRange: json_.containsKey('sourceRange')
            ? ChartSourceRange.fromJson(
                json_['sourceRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregateType = this.aggregateType;
    final columnReference = this.columnReference;
    final groupRule = this.groupRule;
    final sourceRange = this.sourceRange;
    return {
      'aggregateType': ?aggregateType,
      'columnReference': ?columnReference,
      'groupRule': ?groupRule,
      'sourceRange': ?sourceRange,
    };
  }
}

/// Allows you to organize the date-time values in a source data column into
/// buckets based on selected parts of their date or time values.
class ChartDateTimeRule {
  /// The type of date-time grouping to apply.
  /// Possible string values are:
  /// - "CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED" : The default type, do not use.
  /// - "SECOND" : Group dates by second, from 0 to 59.
  /// - "MINUTE" : Group dates by minute, from 0 to 59.
  /// - "HOUR" : Group dates by hour using a 24-hour system, from 0 to 23.
  /// - "HOUR_MINUTE" : Group dates by hour and minute using a 24-hour system,
  /// for example 19:45.
  /// - "HOUR_MINUTE_AMPM" : Group dates by hour and minute using a 12-hour
  /// system, for example 7:45 PM. The AM/PM designation is translated based on
  /// the spreadsheet locale.
  /// - "DAY_OF_WEEK" : Group dates by day of week, for example Sunday. The days
  /// of the week will be translated based on the spreadsheet locale.
  /// - "DAY_OF_YEAR" : Group dates by day of year, from 1 to 366. Note that
  /// dates after Feb. 29 fall in different buckets in leap years than in
  /// non-leap years.
  /// - "DAY_OF_MONTH" : Group dates by day of month, from 1 to 31.
  /// - "DAY_MONTH" : Group dates by day and month, for example 22-Nov. The
  /// month is translated based on the spreadsheet locale.
  /// - "MONTH" : Group dates by month, for example Nov. The month is translated
  /// based on the spreadsheet locale.
  /// - "QUARTER" : Group dates by quarter, for example Q1 (which represents
  /// Jan-Mar).
  /// - "YEAR" : Group dates by year, for example 2008.
  /// - "YEAR_MONTH" : Group dates by year and month, for example 2008-Nov. The
  /// month is translated based on the spreadsheet locale.
  /// - "YEAR_QUARTER" : Group dates by year and quarter, for example 2008 Q4.
  /// - "YEAR_MONTH_DAY" : Group dates by year, month, and day, for example
  /// 2008-11-22.
  core.String? type;

  ChartDateTimeRule({this.type});

  ChartDateTimeRule.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// An optional setting on the ChartData of the domain of a data source chart
/// that defines buckets for the values in the domain rather than breaking out
/// each individual value.
///
/// For example, when plotting a data source chart, you can specify a histogram
/// rule on the domain (it should only contain numeric values), grouping its
/// values into buckets. Any values of a chart series that fall into the same
/// bucket are aggregated based on the aggregate_type.
class ChartGroupRule {
  /// A ChartDateTimeRule.
  ChartDateTimeRule? dateTimeRule;

  /// A ChartHistogramRule
  ChartHistogramRule? histogramRule;

  ChartGroupRule({this.dateTimeRule, this.histogramRule});

  ChartGroupRule.fromJson(core.Map json_)
    : this(
        dateTimeRule: json_.containsKey('dateTimeRule')
            ? ChartDateTimeRule.fromJson(
                json_['dateTimeRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        histogramRule: json_.containsKey('histogramRule')
            ? ChartHistogramRule.fromJson(
                json_['histogramRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateTimeRule = this.dateTimeRule;
    final histogramRule = this.histogramRule;
    return {'dateTimeRule': ?dateTimeRule, 'histogramRule': ?histogramRule};
  }
}

/// Allows you to organize numeric values in a source data column into buckets
/// of constant size.
class ChartHistogramRule {
  /// The size of the buckets that are created.
  ///
  /// Must be positive.
  core.double? intervalSize;

  /// The maximum value at which items are placed into buckets.
  ///
  /// Values greater than the maximum are grouped into a single bucket. If
  /// omitted, it is determined by the maximum item value.
  core.double? maxValue;

  /// The minimum value at which items are placed into buckets.
  ///
  /// Values that are less than the minimum are grouped into a single bucket. If
  /// omitted, it is determined by the minimum item value.
  core.double? minValue;

  ChartHistogramRule({this.intervalSize, this.maxValue, this.minValue});

  ChartHistogramRule.fromJson(core.Map json_)
    : this(
        intervalSize: (json_['intervalSize'] as core.num?)?.toDouble(),
        maxValue: (json_['maxValue'] as core.num?)?.toDouble(),
        minValue: (json_['minValue'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final intervalSize = this.intervalSize;
    final maxValue = this.maxValue;
    final minValue = this.minValue;
    return {
      'intervalSize': ?intervalSize,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
    };
  }
}

/// Source ranges for a chart.
class ChartSourceRange {
  /// The ranges of data for a series or domain.
  ///
  /// Exactly one dimension must have a length of 1, and all sources in the list
  /// must have the same dimension with length 1. The domain (if it exists) &
  /// all series must have the same number of source ranges. If using more than
  /// one source range, then the source range at a given offset must be in order
  /// and contiguous across the domain and series. For example, these are valid
  /// configurations: domain sources: A1:A5 series1 sources: B1:B5 series2
  /// sources: D6:D10 domain sources: A1:A5, C10:C12 series1 sources: B1:B5,
  /// D10:D12 series2 sources: C1:C5, E10:E12
  core.List<GridRange>? sources;

  ChartSourceRange({this.sources});

  ChartSourceRange.fromJson(core.Map json_)
    : this(
        sources: (json_['sources'] as core.List?)
            ?.map(
              (value) => GridRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sources = this.sources;
    return {'sources': ?sources};
  }
}

/// The specifications of a chart.
class ChartSpec {
  /// The alternative text that describes the chart.
  ///
  /// This is often used for accessibility.
  core.String? altText;

  /// The background color of the entire chart.
  ///
  /// Not applicable to Org charts. Deprecated: Use background_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? backgroundColor;

  /// The background color of the entire chart.
  ///
  /// Not applicable to Org charts. If background_color is also set, this field
  /// takes precedence.
  ColorStyle? backgroundColorStyle;

  /// A basic chart specification, can be one of many kinds of charts.
  ///
  /// See BasicChartType for the list of all charts this supports.
  BasicChartSpec? basicChart;

  /// A bubble chart specification.
  BubbleChartSpec? bubbleChart;

  /// A candlestick chart specification.
  CandlestickChartSpec? candlestickChart;

  /// If present, the field contains data source chart specific properties.
  DataSourceChartProperties? dataSourceChartProperties;

  /// The filters applied to the source data of the chart.
  ///
  /// Only supported for data source charts.
  core.List<FilterSpec>? filterSpecs;

  /// The name of the font to use by default for all chart text (e.g. title,
  /// axis labels, legend).
  ///
  /// If a font is specified for a specific part of the chart it will override
  /// this font name.
  core.String? fontName;

  /// Determines how the charts will use hidden rows or columns.
  /// Possible string values are:
  /// - "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED" : Default value, do not
  /// use.
  /// - "SKIP_HIDDEN_ROWS_AND_COLUMNS" : Charts will skip hidden rows and
  /// columns.
  /// - "SKIP_HIDDEN_ROWS" : Charts will skip hidden rows only.
  /// - "SKIP_HIDDEN_COLUMNS" : Charts will skip hidden columns only.
  /// - "SHOW_ALL" : Charts will not skip any hidden rows or columns.
  core.String? hiddenDimensionStrategy;

  /// A histogram chart specification.
  HistogramChartSpec? histogramChart;

  /// True to make a chart fill the entire space in which it's rendered with
  /// minimum padding.
  ///
  /// False to use the default padding. (Not applicable to Geo and Org charts.)
  core.bool? maximized;

  /// An org chart specification.
  OrgChartSpec? orgChart;

  /// A pie chart specification.
  PieChartSpec? pieChart;

  /// A scorecard chart specification.
  ScorecardChartSpec? scorecardChart;

  /// The order to sort the chart data by.
  ///
  /// Only a single sort spec is supported. Only supported for data source
  /// charts.
  core.List<SortSpec>? sortSpecs;

  /// The subtitle of the chart.
  core.String? subtitle;

  /// The subtitle text format.
  ///
  /// Strikethrough, underline, and link are not supported.
  TextFormat? subtitleTextFormat;

  /// The subtitle text position.
  ///
  /// This field is optional.
  TextPosition? subtitleTextPosition;

  /// The title of the chart.
  core.String? title;

  /// The title text format.
  ///
  /// Strikethrough, underline, and link are not supported.
  TextFormat? titleTextFormat;

  /// The title text position.
  ///
  /// This field is optional.
  TextPosition? titleTextPosition;

  /// A treemap chart specification.
  TreemapChartSpec? treemapChart;

  /// A waterfall chart specification.
  WaterfallChartSpec? waterfallChart;

  ChartSpec({
    this.altText,
    this.backgroundColor,
    this.backgroundColorStyle,
    this.basicChart,
    this.bubbleChart,
    this.candlestickChart,
    this.dataSourceChartProperties,
    this.filterSpecs,
    this.fontName,
    this.hiddenDimensionStrategy,
    this.histogramChart,
    this.maximized,
    this.orgChart,
    this.pieChart,
    this.scorecardChart,
    this.sortSpecs,
    this.subtitle,
    this.subtitleTextFormat,
    this.subtitleTextPosition,
    this.title,
    this.titleTextFormat,
    this.titleTextPosition,
    this.treemapChart,
    this.waterfallChart,
  });

  ChartSpec.fromJson(core.Map json_)
    : this(
        altText: json_['altText'] as core.String?,
        backgroundColor: json_.containsKey('backgroundColor')
            ? Color.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backgroundColorStyle: json_.containsKey('backgroundColorStyle')
            ? ColorStyle.fromJson(
                json_['backgroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        basicChart: json_.containsKey('basicChart')
            ? BasicChartSpec.fromJson(
                json_['basicChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        bubbleChart: json_.containsKey('bubbleChart')
            ? BubbleChartSpec.fromJson(
                json_['bubbleChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        candlestickChart: json_.containsKey('candlestickChart')
            ? CandlestickChartSpec.fromJson(
                json_['candlestickChart']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceChartProperties:
            json_.containsKey('dataSourceChartProperties')
            ? DataSourceChartProperties.fromJson(
                json_['dataSourceChartProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => FilterSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        fontName: json_['fontName'] as core.String?,
        hiddenDimensionStrategy:
            json_['hiddenDimensionStrategy'] as core.String?,
        histogramChart: json_.containsKey('histogramChart')
            ? HistogramChartSpec.fromJson(
                json_['histogramChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maximized: json_['maximized'] as core.bool?,
        orgChart: json_.containsKey('orgChart')
            ? OrgChartSpec.fromJson(
                json_['orgChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pieChart: json_.containsKey('pieChart')
            ? PieChartSpec.fromJson(
                json_['pieChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        scorecardChart: json_.containsKey('scorecardChart')
            ? ScorecardChartSpec.fromJson(
                json_['scorecardChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortSpecs: (json_['sortSpecs'] as core.List?)
            ?.map(
              (value) => SortSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        subtitle: json_['subtitle'] as core.String?,
        subtitleTextFormat: json_.containsKey('subtitleTextFormat')
            ? TextFormat.fromJson(
                json_['subtitleTextFormat']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        subtitleTextPosition: json_.containsKey('subtitleTextPosition')
            ? TextPosition.fromJson(
                json_['subtitleTextPosition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
        titleTextFormat: json_.containsKey('titleTextFormat')
            ? TextFormat.fromJson(
                json_['titleTextFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        titleTextPosition: json_.containsKey('titleTextPosition')
            ? TextPosition.fromJson(
                json_['titleTextPosition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        treemapChart: json_.containsKey('treemapChart')
            ? TreemapChartSpec.fromJson(
                json_['treemapChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        waterfallChart: json_.containsKey('waterfallChart')
            ? WaterfallChartSpec.fromJson(
                json_['waterfallChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final altText = this.altText;
    final backgroundColor = this.backgroundColor;
    final backgroundColorStyle = this.backgroundColorStyle;
    final basicChart = this.basicChart;
    final bubbleChart = this.bubbleChart;
    final candlestickChart = this.candlestickChart;
    final dataSourceChartProperties = this.dataSourceChartProperties;
    final filterSpecs = this.filterSpecs;
    final fontName = this.fontName;
    final hiddenDimensionStrategy = this.hiddenDimensionStrategy;
    final histogramChart = this.histogramChart;
    final maximized = this.maximized;
    final orgChart = this.orgChart;
    final pieChart = this.pieChart;
    final scorecardChart = this.scorecardChart;
    final sortSpecs = this.sortSpecs;
    final subtitle = this.subtitle;
    final subtitleTextFormat = this.subtitleTextFormat;
    final subtitleTextPosition = this.subtitleTextPosition;
    final title = this.title;
    final titleTextFormat = this.titleTextFormat;
    final titleTextPosition = this.titleTextPosition;
    final treemapChart = this.treemapChart;
    final waterfallChart = this.waterfallChart;
    return {
      'altText': ?altText,
      'backgroundColor': ?backgroundColor,
      'backgroundColorStyle': ?backgroundColorStyle,
      'basicChart': ?basicChart,
      'bubbleChart': ?bubbleChart,
      'candlestickChart': ?candlestickChart,
      'dataSourceChartProperties': ?dataSourceChartProperties,
      'filterSpecs': ?filterSpecs,
      'fontName': ?fontName,
      'hiddenDimensionStrategy': ?hiddenDimensionStrategy,
      'histogramChart': ?histogramChart,
      'maximized': ?maximized,
      'orgChart': ?orgChart,
      'pieChart': ?pieChart,
      'scorecardChart': ?scorecardChart,
      'sortSpecs': ?sortSpecs,
      'subtitle': ?subtitle,
      'subtitleTextFormat': ?subtitleTextFormat,
      'subtitleTextPosition': ?subtitleTextPosition,
      'title': ?title,
      'titleTextFormat': ?titleTextFormat,
      'titleTextPosition': ?titleTextPosition,
      'treemapChart': ?treemapChart,
      'waterfallChart': ?waterfallChart,
    };
  }
}

/// The Smart Chip.
class Chip {
  /// Properties of a linked person.
  PersonProperties? personProperties;

  /// Properties of a rich link.
  RichLinkProperties? richLinkProperties;

  Chip({this.personProperties, this.richLinkProperties});

  Chip.fromJson(core.Map json_)
    : this(
        personProperties: json_.containsKey('personProperties')
            ? PersonProperties.fromJson(
                json_['personProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        richLinkProperties: json_.containsKey('richLinkProperties')
            ? RichLinkProperties.fromJson(
                json_['richLinkProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final personProperties = this.personProperties;
    final richLinkProperties = this.richLinkProperties;
    return {
      'personProperties': ?personProperties,
      'richLinkProperties': ?richLinkProperties,
    };
  }
}

/// The run of a chip.
///
/// The chip continues until the start index of the next run.
class ChipRun {
  /// The chip of this run.
  ///
  /// Optional.
  Chip? chip;

  /// The zero-based character index where this run starts, in UTF-16 code
  /// units.
  ///
  /// Required.
  core.int? startIndex;

  ChipRun({this.chip, this.startIndex});

  ChipRun.fromJson(core.Map json_)
    : this(
        chip: json_.containsKey('chip')
            ? Chip.fromJson(
                json_['chip'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startIndex: json_['startIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chip = this.chip;
    final startIndex = this.startIndex;
    return {'chip': ?chip, 'startIndex': ?startIndex};
  }
}

/// Clears the basic filter, if any exists on the sheet.
class ClearBasicFilterRequest {
  /// The sheet ID on which the basic filter should be cleared.
  core.int? sheetId;

  ClearBasicFilterRequest({this.sheetId});

  ClearBasicFilterRequest.fromJson(core.Map json_)
    : this(sheetId: json_['sheetId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final sheetId = this.sheetId;
    return {'sheetId': ?sheetId};
  }
}

/// The request for clearing a range of values in a spreadsheet.
typedef ClearValuesRequest = $Empty;

/// The response when clearing a range of values in a spreadsheet.
class ClearValuesResponse {
  /// The range (in A1 notation) that was cleared.
  ///
  /// (If the request was for an unbounded range or a ranger larger than the
  /// bounds of the sheet, this will be the actual range that was cleared,
  /// bounded to the sheet's limits.)
  core.String? clearedRange;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  ClearValuesResponse({this.clearedRange, this.spreadsheetId});

  ClearValuesResponse.fromJson(core.Map json_)
    : this(
        clearedRange: json_['clearedRange'] as core.String?,
        spreadsheetId: json_['spreadsheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clearedRange = this.clearedRange;
    final spreadsheetId = this.spreadsheetId;
    return {'clearedRange': ?clearedRange, 'spreadsheetId': ?spreadsheetId};
  }
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef Color = $Color;

/// A color value.
class ColorStyle {
  /// RGB color.
  ///
  /// The
  /// \[`alpha`\](https://developers.google.com/workspace/sheets/api/reference/rest/v4/spreadsheets/other#Color.FIELDS.alpha)
  /// value in the
  /// \[`Color`\](https://developers.google.com/workspace/sheets/api/reference/rest/v4/spreadsheets/other#color)
  /// object isn't generally supported.
  Color? rgbColor;

  /// Theme color.
  /// Possible string values are:
  /// - "THEME_COLOR_TYPE_UNSPECIFIED" : Unspecified theme color
  /// - "TEXT" : Represents the primary text color
  /// - "BACKGROUND" : Represents the primary background color
  /// - "ACCENT1" : Represents the first accent color
  /// - "ACCENT2" : Represents the second accent color
  /// - "ACCENT3" : Represents the third accent color
  /// - "ACCENT4" : Represents the fourth accent color
  /// - "ACCENT5" : Represents the fifth accent color
  /// - "ACCENT6" : Represents the sixth accent color
  /// - "LINK" : Represents the color to use for hyperlinks
  core.String? themeColor;

  ColorStyle({this.rgbColor, this.themeColor});

  ColorStyle.fromJson(core.Map json_)
    : this(
        rgbColor: json_.containsKey('rgbColor')
            ? Color.fromJson(
                json_['rgbColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        themeColor: json_['themeColor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rgbColor = this.rgbColor;
    final themeColor = this.themeColor;
    return {'rgbColor': ?rgbColor, 'themeColor': ?themeColor};
  }
}

/// The value of the condition.
class ConditionValue {
  /// A relative date (based on the current date).
  ///
  /// Valid only if the type is DATE_BEFORE, DATE_AFTER, DATE_ON_OR_BEFORE or
  /// DATE_ON_OR_AFTER. Relative dates are not supported in data validation.
  /// They are supported only in conditional formatting and conditional filters.
  /// Possible string values are:
  /// - "RELATIVE_DATE_UNSPECIFIED" : Default value, do not use.
  /// - "PAST_YEAR" : The value is one year before today.
  /// - "PAST_MONTH" : The value is one month before today.
  /// - "PAST_WEEK" : The value is one week before today.
  /// - "YESTERDAY" : The value is yesterday.
  /// - "TODAY" : The value is today.
  /// - "TOMORROW" : The value is tomorrow.
  core.String? relativeDate;

  /// A value the condition is based on.
  ///
  /// The value is parsed as if the user typed into a cell. Formulas are
  /// supported (and must begin with an `=` or a '+').
  core.String? userEnteredValue;

  ConditionValue({this.relativeDate, this.userEnteredValue});

  ConditionValue.fromJson(core.Map json_)
    : this(
        relativeDate: json_['relativeDate'] as core.String?,
        userEnteredValue: json_['userEnteredValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final relativeDate = this.relativeDate;
    final userEnteredValue = this.userEnteredValue;
    return {
      'relativeDate': ?relativeDate,
      'userEnteredValue': ?userEnteredValue,
    };
  }
}

/// A rule describing a conditional format.
class ConditionalFormatRule {
  /// The formatting is either "on" or "off" according to the rule.
  BooleanRule? booleanRule;

  /// The formatting will vary based on the gradients in the rule.
  GradientRule? gradientRule;

  /// The ranges that are formatted if the condition is true.
  ///
  /// All the ranges must be on the same grid.
  core.List<GridRange>? ranges;

  ConditionalFormatRule({this.booleanRule, this.gradientRule, this.ranges});

  ConditionalFormatRule.fromJson(core.Map json_)
    : this(
        booleanRule: json_.containsKey('booleanRule')
            ? BooleanRule.fromJson(
                json_['booleanRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gradientRule: json_.containsKey('gradientRule')
            ? GradientRule.fromJson(
                json_['gradientRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ranges: (json_['ranges'] as core.List?)
            ?.map(
              (value) => GridRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final booleanRule = this.booleanRule;
    final gradientRule = this.gradientRule;
    final ranges = this.ranges;
    return {
      'booleanRule': ?booleanRule,
      'gradientRule': ?gradientRule,
      'ranges': ?ranges,
    };
  }
}

/// Copies data from the source to the destination.
class CopyPasteRequest {
  /// The location to paste to.
  ///
  /// If the range covers a span that's a multiple of the source's height or
  /// width, then the data will be repeated to fill in the destination range. If
  /// the range is smaller than the source range, the entire source data will
  /// still be copied (beyond the end of the destination range).
  GridRange? destination;

  /// How that data should be oriented when pasting.
  /// Possible string values are:
  /// - "NORMAL" : Paste normally.
  /// - "TRANSPOSE" : Paste transposed, where all rows become columns and vice
  /// versa.
  core.String? pasteOrientation;

  /// What kind of data to paste.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like `PASTE_NORMAL` but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String? pasteType;

  /// The source range to copy.
  GridRange? source;

  CopyPasteRequest({
    this.destination,
    this.pasteOrientation,
    this.pasteType,
    this.source,
  });

  CopyPasteRequest.fromJson(core.Map json_)
    : this(
        destination: json_.containsKey('destination')
            ? GridRange.fromJson(
                json_['destination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pasteOrientation: json_['pasteOrientation'] as core.String?,
        pasteType: json_['pasteType'] as core.String?,
        source: json_.containsKey('source')
            ? GridRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destination = this.destination;
    final pasteOrientation = this.pasteOrientation;
    final pasteType = this.pasteType;
    final source = this.source;
    return {
      'destination': ?destination,
      'pasteOrientation': ?pasteOrientation,
      'pasteType': ?pasteType,
      'source': ?source,
    };
  }
}

/// The request to copy a sheet across spreadsheets.
class CopySheetToAnotherSpreadsheetRequest {
  /// The ID of the spreadsheet to copy the sheet to.
  core.String? destinationSpreadsheetId;

  CopySheetToAnotherSpreadsheetRequest({this.destinationSpreadsheetId});

  CopySheetToAnotherSpreadsheetRequest.fromJson(core.Map json_)
    : this(
        destinationSpreadsheetId:
            json_['destinationSpreadsheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationSpreadsheetId = this.destinationSpreadsheetId;
    return {'destinationSpreadsheetId': ?destinationSpreadsheetId};
  }
}

/// A request to create developer metadata.
class CreateDeveloperMetadataRequest {
  /// The developer metadata to create.
  DeveloperMetadata? developerMetadata;

  CreateDeveloperMetadataRequest({this.developerMetadata});

  CreateDeveloperMetadataRequest.fromJson(core.Map json_)
    : this(
        developerMetadata: json_.containsKey('developerMetadata')
            ? DeveloperMetadata.fromJson(
                json_['developerMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerMetadata = this.developerMetadata;
    return {'developerMetadata': ?developerMetadata};
  }
}

/// The response from creating developer metadata.
class CreateDeveloperMetadataResponse {
  /// The developer metadata that was created.
  DeveloperMetadata? developerMetadata;

  CreateDeveloperMetadataResponse({this.developerMetadata});

  CreateDeveloperMetadataResponse.fromJson(core.Map json_)
    : this(
        developerMetadata: json_.containsKey('developerMetadata')
            ? DeveloperMetadata.fromJson(
                json_['developerMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerMetadata = this.developerMetadata;
    return {'developerMetadata': ?developerMetadata};
  }
}

/// Moves data from the source to the destination.
class CutPasteRequest {
  /// The top-left coordinate where the data should be pasted.
  GridCoordinate? destination;

  /// What kind of data to paste.
  ///
  /// All the source data will be cut, regardless of what is pasted.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like `PASTE_NORMAL` but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String? pasteType;

  /// The source data to cut.
  GridRange? source;

  CutPasteRequest({this.destination, this.pasteType, this.source});

  CutPasteRequest.fromJson(core.Map json_)
    : this(
        destination: json_.containsKey('destination')
            ? GridCoordinate.fromJson(
                json_['destination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pasteType: json_['pasteType'] as core.String?,
        source: json_.containsKey('source')
            ? GridRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destination = this.destination;
    final pasteType = this.pasteType;
    final source = this.source;
    return {
      'destination': ?destination,
      'pasteType': ?pasteType,
      'source': ?source,
    };
  }
}

/// The data execution status.
///
/// A data execution is created to sync a data source object with the latest
/// data from a DataSource. It is usually scheduled to run at background, you
/// can check its state to tell if an execution completes There are several
/// scenarios where a data execution is triggered to run: * Adding a data source
/// creates an associated data source sheet as well as a data execution to sync
/// the data from the data source to the sheet. * Updating a data source creates
/// a data execution to refresh the associated data source sheet similarly. *
/// You can send refresh request to explicitly refresh one or multiple data
/// source objects.
class DataExecutionStatus {
  /// The error code.
  /// Possible string values are:
  /// - "DATA_EXECUTION_ERROR_CODE_UNSPECIFIED" : Default value, do not use.
  /// - "TIMED_OUT" : The data execution timed out.
  /// - "TOO_MANY_ROWS" : The data execution returns more rows than the limit.
  /// - "TOO_MANY_COLUMNS" : The data execution returns more columns than the
  /// limit.
  /// - "TOO_MANY_CELLS" : The data execution returns more cells than the limit.
  /// - "ENGINE" : Error is received from the backend data execution engine
  /// (e.g. BigQuery). Check error_message for details.
  /// - "PARAMETER_INVALID" : One or some of the provided data source parameters
  /// are invalid.
  /// - "UNSUPPORTED_DATA_TYPE" : The data execution returns an unsupported data
  /// type.
  /// - "DUPLICATE_COLUMN_NAMES" : The data execution returns duplicate column
  /// names or aliases.
  /// - "INTERRUPTED" : The data execution is interrupted. Please refresh later.
  /// - "CONCURRENT_QUERY" : The data execution is currently in progress, can
  /// not be refreshed until it completes.
  /// - "OTHER" : Other errors.
  /// - "TOO_MANY_CHARS_PER_CELL" : The data execution returns values that
  /// exceed the maximum characters allowed in a single cell.
  /// - "DATA_NOT_FOUND" : The database referenced by the data source is not
  /// found. * /
  /// - "PERMISSION_DENIED" : The user does not have access to the database
  /// referenced by the data source.
  /// - "MISSING_COLUMN_ALIAS" : The data execution returns columns with missing
  /// aliases.
  /// - "OBJECT_NOT_FOUND" : The data source object does not exist.
  /// - "OBJECT_IN_ERROR_STATE" : The data source object is currently in error
  /// state. To force refresh, set force in RefreshDataSourceRequest.
  /// - "OBJECT_SPEC_INVALID" : The data source object specification is invalid.
  /// - "DATA_EXECUTION_CANCELLED" : The data execution has been cancelled.
  core.String? errorCode;

  /// The error message, which may be empty.
  core.String? errorMessage;

  /// Gets the time the data last successfully refreshed.
  core.String? lastRefreshTime;

  /// The state of the data execution.
  /// Possible string values are:
  /// - "DATA_EXECUTION_STATE_UNSPECIFIED" : Default value, do not use.
  /// - "NOT_STARTED" : The data execution has not started.
  /// - "RUNNING" : The data execution has started and is running.
  /// - "CANCELLING" : The data execution is currently being cancelled.
  /// - "SUCCEEDED" : The data execution has completed successfully.
  /// - "FAILED" : The data execution has completed with errors.
  core.String? state;

  DataExecutionStatus({
    this.errorCode,
    this.errorMessage,
    this.lastRefreshTime,
    this.state,
  });

  DataExecutionStatus.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        lastRefreshTime: json_['lastRefreshTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    final errorMessage = this.errorMessage;
    final lastRefreshTime = this.lastRefreshTime;
    final state = this.state;
    return {
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'lastRefreshTime': ?lastRefreshTime,
      'state': ?state,
    };
  }
}

/// Filter that describes what data should be selected or returned from a
/// request.
class DataFilter {
  /// Selects data that matches the specified A1 range.
  core.String? a1Range;

  /// Selects data associated with the developer metadata matching the criteria
  /// described by this DeveloperMetadataLookup.
  DeveloperMetadataLookup? developerMetadataLookup;

  /// Selects data that matches the range described by the GridRange.
  GridRange? gridRange;

  DataFilter({this.a1Range, this.developerMetadataLookup, this.gridRange});

  DataFilter.fromJson(core.Map json_)
    : this(
        a1Range: json_['a1Range'] as core.String?,
        developerMetadataLookup: json_.containsKey('developerMetadataLookup')
            ? DeveloperMetadataLookup.fromJson(
                json_['developerMetadataLookup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gridRange: json_.containsKey('gridRange')
            ? GridRange.fromJson(
                json_['gridRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final a1Range = this.a1Range;
    final developerMetadataLookup = this.developerMetadataLookup;
    final gridRange = this.gridRange;
    return {
      'a1Range': ?a1Range,
      'developerMetadataLookup': ?developerMetadataLookup,
      'gridRange': ?gridRange,
    };
  }
}

/// A range of values whose location is specified by a DataFilter.
class DataFilterValueRange {
  /// The data filter describing the location of the values in the spreadsheet.
  DataFilter? dataFilter;

  /// The major dimension of the values.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? majorDimension;

  /// The data to be written.
  ///
  /// If the provided values exceed any of the ranges matched by the data filter
  /// then the request fails. If the provided values are less than the matched
  /// ranges only the specified values are written, existing values in the
  /// matched ranges remain unaffected.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? values;

  DataFilterValueRange({this.dataFilter, this.majorDimension, this.values});

  DataFilterValueRange.fromJson(core.Map json_)
    : this(
        dataFilter: json_.containsKey('dataFilter')
            ? DataFilter.fromJson(
                json_['dataFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        majorDimension: json_['majorDimension'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.List)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilter = this.dataFilter;
    final majorDimension = this.majorDimension;
    final values = this.values;
    return {
      'dataFilter': ?dataFilter,
      'majorDimension': ?majorDimension,
      'values': ?values,
    };
  }
}

/// Settings for one set of data labels.
///
/// Data labels are annotations that appear next to a set of data, such as the
/// points on a line chart, and provide additional information about what the
/// data represents, such as a text representation of the value behind that
/// point on the graph.
class DataLabel {
  /// Data to use for custom labels.
  ///
  /// Only used if type is set to CUSTOM. This data must be the same length as
  /// the series or other element this data label is applied to. In addition, if
  /// the series is split into multiple source ranges, this source data must
  /// come from the next column in the source data. For example, if the series
  /// is B2:B4,E6:E8 then this data must come from C2:C4,F6:F8.
  ChartData? customLabelData;

  /// The placement of the data label relative to the labeled data.
  /// Possible string values are:
  /// - "DATA_LABEL_PLACEMENT_UNSPECIFIED" : The positioning is determined
  /// automatically by the renderer.
  /// - "CENTER" : Center within a bar or column, both horizontally and
  /// vertically.
  /// - "LEFT" : To the left of a data point.
  /// - "RIGHT" : To the right of a data point.
  /// - "ABOVE" : Above a data point.
  /// - "BELOW" : Below a data point.
  /// - "INSIDE_END" : Inside a bar or column at the end (top if positive,
  /// bottom if negative).
  /// - "INSIDE_BASE" : Inside a bar or column at the base.
  /// - "OUTSIDE_END" : Outside a bar or column at the end.
  core.String? placement;

  /// The text format used for the data label.
  ///
  /// The link field is not supported.
  TextFormat? textFormat;

  /// The type of the data label.
  /// Possible string values are:
  /// - "DATA_LABEL_TYPE_UNSPECIFIED" : The data label type is not specified and
  /// will be interpreted depending on the context of the data label within the
  /// chart.
  /// - "NONE" : The data label is not displayed.
  /// - "DATA" : The data label is displayed using values from the series data.
  /// - "CUSTOM" : The data label is displayed using values from a custom data
  /// source indicated by customLabelData.
  core.String? type;

  DataLabel({this.customLabelData, this.placement, this.textFormat, this.type});

  DataLabel.fromJson(core.Map json_)
    : this(
        customLabelData: json_.containsKey('customLabelData')
            ? ChartData.fromJson(
                json_['customLabelData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        placement: json_['placement'] as core.String?,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customLabelData = this.customLabelData;
    final placement = this.placement;
    final textFormat = this.textFormat;
    final type = this.type;
    return {
      'customLabelData': ?customLabelData,
      'placement': ?placement,
      'textFormat': ?textFormat,
      'type': ?type,
    };
  }
}

/// Information about an external data source in the spreadsheet.
class DataSource {
  /// All calculated columns in the data source.
  core.List<DataSourceColumn>? calculatedColumns;

  /// The spreadsheet-scoped unique ID that identifies the data source.
  ///
  /// Example: 1080547365.
  core.String? dataSourceId;

  /// The ID of the Sheet connected with the data source.
  ///
  /// The field cannot be changed once set. When creating a data source, an
  /// associated DATA_SOURCE sheet is also created, if the field is not
  /// specified, the ID of the created sheet will be randomly generated.
  core.int? sheetId;

  /// The DataSourceSpec for the data source connected with this spreadsheet.
  DataSourceSpec? spec;

  DataSource({
    this.calculatedColumns,
    this.dataSourceId,
    this.sheetId,
    this.spec,
  });

  DataSource.fromJson(core.Map json_)
    : this(
        calculatedColumns: (json_['calculatedColumns'] as core.List?)
            ?.map(
              (value) => DataSourceColumn.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataSourceId: json_['dataSourceId'] as core.String?,
        sheetId: json_['sheetId'] as core.int?,
        spec: json_.containsKey('spec')
            ? DataSourceSpec.fromJson(
                json_['spec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calculatedColumns = this.calculatedColumns;
    final dataSourceId = this.dataSourceId;
    final sheetId = this.sheetId;
    final spec = this.spec;
    return {
      'calculatedColumns': ?calculatedColumns,
      'dataSourceId': ?dataSourceId,
      'sheetId': ?sheetId,
      'spec': ?spec,
    };
  }
}

/// Properties of a data source chart.
class DataSourceChartProperties {
  /// The data execution status.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// ID of the data source that the chart is associated with.
  core.String? dataSourceId;

  DataSourceChartProperties({this.dataExecutionStatus, this.dataSourceId});

  DataSourceChartProperties.fromJson(core.Map json_)
    : this(
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceId: json_['dataSourceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSourceId = this.dataSourceId;
    return {
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSourceId': ?dataSourceId,
    };
  }
}

/// A column in a data source.
class DataSourceColumn {
  /// The formula of the calculated column.
  core.String? formula;

  /// The column reference.
  DataSourceColumnReference? reference;

  DataSourceColumn({this.formula, this.reference});

  DataSourceColumn.fromJson(core.Map json_)
    : this(
        formula: json_['formula'] as core.String?,
        reference: json_.containsKey('reference')
            ? DataSourceColumnReference.fromJson(
                json_['reference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final formula = this.formula;
    final reference = this.reference;
    return {'formula': ?formula, 'reference': ?reference};
  }
}

/// An unique identifier that references a data source column.
class DataSourceColumnReference {
  /// The display name of the column.
  ///
  /// It should be unique within a data source.
  core.String? name;

  DataSourceColumnReference({this.name});

  DataSourceColumnReference.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// A data source formula.
class DataSourceFormula {
  /// The data execution status.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// The ID of the data source the formula is associated with.
  core.String? dataSourceId;

  DataSourceFormula({this.dataExecutionStatus, this.dataSourceId});

  DataSourceFormula.fromJson(core.Map json_)
    : this(
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceId: json_['dataSourceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSourceId = this.dataSourceId;
    return {
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSourceId': ?dataSourceId,
    };
  }
}

/// Reference to a data source object.
class DataSourceObjectReference {
  /// References to a data source chart.
  core.int? chartId;

  /// References to a cell containing DataSourceFormula.
  GridCoordinate? dataSourceFormulaCell;

  /// References to a data source PivotTable anchored at the cell.
  GridCoordinate? dataSourcePivotTableAnchorCell;

  /// References to a DataSourceTable anchored at the cell.
  GridCoordinate? dataSourceTableAnchorCell;

  /// References to a DATA_SOURCE sheet.
  core.String? sheetId;

  DataSourceObjectReference({
    this.chartId,
    this.dataSourceFormulaCell,
    this.dataSourcePivotTableAnchorCell,
    this.dataSourceTableAnchorCell,
    this.sheetId,
  });

  DataSourceObjectReference.fromJson(core.Map json_)
    : this(
        chartId: json_['chartId'] as core.int?,
        dataSourceFormulaCell: json_.containsKey('dataSourceFormulaCell')
            ? GridCoordinate.fromJson(
                json_['dataSourceFormulaCell']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourcePivotTableAnchorCell:
            json_.containsKey('dataSourcePivotTableAnchorCell')
            ? GridCoordinate.fromJson(
                json_['dataSourcePivotTableAnchorCell']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceTableAnchorCell:
            json_.containsKey('dataSourceTableAnchorCell')
            ? GridCoordinate.fromJson(
                json_['dataSourceTableAnchorCell']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sheetId: json_['sheetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chartId = this.chartId;
    final dataSourceFormulaCell = this.dataSourceFormulaCell;
    final dataSourcePivotTableAnchorCell = this.dataSourcePivotTableAnchorCell;
    final dataSourceTableAnchorCell = this.dataSourceTableAnchorCell;
    final sheetId = this.sheetId;
    return {
      'chartId': ?chartId,
      'dataSourceFormulaCell': ?dataSourceFormulaCell,
      'dataSourcePivotTableAnchorCell': ?dataSourcePivotTableAnchorCell,
      'dataSourceTableAnchorCell': ?dataSourceTableAnchorCell,
      'sheetId': ?sheetId,
    };
  }
}

/// A list of references to data source objects.
class DataSourceObjectReferences {
  /// The references.
  core.List<DataSourceObjectReference>? references;

  DataSourceObjectReferences({this.references});

  DataSourceObjectReferences.fromJson(core.Map json_)
    : this(
        references: (json_['references'] as core.List?)
            ?.map(
              (value) => DataSourceObjectReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final references = this.references;
    return {'references': ?references};
  }
}

/// A parameter in a data source's query.
///
/// The parameter allows the user to pass in values from the spreadsheet into a
/// query.
class DataSourceParameter {
  /// Named parameter.
  ///
  /// Must be a legitimate identifier for the DataSource that supports it. For
  /// example,
  /// [BigQuery identifier](https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical#identifiers).
  core.String? name;

  /// ID of a NamedRange.
  ///
  /// Its size must be 1x1.
  core.String? namedRangeId;

  /// A range that contains the value of the parameter.
  ///
  /// Its size must be 1x1.
  GridRange? range;

  DataSourceParameter({this.name, this.namedRangeId, this.range});

  DataSourceParameter.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        namedRangeId: json_['namedRangeId'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final namedRangeId = this.namedRangeId;
    final range = this.range;
    return {'name': ?name, 'namedRangeId': ?namedRangeId, 'range': ?range};
  }
}

/// A schedule for data to refresh every day in a given time interval.
class DataSourceRefreshDailySchedule {
  /// The start time of a time interval in which a data source refresh is
  /// scheduled.
  ///
  /// Only `hours` part is used. The time interval size defaults to that in the
  /// Sheets editor.
  TimeOfDay? startTime;

  DataSourceRefreshDailySchedule({this.startTime});

  DataSourceRefreshDailySchedule.fromJson(core.Map json_)
    : this(
        startTime: json_.containsKey('startTime')
            ? TimeOfDay.fromJson(
                json_['startTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final startTime = this.startTime;
    return {'startTime': ?startTime};
  }
}

/// A monthly schedule for data to refresh on specific days in the month in a
/// given time interval.
class DataSourceRefreshMonthlySchedule {
  /// Days of the month to refresh.
  ///
  /// Only 1-28 are supported, mapping to the 1st to the 28th day. At least one
  /// day must be specified.
  core.List<core.int>? daysOfMonth;

  /// The start time of a time interval in which a data source refresh is
  /// scheduled.
  ///
  /// Only `hours` part is used. The time interval size defaults to that in the
  /// Sheets editor.
  TimeOfDay? startTime;

  DataSourceRefreshMonthlySchedule({this.daysOfMonth, this.startTime});

  DataSourceRefreshMonthlySchedule.fromJson(core.Map json_)
    : this(
        daysOfMonth: (json_['daysOfMonth'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        startTime: json_.containsKey('startTime')
            ? TimeOfDay.fromJson(
                json_['startTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final daysOfMonth = this.daysOfMonth;
    final startTime = this.startTime;
    return {'daysOfMonth': ?daysOfMonth, 'startTime': ?startTime};
  }
}

/// Schedule for refreshing the data source.
///
/// Data sources in the spreadsheet are refreshed within a time interval. You
/// can specify the start time by clicking the Scheduled Refresh button in the
/// Sheets editor, but the interval is fixed at 4 hours. For example, if you
/// specify a start time of 8 AM , the refresh will take place between 8 AM and
/// 12 PM every day.
class DataSourceRefreshSchedule {
  /// Daily refresh schedule.
  DataSourceRefreshDailySchedule? dailySchedule;

  /// True if the refresh schedule is enabled, or false otherwise.
  core.bool? enabled;

  /// Monthly refresh schedule.
  DataSourceRefreshMonthlySchedule? monthlySchedule;

  /// The time interval of the next run.
  ///
  /// Output only.
  Interval? nextRun;

  /// The scope of the refresh.
  ///
  /// Must be ALL_DATA_SOURCES.
  /// Possible string values are:
  /// - "DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED" : Default value, do not use.
  /// - "ALL_DATA_SOURCES" : Refreshes all data sources and their associated
  /// data source objects in the spreadsheet.
  core.String? refreshScope;

  /// Weekly refresh schedule.
  DataSourceRefreshWeeklySchedule? weeklySchedule;

  DataSourceRefreshSchedule({
    this.dailySchedule,
    this.enabled,
    this.monthlySchedule,
    this.nextRun,
    this.refreshScope,
    this.weeklySchedule,
  });

  DataSourceRefreshSchedule.fromJson(core.Map json_)
    : this(
        dailySchedule: json_.containsKey('dailySchedule')
            ? DataSourceRefreshDailySchedule.fromJson(
                json_['dailySchedule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        enabled: json_['enabled'] as core.bool?,
        monthlySchedule: json_.containsKey('monthlySchedule')
            ? DataSourceRefreshMonthlySchedule.fromJson(
                json_['monthlySchedule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nextRun: json_.containsKey('nextRun')
            ? Interval.fromJson(
                json_['nextRun'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refreshScope: json_['refreshScope'] as core.String?,
        weeklySchedule: json_.containsKey('weeklySchedule')
            ? DataSourceRefreshWeeklySchedule.fromJson(
                json_['weeklySchedule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dailySchedule = this.dailySchedule;
    final enabled = this.enabled;
    final monthlySchedule = this.monthlySchedule;
    final nextRun = this.nextRun;
    final refreshScope = this.refreshScope;
    final weeklySchedule = this.weeklySchedule;
    return {
      'dailySchedule': ?dailySchedule,
      'enabled': ?enabled,
      'monthlySchedule': ?monthlySchedule,
      'nextRun': ?nextRun,
      'refreshScope': ?refreshScope,
      'weeklySchedule': ?weeklySchedule,
    };
  }
}

/// A weekly schedule for data to refresh on specific days in a given time
/// interval.
class DataSourceRefreshWeeklySchedule {
  /// Days of the week to refresh.
  ///
  /// At least one day must be specified.
  core.List<core.String>? daysOfWeek;

  /// The start time of a time interval in which a data source refresh is
  /// scheduled.
  ///
  /// Only `hours` part is used. The time interval size defaults to that in the
  /// Sheets editor.
  TimeOfDay? startTime;

  DataSourceRefreshWeeklySchedule({this.daysOfWeek, this.startTime});

  DataSourceRefreshWeeklySchedule.fromJson(core.Map json_)
    : this(
        daysOfWeek: (json_['daysOfWeek'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        startTime: json_.containsKey('startTime')
            ? TimeOfDay.fromJson(
                json_['startTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final daysOfWeek = this.daysOfWeek;
    final startTime = this.startTime;
    return {'daysOfWeek': ?daysOfWeek, 'startTime': ?startTime};
  }
}

/// A range along a single dimension on a DATA_SOURCE sheet.
class DataSourceSheetDimensionRange {
  /// The columns on the data source sheet.
  core.List<DataSourceColumnReference>? columnReferences;

  /// The ID of the data source sheet the range is on.
  core.int? sheetId;

  DataSourceSheetDimensionRange({this.columnReferences, this.sheetId});

  DataSourceSheetDimensionRange.fromJson(core.Map json_)
    : this(
        columnReferences: (json_['columnReferences'] as core.List?)
            ?.map(
              (value) => DataSourceColumnReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnReferences = this.columnReferences;
    final sheetId = this.sheetId;
    return {'columnReferences': ?columnReferences, 'sheetId': ?sheetId};
  }
}

/// Additional properties of a DATA_SOURCE sheet.
class DataSourceSheetProperties {
  /// The columns displayed on the sheet, corresponding to the values in
  /// RowData.
  core.List<DataSourceColumn>? columns;

  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// ID of the DataSource the sheet is connected to.
  core.String? dataSourceId;

  DataSourceSheetProperties({
    this.columns,
    this.dataExecutionStatus,
    this.dataSourceId,
  });

  DataSourceSheetProperties.fromJson(core.Map json_)
    : this(
        columns: (json_['columns'] as core.List?)
            ?.map(
              (value) => DataSourceColumn.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceId: json_['dataSourceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columns = this.columns;
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSourceId = this.dataSourceId;
    return {
      'columns': ?columns,
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSourceId': ?dataSourceId,
    };
  }
}

/// This specifies the details of the data source.
///
/// For example, for BigQuery, this specifies information about the BigQuery
/// source.
class DataSourceSpec {
  /// A BigQueryDataSourceSpec.
  BigQueryDataSourceSpec? bigQuery;

  /// A LookerDatasourceSpec.
  LookerDataSourceSpec? looker;

  /// The parameters of the data source, used when querying the data source.
  core.List<DataSourceParameter>? parameters;

  DataSourceSpec({this.bigQuery, this.looker, this.parameters});

  DataSourceSpec.fromJson(core.Map json_)
    : this(
        bigQuery: json_.containsKey('bigQuery')
            ? BigQueryDataSourceSpec.fromJson(
                json_['bigQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        looker: json_.containsKey('looker')
            ? LookerDataSourceSpec.fromJson(
                json_['looker'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => DataSourceParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bigQuery = this.bigQuery;
    final looker = this.looker;
    final parameters = this.parameters;
    return {
      'bigQuery': ?bigQuery,
      'looker': ?looker,
      'parameters': ?parameters,
    };
  }
}

/// A data source table, which allows the user to import a static table of data
/// from the DataSource into Sheets.
///
/// This is also known as "Extract" in the Sheets editor.
class DataSourceTable {
  /// The type to select columns for the data source table.
  ///
  /// Defaults to SELECTED.
  /// Possible string values are:
  /// - "DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED" : The default
  /// column selection type, do not use.
  /// - "SELECTED" : Select columns specified by columns field.
  /// - "SYNC_ALL" : Sync all current and future columns in the data source. If
  /// set, the data source table fetches all the columns in the data source at
  /// the time of refresh.
  core.String? columnSelectionType;

  /// Columns selected for the data source table.
  ///
  /// The column_selection_type must be SELECTED.
  core.List<DataSourceColumnReference>? columns;

  /// The data execution status.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// The ID of the data source the data source table is associated with.
  core.String? dataSourceId;

  /// Filter specifications in the data source table.
  core.List<FilterSpec>? filterSpecs;

  /// The limit of rows to return.
  ///
  /// If not set, a default limit is applied. Please refer to the Sheets editor
  /// for the default and max limit.
  core.int? rowLimit;

  /// Sort specifications in the data source table.
  ///
  /// The result of the data source table is sorted based on the sort
  /// specifications in order.
  core.List<SortSpec>? sortSpecs;

  DataSourceTable({
    this.columnSelectionType,
    this.columns,
    this.dataExecutionStatus,
    this.dataSourceId,
    this.filterSpecs,
    this.rowLimit,
    this.sortSpecs,
  });

  DataSourceTable.fromJson(core.Map json_)
    : this(
        columnSelectionType: json_['columnSelectionType'] as core.String?,
        columns: (json_['columns'] as core.List?)
            ?.map(
              (value) => DataSourceColumnReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceId: json_['dataSourceId'] as core.String?,
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => FilterSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rowLimit: json_['rowLimit'] as core.int?,
        sortSpecs: (json_['sortSpecs'] as core.List?)
            ?.map(
              (value) => SortSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnSelectionType = this.columnSelectionType;
    final columns = this.columns;
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSourceId = this.dataSourceId;
    final filterSpecs = this.filterSpecs;
    final rowLimit = this.rowLimit;
    final sortSpecs = this.sortSpecs;
    return {
      'columnSelectionType': ?columnSelectionType,
      'columns': ?columns,
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSourceId': ?dataSourceId,
      'filterSpecs': ?filterSpecs,
      'rowLimit': ?rowLimit,
      'sortSpecs': ?sortSpecs,
    };
  }
}

/// A data validation rule.
class DataValidationRule {
  /// The condition that data in the cell must match.
  BooleanCondition? condition;

  /// A message to show the user when adding data to the cell.
  core.String? inputMessage;

  /// True if the UI should be customized based on the kind of condition.
  ///
  /// If true, "List" conditions will show a dropdown.
  core.bool? showCustomUi;

  /// True if invalid data should be rejected.
  core.bool? strict;

  DataValidationRule({
    this.condition,
    this.inputMessage,
    this.showCustomUi,
    this.strict,
  });

  DataValidationRule.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? BooleanCondition.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inputMessage: json_['inputMessage'] as core.String?,
        showCustomUi: json_['showCustomUi'] as core.bool?,
        strict: json_['strict'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final inputMessage = this.inputMessage;
    final showCustomUi = this.showCustomUi;
    final strict = this.strict;
    return {
      'condition': ?condition,
      'inputMessage': ?inputMessage,
      'showCustomUi': ?showCustomUi,
      'strict': ?strict,
    };
  }
}

/// Allows you to organize the date-time values in a source data column into
/// buckets based on selected parts of their date or time values.
///
/// For example, consider a pivot table showing sales transactions by date:
/// +----------+--------------+ | Date | SUM of Sales |
/// +----------+--------------+ | 1/1/2017 | $621.14 | | 2/3/2017 | $708.84 | |
/// 5/8/2017 | $326.84 | ... +----------+--------------+ Applying a date-time
/// group rule with a DateTimeRuleType of YEAR_MONTH results in the following
/// pivot table. +--------------+--------------+ | Grouped Date | SUM of Sales |
/// +--------------+--------------+ | 2017-Jan | $53,731.78 | | 2017-Feb |
/// $83,475.32 | | 2017-Mar | $94,385.05 | ... +--------------+--------------+
class DateTimeRule {
  /// The type of date-time grouping to apply.
  /// Possible string values are:
  /// - "DATE_TIME_RULE_TYPE_UNSPECIFIED" : The default type, do not use.
  /// - "SECOND" : Group dates by second, from 0 to 59.
  /// - "MINUTE" : Group dates by minute, from 0 to 59.
  /// - "HOUR" : Group dates by hour using a 24-hour system, from 0 to 23.
  /// - "HOUR_MINUTE" : Group dates by hour and minute using a 24-hour system,
  /// for example 19:45.
  /// - "HOUR_MINUTE_AMPM" : Group dates by hour and minute using a 12-hour
  /// system, for example 7:45 PM. The AM/PM designation is translated based on
  /// the spreadsheet locale.
  /// - "DAY_OF_WEEK" : Group dates by day of week, for example Sunday. The days
  /// of the week will be translated based on the spreadsheet locale.
  /// - "DAY_OF_YEAR" : Group dates by day of year, from 1 to 366. Note that
  /// dates after Feb. 29 fall in different buckets in leap years than in
  /// non-leap years.
  /// - "DAY_OF_MONTH" : Group dates by day of month, from 1 to 31.
  /// - "DAY_MONTH" : Group dates by day and month, for example 22-Nov. The
  /// month is translated based on the spreadsheet locale.
  /// - "MONTH" : Group dates by month, for example Nov. The month is translated
  /// based on the spreadsheet locale.
  /// - "QUARTER" : Group dates by quarter, for example Q1 (which represents
  /// Jan-Mar).
  /// - "YEAR" : Group dates by year, for example 2008.
  /// - "YEAR_MONTH" : Group dates by year and month, for example 2008-Nov. The
  /// month is translated based on the spreadsheet locale.
  /// - "YEAR_QUARTER" : Group dates by year and quarter, for example 2008 Q4.
  /// - "YEAR_MONTH_DAY" : Group dates by year, month, and day, for example
  /// 2008-11-22.
  core.String? type;

  DateTimeRule({this.type});

  DateTimeRule.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// Removes the banded range with the given ID from the spreadsheet.
class DeleteBandingRequest {
  /// The ID of the banded range to delete.
  core.int? bandedRangeId;

  DeleteBandingRequest({this.bandedRangeId});

  DeleteBandingRequest.fromJson(core.Map json_)
    : this(bandedRangeId: json_['bandedRangeId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRangeId = this.bandedRangeId;
    return {'bandedRangeId': ?bandedRangeId};
  }
}

/// Deletes a conditional format rule at the given index.
///
/// All subsequent rules' indexes are decremented.
class DeleteConditionalFormatRuleRequest {
  /// The zero-based index of the rule to be deleted.
  core.int? index;

  /// The sheet the rule is being deleted from.
  core.int? sheetId;

  DeleteConditionalFormatRuleRequest({this.index, this.sheetId});

  DeleteConditionalFormatRuleRequest.fromJson(core.Map json_)
    : this(
        index: json_['index'] as core.int?,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final index = this.index;
    final sheetId = this.sheetId;
    return {'index': ?index, 'sheetId': ?sheetId};
  }
}

/// The result of deleting a conditional format rule.
class DeleteConditionalFormatRuleResponse {
  /// The rule that was deleted.
  ConditionalFormatRule? rule;

  DeleteConditionalFormatRuleResponse({this.rule});

  DeleteConditionalFormatRuleResponse.fromJson(core.Map json_)
    : this(
        rule: json_.containsKey('rule')
            ? ConditionalFormatRule.fromJson(
                json_['rule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rule = this.rule;
    return {'rule': ?rule};
  }
}

/// Deletes a data source.
///
/// The request also deletes the associated data source sheet, and unlinks all
/// associated data source objects.
class DeleteDataSourceRequest {
  /// The ID of the data source to delete.
  core.String? dataSourceId;

  DeleteDataSourceRequest({this.dataSourceId});

  DeleteDataSourceRequest.fromJson(core.Map json_)
    : this(dataSourceId: json_['dataSourceId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceId = this.dataSourceId;
    return {'dataSourceId': ?dataSourceId};
  }
}

/// A request to delete developer metadata.
class DeleteDeveloperMetadataRequest {
  /// The data filter describing the criteria used to select which developer
  /// metadata entry to delete.
  DataFilter? dataFilter;

  DeleteDeveloperMetadataRequest({this.dataFilter});

  DeleteDeveloperMetadataRequest.fromJson(core.Map json_)
    : this(
        dataFilter: json_.containsKey('dataFilter')
            ? DataFilter.fromJson(
                json_['dataFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilter = this.dataFilter;
    return {'dataFilter': ?dataFilter};
  }
}

/// The response from deleting developer metadata.
class DeleteDeveloperMetadataResponse {
  /// The metadata that was deleted.
  core.List<DeveloperMetadata>? deletedDeveloperMetadata;

  DeleteDeveloperMetadataResponse({this.deletedDeveloperMetadata});

  DeleteDeveloperMetadataResponse.fromJson(core.Map json_)
    : this(
        deletedDeveloperMetadata:
            (json_['deletedDeveloperMetadata'] as core.List?)
                ?.map(
                  (value) => DeveloperMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deletedDeveloperMetadata = this.deletedDeveloperMetadata;
    return {'deletedDeveloperMetadata': ?deletedDeveloperMetadata};
  }
}

/// Deletes a group over the specified range by decrementing the depth of the
/// dimensions in the range.
///
/// For example, assume the sheet has a depth-1 group over B:E and a depth-2
/// group over C:D. Deleting a group over D:E leaves the sheet with a depth-1
/// group over B:D and a depth-2 group over C:C.
class DeleteDimensionGroupRequest {
  /// The range of the group to be deleted.
  DimensionRange? range;

  DeleteDimensionGroupRequest({this.range});

  DeleteDimensionGroupRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// The result of deleting a group.
class DeleteDimensionGroupResponse {
  /// All groups of a dimension after deleting a group from that dimension.
  core.List<DimensionGroup>? dimensionGroups;

  DeleteDimensionGroupResponse({this.dimensionGroups});

  DeleteDimensionGroupResponse.fromJson(core.Map json_)
    : this(
        dimensionGroups: (json_['dimensionGroups'] as core.List?)
            ?.map(
              (value) => DimensionGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionGroups = this.dimensionGroups;
    return {'dimensionGroups': ?dimensionGroups};
  }
}

///  Deletes the dimensions from the sheet.
class DeleteDimensionRequest {
  /// The dimensions to delete from the sheet.
  DimensionRange? range;

  DeleteDimensionRequest({this.range});

  DeleteDimensionRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// Removes rows within this range that contain values in the specified columns
/// that are duplicates of values in any previous row.
///
/// Rows with identical values but different letter cases, formatting, or
/// formulas are considered to be duplicates. This request also removes
/// duplicate rows hidden from view (for example, due to a filter). When
/// removing duplicates, the first instance of each duplicate row scanning from
/// the top downwards is kept in the resulting range. Content outside of the
/// specified range isn't removed, and rows considered duplicates do not have to
/// be adjacent to each other in the range.
class DeleteDuplicatesRequest {
  /// The columns in the range to analyze for duplicate values.
  ///
  /// If no columns are selected then all columns are analyzed for duplicates.
  core.List<DimensionRange>? comparisonColumns;

  /// The range to remove duplicates rows from.
  GridRange? range;

  DeleteDuplicatesRequest({this.comparisonColumns, this.range});

  DeleteDuplicatesRequest.fromJson(core.Map json_)
    : this(
        comparisonColumns: (json_['comparisonColumns'] as core.List?)
            ?.map(
              (value) => DimensionRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comparisonColumns = this.comparisonColumns;
    final range = this.range;
    return {'comparisonColumns': ?comparisonColumns, 'range': ?range};
  }
}

/// The result of removing duplicates in a range.
class DeleteDuplicatesResponse {
  /// The number of duplicate rows removed.
  core.int? duplicatesRemovedCount;

  DeleteDuplicatesResponse({this.duplicatesRemovedCount});

  DeleteDuplicatesResponse.fromJson(core.Map json_)
    : this(
        duplicatesRemovedCount: json_['duplicatesRemovedCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duplicatesRemovedCount = this.duplicatesRemovedCount;
    return {'duplicatesRemovedCount': ?duplicatesRemovedCount};
  }
}

/// Deletes the embedded object with the given ID.
class DeleteEmbeddedObjectRequest {
  /// The ID of the embedded object to delete.
  core.int? objectId;

  DeleteEmbeddedObjectRequest({this.objectId});

  DeleteEmbeddedObjectRequest.fromJson(core.Map json_)
    : this(objectId: json_['objectId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    return {'objectId': ?objectId};
  }
}

/// Deletes a particular filter view.
class DeleteFilterViewRequest {
  /// The ID of the filter to delete.
  core.int? filterId;

  DeleteFilterViewRequest({this.filterId});

  DeleteFilterViewRequest.fromJson(core.Map json_)
    : this(filterId: json_['filterId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final filterId = this.filterId;
    return {'filterId': ?filterId};
  }
}

/// Removes the named range with the given ID from the spreadsheet.
class DeleteNamedRangeRequest {
  /// The ID of the named range to delete.
  core.String? namedRangeId;

  DeleteNamedRangeRequest({this.namedRangeId});

  DeleteNamedRangeRequest.fromJson(core.Map json_)
    : this(namedRangeId: json_['namedRangeId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final namedRangeId = this.namedRangeId;
    return {'namedRangeId': ?namedRangeId};
  }
}

/// Deletes the protected range with the given ID.
class DeleteProtectedRangeRequest {
  /// The ID of the protected range to delete.
  core.int? protectedRangeId;

  DeleteProtectedRangeRequest({this.protectedRangeId});

  DeleteProtectedRangeRequest.fromJson(core.Map json_)
    : this(protectedRangeId: json_['protectedRangeId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final protectedRangeId = this.protectedRangeId;
    return {'protectedRangeId': ?protectedRangeId};
  }
}

/// Deletes a range of cells, shifting other cells into the deleted area.
class DeleteRangeRequest {
  /// The range of cells to delete.
  GridRange? range;

  /// The dimension from which deleted cells will be replaced with.
  ///
  /// If ROWS, existing cells will be shifted upward to replace the deleted
  /// cells. If COLUMNS, existing cells will be shifted left to replace the
  /// deleted cells.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? shiftDimension;

  DeleteRangeRequest({this.range, this.shiftDimension});

  DeleteRangeRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shiftDimension: json_['shiftDimension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    final shiftDimension = this.shiftDimension;
    return {'range': ?range, 'shiftDimension': ?shiftDimension};
  }
}

/// Deletes the requested sheet.
class DeleteSheetRequest {
  /// The ID of the sheet to delete.
  ///
  /// If the sheet is of DATA_SOURCE type, the associated DataSource is also
  /// deleted.
  core.int? sheetId;

  DeleteSheetRequest({this.sheetId});

  DeleteSheetRequest.fromJson(core.Map json_)
    : this(sheetId: json_['sheetId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final sheetId = this.sheetId;
    return {'sheetId': ?sheetId};
  }
}

/// Removes the table with the given ID from the spreadsheet.
class DeleteTableRequest {
  /// The ID of the table to delete.
  core.String? tableId;

  DeleteTableRequest({this.tableId});

  DeleteTableRequest.fromJson(core.Map json_)
    : this(tableId: json_['tableId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tableId = this.tableId;
    return {'tableId': ?tableId};
  }
}

/// Developer metadata associated with a location or object in a spreadsheet.
///
/// Developer metadata may be used to associate arbitrary data with various
/// parts of a spreadsheet and will remain associated at those locations as they
/// move around and the spreadsheet is edited. For example, if developer
/// metadata is associated with row 5 and another row is then subsequently
/// inserted above row 5, that original metadata will still be associated with
/// the row it was first associated with (what is now row 6). If the associated
/// object is deleted its metadata is deleted too.
class DeveloperMetadata {
  /// The location where the metadata is associated.
  DeveloperMetadataLocation? location;

  /// The spreadsheet-scoped unique ID that identifies the metadata.
  ///
  /// IDs may be specified when metadata is created, otherwise one will be
  /// randomly generated and assigned. Must be positive.
  core.int? metadataId;

  /// The metadata key.
  ///
  /// There may be multiple metadata in a spreadsheet with the same key.
  /// Developer metadata must always have a key specified.
  core.String? metadataKey;

  /// Data associated with the metadata's key.
  core.String? metadataValue;

  /// The metadata visibility.
  ///
  /// Developer metadata must always have a visibility specified.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" : Default value.
  /// - "DOCUMENT" : Document-visible metadata is accessible from any developer
  /// project with access to the document.
  /// - "PROJECT" : Project-visible metadata is only visible to and accessible
  /// by the developer project that created the metadata.
  core.String? visibility;

  DeveloperMetadata({
    this.location,
    this.metadataId,
    this.metadataKey,
    this.metadataValue,
    this.visibility,
  });

  DeveloperMetadata.fromJson(core.Map json_)
    : this(
        location: json_.containsKey('location')
            ? DeveloperMetadataLocation.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadataId: json_['metadataId'] as core.int?,
        metadataKey: json_['metadataKey'] as core.String?,
        metadataValue: json_['metadataValue'] as core.String?,
        visibility: json_['visibility'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final location = this.location;
    final metadataId = this.metadataId;
    final metadataKey = this.metadataKey;
    final metadataValue = this.metadataValue;
    final visibility = this.visibility;
    return {
      'location': ?location,
      'metadataId': ?metadataId,
      'metadataKey': ?metadataKey,
      'metadataValue': ?metadataValue,
      'visibility': ?visibility,
    };
  }
}

/// A location where metadata may be associated in a spreadsheet.
class DeveloperMetadataLocation {
  /// Represents the row or column when metadata is associated with a dimension.
  ///
  /// The specified DimensionRange must represent a single row or column; it
  /// cannot be unbounded or span multiple rows or columns.
  DimensionRange? dimensionRange;

  /// The type of location this object represents.
  ///
  /// This field is read-only.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" : Default value.
  /// - "ROW" : Developer metadata associated on an entire row dimension.
  /// - "COLUMN" : Developer metadata associated on an entire column dimension.
  /// - "SHEET" : Developer metadata associated on an entire sheet.
  /// - "SPREADSHEET" : Developer metadata associated on the entire spreadsheet.
  core.String? locationType;

  /// The ID of the sheet when metadata is associated with an entire sheet.
  core.int? sheetId;

  /// True when metadata is associated with an entire spreadsheet.
  core.bool? spreadsheet;

  DeveloperMetadataLocation({
    this.dimensionRange,
    this.locationType,
    this.sheetId,
    this.spreadsheet,
  });

  DeveloperMetadataLocation.fromJson(core.Map json_)
    : this(
        dimensionRange: json_.containsKey('dimensionRange')
            ? DimensionRange.fromJson(
                json_['dimensionRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        locationType: json_['locationType'] as core.String?,
        sheetId: json_['sheetId'] as core.int?,
        spreadsheet: json_['spreadsheet'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionRange = this.dimensionRange;
    final locationType = this.locationType;
    final sheetId = this.sheetId;
    final spreadsheet = this.spreadsheet;
    return {
      'dimensionRange': ?dimensionRange,
      'locationType': ?locationType,
      'sheetId': ?sheetId,
      'spreadsheet': ?spreadsheet,
    };
  }
}

/// Selects DeveloperMetadata that matches all of the specified fields.
///
/// For example, if only a metadata ID is specified this considers the
/// DeveloperMetadata with that particular unique ID. If a metadata key is
/// specified, this considers all developer metadata with that key. If a key,
/// visibility, and location type are all specified, this considers all
/// developer metadata with that key and visibility that are associated with a
/// location of that type. In general, this selects all DeveloperMetadata that
/// matches the intersection of all the specified fields; any field or
/// combination of fields may be specified.
class DeveloperMetadataLookup {
  /// Determines how this lookup matches the location.
  ///
  /// If this field is specified as EXACT, only developer metadata associated on
  /// the exact location specified is matched. If this field is specified to
  /// INTERSECTING, developer metadata associated on intersecting locations is
  /// also matched. If left unspecified, this field assumes a default value of
  /// INTERSECTING. If this field is specified, a metadataLocation must also be
  /// specified.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED" : Default
  /// value. This value must not be used.
  /// - "EXACT_LOCATION" : Indicates that a specified location should be matched
  /// exactly. For example, if row three were specified as a location this
  /// matching strategy would only match developer metadata also associated on
  /// row three. Metadata associated on other locations would not be considered.
  /// - "INTERSECTING_LOCATION" : Indicates that a specified location should
  /// match that exact location as well as any intersecting locations. For
  /// example, if row three were specified as a location this matching strategy
  /// would match developer metadata associated on row three as well as metadata
  /// associated on locations that intersect row three. If, for instance, there
  /// was developer metadata associated on column B, this matching strategy
  /// would also match that location because column B intersects row three.
  core.String? locationMatchingStrategy;

  /// Limits the selected developer metadata to those entries which are
  /// associated with locations of the specified type.
  ///
  /// For example, when this field is specified as ROW this lookup only
  /// considers developer metadata associated on rows. If the field is left
  /// unspecified, all location types are considered. This field cannot be
  /// specified as SPREADSHEET when the locationMatchingStrategy is specified as
  /// INTERSECTING or when the metadataLocation is specified as a
  /// non-spreadsheet location: spreadsheet metadata cannot intersect any other
  /// developer metadata location. This field also must be left unspecified when
  /// the locationMatchingStrategy is specified as EXACT.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" : Default value.
  /// - "ROW" : Developer metadata associated on an entire row dimension.
  /// - "COLUMN" : Developer metadata associated on an entire column dimension.
  /// - "SHEET" : Developer metadata associated on an entire sheet.
  /// - "SPREADSHEET" : Developer metadata associated on the entire spreadsheet.
  core.String? locationType;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_id.
  core.int? metadataId;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_key.
  core.String? metadataKey;

  /// Limits the selected developer metadata to those entries associated with
  /// the specified location.
  ///
  /// This field either matches exact locations or all intersecting locations
  /// according the specified locationMatchingStrategy.
  DeveloperMetadataLocation? metadataLocation;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_value.
  core.String? metadataValue;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.visibility.
  ///
  /// If left unspecified, all developer metadata visible to the requesting
  /// project is considered.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" : Default value.
  /// - "DOCUMENT" : Document-visible metadata is accessible from any developer
  /// project with access to the document.
  /// - "PROJECT" : Project-visible metadata is only visible to and accessible
  /// by the developer project that created the metadata.
  core.String? visibility;

  DeveloperMetadataLookup({
    this.locationMatchingStrategy,
    this.locationType,
    this.metadataId,
    this.metadataKey,
    this.metadataLocation,
    this.metadataValue,
    this.visibility,
  });

  DeveloperMetadataLookup.fromJson(core.Map json_)
    : this(
        locationMatchingStrategy:
            json_['locationMatchingStrategy'] as core.String?,
        locationType: json_['locationType'] as core.String?,
        metadataId: json_['metadataId'] as core.int?,
        metadataKey: json_['metadataKey'] as core.String?,
        metadataLocation: json_.containsKey('metadataLocation')
            ? DeveloperMetadataLocation.fromJson(
                json_['metadataLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadataValue: json_['metadataValue'] as core.String?,
        visibility: json_['visibility'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locationMatchingStrategy = this.locationMatchingStrategy;
    final locationType = this.locationType;
    final metadataId = this.metadataId;
    final metadataKey = this.metadataKey;
    final metadataLocation = this.metadataLocation;
    final metadataValue = this.metadataValue;
    final visibility = this.visibility;
    return {
      'locationMatchingStrategy': ?locationMatchingStrategy,
      'locationType': ?locationType,
      'metadataId': ?metadataId,
      'metadataKey': ?metadataKey,
      'metadataLocation': ?metadataLocation,
      'metadataValue': ?metadataValue,
      'visibility': ?visibility,
    };
  }
}

/// A group over an interval of rows or columns on a sheet, which can contain or
/// be contained within other groups.
///
/// A group can be collapsed or expanded as a unit on the sheet.
class DimensionGroup {
  /// This field is true if this group is collapsed.
  ///
  /// A collapsed group remains collapsed if an overlapping group at a shallower
  /// depth is expanded. A true value does not imply that all dimensions within
  /// the group are hidden, since a dimension's visibility can change
  /// independently from this group property. However, when this property is
  /// updated, all dimensions within it are set to hidden if this field is true,
  /// or set to visible if this field is false.
  core.bool? collapsed;

  /// The depth of the group, representing how many groups have a range that
  /// wholly contains the range of this group.
  core.int? depth;

  /// The range over which this group exists.
  DimensionRange? range;

  DimensionGroup({this.collapsed, this.depth, this.range});

  DimensionGroup.fromJson(core.Map json_)
    : this(
        collapsed: json_['collapsed'] as core.bool?,
        depth: json_['depth'] as core.int?,
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collapsed = this.collapsed;
    final depth = this.depth;
    final range = this.range;
    return {'collapsed': ?collapsed, 'depth': ?depth, 'range': ?range};
  }
}

/// Properties about a dimension.
class DimensionProperties {
  /// If set, this is a column in a data source sheet.
  ///
  /// Output only.
  DataSourceColumnReference? dataSourceColumnReference;

  /// The developer metadata associated with a single row or column.
  core.List<DeveloperMetadata>? developerMetadata;

  /// True if this dimension is being filtered.
  ///
  /// This field is read-only.
  core.bool? hiddenByFilter;

  /// True if this dimension is explicitly hidden.
  core.bool? hiddenByUser;

  /// The height (if a row) or width (if a column) of the dimension in pixels.
  core.int? pixelSize;

  DimensionProperties({
    this.dataSourceColumnReference,
    this.developerMetadata,
    this.hiddenByFilter,
    this.hiddenByUser,
    this.pixelSize,
  });

  DimensionProperties.fromJson(core.Map json_)
    : this(
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        developerMetadata: (json_['developerMetadata'] as core.List?)
            ?.map(
              (value) => DeveloperMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        hiddenByFilter: json_['hiddenByFilter'] as core.bool?,
        hiddenByUser: json_['hiddenByUser'] as core.bool?,
        pixelSize: json_['pixelSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final developerMetadata = this.developerMetadata;
    final hiddenByFilter = this.hiddenByFilter;
    final hiddenByUser = this.hiddenByUser;
    final pixelSize = this.pixelSize;
    return {
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'developerMetadata': ?developerMetadata,
      'hiddenByFilter': ?hiddenByFilter,
      'hiddenByUser': ?hiddenByUser,
      'pixelSize': ?pixelSize,
    };
  }
}

/// A range along a single dimension on a sheet.
///
/// All indexes are zero-based. Indexes are half open: the start index is
/// inclusive and the end index is exclusive. Missing indexes indicate the range
/// is unbounded on that side.
class DimensionRange {
  /// The dimension of the span.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? dimension;

  /// The end (exclusive) of the span, or not set if unbounded.
  core.int? endIndex;

  /// The sheet this span is on.
  core.int? sheetId;

  /// The start (inclusive) of the span, or not set if unbounded.
  core.int? startIndex;

  DimensionRange({
    this.dimension,
    this.endIndex,
    this.sheetId,
    this.startIndex,
  });

  DimensionRange.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        endIndex: json_['endIndex'] as core.int?,
        sheetId: json_['sheetId'] as core.int?,
        startIndex: json_['startIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final endIndex = this.endIndex;
    final sheetId = this.sheetId;
    final startIndex = this.startIndex;
    return {
      'dimension': ?dimension,
      'endIndex': ?endIndex,
      'sheetId': ?sheetId,
      'startIndex': ?startIndex,
    };
  }
}

/// Duplicates a particular filter view.
class DuplicateFilterViewRequest {
  /// The ID of the filter being duplicated.
  core.int? filterId;

  DuplicateFilterViewRequest({this.filterId});

  DuplicateFilterViewRequest.fromJson(core.Map json_)
    : this(filterId: json_['filterId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final filterId = this.filterId;
    return {'filterId': ?filterId};
  }
}

/// The result of a filter view being duplicated.
class DuplicateFilterViewResponse {
  /// The newly created filter.
  FilterView? filter;

  DuplicateFilterViewResponse({this.filter});

  DuplicateFilterViewResponse.fromJson(core.Map json_)
    : this(
        filter: json_.containsKey('filter')
            ? FilterView.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    return {'filter': ?filter};
  }
}

/// Duplicates the contents of a sheet.
class DuplicateSheetRequest {
  /// The zero-based index where the new sheet should be inserted.
  ///
  /// The index of all sheets after this are incremented.
  core.int? insertSheetIndex;

  /// If set, the ID of the new sheet.
  ///
  /// If not set, an ID is chosen. If set, the ID must not conflict with any
  /// existing sheet ID. If set, it must be non-negative.
  core.int? newSheetId;

  /// The name of the new sheet.
  ///
  /// If empty, a new name is chosen for you.
  core.String? newSheetName;

  /// The sheet to duplicate.
  ///
  /// If the source sheet is of DATA_SOURCE type, its backing DataSource is also
  /// duplicated and associated with the new copy of the sheet. No data
  /// execution is triggered, the grid data of this sheet is also copied over
  /// but only available after the batch request completes.
  core.int? sourceSheetId;

  DuplicateSheetRequest({
    this.insertSheetIndex,
    this.newSheetId,
    this.newSheetName,
    this.sourceSheetId,
  });

  DuplicateSheetRequest.fromJson(core.Map json_)
    : this(
        insertSheetIndex: json_['insertSheetIndex'] as core.int?,
        newSheetId: json_['newSheetId'] as core.int?,
        newSheetName: json_['newSheetName'] as core.String?,
        sourceSheetId: json_['sourceSheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final insertSheetIndex = this.insertSheetIndex;
    final newSheetId = this.newSheetId;
    final newSheetName = this.newSheetName;
    final sourceSheetId = this.sourceSheetId;
    return {
      'insertSheetIndex': ?insertSheetIndex,
      'newSheetId': ?newSheetId,
      'newSheetName': ?newSheetName,
      'sourceSheetId': ?sourceSheetId,
    };
  }
}

/// The result of duplicating a sheet.
class DuplicateSheetResponse {
  /// The properties of the duplicate sheet.
  SheetProperties? properties;

  DuplicateSheetResponse({this.properties});

  DuplicateSheetResponse.fromJson(core.Map json_)
    : this(
        properties: json_.containsKey('properties')
            ? SheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final properties = this.properties;
    return {'properties': ?properties};
  }
}

/// The editors of a protected range.
class Editors {
  /// True if anyone in the document's domain has edit access to the protected
  /// range.
  ///
  /// Domain protection is only supported on documents within a domain.
  core.bool? domainUsersCanEdit;

  /// The email addresses of groups with edit access to the protected range.
  core.List<core.String>? groups;

  /// The email addresses of users with edit access to the protected range.
  core.List<core.String>? users;

  Editors({this.domainUsersCanEdit, this.groups, this.users});

  Editors.fromJson(core.Map json_)
    : this(
        domainUsersCanEdit: json_['domainUsersCanEdit'] as core.bool?,
        groups: (json_['groups'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        users: (json_['users'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domainUsersCanEdit = this.domainUsersCanEdit;
    final groups = this.groups;
    final users = this.users;
    return {
      'domainUsersCanEdit': ?domainUsersCanEdit,
      'groups': ?groups,
      'users': ?users,
    };
  }
}

/// A chart embedded in a sheet.
class EmbeddedChart {
  /// The border of the chart.
  EmbeddedObjectBorder? border;

  /// The ID of the chart.
  core.int? chartId;

  /// The position of the chart.
  EmbeddedObjectPosition? position;

  /// The specification of the chart.
  ChartSpec? spec;

  EmbeddedChart({this.border, this.chartId, this.position, this.spec});

  EmbeddedChart.fromJson(core.Map json_)
    : this(
        border: json_.containsKey('border')
            ? EmbeddedObjectBorder.fromJson(
                json_['border'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        chartId: json_['chartId'] as core.int?,
        position: json_.containsKey('position')
            ? EmbeddedObjectPosition.fromJson(
                json_['position'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        spec: json_.containsKey('spec')
            ? ChartSpec.fromJson(
                json_['spec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final border = this.border;
    final chartId = this.chartId;
    final position = this.position;
    final spec = this.spec;
    return {
      'border': ?border,
      'chartId': ?chartId,
      'position': ?position,
      'spec': ?spec,
    };
  }
}

/// A border along an embedded object.
class EmbeddedObjectBorder {
  /// The color of the border.
  ///
  /// Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// The color of the border.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  EmbeddedObjectBorder({this.color, this.colorStyle});

  EmbeddedObjectBorder.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    return {'color': ?color, 'colorStyle': ?colorStyle};
  }
}

/// The position of an embedded object such as a chart.
class EmbeddedObjectPosition {
  /// If true, the embedded object is put on a new sheet whose ID is chosen for
  /// you.
  ///
  /// Used only when writing.
  core.bool? newSheet;

  /// The position at which the object is overlaid on top of a grid.
  OverlayPosition? overlayPosition;

  /// The sheet this is on.
  ///
  /// Set only if the embedded object is on its own sheet. Must be non-negative.
  core.int? sheetId;

  EmbeddedObjectPosition({this.newSheet, this.overlayPosition, this.sheetId});

  EmbeddedObjectPosition.fromJson(core.Map json_)
    : this(
        newSheet: json_['newSheet'] as core.bool?,
        overlayPosition: json_.containsKey('overlayPosition')
            ? OverlayPosition.fromJson(
                json_['overlayPosition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newSheet = this.newSheet;
    final overlayPosition = this.overlayPosition;
    final sheetId = this.sheetId;
    return {
      'newSheet': ?newSheet,
      'overlayPosition': ?overlayPosition,
      'sheetId': ?sheetId,
    };
  }
}

/// An error in a cell.
class ErrorValue {
  /// A message with more information about the error (in the spreadsheet's
  /// locale).
  core.String? message;

  /// The type of error.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : The default error type, do not use this.
  /// - "ERROR" : Corresponds to the `#ERROR!` error.
  /// - "NULL_VALUE" : Corresponds to the `#NULL!` error.
  /// - "DIVIDE_BY_ZERO" : Corresponds to the `#DIV/0` error.
  /// - "VALUE" : Corresponds to the `#VALUE!` error.
  /// - "REF" : Corresponds to the `#REF!` error.
  /// - "NAME" : Corresponds to the `#NAME?` error.
  /// - "NUM" : Corresponds to the `#NUM!` error.
  /// - "N_A" : Corresponds to the `#N/A` error.
  /// - "LOADING" : Corresponds to the `Loading...` state.
  core.String? type;

  ErrorValue({this.message, this.type});

  ErrorValue.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final type = this.type;
    return {'message': ?message, 'type': ?type};
  }
}

/// The kinds of value that a cell in a spreadsheet can have.
class ExtendedValue {
  /// Represents a boolean value.
  core.bool? boolValue;

  /// Represents an error.
  ///
  /// This field is read-only.
  ErrorValue? errorValue;

  /// Represents a formula.
  core.String? formulaValue;

  /// Represents a double value.
  ///
  /// Note: Dates, Times and DateTimes are represented as doubles in
  /// SERIAL_NUMBER format.
  core.double? numberValue;

  /// Represents a string value.
  ///
  /// Leading single quotes are not included. For example, if the user typed
  /// `'123` into the UI, this would be represented as a `stringValue` of
  /// `"123"`.
  core.String? stringValue;

  ExtendedValue({
    this.boolValue,
    this.errorValue,
    this.formulaValue,
    this.numberValue,
    this.stringValue,
  });

  ExtendedValue.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        errorValue: json_.containsKey('errorValue')
            ? ErrorValue.fromJson(
                json_['errorValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        formulaValue: json_['formulaValue'] as core.String?,
        numberValue: (json_['numberValue'] as core.num?)?.toDouble(),
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final errorValue = this.errorValue;
    final formulaValue = this.formulaValue;
    final numberValue = this.numberValue;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'errorValue': ?errorValue,
      'formulaValue': ?formulaValue,
      'numberValue': ?numberValue,
      'stringValue': ?stringValue,
    };
  }
}

/// Criteria for showing/hiding rows in a filter or filter view.
class FilterCriteria {
  /// A condition that must be true for values to be shown.
  ///
  /// (This does not override hidden_values -- if a value is listed there, it
  /// will still be hidden.)
  BooleanCondition? condition;

  /// Values that should be hidden.
  core.List<core.String>? hiddenValues;

  /// The background fill color to filter by; only cells with this fill color
  /// are shown.
  ///
  /// Mutually exclusive with visible_foreground_color. Deprecated: Use
  /// visible_background_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? visibleBackgroundColor;

  /// The background fill color to filter by; only cells with this fill color
  /// are shown.
  ///
  /// This field is mutually exclusive with visible_foreground_color, and must
  /// be set to an RGB-type color. If visible_background_color is also set, this
  /// field takes precedence.
  ColorStyle? visibleBackgroundColorStyle;

  /// The foreground color to filter by; only cells with this foreground color
  /// are shown.
  ///
  /// Mutually exclusive with visible_background_color. Deprecated: Use
  /// visible_foreground_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? visibleForegroundColor;

  /// The foreground color to filter by; only cells with this foreground color
  /// are shown.
  ///
  /// This field is mutually exclusive with visible_background_color, and must
  /// be set to an RGB-type color. If visible_foreground_color is also set, this
  /// field takes precedence.
  ColorStyle? visibleForegroundColorStyle;

  FilterCriteria({
    this.condition,
    this.hiddenValues,
    this.visibleBackgroundColor,
    this.visibleBackgroundColorStyle,
    this.visibleForegroundColor,
    this.visibleForegroundColorStyle,
  });

  FilterCriteria.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? BooleanCondition.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hiddenValues: (json_['hiddenValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        visibleBackgroundColor: json_.containsKey('visibleBackgroundColor')
            ? Color.fromJson(
                json_['visibleBackgroundColor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        visibleBackgroundColorStyle:
            json_.containsKey('visibleBackgroundColorStyle')
            ? ColorStyle.fromJson(
                json_['visibleBackgroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        visibleForegroundColor: json_.containsKey('visibleForegroundColor')
            ? Color.fromJson(
                json_['visibleForegroundColor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        visibleForegroundColorStyle:
            json_.containsKey('visibleForegroundColorStyle')
            ? ColorStyle.fromJson(
                json_['visibleForegroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final hiddenValues = this.hiddenValues;
    final visibleBackgroundColor = this.visibleBackgroundColor;
    final visibleBackgroundColorStyle = this.visibleBackgroundColorStyle;
    final visibleForegroundColor = this.visibleForegroundColor;
    final visibleForegroundColorStyle = this.visibleForegroundColorStyle;
    return {
      'condition': ?condition,
      'hiddenValues': ?hiddenValues,
      'visibleBackgroundColor': ?visibleBackgroundColor,
      'visibleBackgroundColorStyle': ?visibleBackgroundColorStyle,
      'visibleForegroundColor': ?visibleForegroundColor,
      'visibleForegroundColorStyle': ?visibleForegroundColorStyle,
    };
  }
}

/// The filter criteria associated with a specific column.
class FilterSpec {
  /// The zero-based column index.
  core.int? columnIndex;

  /// Reference to a data source column.
  DataSourceColumnReference? dataSourceColumnReference;

  /// The criteria for the column.
  FilterCriteria? filterCriteria;

  FilterSpec({
    this.columnIndex,
    this.dataSourceColumnReference,
    this.filterCriteria,
  });

  FilterSpec.fromJson(core.Map json_)
    : this(
        columnIndex: json_['columnIndex'] as core.int?,
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        filterCriteria: json_.containsKey('filterCriteria')
            ? FilterCriteria.fromJson(
                json_['filterCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnIndex = this.columnIndex;
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final filterCriteria = this.filterCriteria;
    return {
      'columnIndex': ?columnIndex,
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'filterCriteria': ?filterCriteria,
    };
  }
}

/// A filter view.
class FilterView {
  /// The criteria for showing/hiding values per column.
  ///
  /// The map's key is the column index, and the value is the criteria for that
  /// column. This field is deprecated in favor of filter_specs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, FilterCriteria>? criteria;

  /// The filter criteria for showing/hiding values per column.
  ///
  /// Both criteria and filter_specs are populated in responses. If both fields
  /// are specified in an update request, this field takes precedence.
  core.List<FilterSpec>? filterSpecs;

  /// The ID of the filter view.
  core.int? filterViewId;

  /// The named range this filter view is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id or table_id may be set.
  core.String? namedRangeId;

  /// The range this filter view covers.
  ///
  /// When writing, only one of range or named_range_id or table_id may be set.
  GridRange? range;

  /// The sort order per column.
  ///
  /// Later specifications are used when values are equal in the earlier
  /// specifications.
  core.List<SortSpec>? sortSpecs;

  /// The table this filter view is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id or table_id may be set.
  core.String? tableId;

  /// The name of the filter view.
  core.String? title;

  FilterView({
    this.criteria,
    this.filterSpecs,
    this.filterViewId,
    this.namedRangeId,
    this.range,
    this.sortSpecs,
    this.tableId,
    this.title,
  });

  FilterView.fromJson(core.Map json_)
    : this(
        criteria: (json_['criteria'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                FilterCriteria.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => FilterSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        filterViewId: json_['filterViewId'] as core.int?,
        namedRangeId: json_['namedRangeId'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortSpecs: (json_['sortSpecs'] as core.List?)
            ?.map(
              (value) => SortSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tableId: json_['tableId'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final criteria = this.criteria;
    final filterSpecs = this.filterSpecs;
    final filterViewId = this.filterViewId;
    final namedRangeId = this.namedRangeId;
    final range = this.range;
    final sortSpecs = this.sortSpecs;
    final tableId = this.tableId;
    final title = this.title;
    return {
      'criteria': ?criteria,
      'filterSpecs': ?filterSpecs,
      'filterViewId': ?filterViewId,
      'namedRangeId': ?namedRangeId,
      'range': ?range,
      'sortSpecs': ?sortSpecs,
      'tableId': ?tableId,
      'title': ?title,
    };
  }
}

/// Finds and replaces data in cells over a range, sheet, or all sheets.
class FindReplaceRequest {
  /// True to find/replace over all sheets.
  core.bool? allSheets;

  /// The value to search.
  core.String? find;

  /// True if the search should include cells with formulas.
  ///
  /// False to skip cells with formulas.
  core.bool? includeFormulas;

  /// True if the search is case sensitive.
  core.bool? matchCase;

  /// True if the find value should match the entire cell.
  core.bool? matchEntireCell;

  /// The range to find/replace over.
  GridRange? range;

  /// The value to use as the replacement.
  core.String? replacement;

  /// True if the find value is a regex.
  ///
  /// The regular expression and replacement should follow Java regex rules at
  /// https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html.
  /// The replacement string is allowed to refer to capturing groups. For
  /// example, if one cell has the contents `"Google Sheets"` and another has
  /// `"Google Docs"`, then searching for `"o.* (.*)"` with a replacement of
  /// `"$1 Rocks"` would change the contents of the cells to `"GSheets Rocks"`
  /// and `"GDocs Rocks"` respectively.
  core.bool? searchByRegex;

  /// The sheet to find/replace over.
  core.int? sheetId;

  FindReplaceRequest({
    this.allSheets,
    this.find,
    this.includeFormulas,
    this.matchCase,
    this.matchEntireCell,
    this.range,
    this.replacement,
    this.searchByRegex,
    this.sheetId,
  });

  FindReplaceRequest.fromJson(core.Map json_)
    : this(
        allSheets: json_['allSheets'] as core.bool?,
        find: json_['find'] as core.String?,
        includeFormulas: json_['includeFormulas'] as core.bool?,
        matchCase: json_['matchCase'] as core.bool?,
        matchEntireCell: json_['matchEntireCell'] as core.bool?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replacement: json_['replacement'] as core.String?,
        searchByRegex: json_['searchByRegex'] as core.bool?,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allSheets = this.allSheets;
    final find = this.find;
    final includeFormulas = this.includeFormulas;
    final matchCase = this.matchCase;
    final matchEntireCell = this.matchEntireCell;
    final range = this.range;
    final replacement = this.replacement;
    final searchByRegex = this.searchByRegex;
    final sheetId = this.sheetId;
    return {
      'allSheets': ?allSheets,
      'find': ?find,
      'includeFormulas': ?includeFormulas,
      'matchCase': ?matchCase,
      'matchEntireCell': ?matchEntireCell,
      'range': ?range,
      'replacement': ?replacement,
      'searchByRegex': ?searchByRegex,
      'sheetId': ?sheetId,
    };
  }
}

/// The result of the find/replace.
class FindReplaceResponse {
  /// The number of formula cells changed.
  core.int? formulasChanged;

  /// The number of occurrences (possibly multiple within a cell) changed.
  ///
  /// For example, if replacing `"e"` with `"o"` in `"Google Sheets"`, this
  /// would be `"3"` because `"Google Sheets"` -\> `"Googlo Shoots"`.
  core.int? occurrencesChanged;

  /// The number of rows changed.
  core.int? rowsChanged;

  /// The number of sheets changed.
  core.int? sheetsChanged;

  /// The number of non-formula cells changed.
  core.int? valuesChanged;

  FindReplaceResponse({
    this.formulasChanged,
    this.occurrencesChanged,
    this.rowsChanged,
    this.sheetsChanged,
    this.valuesChanged,
  });

  FindReplaceResponse.fromJson(core.Map json_)
    : this(
        formulasChanged: json_['formulasChanged'] as core.int?,
        occurrencesChanged: json_['occurrencesChanged'] as core.int?,
        rowsChanged: json_['rowsChanged'] as core.int?,
        sheetsChanged: json_['sheetsChanged'] as core.int?,
        valuesChanged: json_['valuesChanged'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final formulasChanged = this.formulasChanged;
    final occurrencesChanged = this.occurrencesChanged;
    final rowsChanged = this.rowsChanged;
    final sheetsChanged = this.sheetsChanged;
    final valuesChanged = this.valuesChanged;
    return {
      'formulasChanged': ?formulasChanged,
      'occurrencesChanged': ?occurrencesChanged,
      'rowsChanged': ?rowsChanged,
      'sheetsChanged': ?sheetsChanged,
      'valuesChanged': ?valuesChanged,
    };
  }
}

/// The request for retrieving a Spreadsheet.
class GetSpreadsheetByDataFilterRequest {
  /// The DataFilters used to select which ranges to retrieve from the
  /// spreadsheet.
  core.List<DataFilter>? dataFilters;

  /// True if tables should be excluded in the banded ranges.
  ///
  /// False if not set.
  core.bool? excludeTablesInBandedRanges;

  /// True if grid data should be returned.
  ///
  /// This parameter is ignored if a field mask was set in the request.
  core.bool? includeGridData;

  GetSpreadsheetByDataFilterRequest({
    this.dataFilters,
    this.excludeTablesInBandedRanges,
    this.includeGridData,
  });

  GetSpreadsheetByDataFilterRequest.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        excludeTablesInBandedRanges:
            json_['excludeTablesInBandedRanges'] as core.bool?,
        includeGridData: json_['includeGridData'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    final excludeTablesInBandedRanges = this.excludeTablesInBandedRanges;
    final includeGridData = this.includeGridData;
    return {
      'dataFilters': ?dataFilters,
      'excludeTablesInBandedRanges': ?excludeTablesInBandedRanges,
      'includeGridData': ?includeGridData,
    };
  }
}

/// A rule that applies a gradient color scale format, based on the
/// interpolation points listed.
///
/// The format of a cell will vary based on its contents as compared to the
/// values of the interpolation points.
class GradientRule {
  /// The final interpolation point.
  InterpolationPoint? maxpoint;

  /// An optional midway interpolation point.
  InterpolationPoint? midpoint;

  /// The starting interpolation point.
  InterpolationPoint? minpoint;

  GradientRule({this.maxpoint, this.midpoint, this.minpoint});

  GradientRule.fromJson(core.Map json_)
    : this(
        maxpoint: json_.containsKey('maxpoint')
            ? InterpolationPoint.fromJson(
                json_['maxpoint'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        midpoint: json_.containsKey('midpoint')
            ? InterpolationPoint.fromJson(
                json_['midpoint'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minpoint: json_.containsKey('minpoint')
            ? InterpolationPoint.fromJson(
                json_['minpoint'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxpoint = this.maxpoint;
    final midpoint = this.midpoint;
    final minpoint = this.minpoint;
    return {
      'maxpoint': ?maxpoint,
      'midpoint': ?midpoint,
      'minpoint': ?minpoint,
    };
  }
}

/// A coordinate in a sheet.
///
/// All indexes are zero-based.
class GridCoordinate {
  /// The column index of the coordinate.
  core.int? columnIndex;

  /// The row index of the coordinate.
  core.int? rowIndex;

  /// The sheet this coordinate is on.
  core.int? sheetId;

  GridCoordinate({this.columnIndex, this.rowIndex, this.sheetId});

  GridCoordinate.fromJson(core.Map json_)
    : this(
        columnIndex: json_['columnIndex'] as core.int?,
        rowIndex: json_['rowIndex'] as core.int?,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnIndex = this.columnIndex;
    final rowIndex = this.rowIndex;
    final sheetId = this.sheetId;
    return {
      'columnIndex': ?columnIndex,
      'rowIndex': ?rowIndex,
      'sheetId': ?sheetId,
    };
  }
}

/// Data in the grid, as well as metadata about the dimensions.
class GridData {
  /// Metadata about the requested columns in the grid, starting with the column
  /// in start_column.
  core.List<DimensionProperties>? columnMetadata;

  /// The data in the grid, one entry per row, starting with the row in
  /// startRow.
  ///
  /// The values in RowData will correspond to columns starting at start_column.
  core.List<RowData>? rowData;

  /// Metadata about the requested rows in the grid, starting with the row in
  /// start_row.
  core.List<DimensionProperties>? rowMetadata;

  /// The first column this GridData refers to, zero-based.
  core.int? startColumn;

  /// The first row this GridData refers to, zero-based.
  core.int? startRow;

  GridData({
    this.columnMetadata,
    this.rowData,
    this.rowMetadata,
    this.startColumn,
    this.startRow,
  });

  GridData.fromJson(core.Map json_)
    : this(
        columnMetadata: (json_['columnMetadata'] as core.List?)
            ?.map(
              (value) => DimensionProperties.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rowData: (json_['rowData'] as core.List?)
            ?.map(
              (value) => RowData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rowMetadata: (json_['rowMetadata'] as core.List?)
            ?.map(
              (value) => DimensionProperties.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        startColumn: json_['startColumn'] as core.int?,
        startRow: json_['startRow'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnMetadata = this.columnMetadata;
    final rowData = this.rowData;
    final rowMetadata = this.rowMetadata;
    final startColumn = this.startColumn;
    final startRow = this.startRow;
    return {
      'columnMetadata': ?columnMetadata,
      'rowData': ?rowData,
      'rowMetadata': ?rowMetadata,
      'startColumn': ?startColumn,
      'startRow': ?startRow,
    };
  }
}

/// Properties of a grid.
class GridProperties {
  /// The number of columns in the grid.
  core.int? columnCount;

  /// True if the column grouping control toggle is shown after the group.
  core.bool? columnGroupControlAfter;

  /// The number of columns that are frozen in the grid.
  core.int? frozenColumnCount;

  /// The number of rows that are frozen in the grid.
  core.int? frozenRowCount;

  /// True if the grid isn't showing gridlines in the UI.
  core.bool? hideGridlines;

  /// The number of rows in the grid.
  core.int? rowCount;

  /// True if the row grouping control toggle is shown after the group.
  core.bool? rowGroupControlAfter;

  GridProperties({
    this.columnCount,
    this.columnGroupControlAfter,
    this.frozenColumnCount,
    this.frozenRowCount,
    this.hideGridlines,
    this.rowCount,
    this.rowGroupControlAfter,
  });

  GridProperties.fromJson(core.Map json_)
    : this(
        columnCount: json_['columnCount'] as core.int?,
        columnGroupControlAfter: json_['columnGroupControlAfter'] as core.bool?,
        frozenColumnCount: json_['frozenColumnCount'] as core.int?,
        frozenRowCount: json_['frozenRowCount'] as core.int?,
        hideGridlines: json_['hideGridlines'] as core.bool?,
        rowCount: json_['rowCount'] as core.int?,
        rowGroupControlAfter: json_['rowGroupControlAfter'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnCount = this.columnCount;
    final columnGroupControlAfter = this.columnGroupControlAfter;
    final frozenColumnCount = this.frozenColumnCount;
    final frozenRowCount = this.frozenRowCount;
    final hideGridlines = this.hideGridlines;
    final rowCount = this.rowCount;
    final rowGroupControlAfter = this.rowGroupControlAfter;
    return {
      'columnCount': ?columnCount,
      'columnGroupControlAfter': ?columnGroupControlAfter,
      'frozenColumnCount': ?frozenColumnCount,
      'frozenRowCount': ?frozenRowCount,
      'hideGridlines': ?hideGridlines,
      'rowCount': ?rowCount,
      'rowGroupControlAfter': ?rowGroupControlAfter,
    };
  }
}

/// A range on a sheet.
///
/// All indexes are zero-based. Indexes are half open, i.e. the start index is
/// inclusive and the end index is exclusive -- \[start_index, end_index).
/// Missing indexes indicate the range is unbounded on that side. For example,
/// if `"Sheet1"` is sheet ID 123456, then: `Sheet1!A1:A1 == sheet_id: 123456,
/// start_row_index: 0, end_row_index: 1, start_column_index: 0,
/// end_column_index: 1` `Sheet1!A3:B4 == sheet_id: 123456, start_row_index: 2,
/// end_row_index: 4, start_column_index: 0, end_column_index: 2` `Sheet1!A:B ==
/// sheet_id: 123456, start_column_index: 0, end_column_index: 2` `Sheet1!A5:B
/// == sheet_id: 123456, start_row_index: 4, start_column_index: 0,
/// end_column_index: 2` `Sheet1 == sheet_id: 123456` The start index must
/// always be less than or equal to the end index. If the start index equals the
/// end index, then the range is empty. Empty ranges are typically not
/// meaningful and are usually rendered in the UI as `#REF!`.
class GridRange {
  /// The end column (exclusive) of the range, or not set if unbounded.
  core.int? endColumnIndex;

  /// The end row (exclusive) of the range, or not set if unbounded.
  core.int? endRowIndex;

  /// The sheet this range is on.
  core.int? sheetId;

  /// The start column (inclusive) of the range, or not set if unbounded.
  core.int? startColumnIndex;

  /// The start row (inclusive) of the range, or not set if unbounded.
  core.int? startRowIndex;

  GridRange({
    this.endColumnIndex,
    this.endRowIndex,
    this.sheetId,
    this.startColumnIndex,
    this.startRowIndex,
  });

  GridRange.fromJson(core.Map json_)
    : this(
        endColumnIndex: json_['endColumnIndex'] as core.int?,
        endRowIndex: json_['endRowIndex'] as core.int?,
        sheetId: json_['sheetId'] as core.int?,
        startColumnIndex: json_['startColumnIndex'] as core.int?,
        startRowIndex: json_['startRowIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endColumnIndex = this.endColumnIndex;
    final endRowIndex = this.endRowIndex;
    final sheetId = this.sheetId;
    final startColumnIndex = this.startColumnIndex;
    final startRowIndex = this.startRowIndex;
    return {
      'endColumnIndex': ?endColumnIndex,
      'endRowIndex': ?endRowIndex,
      'sheetId': ?sheetId,
      'startColumnIndex': ?startColumnIndex,
      'startRowIndex': ?startRowIndex,
    };
  }
}

/// A histogram chart.
///
/// A histogram chart groups data items into bins, displaying each bin as a
/// column of stacked items. Histograms are used to display the distribution of
/// a dataset. Each column of items represents a range into which those items
/// fall. The number of bins can be chosen automatically or specified
/// explicitly.
class HistogramChartSpec {
  /// By default the bucket size (the range of values stacked in a single
  /// column) is chosen automatically, but it may be overridden here.
  ///
  /// E.g., A bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0,
  /// etc. Cannot be negative. This field is optional.
  core.double? bucketSize;

  /// The position of the chart legend.
  /// Possible string values are:
  /// - "HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not
  /// use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  /// - "INSIDE_LEGEND" : The legend is rendered inside the chart area.
  core.String? legendPosition;

  /// The outlier percentile is used to ensure that outliers do not adversely
  /// affect the calculation of bucket sizes.
  ///
  /// For example, setting an outlier percentile of 0.05 indicates that the top
  /// and bottom 5% of values when calculating buckets. The values are still
  /// included in the chart, they will be added to the first or last buckets
  /// instead of their own buckets. Must be between 0.0 and 0.5.
  core.double? outlierPercentile;

  /// The series for a histogram may be either a single series of values to be
  /// bucketed or multiple series, each of the same length, containing the name
  /// of the series followed by the values to be bucketed for that series.
  core.List<HistogramSeries>? series;

  /// Whether horizontal divider lines should be displayed between items in each
  /// column.
  core.bool? showItemDividers;

  HistogramChartSpec({
    this.bucketSize,
    this.legendPosition,
    this.outlierPercentile,
    this.series,
    this.showItemDividers,
  });

  HistogramChartSpec.fromJson(core.Map json_)
    : this(
        bucketSize: (json_['bucketSize'] as core.num?)?.toDouble(),
        legendPosition: json_['legendPosition'] as core.String?,
        outlierPercentile: (json_['outlierPercentile'] as core.num?)
            ?.toDouble(),
        series: (json_['series'] as core.List?)
            ?.map(
              (value) => HistogramSeries.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        showItemDividers: json_['showItemDividers'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucketSize = this.bucketSize;
    final legendPosition = this.legendPosition;
    final outlierPercentile = this.outlierPercentile;
    final series = this.series;
    final showItemDividers = this.showItemDividers;
    return {
      'bucketSize': ?bucketSize,
      'legendPosition': ?legendPosition,
      'outlierPercentile': ?outlierPercentile,
      'series': ?series,
      'showItemDividers': ?showItemDividers,
    };
  }
}

/// Allows you to organize the numeric values in a source data column into
/// buckets of a constant size.
///
/// All values from HistogramRule.start to HistogramRule.end are placed into
/// groups of size HistogramRule.interval. In addition, all values below
/// HistogramRule.start are placed in one group, and all values above
/// HistogramRule.end are placed in another. Only HistogramRule.interval is
/// required, though if HistogramRule.start and HistogramRule.end are both
/// provided, HistogramRule.start must be less than HistogramRule.end. For
/// example, a pivot table showing average purchase amount by age that has 50+
/// rows: +-----+-------------------+ | Age | AVERAGE of Amount |
/// +-----+-------------------+ | 16 | $27.13 | | 17 | $5.24 | | 18 | $20.15 |
/// ... +-----+-------------------+ could be turned into a pivot table that
/// looks like the one below by applying a histogram group rule with a
/// HistogramRule.start of 25, an HistogramRule.interval of 20, and an
/// HistogramRule.end of 65. +-------------+-------------------+ | Grouped Age |
/// AVERAGE of Amount | +-------------+-------------------+ | \< 25 | $19.34 | |
/// 25-45 | $31.43 | | 45-65 | $35.87 | | \> 65 | $27.55 |
/// +-------------+-------------------+ | Grand Total | $29.12 |
/// +-------------+-------------------+
class HistogramRule {
  /// The maximum value at which items are placed into buckets of constant size.
  ///
  /// Values above end are lumped into a single bucket. This field is optional.
  core.double? end;

  /// The size of the buckets that are created.
  ///
  /// Must be positive.
  core.double? interval;

  /// The minimum value at which items are placed into buckets of constant size.
  ///
  /// Values below start are lumped into a single bucket. This field is
  /// optional.
  core.double? start;

  HistogramRule({this.end, this.interval, this.start});

  HistogramRule.fromJson(core.Map json_)
    : this(
        end: (json_['end'] as core.num?)?.toDouble(),
        interval: (json_['interval'] as core.num?)?.toDouble(),
        start: (json_['start'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final end = this.end;
    final interval = this.interval;
    final start = this.start;
    return {'end': ?end, 'interval': ?interval, 'start': ?start};
  }
}

/// A histogram series containing the series color and data.
class HistogramSeries {
  /// The color of the column representing this series in each bucket.
  ///
  /// This field is optional. Deprecated: Use bar_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? barColor;

  /// The color of the column representing this series in each bucket.
  ///
  /// This field is optional. If bar_color is also set, this field takes
  /// precedence.
  ColorStyle? barColorStyle;

  /// The data for this histogram series.
  ChartData? data;

  HistogramSeries({this.barColor, this.barColorStyle, this.data});

  HistogramSeries.fromJson(core.Map json_)
    : this(
        barColor: json_.containsKey('barColor')
            ? Color.fromJson(
                json_['barColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        barColorStyle: json_.containsKey('barColorStyle')
            ? ColorStyle.fromJson(
                json_['barColorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        data: json_.containsKey('data')
            ? ChartData.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final barColor = this.barColor;
    final barColorStyle = this.barColorStyle;
    final data = this.data;
    return {
      'barColor': ?barColor,
      'barColorStyle': ?barColorStyle,
      'data': ?data,
    };
  }
}

/// Inserts rows or columns in a sheet at a particular index.
class InsertDimensionRequest {
  /// Whether dimension properties should be extended from the dimensions before
  /// or after the newly inserted dimensions.
  ///
  /// True to inherit from the dimensions before (in which case the start index
  /// must be greater than 0), and false to inherit from the dimensions after.
  /// For example, if row index 0 has red background and row index 1 has a green
  /// background, then inserting 2 rows at index 1 can inherit either the green
  /// or red background. If `inheritFromBefore` is true, the two new rows will
  /// be red (because the row before the insertion point was red), whereas if
  /// `inheritFromBefore` is false, the two new rows will be green (because the
  /// row after the insertion point was green).
  core.bool? inheritFromBefore;

  /// The dimensions to insert.
  ///
  /// Both the start and end indexes must be bounded.
  DimensionRange? range;

  InsertDimensionRequest({this.inheritFromBefore, this.range});

  InsertDimensionRequest.fromJson(core.Map json_)
    : this(
        inheritFromBefore: json_['inheritFromBefore'] as core.bool?,
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inheritFromBefore = this.inheritFromBefore;
    final range = this.range;
    return {'inheritFromBefore': ?inheritFromBefore, 'range': ?range};
  }
}

/// Inserts cells into a range, shifting the existing cells over or down.
class InsertRangeRequest {
  /// The range to insert new cells into.
  ///
  /// The range is constrained to the current sheet boundaries.
  GridRange? range;

  /// The dimension which will be shifted when inserting cells.
  ///
  /// If ROWS, existing cells will be shifted down. If COLUMNS, existing cells
  /// will be shifted right.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? shiftDimension;

  InsertRangeRequest({this.range, this.shiftDimension});

  InsertRangeRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shiftDimension: json_['shiftDimension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    final shiftDimension = this.shiftDimension;
    return {'range': ?range, 'shiftDimension': ?shiftDimension};
  }
}

/// A single interpolation point on a gradient conditional format.
///
/// These pin the gradient color scale according to the color, type and value
/// chosen.
class InterpolationPoint {
  /// The color this interpolation point should use.
  ///
  /// Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// The color this interpolation point should use.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  /// How the value should be interpreted.
  /// Possible string values are:
  /// - "INTERPOLATION_POINT_TYPE_UNSPECIFIED" : The default value, do not use.
  /// - "MIN" : The interpolation point uses the minimum value in the cells over
  /// the range of the conditional format.
  /// - "MAX" : The interpolation point uses the maximum value in the cells over
  /// the range of the conditional format.
  /// - "NUMBER" : The interpolation point uses exactly the value in
  /// InterpolationPoint.value.
  /// - "PERCENT" : The interpolation point is the given percentage over all the
  /// cells in the range of the conditional format. This is equivalent to
  /// `NUMBER` if the value was: `=(MAX(FLATTEN(range)) * (value / 100)) +
  /// (MIN(FLATTEN(range)) * (1 - (value / 100)))` (where errors in the range
  /// are ignored when flattening).
  /// - "PERCENTILE" : The interpolation point is the given percentile over all
  /// the cells in the range of the conditional format. This is equivalent to
  /// `NUMBER` if the value was: `=PERCENTILE(FLATTEN(range), value / 100)`
  /// (where errors in the range are ignored when flattening).
  core.String? type;

  /// The value this interpolation point uses.
  ///
  /// May be a formula. Unused if type is MIN or MAX.
  core.String? value;

  InterpolationPoint({this.color, this.colorStyle, this.type, this.value});

  InterpolationPoint.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    final type = this.type;
    final value = this.value;
    return {
      'color': ?color,
      'colorStyle': ?colorStyle,
      'type': ?type,
      'value': ?value,
    };
  }
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// Settings to control how circular dependencies are resolved with iterative
/// calculation.
class IterativeCalculationSettings {
  /// When iterative calculation is enabled and successive results differ by
  /// less than this threshold value, the calculation rounds stop.
  core.double? convergenceThreshold;

  /// When iterative calculation is enabled, the maximum number of calculation
  /// rounds to perform.
  core.int? maxIterations;

  IterativeCalculationSettings({this.convergenceThreshold, this.maxIterations});

  IterativeCalculationSettings.fromJson(core.Map json_)
    : this(
        convergenceThreshold: (json_['convergenceThreshold'] as core.num?)
            ?.toDouble(),
        maxIterations: json_['maxIterations'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final convergenceThreshold = this.convergenceThreshold;
    final maxIterations = this.maxIterations;
    return {
      'convergenceThreshold': ?convergenceThreshold,
      'maxIterations': ?maxIterations,
    };
  }
}

/// Formatting options for key value.
class KeyValueFormat {
  /// Specifies the horizontal text positioning of key value.
  ///
  /// This field is optional. If not specified, default positioning is used.
  TextPosition? position;

  /// Text formatting options for key value.
  ///
  /// The link field is not supported.
  TextFormat? textFormat;

  KeyValueFormat({this.position, this.textFormat});

  KeyValueFormat.fromJson(core.Map json_)
    : this(
        position: json_.containsKey('position')
            ? TextPosition.fromJson(
                json_['position'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final position = this.position;
    final textFormat = this.textFormat;
    return {'position': ?position, 'textFormat': ?textFormat};
  }
}

/// Properties that describe the style of a line.
class LineStyle {
  /// The dash type of the line.
  /// Possible string values are:
  /// - "LINE_DASH_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "INVISIBLE" : No dash type, which is equivalent to a non-visible line.
  /// - "CUSTOM" : A custom dash for a line. Modifying the exact custom dash
  /// style is currently unsupported.
  /// - "SOLID" : A solid line.
  /// - "DOTTED" : A dotted line.
  /// - "MEDIUM_DASHED" : A dashed line where the dashes have "medium" length.
  /// - "MEDIUM_DASHED_DOTTED" : A line that alternates between a "medium" dash
  /// and a dot.
  /// - "LONG_DASHED" : A dashed line where the dashes have "long" length.
  /// - "LONG_DASHED_DOTTED" : A line that alternates between a "long" dash and
  /// a dot.
  core.String? type;

  /// The thickness of the line, in px.
  core.int? width;

  LineStyle({this.type, this.width});

  LineStyle.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        width: json_['width'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    final width = this.width;
    return {'type': ?type, 'width': ?width};
  }
}

/// An external or local reference.
class Link {
  /// The link identifier.
  core.String? uri;

  Link({this.uri});

  Link.fromJson(core.Map json_) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final uri = this.uri;
    return {'uri': ?uri};
  }
}

/// The specification of a Looker data source.
class LookerDataSourceSpec {
  /// Name of a Looker model explore.
  core.String? explore;

  /// A Looker instance URL.
  core.String? instanceUri;

  /// Name of a Looker model.
  core.String? model;

  LookerDataSourceSpec({this.explore, this.instanceUri, this.model});

  LookerDataSourceSpec.fromJson(core.Map json_)
    : this(
        explore: json_['explore'] as core.String?,
        instanceUri: json_['instanceUri'] as core.String?,
        model: json_['model'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explore = this.explore;
    final instanceUri = this.instanceUri;
    final model = this.model;
    return {'explore': ?explore, 'instanceUri': ?instanceUri, 'model': ?model};
  }
}

/// Allows you to manually organize the values in a source data column into
/// buckets with names of your choosing.
///
/// For example, a pivot table that aggregates population by state:
/// +-------+-------------------+ | State | SUM of Population |
/// +-------+-------------------+ | AK | 0.7 | | AL | 4.8 | | AR | 2.9 | ...
/// +-------+-------------------+ could be turned into a pivot table that
/// aggregates population by time zone by providing a list of groups (for
/// example, groupName = 'Central', items = \['AL', 'AR', 'IA', ...\]) to a
/// manual group rule. Note that a similar effect could be achieved by adding a
/// time zone column to the source data and adjusting the pivot table.
/// +-----------+-------------------+ | Time Zone | SUM of Population |
/// +-----------+-------------------+ | Central | 106.3 | | Eastern | 151.9 | |
/// Mountain | 17.4 | ... +-----------+-------------------+
class ManualRule {
  /// The list of group names and the corresponding items from the source data
  /// that map to each group name.
  core.List<ManualRuleGroup>? groups;

  ManualRule({this.groups});

  ManualRule.fromJson(core.Map json_)
    : this(
        groups: (json_['groups'] as core.List?)
            ?.map(
              (value) => ManualRuleGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groups = this.groups;
    return {'groups': ?groups};
  }
}

/// A group name and a list of items from the source data that should be placed
/// in the group with this name.
class ManualRuleGroup {
  /// The group name, which must be a string.
  ///
  /// Each group in a given ManualRule must have a unique group name.
  ExtendedValue? groupName;

  /// The items in the source data that should be placed into this group.
  ///
  /// Each item may be a string, number, or boolean. Items may appear in at most
  /// one group within a given ManualRule. Items that do not appear in any group
  /// will appear on their own.
  core.List<ExtendedValue>? items;

  ManualRuleGroup({this.groupName, this.items});

  ManualRuleGroup.fromJson(core.Map json_)
    : this(
        groupName: json_.containsKey('groupName')
            ? ExtendedValue.fromJson(
                json_['groupName'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        items: (json_['items'] as core.List?)
            ?.map(
              (value) => ExtendedValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupName = this.groupName;
    final items = this.items;
    return {'groupName': ?groupName, 'items': ?items};
  }
}

/// A developer metadata entry and the data filters specified in the original
/// request that matched it.
class MatchedDeveloperMetadata {
  /// All filters matching the returned developer metadata.
  core.List<DataFilter>? dataFilters;

  /// The developer metadata matching the specified filters.
  DeveloperMetadata? developerMetadata;

  MatchedDeveloperMetadata({this.dataFilters, this.developerMetadata});

  MatchedDeveloperMetadata.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        developerMetadata: json_.containsKey('developerMetadata')
            ? DeveloperMetadata.fromJson(
                json_['developerMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    final developerMetadata = this.developerMetadata;
    return {
      'dataFilters': ?dataFilters,
      'developerMetadata': ?developerMetadata,
    };
  }
}

/// A value range that was matched by one or more data filers.
class MatchedValueRange {
  /// The DataFilters from the request that matched the range of values.
  core.List<DataFilter>? dataFilters;

  /// The values matched by the DataFilter.
  ValueRange? valueRange;

  MatchedValueRange({this.dataFilters, this.valueRange});

  MatchedValueRange.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        valueRange: json_.containsKey('valueRange')
            ? ValueRange.fromJson(
                json_['valueRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    final valueRange = this.valueRange;
    return {'dataFilters': ?dataFilters, 'valueRange': ?valueRange};
  }
}

/// Merges all cells in the range.
class MergeCellsRequest {
  /// How the cells should be merged.
  /// Possible string values are:
  /// - "MERGE_ALL" : Create a single merge from the range
  /// - "MERGE_COLUMNS" : Create a merge for each column in the range
  /// - "MERGE_ROWS" : Create a merge for each row in the range
  core.String? mergeType;

  /// The range of cells to merge.
  GridRange? range;

  MergeCellsRequest({this.mergeType, this.range});

  MergeCellsRequest.fromJson(core.Map json_)
    : this(
        mergeType: json_['mergeType'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mergeType = this.mergeType;
    final range = this.range;
    return {'mergeType': ?mergeType, 'range': ?range};
  }
}

/// Moves one or more rows or columns.
class MoveDimensionRequest {
  /// The zero-based start index of where to move the source data to, based on
  /// the coordinates *before* the source data is removed from the grid.
  ///
  /// Existing data will be shifted down or right (depending on the dimension)
  /// to make room for the moved dimensions. The source dimensions are removed
  /// from the grid, so the the data may end up in a different index than
  /// specified. For example, given `A1..A5` of `0, 1, 2, 3, 4` and wanting to
  /// move `"1"` and `"2"` to between `"3"` and `"4"`, the source would be `ROWS
  /// [1..3)`,and the destination index would be `"4"` (the zero-based index of
  /// row 5). The end result would be `A1..A5` of `0, 3, 1, 2, 4`.
  core.int? destinationIndex;

  /// The source dimensions to move.
  DimensionRange? source;

  MoveDimensionRequest({this.destinationIndex, this.source});

  MoveDimensionRequest.fromJson(core.Map json_)
    : this(
        destinationIndex: json_['destinationIndex'] as core.int?,
        source: json_.containsKey('source')
            ? DimensionRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationIndex = this.destinationIndex;
    final source = this.source;
    return {'destinationIndex': ?destinationIndex, 'source': ?source};
  }
}

/// A named range.
class NamedRange {
  /// The name of the named range.
  core.String? name;

  /// The ID of the named range.
  core.String? namedRangeId;

  /// The range this represents.
  GridRange? range;

  NamedRange({this.name, this.namedRangeId, this.range});

  NamedRange.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        namedRangeId: json_['namedRangeId'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final namedRangeId = this.namedRangeId;
    final range = this.range;
    return {'name': ?name, 'namedRangeId': ?namedRangeId, 'range': ?range};
  }
}

/// The number format of a cell.
class NumberFormat {
  /// Pattern string used for formatting.
  ///
  /// If not set, a default pattern based on the spreadsheet's locale will be
  /// used if necessary for the given type. See the
  /// [Date and Number Formats guide](https://developers.google.com/workspace/sheets/api/guides/formats)
  /// for more information about the supported patterns.
  core.String? pattern;

  /// The type of the number format.
  ///
  /// When writing, this field must be set.
  /// Possible string values are:
  /// - "NUMBER_FORMAT_TYPE_UNSPECIFIED" : The number format is not specified
  /// and is based on the contents of the cell. Do not explicitly use this.
  /// - "TEXT" : Text formatting, e.g `1000.12`
  /// - "NUMBER" : Number formatting, e.g, `1,000.12`
  /// - "PERCENT" : Percent formatting, e.g `10.12%`
  /// - "CURRENCY" : Currency formatting, e.g `$1,000.12`
  /// - "DATE" : Date formatting, e.g `9/26/2008`
  /// - "TIME" : Time formatting, e.g `3:59:00 PM`
  /// - "DATE_TIME" : Date+Time formatting, e.g `9/26/08 15:59:00`
  /// - "SCIENTIFIC" : Scientific number formatting, e.g `1.01E+03`
  core.String? type;

  NumberFormat({this.pattern, this.type});

  NumberFormat.fromJson(core.Map json_)
    : this(
        pattern: json_['pattern'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pattern = this.pattern;
    final type = this.type;
    return {'pattern': ?pattern, 'type': ?type};
  }
}

/// An org chart.
///
/// Org charts require a unique set of labels in labels and may optionally
/// include parent_labels and tooltips. parent_labels contain, for each node,
/// the label identifying the parent node. tooltips contain, for each node, an
/// optional tooltip. For example, to describe an OrgChart with Alice as the
/// CEO, Bob as the President (reporting to Alice) and Cathy as VP of Sales
/// (also reporting to Alice), have labels contain "Alice", "Bob", "Cathy",
/// parent_labels contain "", "Alice", "Alice" and tooltips contain "CEO",
/// "President", "VP Sales".
class OrgChartSpec {
  /// The data containing the labels for all the nodes in the chart.
  ///
  /// Labels must be unique.
  ChartData? labels;

  /// The color of the org chart nodes.
  ///
  /// Deprecated: Use node_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? nodeColor;

  /// The color of the org chart nodes.
  ///
  /// If node_color is also set, this field takes precedence.
  ColorStyle? nodeColorStyle;

  /// The size of the org chart nodes.
  /// Possible string values are:
  /// - "ORG_CHART_LABEL_SIZE_UNSPECIFIED" : Default value, do not use.
  /// - "SMALL" : The small org chart node size.
  /// - "MEDIUM" : The medium org chart node size.
  /// - "LARGE" : The large org chart node size.
  core.String? nodeSize;

  /// The data containing the label of the parent for the corresponding node.
  ///
  /// A blank value indicates that the node has no parent and is a top-level
  /// node. This field is optional.
  ChartData? parentLabels;

  /// The color of the selected org chart nodes.
  ///
  /// Deprecated: Use selected_node_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? selectedNodeColor;

  /// The color of the selected org chart nodes.
  ///
  /// If selected_node_color is also set, this field takes precedence.
  ColorStyle? selectedNodeColorStyle;

  /// The data containing the tooltip for the corresponding node.
  ///
  /// A blank value results in no tooltip being displayed for the node. This
  /// field is optional.
  ChartData? tooltips;

  OrgChartSpec({
    this.labels,
    this.nodeColor,
    this.nodeColorStyle,
    this.nodeSize,
    this.parentLabels,
    this.selectedNodeColor,
    this.selectedNodeColorStyle,
    this.tooltips,
  });

  OrgChartSpec.fromJson(core.Map json_)
    : this(
        labels: json_.containsKey('labels')
            ? ChartData.fromJson(
                json_['labels'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nodeColor: json_.containsKey('nodeColor')
            ? Color.fromJson(
                json_['nodeColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nodeColorStyle: json_.containsKey('nodeColorStyle')
            ? ColorStyle.fromJson(
                json_['nodeColorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nodeSize: json_['nodeSize'] as core.String?,
        parentLabels: json_.containsKey('parentLabels')
            ? ChartData.fromJson(
                json_['parentLabels'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        selectedNodeColor: json_.containsKey('selectedNodeColor')
            ? Color.fromJson(
                json_['selectedNodeColor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        selectedNodeColorStyle: json_.containsKey('selectedNodeColorStyle')
            ? ColorStyle.fromJson(
                json_['selectedNodeColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tooltips: json_.containsKey('tooltips')
            ? ChartData.fromJson(
                json_['tooltips'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final nodeColor = this.nodeColor;
    final nodeColorStyle = this.nodeColorStyle;
    final nodeSize = this.nodeSize;
    final parentLabels = this.parentLabels;
    final selectedNodeColor = this.selectedNodeColor;
    final selectedNodeColorStyle = this.selectedNodeColorStyle;
    final tooltips = this.tooltips;
    return {
      'labels': ?labels,
      'nodeColor': ?nodeColor,
      'nodeColorStyle': ?nodeColorStyle,
      'nodeSize': ?nodeSize,
      'parentLabels': ?parentLabels,
      'selectedNodeColor': ?selectedNodeColor,
      'selectedNodeColorStyle': ?selectedNodeColorStyle,
      'tooltips': ?tooltips,
    };
  }
}

/// The location an object is overlaid on top of a grid.
class OverlayPosition {
  /// The cell the object is anchored to.
  GridCoordinate? anchorCell;

  /// The height of the object, in pixels.
  ///
  /// Defaults to 371.
  core.int? heightPixels;

  /// The horizontal offset, in pixels, that the object is offset from the
  /// anchor cell.
  core.int? offsetXPixels;

  /// The vertical offset, in pixels, that the object is offset from the anchor
  /// cell.
  core.int? offsetYPixels;

  /// The width of the object, in pixels.
  ///
  /// Defaults to 600.
  core.int? widthPixels;

  OverlayPosition({
    this.anchorCell,
    this.heightPixels,
    this.offsetXPixels,
    this.offsetYPixels,
    this.widthPixels,
  });

  OverlayPosition.fromJson(core.Map json_)
    : this(
        anchorCell: json_.containsKey('anchorCell')
            ? GridCoordinate.fromJson(
                json_['anchorCell'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        heightPixels: json_['heightPixels'] as core.int?,
        offsetXPixels: json_['offsetXPixels'] as core.int?,
        offsetYPixels: json_['offsetYPixels'] as core.int?,
        widthPixels: json_['widthPixels'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final anchorCell = this.anchorCell;
    final heightPixels = this.heightPixels;
    final offsetXPixels = this.offsetXPixels;
    final offsetYPixels = this.offsetYPixels;
    final widthPixels = this.widthPixels;
    return {
      'anchorCell': ?anchorCell,
      'heightPixels': ?heightPixels,
      'offsetXPixels': ?offsetXPixels,
      'offsetYPixels': ?offsetYPixels,
      'widthPixels': ?widthPixels,
    };
  }
}

/// The amount of padding around the cell, in pixels.
///
/// When updating padding, every field must be specified.
class Padding {
  /// The bottom padding of the cell.
  core.int? bottom;

  /// The left padding of the cell.
  core.int? left;

  /// The right padding of the cell.
  core.int? right;

  /// The top padding of the cell.
  core.int? top;

  Padding({this.bottom, this.left, this.right, this.top});

  Padding.fromJson(core.Map json_)
    : this(
        bottom: json_['bottom'] as core.int?,
        left: json_['left'] as core.int?,
        right: json_['right'] as core.int?,
        top: json_['top'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bottom = this.bottom;
    final left = this.left;
    final right = this.right;
    final top = this.top;
    return {'bottom': ?bottom, 'left': ?left, 'right': ?right, 'top': ?top};
  }
}

/// Inserts data into the spreadsheet starting at the specified coordinate.
class PasteDataRequest {
  /// The coordinate at which the data should start being inserted.
  GridCoordinate? coordinate;

  /// The data to insert.
  core.String? data;

  /// The delimiter in the data.
  core.String? delimiter;

  /// True if the data is HTML.
  core.bool? html;

  /// How the data should be pasted.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like `PASTE_NORMAL` but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String? type;

  PasteDataRequest({
    this.coordinate,
    this.data,
    this.delimiter,
    this.html,
    this.type,
  });

  PasteDataRequest.fromJson(core.Map json_)
    : this(
        coordinate: json_.containsKey('coordinate')
            ? GridCoordinate.fromJson(
                json_['coordinate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        data: json_['data'] as core.String?,
        delimiter: json_['delimiter'] as core.String?,
        html: json_['html'] as core.bool?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coordinate = this.coordinate;
    final data = this.data;
    final delimiter = this.delimiter;
    final html = this.html;
    final type = this.type;
    return {
      'coordinate': ?coordinate,
      'data': ?data,
      'delimiter': ?delimiter,
      'html': ?html,
      'type': ?type,
    };
  }
}

/// Properties specific to a linked person.
class PersonProperties {
  /// The display format of the person chip.
  ///
  /// If not set, the default display format is used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISPLAY_FORMAT_UNSPECIFIED" : Default value, do not use.
  /// - "DEFAULT" : Default display format.
  /// - "LAST_NAME_COMMA_FIRST_NAME" : Last name, first name display format.
  /// - "EMAIL" : Email display format.
  core.String? displayFormat;

  /// The email address linked to this person.
  ///
  /// This field is always present.
  ///
  /// Required.
  core.String? email;

  PersonProperties({this.displayFormat, this.email});

  PersonProperties.fromJson(core.Map json_)
    : this(
        displayFormat: json_['displayFormat'] as core.String?,
        email: json_['email'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayFormat = this.displayFormat;
    final email = this.email;
    return {'displayFormat': ?displayFormat, 'email': ?email};
  }
}

/// A pie chart.
class PieChartSpec {
  /// The data that covers the domain of the pie chart.
  ChartData? domain;

  /// Where the legend of the pie chart should be drawn.
  /// Possible string values are:
  /// - "PIE_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  /// - "LABELED_LEGEND" : Each pie slice has a label attached to it.
  core.String? legendPosition;

  /// The size of the hole in the pie chart.
  core.double? pieHole;

  /// The data that covers the one and only series of the pie chart.
  ChartData? series;

  /// True if the pie is three dimensional.
  core.bool? threeDimensional;

  PieChartSpec({
    this.domain,
    this.legendPosition,
    this.pieHole,
    this.series,
    this.threeDimensional,
  });

  PieChartSpec.fromJson(core.Map json_)
    : this(
        domain: json_.containsKey('domain')
            ? ChartData.fromJson(
                json_['domain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        legendPosition: json_['legendPosition'] as core.String?,
        pieHole: (json_['pieHole'] as core.num?)?.toDouble(),
        series: json_.containsKey('series')
            ? ChartData.fromJson(
                json_['series'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        threeDimensional: json_['threeDimensional'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domain = this.domain;
    final legendPosition = this.legendPosition;
    final pieHole = this.pieHole;
    final series = this.series;
    final threeDimensional = this.threeDimensional;
    return {
      'domain': ?domain,
      'legendPosition': ?legendPosition,
      'pieHole': ?pieHole,
      'series': ?series,
      'threeDimensional': ?threeDimensional,
    };
  }
}

/// Criteria for showing/hiding rows in a pivot table.
class PivotFilterCriteria {
  /// A condition that must be true for values to be shown.
  ///
  /// (`visibleValues` does not override this -- even if a value is listed
  /// there, it is still hidden if it does not meet the condition.) Condition
  /// values that refer to ranges in A1-notation are evaluated relative to the
  /// pivot table sheet. References are treated absolutely, so are not filled
  /// down the pivot table. For example, a condition value of `=A1` on "Pivot
  /// Table 1" is treated as `'Pivot Table 1'!$A$1`. The source data of the
  /// pivot table can be referenced by column header name. For example, if the
  /// source data has columns named "Revenue" and "Cost" and a condition is
  /// applied to the "Revenue" column with type `NUMBER_GREATER` and value
  /// `=Cost`, then only columns where "Revenue" \> "Cost" are included.
  BooleanCondition? condition;

  /// Whether values are visible by default.
  ///
  /// If true, the visible_values are ignored, all values that meet condition
  /// (if specified) are shown. If false, values that are both in visible_values
  /// and meet condition are shown.
  core.bool? visibleByDefault;

  /// Values that should be included.
  ///
  /// Values not listed here are excluded.
  core.List<core.String>? visibleValues;

  PivotFilterCriteria({
    this.condition,
    this.visibleByDefault,
    this.visibleValues,
  });

  PivotFilterCriteria.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? BooleanCondition.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        visibleByDefault: json_['visibleByDefault'] as core.bool?,
        visibleValues: (json_['visibleValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final visibleByDefault = this.visibleByDefault;
    final visibleValues = this.visibleValues;
    return {
      'condition': ?condition,
      'visibleByDefault': ?visibleByDefault,
      'visibleValues': ?visibleValues,
    };
  }
}

/// The pivot table filter criteria associated with a specific source column
/// offset.
class PivotFilterSpec {
  /// The zero-based column offset of the source range.
  core.int? columnOffsetIndex;

  /// The reference to the data source column.
  DataSourceColumnReference? dataSourceColumnReference;

  /// The criteria for the column.
  PivotFilterCriteria? filterCriteria;

  PivotFilterSpec({
    this.columnOffsetIndex,
    this.dataSourceColumnReference,
    this.filterCriteria,
  });

  PivotFilterSpec.fromJson(core.Map json_)
    : this(
        columnOffsetIndex: json_['columnOffsetIndex'] as core.int?,
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        filterCriteria: json_.containsKey('filterCriteria')
            ? PivotFilterCriteria.fromJson(
                json_['filterCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnOffsetIndex = this.columnOffsetIndex;
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final filterCriteria = this.filterCriteria;
    return {
      'columnOffsetIndex': ?columnOffsetIndex,
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'filterCriteria': ?filterCriteria,
    };
  }
}

/// A single grouping (either row or column) in a pivot table.
class PivotGroup {
  /// The reference to the data source column this grouping is based on.
  DataSourceColumnReference? dataSourceColumnReference;

  /// The count limit on rows or columns to apply to this pivot group.
  PivotGroupLimit? groupLimit;

  /// The group rule to apply to this row/column group.
  PivotGroupRule? groupRule;

  /// The labels to use for the row/column groups which can be customized.
  ///
  /// For example, in the following pivot table, the row label is `Region`
  /// (which could be renamed to `State`) and the column label is `Product`
  /// (which could be renamed `Item`). Pivot tables created before December 2017
  /// do not have header labels. If you'd like to add header labels to an
  /// existing pivot table, please delete the existing pivot table and then
  /// create a new pivot table with same parameters.
  /// +--------------+---------+-------+ | SUM of Units | Product | | | Region |
  /// Pen | Paper | +--------------+---------+-------+ | New York | 345 | 98 | |
  /// Oregon | 234 | 123 | | Tennessee | 531 | 415 |
  /// +--------------+---------+-------+ | Grand Total | 1110 | 636 |
  /// +--------------+---------+-------+
  core.String? label;

  /// True if the headings in this pivot group should be repeated.
  ///
  /// This is only valid for row groupings and is ignored by columns. By
  /// default, we minimize repetition of headings by not showing higher level
  /// headings where they are the same. For example, even though the third row
  /// below corresponds to "Q1 Mar", "Q1" is not shown because it is redundant
  /// with previous rows. Setting repeat_headings to true would cause "Q1" to be
  /// repeated for "Feb" and "Mar". +--------------+ | Q1 | Jan | | | Feb | | |
  /// Mar | +--------+-----+ | Q1 Total | +--------------+
  core.bool? repeatHeadings;

  /// True if the pivot table should include the totals for this grouping.
  core.bool? showTotals;

  /// The order the values in this group should be sorted.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value, do not use this.
  /// - "ASCENDING" : Sort ascending.
  /// - "DESCENDING" : Sort descending.
  core.String? sortOrder;

  /// The column offset of the source range that this grouping is based on.
  ///
  /// For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
  /// means this group refers to column `C`, whereas the offset `1` would refer
  /// to column `D`.
  core.int? sourceColumnOffset;

  /// The bucket of the opposite pivot group to sort by.
  ///
  /// If not specified, sorting is alphabetical by this group's values.
  PivotGroupSortValueBucket? valueBucket;

  /// Metadata about values in the grouping.
  core.List<PivotGroupValueMetadata>? valueMetadata;

  PivotGroup({
    this.dataSourceColumnReference,
    this.groupLimit,
    this.groupRule,
    this.label,
    this.repeatHeadings,
    this.showTotals,
    this.sortOrder,
    this.sourceColumnOffset,
    this.valueBucket,
    this.valueMetadata,
  });

  PivotGroup.fromJson(core.Map json_)
    : this(
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        groupLimit: json_.containsKey('groupLimit')
            ? PivotGroupLimit.fromJson(
                json_['groupLimit'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        groupRule: json_.containsKey('groupRule')
            ? PivotGroupRule.fromJson(
                json_['groupRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        label: json_['label'] as core.String?,
        repeatHeadings: json_['repeatHeadings'] as core.bool?,
        showTotals: json_['showTotals'] as core.bool?,
        sortOrder: json_['sortOrder'] as core.String?,
        sourceColumnOffset: json_['sourceColumnOffset'] as core.int?,
        valueBucket: json_.containsKey('valueBucket')
            ? PivotGroupSortValueBucket.fromJson(
                json_['valueBucket'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        valueMetadata: (json_['valueMetadata'] as core.List?)
            ?.map(
              (value) => PivotGroupValueMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final groupLimit = this.groupLimit;
    final groupRule = this.groupRule;
    final label = this.label;
    final repeatHeadings = this.repeatHeadings;
    final showTotals = this.showTotals;
    final sortOrder = this.sortOrder;
    final sourceColumnOffset = this.sourceColumnOffset;
    final valueBucket = this.valueBucket;
    final valueMetadata = this.valueMetadata;
    return {
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'groupLimit': ?groupLimit,
      'groupRule': ?groupRule,
      'label': ?label,
      'repeatHeadings': ?repeatHeadings,
      'showTotals': ?showTotals,
      'sortOrder': ?sortOrder,
      'sourceColumnOffset': ?sourceColumnOffset,
      'valueBucket': ?valueBucket,
      'valueMetadata': ?valueMetadata,
    };
  }
}

/// The count limit on rows or columns in the pivot group.
class PivotGroupLimit {
  /// The order in which the group limit is applied to the pivot table.
  ///
  /// Pivot group limits are applied from lower to higher order number. Order
  /// numbers are normalized to consecutive integers from 0. For write request,
  /// to fully customize the applying orders, all pivot group limits should have
  /// this field set with an unique number. Otherwise, the order is determined
  /// by the index in the PivotTable.rows list and then the PivotTable.columns
  /// list.
  core.int? applyOrder;

  /// The count limit.
  core.int? countLimit;

  PivotGroupLimit({this.applyOrder, this.countLimit});

  PivotGroupLimit.fromJson(core.Map json_)
    : this(
        applyOrder: json_['applyOrder'] as core.int?,
        countLimit: json_['countLimit'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyOrder = this.applyOrder;
    final countLimit = this.countLimit;
    return {'applyOrder': ?applyOrder, 'countLimit': ?countLimit};
  }
}

/// An optional setting on a PivotGroup that defines buckets for the values in
/// the source data column rather than breaking out each individual value.
///
/// Only one PivotGroup with a group rule may be added for each column in the
/// source data, though on any given column you may add both a PivotGroup that
/// has a rule and a PivotGroup that does not.
class PivotGroupRule {
  /// A DateTimeRule.
  DateTimeRule? dateTimeRule;

  /// A HistogramRule.
  HistogramRule? histogramRule;

  /// A ManualRule.
  ManualRule? manualRule;

  PivotGroupRule({this.dateTimeRule, this.histogramRule, this.manualRule});

  PivotGroupRule.fromJson(core.Map json_)
    : this(
        dateTimeRule: json_.containsKey('dateTimeRule')
            ? DateTimeRule.fromJson(
                json_['dateTimeRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        histogramRule: json_.containsKey('histogramRule')
            ? HistogramRule.fromJson(
                json_['histogramRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        manualRule: json_.containsKey('manualRule')
            ? ManualRule.fromJson(
                json_['manualRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateTimeRule = this.dateTimeRule;
    final histogramRule = this.histogramRule;
    final manualRule = this.manualRule;
    return {
      'dateTimeRule': ?dateTimeRule,
      'histogramRule': ?histogramRule,
      'manualRule': ?manualRule,
    };
  }
}

/// Information about which values in a pivot group should be used for sorting.
class PivotGroupSortValueBucket {
  /// Determines the bucket from which values are chosen to sort.
  ///
  /// For example, in a pivot table with one row group & two column groups, the
  /// row group can list up to two values. The first value corresponds to a
  /// value within the first column group, and the second value corresponds to a
  /// value in the second column group. If no values are listed, this would
  /// indicate that the row should be sorted according to the "Grand Total" over
  /// the column groups. If a single value is listed, this would correspond to
  /// using the "Total" of that bucket.
  core.List<ExtendedValue>? buckets;

  /// The offset in the PivotTable.values list which the values in this grouping
  /// should be sorted by.
  core.int? valuesIndex;

  PivotGroupSortValueBucket({this.buckets, this.valuesIndex});

  PivotGroupSortValueBucket.fromJson(core.Map json_)
    : this(
        buckets: (json_['buckets'] as core.List?)
            ?.map(
              (value) => ExtendedValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        valuesIndex: json_['valuesIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buckets = this.buckets;
    final valuesIndex = this.valuesIndex;
    return {'buckets': ?buckets, 'valuesIndex': ?valuesIndex};
  }
}

/// Metadata about a value in a pivot grouping.
class PivotGroupValueMetadata {
  /// True if the data corresponding to the value is collapsed.
  core.bool? collapsed;

  /// The calculated value the metadata corresponds to.
  ///
  /// (Note that formulaValue is not valid, because the values will be
  /// calculated.)
  ExtendedValue? value;

  PivotGroupValueMetadata({this.collapsed, this.value});

  PivotGroupValueMetadata.fromJson(core.Map json_)
    : this(
        collapsed: json_['collapsed'] as core.bool?,
        value: json_.containsKey('value')
            ? ExtendedValue.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collapsed = this.collapsed;
    final value = this.value;
    return {'collapsed': ?collapsed, 'value': ?value};
  }
}

/// A pivot table.
class PivotTable {
  /// Each column grouping in the pivot table.
  core.List<PivotGroup>? columns;

  /// An optional mapping of filters per source column offset.
  ///
  /// The filters are applied before aggregating data into the pivot table. The
  /// map's key is the column offset of the source range that you want to
  /// filter, and the value is the criteria for that column. For example, if the
  /// source was `C10:E15`, a key of `0` will have the filter for column `C`,
  /// whereas the key `1` is for column `D`. This field is deprecated in favor
  /// of filter_specs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, PivotFilterCriteria>? criteria;

  /// The data execution status for data source pivot tables.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// The ID of the data source the pivot table is reading data from.
  core.String? dataSourceId;

  /// The filters applied to the source columns before aggregating data for the
  /// pivot table.
  ///
  /// Both criteria and filter_specs are populated in responses. If both fields
  /// are specified in an update request, this field takes precedence.
  core.List<PivotFilterSpec>? filterSpecs;

  /// Each row grouping in the pivot table.
  core.List<PivotGroup>? rows;

  /// The range the pivot table is reading data from.
  GridRange? source;

  /// Whether values should be listed horizontally (as columns) or vertically
  /// (as rows).
  /// Possible string values are:
  /// - "HORIZONTAL" : Values are laid out horizontally (as columns).
  /// - "VERTICAL" : Values are laid out vertically (as rows).
  core.String? valueLayout;

  /// A list of values to include in the pivot table.
  core.List<PivotValue>? values;

  PivotTable({
    this.columns,
    this.criteria,
    this.dataExecutionStatus,
    this.dataSourceId,
    this.filterSpecs,
    this.rows,
    this.source,
    this.valueLayout,
    this.values,
  });

  PivotTable.fromJson(core.Map json_)
    : this(
        columns: (json_['columns'] as core.List?)
            ?.map(
              (value) => PivotGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        criteria: (json_['criteria'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                PivotFilterCriteria.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceId: json_['dataSourceId'] as core.String?,
        filterSpecs: (json_['filterSpecs'] as core.List?)
            ?.map(
              (value) => PivotFilterSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) => PivotGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        source: json_.containsKey('source')
            ? GridRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        valueLayout: json_['valueLayout'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => PivotValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columns = this.columns;
    final criteria = this.criteria;
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSourceId = this.dataSourceId;
    final filterSpecs = this.filterSpecs;
    final rows = this.rows;
    final source = this.source;
    final valueLayout = this.valueLayout;
    final values = this.values;
    return {
      'columns': ?columns,
      'criteria': ?criteria,
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSourceId': ?dataSourceId,
      'filterSpecs': ?filterSpecs,
      'rows': ?rows,
      'source': ?source,
      'valueLayout': ?valueLayout,
      'values': ?values,
    };
  }
}

/// The definition of how a value in a pivot table should be calculated.
class PivotValue {
  /// If specified, indicates that pivot values should be displayed as the
  /// result of a calculation with another pivot value.
  ///
  /// For example, if calculated_display_type is specified as
  /// PERCENT_OF_GRAND_TOTAL, all the pivot values are displayed as the
  /// percentage of the grand total. In the Sheets editor, this is referred to
  /// as "Show As" in the value section of a pivot table.
  /// Possible string values are:
  /// - "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED" : Default value, do
  /// not use.
  /// - "PERCENT_OF_ROW_TOTAL" : Shows the pivot values as percentage of the row
  /// total values.
  /// - "PERCENT_OF_COLUMN_TOTAL" : Shows the pivot values as percentage of the
  /// column total values.
  /// - "PERCENT_OF_GRAND_TOTAL" : Shows the pivot values as percentage of the
  /// grand total values.
  core.String? calculatedDisplayType;

  /// The reference to the data source column that this value reads from.
  DataSourceColumnReference? dataSourceColumnReference;

  /// A custom formula to calculate the value.
  ///
  /// The formula must start with an `=` character.
  core.String? formula;

  /// A name to use for the value.
  core.String? name;

  /// The column offset of the source range that this value reads from.
  ///
  /// For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
  /// means this value refers to column `C`, whereas the offset `1` would refer
  /// to column `D`.
  core.int? sourceColumnOffset;

  /// A function to summarize the value.
  ///
  /// If formula is set, the only supported values are SUM and CUSTOM. If
  /// sourceColumnOffset is set, then `CUSTOM` is not supported.
  /// Possible string values are:
  /// - "PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED" : The default, do not use.
  /// - "SUM" : Corresponds to the `SUM` function.
  /// - "COUNTA" : Corresponds to the `COUNTA` function.
  /// - "COUNT" : Corresponds to the `COUNT` function.
  /// - "COUNTUNIQUE" : Corresponds to the `COUNTUNIQUE` function.
  /// - "AVERAGE" : Corresponds to the `AVERAGE` function.
  /// - "MAX" : Corresponds to the `MAX` function.
  /// - "MIN" : Corresponds to the `MIN` function.
  /// - "MEDIAN" : Corresponds to the `MEDIAN` function.
  /// - "PRODUCT" : Corresponds to the `PRODUCT` function.
  /// - "STDEV" : Corresponds to the `STDEV` function.
  /// - "STDEVP" : Corresponds to the `STDEVP` function.
  /// - "VAR" : Corresponds to the `VAR` function.
  /// - "VARP" : Corresponds to the `VARP` function.
  /// - "CUSTOM" : Indicates the formula should be used as-is. Only valid if
  /// PivotValue.formula was set.
  /// - "NONE" : Indicates that the value is already summarized, and the
  /// summarization function is not explicitly specified. Used for Looker data
  /// source pivot tables where the value is already summarized.
  core.String? summarizeFunction;

  PivotValue({
    this.calculatedDisplayType,
    this.dataSourceColumnReference,
    this.formula,
    this.name,
    this.sourceColumnOffset,
    this.summarizeFunction,
  });

  PivotValue.fromJson(core.Map json_)
    : this(
        calculatedDisplayType: json_['calculatedDisplayType'] as core.String?,
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        formula: json_['formula'] as core.String?,
        name: json_['name'] as core.String?,
        sourceColumnOffset: json_['sourceColumnOffset'] as core.int?,
        summarizeFunction: json_['summarizeFunction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calculatedDisplayType = this.calculatedDisplayType;
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final formula = this.formula;
    final name = this.name;
    final sourceColumnOffset = this.sourceColumnOffset;
    final summarizeFunction = this.summarizeFunction;
    return {
      'calculatedDisplayType': ?calculatedDisplayType,
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'formula': ?formula,
      'name': ?name,
      'sourceColumnOffset': ?sourceColumnOffset,
      'summarizeFunction': ?summarizeFunction,
    };
  }
}

/// The style of a point on the chart.
class PointStyle {
  /// The point shape.
  ///
  /// If empty or unspecified, a default shape is used.
  /// Possible string values are:
  /// - "POINT_SHAPE_UNSPECIFIED" : Default value.
  /// - "CIRCLE" : A circle shape.
  /// - "DIAMOND" : A diamond shape.
  /// - "HEXAGON" : A hexagon shape.
  /// - "PENTAGON" : A pentagon shape.
  /// - "SQUARE" : A square shape.
  /// - "STAR" : A star shape.
  /// - "TRIANGLE" : A triangle shape.
  /// - "X_MARK" : An x-mark shape.
  core.String? shape;

  /// The point size.
  ///
  /// If empty, a default size is used.
  core.double? size;

  PointStyle({this.shape, this.size});

  PointStyle.fromJson(core.Map json_)
    : this(
        shape: json_['shape'] as core.String?,
        size: (json_['size'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final shape = this.shape;
    final size = this.size;
    return {'shape': ?shape, 'size': ?size};
  }
}

/// A protected range.
class ProtectedRange {
  /// The description of this protected range.
  core.String? description;

  /// The users and groups with edit access to the protected range.
  ///
  /// This field is only visible to users with edit access to the protected
  /// range and the document. Editors are not supported with warning_only
  /// protection.
  Editors? editors;

  /// The named range this protected range is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id or table_id may be set.
  core.String? namedRangeId;

  /// The ID of the protected range.
  ///
  /// This field is read-only.
  core.int? protectedRangeId;

  /// The range that is being protected.
  ///
  /// The range may be fully unbounded, in which case this is considered a
  /// protected sheet. When writing, only one of range or named_range_id or
  /// table_id may be set.
  GridRange? range;

  /// True if the user who requested this protected range can edit the protected
  /// area.
  ///
  /// This field is read-only.
  core.bool? requestingUserCanEdit;

  /// The table this protected range is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id or table_id may be set.
  core.String? tableId;

  /// The list of unprotected ranges within a protected sheet.
  ///
  /// Unprotected ranges are only supported on protected sheets.
  core.List<GridRange>? unprotectedRanges;

  /// True if this protected range will show a warning when editing.
  ///
  /// Warning-based protection means that every user can edit data in the
  /// protected range, except editing will prompt a warning asking the user to
  /// confirm the edit. When writing: if this field is true, then editors are
  /// ignored. Additionally, if this field is changed from true to false and the
  /// `editors` field is not set (nor included in the field mask), then the
  /// editors will be set to all the editors in the document.
  core.bool? warningOnly;

  ProtectedRange({
    this.description,
    this.editors,
    this.namedRangeId,
    this.protectedRangeId,
    this.range,
    this.requestingUserCanEdit,
    this.tableId,
    this.unprotectedRanges,
    this.warningOnly,
  });

  ProtectedRange.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        editors: json_.containsKey('editors')
            ? Editors.fromJson(
                json_['editors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        namedRangeId: json_['namedRangeId'] as core.String?,
        protectedRangeId: json_['protectedRangeId'] as core.int?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestingUserCanEdit: json_['requestingUserCanEdit'] as core.bool?,
        tableId: json_['tableId'] as core.String?,
        unprotectedRanges: (json_['unprotectedRanges'] as core.List?)
            ?.map(
              (value) => GridRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        warningOnly: json_['warningOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final editors = this.editors;
    final namedRangeId = this.namedRangeId;
    final protectedRangeId = this.protectedRangeId;
    final range = this.range;
    final requestingUserCanEdit = this.requestingUserCanEdit;
    final tableId = this.tableId;
    final unprotectedRanges = this.unprotectedRanges;
    final warningOnly = this.warningOnly;
    return {
      'description': ?description,
      'editors': ?editors,
      'namedRangeId': ?namedRangeId,
      'protectedRangeId': ?protectedRangeId,
      'range': ?range,
      'requestingUserCanEdit': ?requestingUserCanEdit,
      'tableId': ?tableId,
      'unprotectedRanges': ?unprotectedRanges,
      'warningOnly': ?warningOnly,
    };
  }
}

/// Randomizes the order of the rows in a range.
class RandomizeRangeRequest {
  /// The range to randomize.
  GridRange? range;

  RandomizeRangeRequest({this.range});

  RandomizeRangeRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// The status of a refresh cancellation.
///
/// You can send a cancel request to explicitly cancel one or multiple data
/// source object refreshes.
class RefreshCancellationStatus {
  /// The error code.
  /// Possible string values are:
  /// - "REFRESH_CANCELLATION_ERROR_CODE_UNSPECIFIED" : Default value, do not
  /// use.
  /// - "EXECUTION_NOT_FOUND" : Execution to be cancelled not found in the query
  /// engine or in Sheets.
  /// - "CANCEL_PERMISSION_DENIED" : The user does not have permission to cancel
  /// the query.
  /// - "QUERY_EXECUTION_COMPLETED" : The query execution has already completed
  /// and thus could not be cancelled.
  /// - "CONCURRENT_CANCELLATION" : There is already another cancellation in
  /// process.
  /// - "CANCEL_OTHER_ERROR" : All other errors.
  core.String? errorCode;

  /// The state of a call to cancel a refresh in Sheets.
  /// Possible string values are:
  /// - "REFRESH_CANCELLATION_STATE_UNSPECIFIED" : Default value, do not use.
  /// - "CANCEL_SUCCEEDED" : The API call to Sheets to cancel a refresh has
  /// succeeded. This does not mean that the cancel happened successfully, but
  /// that the call has been made successfully.
  /// - "CANCEL_FAILED" : The API call to Sheets to cancel a refresh has failed.
  core.String? state;

  RefreshCancellationStatus({this.errorCode, this.state});

  RefreshCancellationStatus.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    final state = this.state;
    return {'errorCode': ?errorCode, 'state': ?state};
  }
}

/// The execution status of refreshing one data source object.
class RefreshDataSourceObjectExecutionStatus {
  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// Reference to a data source object being refreshed.
  DataSourceObjectReference? reference;

  RefreshDataSourceObjectExecutionStatus({
    this.dataExecutionStatus,
    this.reference,
  });

  RefreshDataSourceObjectExecutionStatus.fromJson(core.Map json_)
    : this(
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        reference: json_.containsKey('reference')
            ? DataSourceObjectReference.fromJson(
                json_['reference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataExecutionStatus = this.dataExecutionStatus;
    final reference = this.reference;
    return {
      'dataExecutionStatus': ?dataExecutionStatus,
      'reference': ?reference,
    };
  }
}

/// Refreshes one or multiple data source objects in the spreadsheet by the
/// specified references.
///
/// The request requires an additional `bigquery.readonly` OAuth scope if you
/// are refreshing a BigQuery data source. If there are multiple refresh
/// requests referencing the same data source objects in one batch, only the
/// last refresh request is processed, and all those requests will have the same
/// response accordingly.
class RefreshDataSourceRequest {
  /// Reference to a DataSource.
  ///
  /// If specified, refreshes all associated data source objects for the data
  /// source.
  core.String? dataSourceId;

  /// Refreshes the data source objects regardless of the current state.
  ///
  /// If not set and a referenced data source object was in error state, the
  /// refresh will fail immediately.
  core.bool? force;

  /// Refreshes all existing data source objects in the spreadsheet.
  core.bool? isAll;

  /// References to data source objects to refresh.
  DataSourceObjectReferences? references;

  RefreshDataSourceRequest({
    this.dataSourceId,
    this.force,
    this.isAll,
    this.references,
  });

  RefreshDataSourceRequest.fromJson(core.Map json_)
    : this(
        dataSourceId: json_['dataSourceId'] as core.String?,
        force: json_['force'] as core.bool?,
        isAll: json_['isAll'] as core.bool?,
        references: json_.containsKey('references')
            ? DataSourceObjectReferences.fromJson(
                json_['references'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceId = this.dataSourceId;
    final force = this.force;
    final isAll = this.isAll;
    final references = this.references;
    return {
      'dataSourceId': ?dataSourceId,
      'force': ?force,
      'isAll': ?isAll,
      'references': ?references,
    };
  }
}

/// The response from refreshing one or multiple data source objects.
class RefreshDataSourceResponse {
  /// All the refresh status for the data source object references specified in
  /// the request.
  ///
  /// If is_all is specified, the field contains only those in failure status.
  core.List<RefreshDataSourceObjectExecutionStatus>? statuses;

  RefreshDataSourceResponse({this.statuses});

  RefreshDataSourceResponse.fromJson(core.Map json_)
    : this(
        statuses: (json_['statuses'] as core.List?)
            ?.map(
              (value) => RefreshDataSourceObjectExecutionStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final statuses = this.statuses;
    return {'statuses': ?statuses};
  }
}

/// Updates all cells in the range to the values in the given Cell object.
///
/// Only the fields listed in the fields field are updated; others are
/// unchanged. If writing a cell with a formula, the formula's ranges will
/// automatically increment for each field in the range. For example, if writing
/// a cell with formula `=A1` into range B2:C4, B2 would be `=A1`, B3 would be
/// `=A2`, B4 would be `=A3`, C2 would be `=B1`, C3 would be `=B2`, C4 would be
/// `=B3`. To keep the formula's ranges static, use the `$` indicator. For
/// example, use the formula `=$A$1` to prevent both the row and the column from
/// incrementing.
class RepeatCellRequest {
  /// The data to write.
  CellData? cell;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `cell` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The range to repeat the cell in.
  GridRange? range;

  RepeatCellRequest({this.cell, this.fields, this.range});

  RepeatCellRequest.fromJson(core.Map json_)
    : this(
        cell: json_.containsKey('cell')
            ? CellData.fromJson(
                json_['cell'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cell = this.cell;
    final fields = this.fields;
    final range = this.range;
    return {'cell': ?cell, 'fields': ?fields, 'range': ?range};
  }
}

/// A single kind of update to apply to a spreadsheet.
class Request {
  /// Adds a new banded range
  AddBandingRequest? addBanding;

  /// Adds a chart.
  AddChartRequest? addChart;

  /// Adds a new conditional format rule.
  AddConditionalFormatRuleRequest? addConditionalFormatRule;

  /// Adds a data source.
  AddDataSourceRequest? addDataSource;

  /// Creates a group over the specified range.
  AddDimensionGroupRequest? addDimensionGroup;

  /// Adds a filter view.
  AddFilterViewRequest? addFilterView;

  /// Adds a named range.
  AddNamedRangeRequest? addNamedRange;

  /// Adds a protected range.
  AddProtectedRangeRequest? addProtectedRange;

  /// Adds a sheet.
  AddSheetRequest? addSheet;

  /// Adds a slicer.
  AddSlicerRequest? addSlicer;

  /// Adds a table.
  AddTableRequest? addTable;

  /// Appends cells after the last row with data in a sheet.
  AppendCellsRequest? appendCells;

  /// Appends dimensions to the end of a sheet.
  AppendDimensionRequest? appendDimension;

  /// Automatically fills in more data based on existing data.
  AutoFillRequest? autoFill;

  /// Automatically resizes one or more dimensions based on the contents of the
  /// cells in that dimension.
  AutoResizeDimensionsRequest? autoResizeDimensions;

  /// Cancels refreshes of one or multiple data sources and associated
  /// dbobjects.
  CancelDataSourceRefreshRequest? cancelDataSourceRefresh;

  /// Clears the basic filter on a sheet.
  ClearBasicFilterRequest? clearBasicFilter;

  /// Copies data from one area and pastes it to another.
  CopyPasteRequest? copyPaste;

  /// Creates new developer metadata
  CreateDeveloperMetadataRequest? createDeveloperMetadata;

  /// Cuts data from one area and pastes it to another.
  CutPasteRequest? cutPaste;

  /// Removes a banded range
  DeleteBandingRequest? deleteBanding;

  /// Deletes an existing conditional format rule.
  DeleteConditionalFormatRuleRequest? deleteConditionalFormatRule;

  /// Deletes a data source.
  DeleteDataSourceRequest? deleteDataSource;

  /// Deletes developer metadata
  DeleteDeveloperMetadataRequest? deleteDeveloperMetadata;

  /// Deletes rows or columns in a sheet.
  DeleteDimensionRequest? deleteDimension;

  /// Deletes a group over the specified range.
  DeleteDimensionGroupRequest? deleteDimensionGroup;

  /// Removes rows containing duplicate values in specified columns of a cell
  /// range.
  DeleteDuplicatesRequest? deleteDuplicates;

  /// Deletes an embedded object (e.g, chart, image) in a sheet.
  DeleteEmbeddedObjectRequest? deleteEmbeddedObject;

  /// Deletes a filter view from a sheet.
  DeleteFilterViewRequest? deleteFilterView;

  /// Deletes a named range.
  DeleteNamedRangeRequest? deleteNamedRange;

  /// Deletes a protected range.
  DeleteProtectedRangeRequest? deleteProtectedRange;

  /// Deletes a range of cells from a sheet, shifting the remaining cells.
  DeleteRangeRequest? deleteRange;

  /// Deletes a sheet.
  DeleteSheetRequest? deleteSheet;

  /// A request for deleting a table.
  DeleteTableRequest? deleteTable;

  /// Duplicates a filter view.
  DuplicateFilterViewRequest? duplicateFilterView;

  /// Duplicates a sheet.
  DuplicateSheetRequest? duplicateSheet;

  /// Finds and replaces occurrences of some text with other text.
  FindReplaceRequest? findReplace;

  /// Inserts new rows or columns in a sheet.
  InsertDimensionRequest? insertDimension;

  /// Inserts new cells in a sheet, shifting the existing cells.
  InsertRangeRequest? insertRange;

  /// Merges cells together.
  MergeCellsRequest? mergeCells;

  /// Moves rows or columns to another location in a sheet.
  MoveDimensionRequest? moveDimension;

  /// Pastes data (HTML or delimited) into a sheet.
  PasteDataRequest? pasteData;

  /// Randomizes the order of the rows in a range.
  RandomizeRangeRequest? randomizeRange;

  /// Refreshes one or multiple data sources and associated dbobjects.
  RefreshDataSourceRequest? refreshDataSource;

  /// Repeats a single cell across a range.
  RepeatCellRequest? repeatCell;

  /// Sets the basic filter on a sheet.
  SetBasicFilterRequest? setBasicFilter;

  /// Sets data validation for one or more cells.
  SetDataValidationRequest? setDataValidation;

  /// Sorts data in a range.
  SortRangeRequest? sortRange;

  /// Converts a column of text into many columns of text.
  TextToColumnsRequest? textToColumns;

  /// Trims cells of whitespace (such as spaces, tabs, or new lines).
  TrimWhitespaceRequest? trimWhitespace;

  /// Unmerges merged cells.
  UnmergeCellsRequest? unmergeCells;

  /// Updates a banded range
  UpdateBandingRequest? updateBanding;

  /// Updates the borders in a range of cells.
  UpdateBordersRequest? updateBorders;

  /// Updates many cells at once.
  UpdateCellsRequest? updateCells;

  /// Updates a chart's specifications.
  UpdateChartSpecRequest? updateChartSpec;

  /// Updates an existing conditional format rule.
  UpdateConditionalFormatRuleRequest? updateConditionalFormatRule;

  /// Updates a data source.
  UpdateDataSourceRequest? updateDataSource;

  /// Updates an existing developer metadata entry
  UpdateDeveloperMetadataRequest? updateDeveloperMetadata;

  /// Updates the state of the specified group.
  UpdateDimensionGroupRequest? updateDimensionGroup;

  /// Updates dimensions' properties.
  UpdateDimensionPropertiesRequest? updateDimensionProperties;

  /// Updates an embedded object's border.
  UpdateEmbeddedObjectBorderRequest? updateEmbeddedObjectBorder;

  /// Updates an embedded object's (e.g. chart, image) position.
  UpdateEmbeddedObjectPositionRequest? updateEmbeddedObjectPosition;

  /// Updates the properties of a filter view.
  UpdateFilterViewRequest? updateFilterView;

  /// Updates a named range.
  UpdateNamedRangeRequest? updateNamedRange;

  /// Updates a protected range.
  UpdateProtectedRangeRequest? updateProtectedRange;

  /// Updates a sheet's properties.
  UpdateSheetPropertiesRequest? updateSheetProperties;

  /// Updates a slicer's specifications.
  UpdateSlicerSpecRequest? updateSlicerSpec;

  /// Updates the spreadsheet's properties.
  UpdateSpreadsheetPropertiesRequest? updateSpreadsheetProperties;

  /// Updates a table.
  UpdateTableRequest? updateTable;

  Request({
    this.addBanding,
    this.addChart,
    this.addConditionalFormatRule,
    this.addDataSource,
    this.addDimensionGroup,
    this.addFilterView,
    this.addNamedRange,
    this.addProtectedRange,
    this.addSheet,
    this.addSlicer,
    this.addTable,
    this.appendCells,
    this.appendDimension,
    this.autoFill,
    this.autoResizeDimensions,
    this.cancelDataSourceRefresh,
    this.clearBasicFilter,
    this.copyPaste,
    this.createDeveloperMetadata,
    this.cutPaste,
    this.deleteBanding,
    this.deleteConditionalFormatRule,
    this.deleteDataSource,
    this.deleteDeveloperMetadata,
    this.deleteDimension,
    this.deleteDimensionGroup,
    this.deleteDuplicates,
    this.deleteEmbeddedObject,
    this.deleteFilterView,
    this.deleteNamedRange,
    this.deleteProtectedRange,
    this.deleteRange,
    this.deleteSheet,
    this.deleteTable,
    this.duplicateFilterView,
    this.duplicateSheet,
    this.findReplace,
    this.insertDimension,
    this.insertRange,
    this.mergeCells,
    this.moveDimension,
    this.pasteData,
    this.randomizeRange,
    this.refreshDataSource,
    this.repeatCell,
    this.setBasicFilter,
    this.setDataValidation,
    this.sortRange,
    this.textToColumns,
    this.trimWhitespace,
    this.unmergeCells,
    this.updateBanding,
    this.updateBorders,
    this.updateCells,
    this.updateChartSpec,
    this.updateConditionalFormatRule,
    this.updateDataSource,
    this.updateDeveloperMetadata,
    this.updateDimensionGroup,
    this.updateDimensionProperties,
    this.updateEmbeddedObjectBorder,
    this.updateEmbeddedObjectPosition,
    this.updateFilterView,
    this.updateNamedRange,
    this.updateProtectedRange,
    this.updateSheetProperties,
    this.updateSlicerSpec,
    this.updateSpreadsheetProperties,
    this.updateTable,
  });

  Request.fromJson(core.Map json_)
    : this(
        addBanding: json_.containsKey('addBanding')
            ? AddBandingRequest.fromJson(
                json_['addBanding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addChart: json_.containsKey('addChart')
            ? AddChartRequest.fromJson(
                json_['addChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addConditionalFormatRule: json_.containsKey('addConditionalFormatRule')
            ? AddConditionalFormatRuleRequest.fromJson(
                json_['addConditionalFormatRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        addDataSource: json_.containsKey('addDataSource')
            ? AddDataSourceRequest.fromJson(
                json_['addDataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addDimensionGroup: json_.containsKey('addDimensionGroup')
            ? AddDimensionGroupRequest.fromJson(
                json_['addDimensionGroup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        addFilterView: json_.containsKey('addFilterView')
            ? AddFilterViewRequest.fromJson(
                json_['addFilterView'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addNamedRange: json_.containsKey('addNamedRange')
            ? AddNamedRangeRequest.fromJson(
                json_['addNamedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addProtectedRange: json_.containsKey('addProtectedRange')
            ? AddProtectedRangeRequest.fromJson(
                json_['addProtectedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        addSheet: json_.containsKey('addSheet')
            ? AddSheetRequest.fromJson(
                json_['addSheet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addSlicer: json_.containsKey('addSlicer')
            ? AddSlicerRequest.fromJson(
                json_['addSlicer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addTable: json_.containsKey('addTable')
            ? AddTableRequest.fromJson(
                json_['addTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        appendCells: json_.containsKey('appendCells')
            ? AppendCellsRequest.fromJson(
                json_['appendCells'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        appendDimension: json_.containsKey('appendDimension')
            ? AppendDimensionRequest.fromJson(
                json_['appendDimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        autoFill: json_.containsKey('autoFill')
            ? AutoFillRequest.fromJson(
                json_['autoFill'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        autoResizeDimensions: json_.containsKey('autoResizeDimensions')
            ? AutoResizeDimensionsRequest.fromJson(
                json_['autoResizeDimensions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cancelDataSourceRefresh: json_.containsKey('cancelDataSourceRefresh')
            ? CancelDataSourceRefreshRequest.fromJson(
                json_['cancelDataSourceRefresh']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        clearBasicFilter: json_.containsKey('clearBasicFilter')
            ? ClearBasicFilterRequest.fromJson(
                json_['clearBasicFilter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        copyPaste: json_.containsKey('copyPaste')
            ? CopyPasteRequest.fromJson(
                json_['copyPaste'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createDeveloperMetadata: json_.containsKey('createDeveloperMetadata')
            ? CreateDeveloperMetadataRequest.fromJson(
                json_['createDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cutPaste: json_.containsKey('cutPaste')
            ? CutPasteRequest.fromJson(
                json_['cutPaste'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteBanding: json_.containsKey('deleteBanding')
            ? DeleteBandingRequest.fromJson(
                json_['deleteBanding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteConditionalFormatRule:
            json_.containsKey('deleteConditionalFormatRule')
            ? DeleteConditionalFormatRuleRequest.fromJson(
                json_['deleteConditionalFormatRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDataSource: json_.containsKey('deleteDataSource')
            ? DeleteDataSourceRequest.fromJson(
                json_['deleteDataSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDeveloperMetadata: json_.containsKey('deleteDeveloperMetadata')
            ? DeleteDeveloperMetadataRequest.fromJson(
                json_['deleteDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDimension: json_.containsKey('deleteDimension')
            ? DeleteDimensionRequest.fromJson(
                json_['deleteDimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDimensionGroup: json_.containsKey('deleteDimensionGroup')
            ? DeleteDimensionGroupRequest.fromJson(
                json_['deleteDimensionGroup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDuplicates: json_.containsKey('deleteDuplicates')
            ? DeleteDuplicatesRequest.fromJson(
                json_['deleteDuplicates']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteEmbeddedObject: json_.containsKey('deleteEmbeddedObject')
            ? DeleteEmbeddedObjectRequest.fromJson(
                json_['deleteEmbeddedObject']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteFilterView: json_.containsKey('deleteFilterView')
            ? DeleteFilterViewRequest.fromJson(
                json_['deleteFilterView']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteNamedRange: json_.containsKey('deleteNamedRange')
            ? DeleteNamedRangeRequest.fromJson(
                json_['deleteNamedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteProtectedRange: json_.containsKey('deleteProtectedRange')
            ? DeleteProtectedRangeRequest.fromJson(
                json_['deleteProtectedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteRange: json_.containsKey('deleteRange')
            ? DeleteRangeRequest.fromJson(
                json_['deleteRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteSheet: json_.containsKey('deleteSheet')
            ? DeleteSheetRequest.fromJson(
                json_['deleteSheet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteTable: json_.containsKey('deleteTable')
            ? DeleteTableRequest.fromJson(
                json_['deleteTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        duplicateFilterView: json_.containsKey('duplicateFilterView')
            ? DuplicateFilterViewRequest.fromJson(
                json_['duplicateFilterView']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        duplicateSheet: json_.containsKey('duplicateSheet')
            ? DuplicateSheetRequest.fromJson(
                json_['duplicateSheet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        findReplace: json_.containsKey('findReplace')
            ? FindReplaceRequest.fromJson(
                json_['findReplace'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertDimension: json_.containsKey('insertDimension')
            ? InsertDimensionRequest.fromJson(
                json_['insertDimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        insertRange: json_.containsKey('insertRange')
            ? InsertRangeRequest.fromJson(
                json_['insertRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mergeCells: json_.containsKey('mergeCells')
            ? MergeCellsRequest.fromJson(
                json_['mergeCells'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        moveDimension: json_.containsKey('moveDimension')
            ? MoveDimensionRequest.fromJson(
                json_['moveDimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pasteData: json_.containsKey('pasteData')
            ? PasteDataRequest.fromJson(
                json_['pasteData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        randomizeRange: json_.containsKey('randomizeRange')
            ? RandomizeRangeRequest.fromJson(
                json_['randomizeRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refreshDataSource: json_.containsKey('refreshDataSource')
            ? RefreshDataSourceRequest.fromJson(
                json_['refreshDataSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        repeatCell: json_.containsKey('repeatCell')
            ? RepeatCellRequest.fromJson(
                json_['repeatCell'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        setBasicFilter: json_.containsKey('setBasicFilter')
            ? SetBasicFilterRequest.fromJson(
                json_['setBasicFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        setDataValidation: json_.containsKey('setDataValidation')
            ? SetDataValidationRequest.fromJson(
                json_['setDataValidation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortRange: json_.containsKey('sortRange')
            ? SortRangeRequest.fromJson(
                json_['sortRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textToColumns: json_.containsKey('textToColumns')
            ? TextToColumnsRequest.fromJson(
                json_['textToColumns'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        trimWhitespace: json_.containsKey('trimWhitespace')
            ? TrimWhitespaceRequest.fromJson(
                json_['trimWhitespace'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        unmergeCells: json_.containsKey('unmergeCells')
            ? UnmergeCellsRequest.fromJson(
                json_['unmergeCells'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateBanding: json_.containsKey('updateBanding')
            ? UpdateBandingRequest.fromJson(
                json_['updateBanding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateBorders: json_.containsKey('updateBorders')
            ? UpdateBordersRequest.fromJson(
                json_['updateBorders'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateCells: json_.containsKey('updateCells')
            ? UpdateCellsRequest.fromJson(
                json_['updateCells'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateChartSpec: json_.containsKey('updateChartSpec')
            ? UpdateChartSpecRequest.fromJson(
                json_['updateChartSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateConditionalFormatRule:
            json_.containsKey('updateConditionalFormatRule')
            ? UpdateConditionalFormatRuleRequest.fromJson(
                json_['updateConditionalFormatRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDataSource: json_.containsKey('updateDataSource')
            ? UpdateDataSourceRequest.fromJson(
                json_['updateDataSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDeveloperMetadata: json_.containsKey('updateDeveloperMetadata')
            ? UpdateDeveloperMetadataRequest.fromJson(
                json_['updateDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDimensionGroup: json_.containsKey('updateDimensionGroup')
            ? UpdateDimensionGroupRequest.fromJson(
                json_['updateDimensionGroup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDimensionProperties:
            json_.containsKey('updateDimensionProperties')
            ? UpdateDimensionPropertiesRequest.fromJson(
                json_['updateDimensionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateEmbeddedObjectBorder:
            json_.containsKey('updateEmbeddedObjectBorder')
            ? UpdateEmbeddedObjectBorderRequest.fromJson(
                json_['updateEmbeddedObjectBorder']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateEmbeddedObjectPosition:
            json_.containsKey('updateEmbeddedObjectPosition')
            ? UpdateEmbeddedObjectPositionRequest.fromJson(
                json_['updateEmbeddedObjectPosition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateFilterView: json_.containsKey('updateFilterView')
            ? UpdateFilterViewRequest.fromJson(
                json_['updateFilterView']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateNamedRange: json_.containsKey('updateNamedRange')
            ? UpdateNamedRangeRequest.fromJson(
                json_['updateNamedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateProtectedRange: json_.containsKey('updateProtectedRange')
            ? UpdateProtectedRangeRequest.fromJson(
                json_['updateProtectedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateSheetProperties: json_.containsKey('updateSheetProperties')
            ? UpdateSheetPropertiesRequest.fromJson(
                json_['updateSheetProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateSlicerSpec: json_.containsKey('updateSlicerSpec')
            ? UpdateSlicerSpecRequest.fromJson(
                json_['updateSlicerSpec']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateSpreadsheetProperties:
            json_.containsKey('updateSpreadsheetProperties')
            ? UpdateSpreadsheetPropertiesRequest.fromJson(
                json_['updateSpreadsheetProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTable: json_.containsKey('updateTable')
            ? UpdateTableRequest.fromJson(
                json_['updateTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addBanding = this.addBanding;
    final addChart = this.addChart;
    final addConditionalFormatRule = this.addConditionalFormatRule;
    final addDataSource = this.addDataSource;
    final addDimensionGroup = this.addDimensionGroup;
    final addFilterView = this.addFilterView;
    final addNamedRange = this.addNamedRange;
    final addProtectedRange = this.addProtectedRange;
    final addSheet = this.addSheet;
    final addSlicer = this.addSlicer;
    final addTable = this.addTable;
    final appendCells = this.appendCells;
    final appendDimension = this.appendDimension;
    final autoFill = this.autoFill;
    final autoResizeDimensions = this.autoResizeDimensions;
    final cancelDataSourceRefresh = this.cancelDataSourceRefresh;
    final clearBasicFilter = this.clearBasicFilter;
    final copyPaste = this.copyPaste;
    final createDeveloperMetadata = this.createDeveloperMetadata;
    final cutPaste = this.cutPaste;
    final deleteBanding = this.deleteBanding;
    final deleteConditionalFormatRule = this.deleteConditionalFormatRule;
    final deleteDataSource = this.deleteDataSource;
    final deleteDeveloperMetadata = this.deleteDeveloperMetadata;
    final deleteDimension = this.deleteDimension;
    final deleteDimensionGroup = this.deleteDimensionGroup;
    final deleteDuplicates = this.deleteDuplicates;
    final deleteEmbeddedObject = this.deleteEmbeddedObject;
    final deleteFilterView = this.deleteFilterView;
    final deleteNamedRange = this.deleteNamedRange;
    final deleteProtectedRange = this.deleteProtectedRange;
    final deleteRange = this.deleteRange;
    final deleteSheet = this.deleteSheet;
    final deleteTable = this.deleteTable;
    final duplicateFilterView = this.duplicateFilterView;
    final duplicateSheet = this.duplicateSheet;
    final findReplace = this.findReplace;
    final insertDimension = this.insertDimension;
    final insertRange = this.insertRange;
    final mergeCells = this.mergeCells;
    final moveDimension = this.moveDimension;
    final pasteData = this.pasteData;
    final randomizeRange = this.randomizeRange;
    final refreshDataSource = this.refreshDataSource;
    final repeatCell = this.repeatCell;
    final setBasicFilter = this.setBasicFilter;
    final setDataValidation = this.setDataValidation;
    final sortRange = this.sortRange;
    final textToColumns = this.textToColumns;
    final trimWhitespace = this.trimWhitespace;
    final unmergeCells = this.unmergeCells;
    final updateBanding = this.updateBanding;
    final updateBorders = this.updateBorders;
    final updateCells = this.updateCells;
    final updateChartSpec = this.updateChartSpec;
    final updateConditionalFormatRule = this.updateConditionalFormatRule;
    final updateDataSource = this.updateDataSource;
    final updateDeveloperMetadata = this.updateDeveloperMetadata;
    final updateDimensionGroup = this.updateDimensionGroup;
    final updateDimensionProperties = this.updateDimensionProperties;
    final updateEmbeddedObjectBorder = this.updateEmbeddedObjectBorder;
    final updateEmbeddedObjectPosition = this.updateEmbeddedObjectPosition;
    final updateFilterView = this.updateFilterView;
    final updateNamedRange = this.updateNamedRange;
    final updateProtectedRange = this.updateProtectedRange;
    final updateSheetProperties = this.updateSheetProperties;
    final updateSlicerSpec = this.updateSlicerSpec;
    final updateSpreadsheetProperties = this.updateSpreadsheetProperties;
    final updateTable = this.updateTable;
    return {
      'addBanding': ?addBanding,
      'addChart': ?addChart,
      'addConditionalFormatRule': ?addConditionalFormatRule,
      'addDataSource': ?addDataSource,
      'addDimensionGroup': ?addDimensionGroup,
      'addFilterView': ?addFilterView,
      'addNamedRange': ?addNamedRange,
      'addProtectedRange': ?addProtectedRange,
      'addSheet': ?addSheet,
      'addSlicer': ?addSlicer,
      'addTable': ?addTable,
      'appendCells': ?appendCells,
      'appendDimension': ?appendDimension,
      'autoFill': ?autoFill,
      'autoResizeDimensions': ?autoResizeDimensions,
      'cancelDataSourceRefresh': ?cancelDataSourceRefresh,
      'clearBasicFilter': ?clearBasicFilter,
      'copyPaste': ?copyPaste,
      'createDeveloperMetadata': ?createDeveloperMetadata,
      'cutPaste': ?cutPaste,
      'deleteBanding': ?deleteBanding,
      'deleteConditionalFormatRule': ?deleteConditionalFormatRule,
      'deleteDataSource': ?deleteDataSource,
      'deleteDeveloperMetadata': ?deleteDeveloperMetadata,
      'deleteDimension': ?deleteDimension,
      'deleteDimensionGroup': ?deleteDimensionGroup,
      'deleteDuplicates': ?deleteDuplicates,
      'deleteEmbeddedObject': ?deleteEmbeddedObject,
      'deleteFilterView': ?deleteFilterView,
      'deleteNamedRange': ?deleteNamedRange,
      'deleteProtectedRange': ?deleteProtectedRange,
      'deleteRange': ?deleteRange,
      'deleteSheet': ?deleteSheet,
      'deleteTable': ?deleteTable,
      'duplicateFilterView': ?duplicateFilterView,
      'duplicateSheet': ?duplicateSheet,
      'findReplace': ?findReplace,
      'insertDimension': ?insertDimension,
      'insertRange': ?insertRange,
      'mergeCells': ?mergeCells,
      'moveDimension': ?moveDimension,
      'pasteData': ?pasteData,
      'randomizeRange': ?randomizeRange,
      'refreshDataSource': ?refreshDataSource,
      'repeatCell': ?repeatCell,
      'setBasicFilter': ?setBasicFilter,
      'setDataValidation': ?setDataValidation,
      'sortRange': ?sortRange,
      'textToColumns': ?textToColumns,
      'trimWhitespace': ?trimWhitespace,
      'unmergeCells': ?unmergeCells,
      'updateBanding': ?updateBanding,
      'updateBorders': ?updateBorders,
      'updateCells': ?updateCells,
      'updateChartSpec': ?updateChartSpec,
      'updateConditionalFormatRule': ?updateConditionalFormatRule,
      'updateDataSource': ?updateDataSource,
      'updateDeveloperMetadata': ?updateDeveloperMetadata,
      'updateDimensionGroup': ?updateDimensionGroup,
      'updateDimensionProperties': ?updateDimensionProperties,
      'updateEmbeddedObjectBorder': ?updateEmbeddedObjectBorder,
      'updateEmbeddedObjectPosition': ?updateEmbeddedObjectPosition,
      'updateFilterView': ?updateFilterView,
      'updateNamedRange': ?updateNamedRange,
      'updateProtectedRange': ?updateProtectedRange,
      'updateSheetProperties': ?updateSheetProperties,
      'updateSlicerSpec': ?updateSlicerSpec,
      'updateSpreadsheetProperties': ?updateSpreadsheetProperties,
      'updateTable': ?updateTable,
    };
  }
}

/// A single response from an update.
class Response {
  /// A reply from adding a banded range.
  AddBandingResponse? addBanding;

  /// A reply from adding a chart.
  AddChartResponse? addChart;

  /// A reply from adding a data source.
  AddDataSourceResponse? addDataSource;

  /// A reply from adding a dimension group.
  AddDimensionGroupResponse? addDimensionGroup;

  /// A reply from adding a filter view.
  AddFilterViewResponse? addFilterView;

  /// A reply from adding a named range.
  AddNamedRangeResponse? addNamedRange;

  /// A reply from adding a protected range.
  AddProtectedRangeResponse? addProtectedRange;

  /// A reply from adding a sheet.
  AddSheetResponse? addSheet;

  /// A reply from adding a slicer.
  AddSlicerResponse? addSlicer;

  /// A reply from adding a table.
  AddTableResponse? addTable;

  /// A reply from cancelling data source object refreshes.
  CancelDataSourceRefreshResponse? cancelDataSourceRefresh;

  /// A reply from creating a developer metadata entry.
  CreateDeveloperMetadataResponse? createDeveloperMetadata;

  /// A reply from deleting a conditional format rule.
  DeleteConditionalFormatRuleResponse? deleteConditionalFormatRule;

  /// A reply from deleting a developer metadata entry.
  DeleteDeveloperMetadataResponse? deleteDeveloperMetadata;

  /// A reply from deleting a dimension group.
  DeleteDimensionGroupResponse? deleteDimensionGroup;

  /// A reply from removing rows containing duplicate values.
  DeleteDuplicatesResponse? deleteDuplicates;

  /// A reply from duplicating a filter view.
  DuplicateFilterViewResponse? duplicateFilterView;

  /// A reply from duplicating a sheet.
  DuplicateSheetResponse? duplicateSheet;

  /// A reply from doing a find/replace.
  FindReplaceResponse? findReplace;

  /// A reply from refreshing data source objects.
  RefreshDataSourceResponse? refreshDataSource;

  /// A reply from trimming whitespace.
  TrimWhitespaceResponse? trimWhitespace;

  /// A reply from updating a conditional format rule.
  UpdateConditionalFormatRuleResponse? updateConditionalFormatRule;

  /// A reply from updating a data source.
  UpdateDataSourceResponse? updateDataSource;

  /// A reply from updating a developer metadata entry.
  UpdateDeveloperMetadataResponse? updateDeveloperMetadata;

  /// A reply from updating an embedded object's position.
  UpdateEmbeddedObjectPositionResponse? updateEmbeddedObjectPosition;

  Response({
    this.addBanding,
    this.addChart,
    this.addDataSource,
    this.addDimensionGroup,
    this.addFilterView,
    this.addNamedRange,
    this.addProtectedRange,
    this.addSheet,
    this.addSlicer,
    this.addTable,
    this.cancelDataSourceRefresh,
    this.createDeveloperMetadata,
    this.deleteConditionalFormatRule,
    this.deleteDeveloperMetadata,
    this.deleteDimensionGroup,
    this.deleteDuplicates,
    this.duplicateFilterView,
    this.duplicateSheet,
    this.findReplace,
    this.refreshDataSource,
    this.trimWhitespace,
    this.updateConditionalFormatRule,
    this.updateDataSource,
    this.updateDeveloperMetadata,
    this.updateEmbeddedObjectPosition,
  });

  Response.fromJson(core.Map json_)
    : this(
        addBanding: json_.containsKey('addBanding')
            ? AddBandingResponse.fromJson(
                json_['addBanding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addChart: json_.containsKey('addChart')
            ? AddChartResponse.fromJson(
                json_['addChart'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addDataSource: json_.containsKey('addDataSource')
            ? AddDataSourceResponse.fromJson(
                json_['addDataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addDimensionGroup: json_.containsKey('addDimensionGroup')
            ? AddDimensionGroupResponse.fromJson(
                json_['addDimensionGroup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        addFilterView: json_.containsKey('addFilterView')
            ? AddFilterViewResponse.fromJson(
                json_['addFilterView'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addNamedRange: json_.containsKey('addNamedRange')
            ? AddNamedRangeResponse.fromJson(
                json_['addNamedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addProtectedRange: json_.containsKey('addProtectedRange')
            ? AddProtectedRangeResponse.fromJson(
                json_['addProtectedRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        addSheet: json_.containsKey('addSheet')
            ? AddSheetResponse.fromJson(
                json_['addSheet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addSlicer: json_.containsKey('addSlicer')
            ? AddSlicerResponse.fromJson(
                json_['addSlicer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        addTable: json_.containsKey('addTable')
            ? AddTableResponse.fromJson(
                json_['addTable'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cancelDataSourceRefresh: json_.containsKey('cancelDataSourceRefresh')
            ? CancelDataSourceRefreshResponse.fromJson(
                json_['cancelDataSourceRefresh']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createDeveloperMetadata: json_.containsKey('createDeveloperMetadata')
            ? CreateDeveloperMetadataResponse.fromJson(
                json_['createDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteConditionalFormatRule:
            json_.containsKey('deleteConditionalFormatRule')
            ? DeleteConditionalFormatRuleResponse.fromJson(
                json_['deleteConditionalFormatRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDeveloperMetadata: json_.containsKey('deleteDeveloperMetadata')
            ? DeleteDeveloperMetadataResponse.fromJson(
                json_['deleteDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDimensionGroup: json_.containsKey('deleteDimensionGroup')
            ? DeleteDimensionGroupResponse.fromJson(
                json_['deleteDimensionGroup']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deleteDuplicates: json_.containsKey('deleteDuplicates')
            ? DeleteDuplicatesResponse.fromJson(
                json_['deleteDuplicates']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        duplicateFilterView: json_.containsKey('duplicateFilterView')
            ? DuplicateFilterViewResponse.fromJson(
                json_['duplicateFilterView']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        duplicateSheet: json_.containsKey('duplicateSheet')
            ? DuplicateSheetResponse.fromJson(
                json_['duplicateSheet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        findReplace: json_.containsKey('findReplace')
            ? FindReplaceResponse.fromJson(
                json_['findReplace'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refreshDataSource: json_.containsKey('refreshDataSource')
            ? RefreshDataSourceResponse.fromJson(
                json_['refreshDataSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        trimWhitespace: json_.containsKey('trimWhitespace')
            ? TrimWhitespaceResponse.fromJson(
                json_['trimWhitespace'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateConditionalFormatRule:
            json_.containsKey('updateConditionalFormatRule')
            ? UpdateConditionalFormatRuleResponse.fromJson(
                json_['updateConditionalFormatRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDataSource: json_.containsKey('updateDataSource')
            ? UpdateDataSourceResponse.fromJson(
                json_['updateDataSource']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateDeveloperMetadata: json_.containsKey('updateDeveloperMetadata')
            ? UpdateDeveloperMetadataResponse.fromJson(
                json_['updateDeveloperMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateEmbeddedObjectPosition:
            json_.containsKey('updateEmbeddedObjectPosition')
            ? UpdateEmbeddedObjectPositionResponse.fromJson(
                json_['updateEmbeddedObjectPosition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addBanding = this.addBanding;
    final addChart = this.addChart;
    final addDataSource = this.addDataSource;
    final addDimensionGroup = this.addDimensionGroup;
    final addFilterView = this.addFilterView;
    final addNamedRange = this.addNamedRange;
    final addProtectedRange = this.addProtectedRange;
    final addSheet = this.addSheet;
    final addSlicer = this.addSlicer;
    final addTable = this.addTable;
    final cancelDataSourceRefresh = this.cancelDataSourceRefresh;
    final createDeveloperMetadata = this.createDeveloperMetadata;
    final deleteConditionalFormatRule = this.deleteConditionalFormatRule;
    final deleteDeveloperMetadata = this.deleteDeveloperMetadata;
    final deleteDimensionGroup = this.deleteDimensionGroup;
    final deleteDuplicates = this.deleteDuplicates;
    final duplicateFilterView = this.duplicateFilterView;
    final duplicateSheet = this.duplicateSheet;
    final findReplace = this.findReplace;
    final refreshDataSource = this.refreshDataSource;
    final trimWhitespace = this.trimWhitespace;
    final updateConditionalFormatRule = this.updateConditionalFormatRule;
    final updateDataSource = this.updateDataSource;
    final updateDeveloperMetadata = this.updateDeveloperMetadata;
    final updateEmbeddedObjectPosition = this.updateEmbeddedObjectPosition;
    return {
      'addBanding': ?addBanding,
      'addChart': ?addChart,
      'addDataSource': ?addDataSource,
      'addDimensionGroup': ?addDimensionGroup,
      'addFilterView': ?addFilterView,
      'addNamedRange': ?addNamedRange,
      'addProtectedRange': ?addProtectedRange,
      'addSheet': ?addSheet,
      'addSlicer': ?addSlicer,
      'addTable': ?addTable,
      'cancelDataSourceRefresh': ?cancelDataSourceRefresh,
      'createDeveloperMetadata': ?createDeveloperMetadata,
      'deleteConditionalFormatRule': ?deleteConditionalFormatRule,
      'deleteDeveloperMetadata': ?deleteDeveloperMetadata,
      'deleteDimensionGroup': ?deleteDimensionGroup,
      'deleteDuplicates': ?deleteDuplicates,
      'duplicateFilterView': ?duplicateFilterView,
      'duplicateSheet': ?duplicateSheet,
      'findReplace': ?findReplace,
      'refreshDataSource': ?refreshDataSource,
      'trimWhitespace': ?trimWhitespace,
      'updateConditionalFormatRule': ?updateConditionalFormatRule,
      'updateDataSource': ?updateDataSource,
      'updateDeveloperMetadata': ?updateDeveloperMetadata,
      'updateEmbeddedObjectPosition': ?updateEmbeddedObjectPosition,
    };
  }
}

/// Properties of a link to a Google resource (such as a file in Drive, a
/// YouTube video, a Maps address, or a Calendar event).
///
/// Only Drive files can be written as chips. All other rich link types are read
/// only. URIs cannot exceed 2000 bytes when writing. NOTE: Writing Drive file
/// chips requires at least one of the `drive.file`, `drive.readonly`, or
/// `drive` OAuth scopes.
class RichLinkProperties {
  /// The [MIME type](https://developers.google.com/drive/api/v3/mime-types) of
  /// the link, if there's one (for example, when it's a file in Drive).
  ///
  /// Output only.
  core.String? mimeType;

  /// The URI to the link.
  ///
  /// This is always present.
  ///
  /// Required.
  core.String? uri;

  RichLinkProperties({this.mimeType, this.uri});

  RichLinkProperties.fromJson(core.Map json_)
    : this(
        mimeType: json_['mimeType'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mimeType = this.mimeType;
    final uri = this.uri;
    return {'mimeType': ?mimeType, 'uri': ?uri};
  }
}

/// Data about each cell in a row.
class RowData {
  /// The values in the row, one per column.
  core.List<CellData>? values;

  RowData({this.values});

  RowData.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => CellData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// A scorecard chart.
///
/// Scorecard charts are used to highlight key performance indicators, known as
/// KPIs, on the spreadsheet. A scorecard chart can represent things like total
/// sales, average cost, or a top selling item. You can specify a single data
/// value, or aggregate over a range of data. Percentage or absolute difference
/// from a baseline value can be highlighted, like changes over time.
class ScorecardChartSpec {
  /// The aggregation type for key and baseline chart data in scorecard chart.
  ///
  /// This field is not supported for data source charts. Use the
  /// ChartData.aggregateType field of the key_value_data or baseline_value_data
  /// instead for data source charts. This field is optional.
  /// Possible string values are:
  /// - "CHART_AGGREGATE_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "AVERAGE" : Average aggregate function.
  /// - "COUNT" : Count aggregate function.
  /// - "MAX" : Maximum aggregate function.
  /// - "MEDIAN" : Median aggregate function.
  /// - "MIN" : Minimum aggregate function.
  /// - "SUM" : Sum aggregate function.
  core.String? aggregateType;

  /// The data for scorecard baseline value.
  ///
  /// This field is optional.
  ChartData? baselineValueData;

  /// Formatting options for baseline value.
  ///
  /// This field is needed only if baseline_value_data is specified.
  BaselineValueFormat? baselineValueFormat;

  /// Custom formatting options for numeric key/baseline values in scorecard
  /// chart.
  ///
  /// This field is used only when number_format_source is set to CUSTOM. This
  /// field is optional.
  ChartCustomNumberFormatOptions? customFormatOptions;

  /// The data for scorecard key value.
  ChartData? keyValueData;

  /// Formatting options for key value.
  KeyValueFormat? keyValueFormat;

  /// The number format source used in the scorecard chart.
  ///
  /// This field is optional.
  /// Possible string values are:
  /// - "CHART_NUMBER_FORMAT_SOURCE_UNDEFINED" : Default value, do not use.
  /// - "FROM_DATA" : Inherit number formatting from data.
  /// - "CUSTOM" : Apply custom formatting as specified by
  /// ChartCustomNumberFormatOptions.
  core.String? numberFormatSource;

  /// Value to scale scorecard key and baseline value.
  ///
  /// For example, a factor of 10 can be used to divide all values in the chart
  /// by 10. This field is optional.
  core.double? scaleFactor;

  ScorecardChartSpec({
    this.aggregateType,
    this.baselineValueData,
    this.baselineValueFormat,
    this.customFormatOptions,
    this.keyValueData,
    this.keyValueFormat,
    this.numberFormatSource,
    this.scaleFactor,
  });

  ScorecardChartSpec.fromJson(core.Map json_)
    : this(
        aggregateType: json_['aggregateType'] as core.String?,
        baselineValueData: json_.containsKey('baselineValueData')
            ? ChartData.fromJson(
                json_['baselineValueData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        baselineValueFormat: json_.containsKey('baselineValueFormat')
            ? BaselineValueFormat.fromJson(
                json_['baselineValueFormat']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        customFormatOptions: json_.containsKey('customFormatOptions')
            ? ChartCustomNumberFormatOptions.fromJson(
                json_['customFormatOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        keyValueData: json_.containsKey('keyValueData')
            ? ChartData.fromJson(
                json_['keyValueData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        keyValueFormat: json_.containsKey('keyValueFormat')
            ? KeyValueFormat.fromJson(
                json_['keyValueFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        numberFormatSource: json_['numberFormatSource'] as core.String?,
        scaleFactor: (json_['scaleFactor'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregateType = this.aggregateType;
    final baselineValueData = this.baselineValueData;
    final baselineValueFormat = this.baselineValueFormat;
    final customFormatOptions = this.customFormatOptions;
    final keyValueData = this.keyValueData;
    final keyValueFormat = this.keyValueFormat;
    final numberFormatSource = this.numberFormatSource;
    final scaleFactor = this.scaleFactor;
    return {
      'aggregateType': ?aggregateType,
      'baselineValueData': ?baselineValueData,
      'baselineValueFormat': ?baselineValueFormat,
      'customFormatOptions': ?customFormatOptions,
      'keyValueData': ?keyValueData,
      'keyValueFormat': ?keyValueFormat,
      'numberFormatSource': ?numberFormatSource,
      'scaleFactor': ?scaleFactor,
    };
  }
}

/// A request to retrieve all developer metadata matching the set of specified
/// criteria.
class SearchDeveloperMetadataRequest {
  /// The data filters describing the criteria used to determine which
  /// DeveloperMetadata entries to return.
  ///
  /// DeveloperMetadata matching any of the specified filters are included in
  /// the response.
  core.List<DataFilter>? dataFilters;

  SearchDeveloperMetadataRequest({this.dataFilters});

  SearchDeveloperMetadataRequest.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    return {'dataFilters': ?dataFilters};
  }
}

/// A reply to a developer metadata search request.
class SearchDeveloperMetadataResponse {
  /// The metadata matching the criteria of the search request.
  core.List<MatchedDeveloperMetadata>? matchedDeveloperMetadata;

  SearchDeveloperMetadataResponse({this.matchedDeveloperMetadata});

  SearchDeveloperMetadataResponse.fromJson(core.Map json_)
    : this(
        matchedDeveloperMetadata:
            (json_['matchedDeveloperMetadata'] as core.List?)
                ?.map(
                  (value) => MatchedDeveloperMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final matchedDeveloperMetadata = this.matchedDeveloperMetadata;
    return {'matchedDeveloperMetadata': ?matchedDeveloperMetadata};
  }
}

/// Sets the basic filter associated with a sheet.
class SetBasicFilterRequest {
  /// The filter to set.
  BasicFilter? filter;

  SetBasicFilterRequest({this.filter});

  SetBasicFilterRequest.fromJson(core.Map json_)
    : this(
        filter: json_.containsKey('filter')
            ? BasicFilter.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    return {'filter': ?filter};
  }
}

/// Sets a data validation rule to every cell in the range.
///
/// To clear validation in a range, call this with no rule specified.
class SetDataValidationRequest {
  /// If true, the data validation rule will be applied to the filtered rows as
  /// well.
  ///
  /// Optional.
  core.bool? filteredRowsIncluded;

  /// The range the data validation rule should apply to.
  GridRange? range;

  /// The data validation rule to set on each cell in the range, or empty to
  /// clear the data validation in the range.
  DataValidationRule? rule;

  SetDataValidationRequest({this.filteredRowsIncluded, this.range, this.rule});

  SetDataValidationRequest.fromJson(core.Map json_)
    : this(
        filteredRowsIncluded: json_['filteredRowsIncluded'] as core.bool?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rule: json_.containsKey('rule')
            ? DataValidationRule.fromJson(
                json_['rule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filteredRowsIncluded = this.filteredRowsIncluded;
    final range = this.range;
    final rule = this.rule;
    return {
      'filteredRowsIncluded': ?filteredRowsIncluded,
      'range': ?range,
      'rule': ?rule,
    };
  }
}

/// A sheet in a spreadsheet.
class Sheet {
  /// The banded (alternating colors) ranges on this sheet.
  core.List<BandedRange>? bandedRanges;

  /// The filter on this sheet, if any.
  BasicFilter? basicFilter;

  /// The specifications of every chart on this sheet.
  core.List<EmbeddedChart>? charts;

  /// All column groups on this sheet, ordered by increasing range start index,
  /// then by group depth.
  core.List<DimensionGroup>? columnGroups;

  /// The conditional format rules in this sheet.
  core.List<ConditionalFormatRule>? conditionalFormats;

  /// Data in the grid, if this is a grid sheet.
  ///
  /// The number of GridData objects returned is dependent on the number of
  /// ranges requested on this sheet. For example, if this is representing
  /// `Sheet1`, and the spreadsheet was requested with ranges `Sheet1!A1:C10`
  /// and `Sheet1!D15:E20`, then the first GridData will have a
  /// startRow/startColumn of `0`, while the second one will have `startRow 14`
  /// (zero-based row 15), and `startColumn 3` (zero-based column D). For a
  /// DATA_SOURCE sheet, you can not request a specific range, the GridData
  /// contains all the values.
  core.List<GridData>? data;

  /// The developer metadata associated with a sheet.
  core.List<DeveloperMetadata>? developerMetadata;

  /// The filter views in this sheet.
  core.List<FilterView>? filterViews;

  /// The ranges that are merged together.
  core.List<GridRange>? merges;

  /// The properties of the sheet.
  SheetProperties? properties;

  /// The protected ranges in this sheet.
  core.List<ProtectedRange>? protectedRanges;

  /// All row groups on this sheet, ordered by increasing range start index,
  /// then by group depth.
  core.List<DimensionGroup>? rowGroups;

  /// The slicers on this sheet.
  core.List<Slicer>? slicers;

  /// The tables on this sheet.
  core.List<Table>? tables;

  Sheet({
    this.bandedRanges,
    this.basicFilter,
    this.charts,
    this.columnGroups,
    this.conditionalFormats,
    this.data,
    this.developerMetadata,
    this.filterViews,
    this.merges,
    this.properties,
    this.protectedRanges,
    this.rowGroups,
    this.slicers,
    this.tables,
  });

  Sheet.fromJson(core.Map json_)
    : this(
        bandedRanges: (json_['bandedRanges'] as core.List?)
            ?.map(
              (value) => BandedRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        basicFilter: json_.containsKey('basicFilter')
            ? BasicFilter.fromJson(
                json_['basicFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        charts: (json_['charts'] as core.List?)
            ?.map(
              (value) => EmbeddedChart.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        columnGroups: (json_['columnGroups'] as core.List?)
            ?.map(
              (value) => DimensionGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        conditionalFormats: (json_['conditionalFormats'] as core.List?)
            ?.map(
              (value) => ConditionalFormatRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        data: (json_['data'] as core.List?)
            ?.map(
              (value) => GridData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        developerMetadata: (json_['developerMetadata'] as core.List?)
            ?.map(
              (value) => DeveloperMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        filterViews: (json_['filterViews'] as core.List?)
            ?.map(
              (value) => FilterView.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        merges: (json_['merges'] as core.List?)
            ?.map(
              (value) => GridRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        properties: json_.containsKey('properties')
            ? SheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        protectedRanges: (json_['protectedRanges'] as core.List?)
            ?.map(
              (value) => ProtectedRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        rowGroups: (json_['rowGroups'] as core.List?)
            ?.map(
              (value) => DimensionGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        slicers: (json_['slicers'] as core.List?)
            ?.map(
              (value) =>
                  Slicer.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        tables: (json_['tables'] as core.List?)
            ?.map(
              (value) =>
                  Table.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRanges = this.bandedRanges;
    final basicFilter = this.basicFilter;
    final charts = this.charts;
    final columnGroups = this.columnGroups;
    final conditionalFormats = this.conditionalFormats;
    final data = this.data;
    final developerMetadata = this.developerMetadata;
    final filterViews = this.filterViews;
    final merges = this.merges;
    final properties = this.properties;
    final protectedRanges = this.protectedRanges;
    final rowGroups = this.rowGroups;
    final slicers = this.slicers;
    final tables = this.tables;
    return {
      'bandedRanges': ?bandedRanges,
      'basicFilter': ?basicFilter,
      'charts': ?charts,
      'columnGroups': ?columnGroups,
      'conditionalFormats': ?conditionalFormats,
      'data': ?data,
      'developerMetadata': ?developerMetadata,
      'filterViews': ?filterViews,
      'merges': ?merges,
      'properties': ?properties,
      'protectedRanges': ?protectedRanges,
      'rowGroups': ?rowGroups,
      'slicers': ?slicers,
      'tables': ?tables,
    };
  }
}

/// Properties of a sheet.
class SheetProperties {
  /// If present, the field contains DATA_SOURCE sheet specific properties.
  ///
  /// Output only.
  DataSourceSheetProperties? dataSourceSheetProperties;

  /// Additional properties of the sheet if this sheet is a grid.
  ///
  /// (If the sheet is an object sheet, containing a chart or image, then this
  /// field will be absent.) When writing it is an error to set any grid
  /// properties on non-grid sheets. If this sheet is a DATA_SOURCE sheet, this
  /// field is output only but contains the properties that reflect how a data
  /// source sheet is rendered in the UI, e.g. row_count.
  GridProperties? gridProperties;

  /// True if the sheet is hidden in the UI, false if it's visible.
  core.bool? hidden;

  /// The index of the sheet within the spreadsheet.
  ///
  /// When adding or updating sheet properties, if this field is excluded then
  /// the sheet is added or moved to the end of the sheet list. When updating
  /// sheet indices or inserting sheets, movement is considered in "before the
  /// move" indexes. For example, if there were three sheets (S1, S2, S3) in
  /// order to move S1 ahead of S2 the index would have to be set to 2. A sheet
  /// index update request is ignored if the requested index is identical to the
  /// sheets current index or if the requested new index is equal to the current
  /// sheet index + 1.
  core.int? index;

  /// True if the sheet is an RTL sheet instead of an LTR sheet.
  core.bool? rightToLeft;

  /// The ID of the sheet.
  ///
  /// Must be non-negative. This field cannot be changed once set.
  core.int? sheetId;

  /// The type of sheet.
  ///
  /// Defaults to GRID. This field cannot be changed once set.
  /// Possible string values are:
  /// - "SHEET_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "GRID" : The sheet is a grid.
  /// - "OBJECT" : The sheet has no grid and instead has an object like a chart
  /// or image.
  /// - "DATA_SOURCE" : The sheet connects with an external DataSource and shows
  /// the preview of data.
  core.String? sheetType;

  /// The color of the tab in the UI.
  ///
  /// Deprecated: Use tab_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? tabColor;

  /// The color of the tab in the UI.
  ///
  /// If tab_color is also set, this field takes precedence.
  ColorStyle? tabColorStyle;

  /// The name of the sheet.
  core.String? title;

  SheetProperties({
    this.dataSourceSheetProperties,
    this.gridProperties,
    this.hidden,
    this.index,
    this.rightToLeft,
    this.sheetId,
    this.sheetType,
    this.tabColor,
    this.tabColorStyle,
    this.title,
  });

  SheetProperties.fromJson(core.Map json_)
    : this(
        dataSourceSheetProperties:
            json_.containsKey('dataSourceSheetProperties')
            ? DataSourceSheetProperties.fromJson(
                json_['dataSourceSheetProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gridProperties: json_.containsKey('gridProperties')
            ? GridProperties.fromJson(
                json_['gridProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hidden: json_['hidden'] as core.bool?,
        index: json_['index'] as core.int?,
        rightToLeft: json_['rightToLeft'] as core.bool?,
        sheetId: json_['sheetId'] as core.int?,
        sheetType: json_['sheetType'] as core.String?,
        tabColor: json_.containsKey('tabColor')
            ? Color.fromJson(
                json_['tabColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tabColorStyle: json_.containsKey('tabColorStyle')
            ? ColorStyle.fromJson(
                json_['tabColorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceSheetProperties = this.dataSourceSheetProperties;
    final gridProperties = this.gridProperties;
    final hidden = this.hidden;
    final index = this.index;
    final rightToLeft = this.rightToLeft;
    final sheetId = this.sheetId;
    final sheetType = this.sheetType;
    final tabColor = this.tabColor;
    final tabColorStyle = this.tabColorStyle;
    final title = this.title;
    return {
      'dataSourceSheetProperties': ?dataSourceSheetProperties,
      'gridProperties': ?gridProperties,
      'hidden': ?hidden,
      'index': ?index,
      'rightToLeft': ?rightToLeft,
      'sheetId': ?sheetId,
      'sheetType': ?sheetType,
      'tabColor': ?tabColor,
      'tabColorStyle': ?tabColorStyle,
      'title': ?title,
    };
  }
}

/// A slicer in a sheet.
class Slicer {
  /// The position of the slicer.
  ///
  /// Note that slicer can be positioned only on existing sheet. Also, width and
  /// height of slicer can be automatically adjusted to keep it within permitted
  /// limits.
  EmbeddedObjectPosition? position;

  /// The ID of the slicer.
  core.int? slicerId;

  /// The specification of the slicer.
  SlicerSpec? spec;

  Slicer({this.position, this.slicerId, this.spec});

  Slicer.fromJson(core.Map json_)
    : this(
        position: json_.containsKey('position')
            ? EmbeddedObjectPosition.fromJson(
                json_['position'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        slicerId: json_['slicerId'] as core.int?,
        spec: json_.containsKey('spec')
            ? SlicerSpec.fromJson(
                json_['spec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final position = this.position;
    final slicerId = this.slicerId;
    final spec = this.spec;
    return {'position': ?position, 'slicerId': ?slicerId, 'spec': ?spec};
  }
}

/// The specifications of a slicer.
class SlicerSpec {
  /// True if the filter should apply to pivot tables.
  ///
  /// If not set, default to `True`.
  core.bool? applyToPivotTables;

  /// The background color of the slicer.
  ///
  /// Deprecated: Use background_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? backgroundColor;

  /// The background color of the slicer.
  ///
  /// If background_color is also set, this field takes precedence.
  ColorStyle? backgroundColorStyle;

  /// The zero-based column index in the data table on which the filter is
  /// applied to.
  core.int? columnIndex;

  /// The data range of the slicer.
  GridRange? dataRange;

  /// The filtering criteria of the slicer.
  FilterCriteria? filterCriteria;

  /// The horizontal alignment of title in the slicer.
  ///
  /// If unspecified, defaults to `LEFT`
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGN_UNSPECIFIED" : The horizontal alignment is not
  /// specified. Do not use this.
  /// - "LEFT" : The text is explicitly aligned to the left of the cell.
  /// - "CENTER" : The text is explicitly aligned to the center of the cell.
  /// - "RIGHT" : The text is explicitly aligned to the right of the cell.
  core.String? horizontalAlignment;

  /// The text format of title in the slicer.
  ///
  /// The link field is not supported.
  TextFormat? textFormat;

  /// The title of the slicer.
  core.String? title;

  SlicerSpec({
    this.applyToPivotTables,
    this.backgroundColor,
    this.backgroundColorStyle,
    this.columnIndex,
    this.dataRange,
    this.filterCriteria,
    this.horizontalAlignment,
    this.textFormat,
    this.title,
  });

  SlicerSpec.fromJson(core.Map json_)
    : this(
        applyToPivotTables: json_['applyToPivotTables'] as core.bool?,
        backgroundColor: json_.containsKey('backgroundColor')
            ? Color.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backgroundColorStyle: json_.containsKey('backgroundColorStyle')
            ? ColorStyle.fromJson(
                json_['backgroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        columnIndex: json_['columnIndex'] as core.int?,
        dataRange: json_.containsKey('dataRange')
            ? GridRange.fromJson(
                json_['dataRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        filterCriteria: json_.containsKey('filterCriteria')
            ? FilterCriteria.fromJson(
                json_['filterCriteria'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        horizontalAlignment: json_['horizontalAlignment'] as core.String?,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyToPivotTables = this.applyToPivotTables;
    final backgroundColor = this.backgroundColor;
    final backgroundColorStyle = this.backgroundColorStyle;
    final columnIndex = this.columnIndex;
    final dataRange = this.dataRange;
    final filterCriteria = this.filterCriteria;
    final horizontalAlignment = this.horizontalAlignment;
    final textFormat = this.textFormat;
    final title = this.title;
    return {
      'applyToPivotTables': ?applyToPivotTables,
      'backgroundColor': ?backgroundColor,
      'backgroundColorStyle': ?backgroundColorStyle,
      'columnIndex': ?columnIndex,
      'dataRange': ?dataRange,
      'filterCriteria': ?filterCriteria,
      'horizontalAlignment': ?horizontalAlignment,
      'textFormat': ?textFormat,
      'title': ?title,
    };
  }
}

/// Sorts data in rows based on a sort order per column.
class SortRangeRequest {
  /// The range to sort.
  GridRange? range;

  /// The sort order per column.
  ///
  /// Later specifications are used when values are equal in the earlier
  /// specifications.
  core.List<SortSpec>? sortSpecs;

  SortRangeRequest({this.range, this.sortSpecs});

  SortRangeRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortSpecs: (json_['sortSpecs'] as core.List?)
            ?.map(
              (value) => SortSpec.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    final sortSpecs = this.sortSpecs;
    return {'range': ?range, 'sortSpecs': ?sortSpecs};
  }
}

/// A sort order associated with a specific column or row.
class SortSpec {
  /// The background fill color to sort by; cells with this fill color are
  /// sorted to the top.
  ///
  /// Mutually exclusive with foreground_color. Deprecated: Use
  /// background_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? backgroundColor;

  /// The background fill color to sort by; cells with this fill color are
  /// sorted to the top.
  ///
  /// Mutually exclusive with foreground_color, and must be an RGB-type color.
  /// If background_color is also set, this field takes precedence.
  ColorStyle? backgroundColorStyle;

  /// Reference to a data source column.
  DataSourceColumnReference? dataSourceColumnReference;

  /// The dimension the sort should be applied to.
  core.int? dimensionIndex;

  /// The foreground color to sort by; cells with this foreground color are
  /// sorted to the top.
  ///
  /// Mutually exclusive with background_color. Deprecated: Use
  /// foreground_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? foregroundColor;

  /// The foreground color to sort by; cells with this foreground color are
  /// sorted to the top.
  ///
  /// Mutually exclusive with background_color, and must be an RGB-type color.
  /// If foreground_color is also set, this field takes precedence.
  ColorStyle? foregroundColorStyle;

  /// The order data should be sorted.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value, do not use this.
  /// - "ASCENDING" : Sort ascending.
  /// - "DESCENDING" : Sort descending.
  core.String? sortOrder;

  SortSpec({
    this.backgroundColor,
    this.backgroundColorStyle,
    this.dataSourceColumnReference,
    this.dimensionIndex,
    this.foregroundColor,
    this.foregroundColorStyle,
    this.sortOrder,
  });

  SortSpec.fromJson(core.Map json_)
    : this(
        backgroundColor: json_.containsKey('backgroundColor')
            ? Color.fromJson(
                json_['backgroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backgroundColorStyle: json_.containsKey('backgroundColorStyle')
            ? ColorStyle.fromJson(
                json_['backgroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSourceColumnReference:
            json_.containsKey('dataSourceColumnReference')
            ? DataSourceColumnReference.fromJson(
                json_['dataSourceColumnReference']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensionIndex: json_['dimensionIndex'] as core.int?,
        foregroundColor: json_.containsKey('foregroundColor')
            ? Color.fromJson(
                json_['foregroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        foregroundColorStyle: json_.containsKey('foregroundColorStyle')
            ? ColorStyle.fromJson(
                json_['foregroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sortOrder: json_['sortOrder'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backgroundColor = this.backgroundColor;
    final backgroundColorStyle = this.backgroundColorStyle;
    final dataSourceColumnReference = this.dataSourceColumnReference;
    final dimensionIndex = this.dimensionIndex;
    final foregroundColor = this.foregroundColor;
    final foregroundColorStyle = this.foregroundColorStyle;
    final sortOrder = this.sortOrder;
    return {
      'backgroundColor': ?backgroundColor,
      'backgroundColorStyle': ?backgroundColorStyle,
      'dataSourceColumnReference': ?dataSourceColumnReference,
      'dimensionIndex': ?dimensionIndex,
      'foregroundColor': ?foregroundColor,
      'foregroundColorStyle': ?foregroundColorStyle,
      'sortOrder': ?sortOrder,
    };
  }
}

/// A combination of a source range and how to extend that source.
class SourceAndDestination {
  /// The dimension that data should be filled into.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? dimension;

  /// The number of rows or columns that data should be filled into.
  ///
  /// Positive numbers expand beyond the last row or last column of the source.
  /// Negative numbers expand before the first row or first column of the
  /// source.
  core.int? fillLength;

  /// The location of the data to use as the source of the autofill.
  GridRange? source;

  SourceAndDestination({this.dimension, this.fillLength, this.source});

  SourceAndDestination.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        fillLength: json_['fillLength'] as core.int?,
        source: json_.containsKey('source')
            ? GridRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final fillLength = this.fillLength;
    final source = this.source;
    return {
      'dimension': ?dimension,
      'fillLength': ?fillLength,
      'source': ?source,
    };
  }
}

/// Resource that represents a spreadsheet.
class Spreadsheet {
  /// A list of data source refresh schedules.
  ///
  /// Output only.
  core.List<DataSourceRefreshSchedule>? dataSourceSchedules;

  /// A list of external data sources connected with the spreadsheet.
  core.List<DataSource>? dataSources;

  /// The developer metadata associated with a spreadsheet.
  core.List<DeveloperMetadata>? developerMetadata;

  /// The named ranges defined in a spreadsheet.
  core.List<NamedRange>? namedRanges;

  /// Overall properties of a spreadsheet.
  SpreadsheetProperties? properties;

  /// The sheets that are part of a spreadsheet.
  core.List<Sheet>? sheets;

  /// The ID of the spreadsheet.
  ///
  /// This field is read-only.
  core.String? spreadsheetId;

  /// The url of the spreadsheet.
  ///
  /// This field is read-only.
  core.String? spreadsheetUrl;

  Spreadsheet({
    this.dataSourceSchedules,
    this.dataSources,
    this.developerMetadata,
    this.namedRanges,
    this.properties,
    this.sheets,
    this.spreadsheetId,
    this.spreadsheetUrl,
  });

  Spreadsheet.fromJson(core.Map json_)
    : this(
        dataSourceSchedules: (json_['dataSourceSchedules'] as core.List?)
            ?.map(
              (value) => DataSourceRefreshSchedule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataSources: (json_['dataSources'] as core.List?)
            ?.map(
              (value) => DataSource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        developerMetadata: (json_['developerMetadata'] as core.List?)
            ?.map(
              (value) => DeveloperMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        namedRanges: (json_['namedRanges'] as core.List?)
            ?.map(
              (value) => NamedRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        properties: json_.containsKey('properties')
            ? SpreadsheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sheets: (json_['sheets'] as core.List?)
            ?.map(
              (value) =>
                  Sheet.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        spreadsheetUrl: json_['spreadsheetUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceSchedules = this.dataSourceSchedules;
    final dataSources = this.dataSources;
    final developerMetadata = this.developerMetadata;
    final namedRanges = this.namedRanges;
    final properties = this.properties;
    final sheets = this.sheets;
    final spreadsheetId = this.spreadsheetId;
    final spreadsheetUrl = this.spreadsheetUrl;
    return {
      'dataSourceSchedules': ?dataSourceSchedules,
      'dataSources': ?dataSources,
      'developerMetadata': ?developerMetadata,
      'namedRanges': ?namedRanges,
      'properties': ?properties,
      'sheets': ?sheets,
      'spreadsheetId': ?spreadsheetId,
      'spreadsheetUrl': ?spreadsheetUrl,
    };
  }
}

/// Properties of a spreadsheet.
class SpreadsheetProperties {
  /// The amount of time to wait before volatile functions are recalculated.
  /// Possible string values are:
  /// - "RECALCULATION_INTERVAL_UNSPECIFIED" : Default value. This value must
  /// not be used.
  /// - "ON_CHANGE" : Volatile functions are updated on every change.
  /// - "MINUTE" : Volatile functions are updated on every change and every
  /// minute.
  /// - "HOUR" : Volatile functions are updated on every change and hourly.
  core.String? autoRecalc;

  /// The default format of all cells in the spreadsheet.
  ///
  /// CellData.effectiveFormat will not be set if the cell's format is equal to
  /// this default format. This field is read-only.
  CellFormat? defaultFormat;

  /// Whether to allow external URL access for image and import functions.
  ///
  /// Read only when true. When false, you can set to true. This value will be
  /// bypassed and always return true if the admin has enabled the
  /// [allowlisting feature](https://support.google.com/a?p=url_allowlist).
  core.bool? importFunctionsExternalUrlAccessAllowed;

  /// Determines whether and how circular references are resolved with iterative
  /// calculation.
  ///
  /// Absence of this field means that circular references result in calculation
  /// errors.
  IterativeCalculationSettings? iterativeCalculationSettings;

  /// The locale of the spreadsheet in one of the following formats: * an ISO
  /// 639-1 language code such as `en` * an ISO 639-2 language code such as
  /// `fil`, if no 639-1 code exists * a combination of the ISO language code
  /// and country code, such as `en_US` Note: when updating this field, not all
  /// locales/languages are supported.
  core.String? locale;

  /// Theme applied to the spreadsheet.
  SpreadsheetTheme? spreadsheetTheme;

  /// The time zone of the spreadsheet, in CLDR format such as
  /// `America/New_York`.
  ///
  /// If the time zone isn't recognized, this may be a custom time zone such as
  /// `GMT-07:00`.
  core.String? timeZone;

  /// The title of the spreadsheet.
  core.String? title;

  SpreadsheetProperties({
    this.autoRecalc,
    this.defaultFormat,
    this.importFunctionsExternalUrlAccessAllowed,
    this.iterativeCalculationSettings,
    this.locale,
    this.spreadsheetTheme,
    this.timeZone,
    this.title,
  });

  SpreadsheetProperties.fromJson(core.Map json_)
    : this(
        autoRecalc: json_['autoRecalc'] as core.String?,
        defaultFormat: json_.containsKey('defaultFormat')
            ? CellFormat.fromJson(
                json_['defaultFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        importFunctionsExternalUrlAccessAllowed:
            json_['importFunctionsExternalUrlAccessAllowed'] as core.bool?,
        iterativeCalculationSettings:
            json_.containsKey('iterativeCalculationSettings')
            ? IterativeCalculationSettings.fromJson(
                json_['iterativeCalculationSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locale: json_['locale'] as core.String?,
        spreadsheetTheme: json_.containsKey('spreadsheetTheme')
            ? SpreadsheetTheme.fromJson(
                json_['spreadsheetTheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        timeZone: json_['timeZone'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoRecalc = this.autoRecalc;
    final defaultFormat = this.defaultFormat;
    final importFunctionsExternalUrlAccessAllowed =
        this.importFunctionsExternalUrlAccessAllowed;
    final iterativeCalculationSettings = this.iterativeCalculationSettings;
    final locale = this.locale;
    final spreadsheetTheme = this.spreadsheetTheme;
    final timeZone = this.timeZone;
    final title = this.title;
    return {
      'autoRecalc': ?autoRecalc,
      'defaultFormat': ?defaultFormat,
      'importFunctionsExternalUrlAccessAllowed':
          ?importFunctionsExternalUrlAccessAllowed,
      'iterativeCalculationSettings': ?iterativeCalculationSettings,
      'locale': ?locale,
      'spreadsheetTheme': ?spreadsheetTheme,
      'timeZone': ?timeZone,
      'title': ?title,
    };
  }
}

/// Represents spreadsheet theme
class SpreadsheetTheme {
  /// Name of the primary font family.
  core.String? primaryFontFamily;

  /// The spreadsheet theme color pairs.
  ///
  /// To update you must provide all theme color pairs.
  core.List<ThemeColorPair>? themeColors;

  SpreadsheetTheme({this.primaryFontFamily, this.themeColors});

  SpreadsheetTheme.fromJson(core.Map json_)
    : this(
        primaryFontFamily: json_['primaryFontFamily'] as core.String?,
        themeColors: (json_['themeColors'] as core.List?)
            ?.map(
              (value) => ThemeColorPair.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final primaryFontFamily = this.primaryFontFamily;
    final themeColors = this.themeColors;
    return {
      'primaryFontFamily': ?primaryFontFamily,
      'themeColors': ?themeColors,
    };
  }
}

/// A table.
class Table {
  /// The table column properties.
  core.List<TableColumnProperties>? columnProperties;

  /// The table name.
  ///
  /// This is unique to all tables in the same spreadsheet.
  core.String? name;

  /// The table range.
  GridRange? range;

  /// The table rows properties.
  TableRowsProperties? rowsProperties;

  /// The id of the table.
  core.String? tableId;

  Table({
    this.columnProperties,
    this.name,
    this.range,
    this.rowsProperties,
    this.tableId,
  });

  Table.fromJson(core.Map json_)
    : this(
        columnProperties: (json_['columnProperties'] as core.List?)
            ?.map(
              (value) => TableColumnProperties.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rowsProperties: json_.containsKey('rowsProperties')
            ? TableRowsProperties.fromJson(
                json_['rowsProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableId: json_['tableId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnProperties = this.columnProperties;
    final name = this.name;
    final range = this.range;
    final rowsProperties = this.rowsProperties;
    final tableId = this.tableId;
    return {
      'columnProperties': ?columnProperties,
      'name': ?name,
      'range': ?range,
      'rowsProperties': ?rowsProperties,
      'tableId': ?tableId,
    };
  }
}

/// A data validation rule for a column in a table.
class TableColumnDataValidationRule {
  /// The condition that data in the cell must match.
  ///
  /// Valid only if the \[BooleanCondition.type\] is ONE_OF_LIST.
  BooleanCondition? condition;

  TableColumnDataValidationRule({this.condition});

  TableColumnDataValidationRule.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? BooleanCondition.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    return {'condition': ?condition};
  }
}

/// The table column.
class TableColumnProperties {
  /// The 0-based column index.
  ///
  /// This index is relative to its position in the table and is not necessarily
  /// the same as the column index in the sheet.
  core.int? columnIndex;

  /// The column name.
  core.String? columnName;

  /// The column type.
  /// Possible string values are:
  /// - "COLUMN_TYPE_UNSPECIFIED" : An unspecified column type.
  /// - "DOUBLE" : The number column type.
  /// - "CURRENCY" : The currency column type.
  /// - "PERCENT" : The percent column type.
  /// - "DATE" : The date column type.
  /// - "TIME" : The time column type.
  /// - "DATE_TIME" : The date and time column type.
  /// - "TEXT" : The text column type.
  /// - "BOOLEAN" : The boolean column type.
  /// - "DROPDOWN" : The dropdown column type.
  /// - "FILES_CHIP" : The files chip column type
  /// - "PEOPLE_CHIP" : The people chip column type
  /// - "FINANCE_CHIP" : The finance chip column type
  /// - "PLACE_CHIP" : The place chip column type
  /// - "RATINGS_CHIP" : The ratings chip column type
  core.String? columnType;

  /// The column data validation rule.
  ///
  /// Only set for dropdown column type.
  TableColumnDataValidationRule? dataValidationRule;

  TableColumnProperties({
    this.columnIndex,
    this.columnName,
    this.columnType,
    this.dataValidationRule,
  });

  TableColumnProperties.fromJson(core.Map json_)
    : this(
        columnIndex: json_['columnIndex'] as core.int?,
        columnName: json_['columnName'] as core.String?,
        columnType: json_['columnType'] as core.String?,
        dataValidationRule: json_.containsKey('dataValidationRule')
            ? TableColumnDataValidationRule.fromJson(
                json_['dataValidationRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnIndex = this.columnIndex;
    final columnName = this.columnName;
    final columnType = this.columnType;
    final dataValidationRule = this.dataValidationRule;
    return {
      'columnIndex': ?columnIndex,
      'columnName': ?columnName,
      'columnType': ?columnType,
      'dataValidationRule': ?dataValidationRule,
    };
  }
}

/// The table row properties.
class TableRowsProperties {
  /// The first color that is alternating.
  ///
  /// If this field is set, the first banded row is filled with the specified
  /// color. Otherwise, the first banded row is filled with a default color.
  ColorStyle? firstBandColorStyle;

  /// The color of the last row.
  ///
  /// If this field is not set a footer is not added, the last row is filled
  /// with either first_band_color_style or second_band_color_style, depending
  /// on the color of the previous row. If updating an existing table without a
  /// footer to have a footer, the range will be expanded by 1 row. If updating
  /// an existing table with a footer and removing a footer, the range will be
  /// shrunk by 1 row.
  ColorStyle? footerColorStyle;

  /// The color of the header row.
  ///
  /// If this field is set, the header row is filled with the specified color.
  /// Otherwise, the header row is filled with a default color.
  ColorStyle? headerColorStyle;

  /// The second color that is alternating.
  ///
  /// If this field is set, the second banded row is filled with the specified
  /// color. Otherwise, the second banded row is filled with a default color.
  ColorStyle? secondBandColorStyle;

  TableRowsProperties({
    this.firstBandColorStyle,
    this.footerColorStyle,
    this.headerColorStyle,
    this.secondBandColorStyle,
  });

  TableRowsProperties.fromJson(core.Map json_)
    : this(
        firstBandColorStyle: json_.containsKey('firstBandColorStyle')
            ? ColorStyle.fromJson(
                json_['firstBandColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        footerColorStyle: json_.containsKey('footerColorStyle')
            ? ColorStyle.fromJson(
                json_['footerColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        headerColorStyle: json_.containsKey('headerColorStyle')
            ? ColorStyle.fromJson(
                json_['headerColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        secondBandColorStyle: json_.containsKey('secondBandColorStyle')
            ? ColorStyle.fromJson(
                json_['secondBandColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final firstBandColorStyle = this.firstBandColorStyle;
    final footerColorStyle = this.footerColorStyle;
    final headerColorStyle = this.headerColorStyle;
    final secondBandColorStyle = this.secondBandColorStyle;
    return {
      'firstBandColorStyle': ?firstBandColorStyle,
      'footerColorStyle': ?footerColorStyle,
      'headerColorStyle': ?headerColorStyle,
      'secondBandColorStyle': ?secondBandColorStyle,
    };
  }
}

/// The format of a run of text in a cell.
///
/// Absent values indicate that the field isn't specified.
class TextFormat {
  /// True if the text is bold.
  core.bool? bold;

  /// The font family.
  core.String? fontFamily;

  /// The size of the font.
  core.int? fontSize;

  /// The foreground color of the text.
  ///
  /// Deprecated: Use foreground_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? foregroundColor;

  /// The foreground color of the text.
  ///
  /// If foreground_color is also set, this field takes precedence.
  ColorStyle? foregroundColorStyle;

  /// True if the text is italicized.
  core.bool? italic;

  /// The link destination of the text, if any.
  ///
  /// Setting the link field in a TextFormatRun will clear the cell's existing
  /// links or a cell-level link set in the same request. When a link is set,
  /// the text foreground color will be set to the default link color and the
  /// text will be underlined. If these fields are modified in the same request,
  /// those values will be used instead of the link defaults.
  Link? link;

  /// True if the text has a strikethrough.
  core.bool? strikethrough;

  /// True if the text is underlined.
  core.bool? underline;

  TextFormat({
    this.bold,
    this.fontFamily,
    this.fontSize,
    this.foregroundColor,
    this.foregroundColorStyle,
    this.italic,
    this.link,
    this.strikethrough,
    this.underline,
  });

  TextFormat.fromJson(core.Map json_)
    : this(
        bold: json_['bold'] as core.bool?,
        fontFamily: json_['fontFamily'] as core.String?,
        fontSize: json_['fontSize'] as core.int?,
        foregroundColor: json_.containsKey('foregroundColor')
            ? Color.fromJson(
                json_['foregroundColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        foregroundColorStyle: json_.containsKey('foregroundColorStyle')
            ? ColorStyle.fromJson(
                json_['foregroundColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        italic: json_['italic'] as core.bool?,
        link: json_.containsKey('link')
            ? Link.fromJson(
                json_['link'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        strikethrough: json_['strikethrough'] as core.bool?,
        underline: json_['underline'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bold = this.bold;
    final fontFamily = this.fontFamily;
    final fontSize = this.fontSize;
    final foregroundColor = this.foregroundColor;
    final foregroundColorStyle = this.foregroundColorStyle;
    final italic = this.italic;
    final link = this.link;
    final strikethrough = this.strikethrough;
    final underline = this.underline;
    return {
      'bold': ?bold,
      'fontFamily': ?fontFamily,
      'fontSize': ?fontSize,
      'foregroundColor': ?foregroundColor,
      'foregroundColorStyle': ?foregroundColorStyle,
      'italic': ?italic,
      'link': ?link,
      'strikethrough': ?strikethrough,
      'underline': ?underline,
    };
  }
}

/// A run of a text format.
///
/// The format of this run continues until the start index of the next run. When
/// updating, all fields must be set.
class TextFormatRun {
  /// The format of this run.
  ///
  /// Absent values inherit the cell's format.
  TextFormat? format;

  /// The zero-based character index where this run starts, in UTF-16 code
  /// units.
  core.int? startIndex;

  TextFormatRun({this.format, this.startIndex});

  TextFormatRun.fromJson(core.Map json_)
    : this(
        format: json_.containsKey('format')
            ? TextFormat.fromJson(
                json_['format'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startIndex: json_['startIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final format = this.format;
    final startIndex = this.startIndex;
    return {'format': ?format, 'startIndex': ?startIndex};
  }
}

/// Position settings for text.
class TextPosition {
  /// Horizontal alignment setting for the piece of text.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGN_UNSPECIFIED" : The horizontal alignment is not
  /// specified. Do not use this.
  /// - "LEFT" : The text is explicitly aligned to the left of the cell.
  /// - "CENTER" : The text is explicitly aligned to the center of the cell.
  /// - "RIGHT" : The text is explicitly aligned to the right of the cell.
  core.String? horizontalAlignment;

  TextPosition({this.horizontalAlignment});

  TextPosition.fromJson(core.Map json_)
    : this(horizontalAlignment: json_['horizontalAlignment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final horizontalAlignment = this.horizontalAlignment;
    return {'horizontalAlignment': ?horizontalAlignment};
  }
}

/// The rotation applied to text in a cell.
class TextRotation {
  /// The angle between the standard orientation and the desired orientation.
  ///
  /// Measured in degrees. Valid values are between -90 and 90. Positive angles
  /// are angled upwards, negative are angled downwards. Note: For LTR text
  /// direction positive angles are in the counterclockwise direction, whereas
  /// for RTL they are in the clockwise direction
  core.int? angle;

  /// If true, text reads top to bottom, but the orientation of individual
  /// characters is unchanged.
  ///
  /// For example: | V | | e | | r | | t | | i | | c | | a | | l |
  core.bool? vertical;

  TextRotation({this.angle, this.vertical});

  TextRotation.fromJson(core.Map json_)
    : this(
        angle: json_['angle'] as core.int?,
        vertical: json_['vertical'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final angle = this.angle;
    final vertical = this.vertical;
    return {'angle': ?angle, 'vertical': ?vertical};
  }
}

/// Splits a column of text into multiple columns, based on a delimiter in each
/// cell.
class TextToColumnsRequest {
  /// The delimiter to use.
  ///
  /// Used only if delimiterType is CUSTOM.
  core.String? delimiter;

  /// The delimiter type to use.
  /// Possible string values are:
  /// - "DELIMITER_TYPE_UNSPECIFIED" : Default value. This value must not be
  /// used.
  /// - "COMMA" : ","
  /// - "SEMICOLON" : ";"
  /// - "PERIOD" : "."
  /// - "SPACE" : " "
  /// - "CUSTOM" : A custom value as defined in delimiter.
  /// - "AUTODETECT" : Automatically detect columns.
  core.String? delimiterType;

  /// The source data range.
  ///
  /// This must span exactly one column.
  GridRange? source;

  TextToColumnsRequest({this.delimiter, this.delimiterType, this.source});

  TextToColumnsRequest.fromJson(core.Map json_)
    : this(
        delimiter: json_['delimiter'] as core.String?,
        delimiterType: json_['delimiterType'] as core.String?,
        source: json_.containsKey('source')
            ? GridRange.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delimiter = this.delimiter;
    final delimiterType = this.delimiterType;
    final source = this.source;
    return {
      'delimiter': ?delimiter,
      'delimiterType': ?delimiterType,
      'source': ?source,
    };
  }
}

/// A pair mapping a spreadsheet theme color type to the concrete color it
/// represents.
class ThemeColorPair {
  /// The concrete color corresponding to the theme color type.
  ColorStyle? color;

  /// The type of the spreadsheet theme color.
  /// Possible string values are:
  /// - "THEME_COLOR_TYPE_UNSPECIFIED" : Unspecified theme color
  /// - "TEXT" : Represents the primary text color
  /// - "BACKGROUND" : Represents the primary background color
  /// - "ACCENT1" : Represents the first accent color
  /// - "ACCENT2" : Represents the second accent color
  /// - "ACCENT3" : Represents the third accent color
  /// - "ACCENT4" : Represents the fourth accent color
  /// - "ACCENT5" : Represents the fifth accent color
  /// - "ACCENT6" : Represents the sixth accent color
  /// - "LINK" : Represents the color to use for hyperlinks
  core.String? colorType;

  ThemeColorPair({this.color, this.colorType});

  ThemeColorPair.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? ColorStyle.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorType: json_['colorType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorType = this.colorType;
    return {'color': ?color, 'colorType': ?colorType};
  }
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// A color scale for a treemap chart.
class TreemapChartColorScale {
  /// The background color for cells with a color value greater than or equal to
  /// maxValue.
  ///
  /// Defaults to #109618 if not specified. Deprecated: Use
  /// max_value_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? maxValueColor;

  /// The background color for cells with a color value greater than or equal to
  /// maxValue.
  ///
  /// Defaults to #109618 if not specified. If max_value_color is also set, this
  /// field takes precedence.
  ColorStyle? maxValueColorStyle;

  /// The background color for cells with a color value at the midpoint between
  /// minValue and maxValue.
  ///
  /// Defaults to #efe6dc if not specified. Deprecated: Use
  /// mid_value_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? midValueColor;

  /// The background color for cells with a color value at the midpoint between
  /// minValue and maxValue.
  ///
  /// Defaults to #efe6dc if not specified. If mid_value_color is also set, this
  /// field takes precedence.
  ColorStyle? midValueColorStyle;

  /// The background color for cells with a color value less than or equal to
  /// minValue.
  ///
  /// Defaults to #dc3912 if not specified. Deprecated: Use
  /// min_value_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? minValueColor;

  /// The background color for cells with a color value less than or equal to
  /// minValue.
  ///
  /// Defaults to #dc3912 if not specified. If min_value_color is also set, this
  /// field takes precedence.
  ColorStyle? minValueColorStyle;

  /// The background color for cells that have no color data associated with
  /// them.
  ///
  /// Defaults to #000000 if not specified. Deprecated: Use no_data_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? noDataColor;

  /// The background color for cells that have no color data associated with
  /// them.
  ///
  /// Defaults to #000000 if not specified. If no_data_color is also set, this
  /// field takes precedence.
  ColorStyle? noDataColorStyle;

  TreemapChartColorScale({
    this.maxValueColor,
    this.maxValueColorStyle,
    this.midValueColor,
    this.midValueColorStyle,
    this.minValueColor,
    this.minValueColorStyle,
    this.noDataColor,
    this.noDataColorStyle,
  });

  TreemapChartColorScale.fromJson(core.Map json_)
    : this(
        maxValueColor: json_.containsKey('maxValueColor')
            ? Color.fromJson(
                json_['maxValueColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxValueColorStyle: json_.containsKey('maxValueColorStyle')
            ? ColorStyle.fromJson(
                json_['maxValueColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        midValueColor: json_.containsKey('midValueColor')
            ? Color.fromJson(
                json_['midValueColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        midValueColorStyle: json_.containsKey('midValueColorStyle')
            ? ColorStyle.fromJson(
                json_['midValueColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        minValueColor: json_.containsKey('minValueColor')
            ? Color.fromJson(
                json_['minValueColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minValueColorStyle: json_.containsKey('minValueColorStyle')
            ? ColorStyle.fromJson(
                json_['minValueColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        noDataColor: json_.containsKey('noDataColor')
            ? Color.fromJson(
                json_['noDataColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        noDataColorStyle: json_.containsKey('noDataColorStyle')
            ? ColorStyle.fromJson(
                json_['noDataColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxValueColor = this.maxValueColor;
    final maxValueColorStyle = this.maxValueColorStyle;
    final midValueColor = this.midValueColor;
    final midValueColorStyle = this.midValueColorStyle;
    final minValueColor = this.minValueColor;
    final minValueColorStyle = this.minValueColorStyle;
    final noDataColor = this.noDataColor;
    final noDataColorStyle = this.noDataColorStyle;
    return {
      'maxValueColor': ?maxValueColor,
      'maxValueColorStyle': ?maxValueColorStyle,
      'midValueColor': ?midValueColor,
      'midValueColorStyle': ?midValueColorStyle,
      'minValueColor': ?minValueColor,
      'minValueColorStyle': ?minValueColorStyle,
      'noDataColor': ?noDataColor,
      'noDataColorStyle': ?noDataColorStyle,
    };
  }
}

/// A Treemap chart.
class TreemapChartSpec {
  /// The data that determines the background color of each treemap data cell.
  ///
  /// This field is optional. If not specified, size_data is used to determine
  /// background colors. If specified, the data is expected to be numeric.
  /// color_scale will determine how the values in this data map to data cell
  /// background colors.
  ChartData? colorData;

  /// The color scale for data cells in the treemap chart.
  ///
  /// Data cells are assigned colors based on their color values. These color
  /// values come from color_data, or from size_data if color_data is not
  /// specified. Cells with color values less than or equal to min_value will
  /// have minValueColor as their background color. Cells with color values
  /// greater than or equal to max_value will have maxValueColor as their
  /// background color. Cells with color values between min_value and max_value
  /// will have background colors on a gradient between minValueColor and
  /// maxValueColor, the midpoint of the gradient being midValueColor. Cells
  /// with missing or non-numeric color values will have noDataColor as their
  /// background color.
  TreemapChartColorScale? colorScale;

  /// The background color for header cells.
  ///
  /// Deprecated: Use header_color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? headerColor;

  /// The background color for header cells.
  ///
  /// If header_color is also set, this field takes precedence.
  ColorStyle? headerColorStyle;

  /// True to hide tooltips.
  core.bool? hideTooltips;

  /// The number of additional data levels beyond the labeled levels to be shown
  /// on the treemap chart.
  ///
  /// These levels are not interactive and are shown without their labels.
  /// Defaults to 0 if not specified.
  core.int? hintedLevels;

  /// The data that contains the treemap cell labels.
  ChartData? labels;

  /// The number of data levels to show on the treemap chart.
  ///
  /// These levels are interactive and are shown with their labels. Defaults to
  /// 2 if not specified.
  core.int? levels;

  /// The maximum possible data value.
  ///
  /// Cells with values greater than this will have the same color as cells with
  /// this value. If not specified, defaults to the actual maximum value from
  /// color_data, or the maximum value from size_data if color_data is not
  /// specified.
  core.double? maxValue;

  /// The minimum possible data value.
  ///
  /// Cells with values less than this will have the same color as cells with
  /// this value. If not specified, defaults to the actual minimum value from
  /// color_data, or the minimum value from size_data if color_data is not
  /// specified.
  core.double? minValue;

  /// The data the contains the treemap cells' parent labels.
  ChartData? parentLabels;

  /// The data that determines the size of each treemap data cell.
  ///
  /// This data is expected to be numeric. The cells corresponding to
  /// non-numeric or missing data will not be rendered. If color_data is not
  /// specified, this data is used to determine data cell background colors as
  /// well.
  ChartData? sizeData;

  /// The text format for all labels on the chart.
  ///
  /// The link field is not supported.
  TextFormat? textFormat;

  TreemapChartSpec({
    this.colorData,
    this.colorScale,
    this.headerColor,
    this.headerColorStyle,
    this.hideTooltips,
    this.hintedLevels,
    this.labels,
    this.levels,
    this.maxValue,
    this.minValue,
    this.parentLabels,
    this.sizeData,
    this.textFormat,
  });

  TreemapChartSpec.fromJson(core.Map json_)
    : this(
        colorData: json_.containsKey('colorData')
            ? ChartData.fromJson(
                json_['colorData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorScale: json_.containsKey('colorScale')
            ? TreemapChartColorScale.fromJson(
                json_['colorScale'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        headerColor: json_.containsKey('headerColor')
            ? Color.fromJson(
                json_['headerColor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        headerColorStyle: json_.containsKey('headerColorStyle')
            ? ColorStyle.fromJson(
                json_['headerColorStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hideTooltips: json_['hideTooltips'] as core.bool?,
        hintedLevels: json_['hintedLevels'] as core.int?,
        labels: json_.containsKey('labels')
            ? ChartData.fromJson(
                json_['labels'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        levels: json_['levels'] as core.int?,
        maxValue: (json_['maxValue'] as core.num?)?.toDouble(),
        minValue: (json_['minValue'] as core.num?)?.toDouble(),
        parentLabels: json_.containsKey('parentLabels')
            ? ChartData.fromJson(
                json_['parentLabels'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sizeData: json_.containsKey('sizeData')
            ? ChartData.fromJson(
                json_['sizeData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textFormat: json_.containsKey('textFormat')
            ? TextFormat.fromJson(
                json_['textFormat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final colorData = this.colorData;
    final colorScale = this.colorScale;
    final headerColor = this.headerColor;
    final headerColorStyle = this.headerColorStyle;
    final hideTooltips = this.hideTooltips;
    final hintedLevels = this.hintedLevels;
    final labels = this.labels;
    final levels = this.levels;
    final maxValue = this.maxValue;
    final minValue = this.minValue;
    final parentLabels = this.parentLabels;
    final sizeData = this.sizeData;
    final textFormat = this.textFormat;
    return {
      'colorData': ?colorData,
      'colorScale': ?colorScale,
      'headerColor': ?headerColor,
      'headerColorStyle': ?headerColorStyle,
      'hideTooltips': ?hideTooltips,
      'hintedLevels': ?hintedLevels,
      'labels': ?labels,
      'levels': ?levels,
      'maxValue': ?maxValue,
      'minValue': ?minValue,
      'parentLabels': ?parentLabels,
      'sizeData': ?sizeData,
      'textFormat': ?textFormat,
    };
  }
}

/// Trims the whitespace (such as spaces, tabs, or new lines) in every cell in
/// the specified range.
///
/// This request removes all whitespace from the start and end of each cell's
/// text, and reduces any subsequence of remaining whitespace characters to a
/// single space. If the resulting trimmed text starts with a '+' or '='
/// character, the text remains as a string value and isn't interpreted as a
/// formula.
class TrimWhitespaceRequest {
  /// The range whose cells to trim.
  GridRange? range;

  TrimWhitespaceRequest({this.range});

  TrimWhitespaceRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// The result of trimming whitespace in cells.
class TrimWhitespaceResponse {
  /// The number of cells that were trimmed of whitespace.
  core.int? cellsChangedCount;

  TrimWhitespaceResponse({this.cellsChangedCount});

  TrimWhitespaceResponse.fromJson(core.Map json_)
    : this(cellsChangedCount: json_['cellsChangedCount'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final cellsChangedCount = this.cellsChangedCount;
    return {'cellsChangedCount': ?cellsChangedCount};
  }
}

/// Unmerges cells in the given range.
class UnmergeCellsRequest {
  /// The range within which all cells should be unmerged.
  ///
  /// If the range spans multiple merges, all will be unmerged. The range must
  /// not partially span any merge.
  GridRange? range;

  UnmergeCellsRequest({this.range});

  UnmergeCellsRequest.fromJson(core.Map json_)
    : this(
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final range = this.range;
    return {'range': ?range};
  }
}

/// Updates properties of the supplied banded range.
class UpdateBandingRequest {
  /// The banded range to update with the new properties.
  BandedRange? bandedRange;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `bandedRange` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  UpdateBandingRequest({this.bandedRange, this.fields});

  UpdateBandingRequest.fromJson(core.Map json_)
    : this(
        bandedRange: json_.containsKey('bandedRange')
            ? BandedRange.fromJson(
                json_['bandedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bandedRange = this.bandedRange;
    final fields = this.fields;
    return {'bandedRange': ?bandedRange, 'fields': ?fields};
  }
}

/// Updates the borders of a range.
///
/// If a field is not set in the request, that means the border remains as-is.
/// For example, with two subsequent UpdateBordersRequest: 1. range: A1:A5 `{
/// top: RED, bottom: WHITE }` 2. range: A1:A5 `{ left: BLUE }` That would
/// result in A1:A5 having a borders of `{ top: RED, bottom: WHITE, left: BLUE
/// }`. If you want to clear a border, explicitly set the style to NONE.
class UpdateBordersRequest {
  /// The border to put at the bottom of the range.
  Border? bottom;

  /// The horizontal border to put within the range.
  Border? innerHorizontal;

  /// The vertical border to put within the range.
  Border? innerVertical;

  /// The border to put at the left of the range.
  Border? left;

  /// The range whose borders should be updated.
  GridRange? range;

  /// The border to put at the right of the range.
  Border? right;

  /// The border to put at the top of the range.
  Border? top;

  UpdateBordersRequest({
    this.bottom,
    this.innerHorizontal,
    this.innerVertical,
    this.left,
    this.range,
    this.right,
    this.top,
  });

  UpdateBordersRequest.fromJson(core.Map json_)
    : this(
        bottom: json_.containsKey('bottom')
            ? Border.fromJson(
                json_['bottom'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        innerHorizontal: json_.containsKey('innerHorizontal')
            ? Border.fromJson(
                json_['innerHorizontal'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        innerVertical: json_.containsKey('innerVertical')
            ? Border.fromJson(
                json_['innerVertical'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        left: json_.containsKey('left')
            ? Border.fromJson(
                json_['left'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        right: json_.containsKey('right')
            ? Border.fromJson(
                json_['right'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        top: json_.containsKey('top')
            ? Border.fromJson(
                json_['top'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bottom = this.bottom;
    final innerHorizontal = this.innerHorizontal;
    final innerVertical = this.innerVertical;
    final left = this.left;
    final range = this.range;
    final right = this.right;
    final top = this.top;
    return {
      'bottom': ?bottom,
      'innerHorizontal': ?innerHorizontal,
      'innerVertical': ?innerVertical,
      'left': ?left,
      'range': ?range,
      'right': ?right,
      'top': ?top,
    };
  }
}

/// Updates all cells in a range with new data.
class UpdateCellsRequest {
  /// The fields of CellData that should be updated.
  ///
  /// At least one field must be specified. The root is the CellData;
  /// 'row.values.' should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field.
  core.String? fields;

  /// The range to write data to.
  ///
  /// If the data in rows does not cover the entire requested range, the fields
  /// matching those set in fields will be cleared.
  GridRange? range;

  /// The data to write.
  core.List<RowData>? rows;

  /// The coordinate to start writing data at.
  ///
  /// Any number of rows and columns (including a different number of columns
  /// per row) may be written.
  GridCoordinate? start;

  UpdateCellsRequest({this.fields, this.range, this.rows, this.start});

  UpdateCellsRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        range: json_.containsKey('range')
            ? GridRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) => RowData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        start: json_.containsKey('start')
            ? GridCoordinate.fromJson(
                json_['start'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final range = this.range;
    final rows = this.rows;
    final start = this.start;
    return {'fields': ?fields, 'range': ?range, 'rows': ?rows, 'start': ?start};
  }
}

/// Updates a chart's specifications.
///
/// (This does not move or resize a chart. To move or resize a chart, use
/// UpdateEmbeddedObjectPositionRequest.)
class UpdateChartSpecRequest {
  /// The ID of the chart to update.
  core.int? chartId;

  /// The specification to apply to the chart.
  ChartSpec? spec;

  UpdateChartSpecRequest({this.chartId, this.spec});

  UpdateChartSpecRequest.fromJson(core.Map json_)
    : this(
        chartId: json_['chartId'] as core.int?,
        spec: json_.containsKey('spec')
            ? ChartSpec.fromJson(
                json_['spec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final chartId = this.chartId;
    final spec = this.spec;
    return {'chartId': ?chartId, 'spec': ?spec};
  }
}

/// Updates a conditional format rule at the given index, or moves a conditional
/// format rule to another index.
class UpdateConditionalFormatRuleRequest {
  /// The zero-based index of the rule that should be replaced or moved.
  core.int? index;

  /// The zero-based new index the rule should end up at.
  core.int? newIndex;

  /// The rule that should replace the rule at the given index.
  ConditionalFormatRule? rule;

  /// The sheet of the rule to move.
  ///
  /// Required if new_index is set, unused otherwise.
  core.int? sheetId;

  UpdateConditionalFormatRuleRequest({
    this.index,
    this.newIndex,
    this.rule,
    this.sheetId,
  });

  UpdateConditionalFormatRuleRequest.fromJson(core.Map json_)
    : this(
        index: json_['index'] as core.int?,
        newIndex: json_['newIndex'] as core.int?,
        rule: json_.containsKey('rule')
            ? ConditionalFormatRule.fromJson(
                json_['rule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sheetId: json_['sheetId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final index = this.index;
    final newIndex = this.newIndex;
    final rule = this.rule;
    final sheetId = this.sheetId;
    return {
      'index': ?index,
      'newIndex': ?newIndex,
      'rule': ?rule,
      'sheetId': ?sheetId,
    };
  }
}

/// The result of updating a conditional format rule.
class UpdateConditionalFormatRuleResponse {
  /// The index of the new rule.
  core.int? newIndex;

  /// The new rule that replaced the old rule (if replacing), or the rule that
  /// was moved (if moved)
  ConditionalFormatRule? newRule;

  /// The old index of the rule.
  ///
  /// Not set if a rule was replaced (because it is the same as new_index).
  core.int? oldIndex;

  /// The old (deleted) rule.
  ///
  /// Not set if a rule was moved (because it is the same as new_rule).
  ConditionalFormatRule? oldRule;

  UpdateConditionalFormatRuleResponse({
    this.newIndex,
    this.newRule,
    this.oldIndex,
    this.oldRule,
  });

  UpdateConditionalFormatRuleResponse.fromJson(core.Map json_)
    : this(
        newIndex: json_['newIndex'] as core.int?,
        newRule: json_.containsKey('newRule')
            ? ConditionalFormatRule.fromJson(
                json_['newRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oldIndex: json_['oldIndex'] as core.int?,
        oldRule: json_.containsKey('oldRule')
            ? ConditionalFormatRule.fromJson(
                json_['oldRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newIndex = this.newIndex;
    final newRule = this.newRule;
    final oldIndex = this.oldIndex;
    final oldRule = this.oldRule;
    return {
      'newIndex': ?newIndex,
      'newRule': ?newRule,
      'oldIndex': ?oldIndex,
      'oldRule': ?oldRule,
    };
  }
}

/// Updates a data source.
///
/// After the data source is updated successfully, an execution is triggered to
/// refresh the associated DATA_SOURCE sheet to read data from the updated data
/// source. The request requires an additional `bigquery.readonly` OAuth scope
/// if you are updating a BigQuery data source.
class UpdateDataSourceRequest {
  /// The data source to update.
  DataSource? dataSource;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `dataSource` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  UpdateDataSourceRequest({this.dataSource, this.fields});

  UpdateDataSourceRequest.fromJson(core.Map json_)
    : this(
        dataSource: json_.containsKey('dataSource')
            ? DataSource.fromJson(
                json_['dataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSource = this.dataSource;
    final fields = this.fields;
    return {'dataSource': ?dataSource, 'fields': ?fields};
  }
}

/// The response from updating data source.
class UpdateDataSourceResponse {
  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// The updated data source.
  DataSource? dataSource;

  UpdateDataSourceResponse({this.dataExecutionStatus, this.dataSource});

  UpdateDataSourceResponse.fromJson(core.Map json_)
    : this(
        dataExecutionStatus: json_.containsKey('dataExecutionStatus')
            ? DataExecutionStatus.fromJson(
                json_['dataExecutionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataSource: json_.containsKey('dataSource')
            ? DataSource.fromJson(
                json_['dataSource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataExecutionStatus = this.dataExecutionStatus;
    final dataSource = this.dataSource;
    return {
      'dataExecutionStatus': ?dataExecutionStatus,
      'dataSource': ?dataSource,
    };
  }
}

/// A request to update properties of developer metadata.
///
/// Updates the properties of the developer metadata selected by the filters to
/// the values provided in the DeveloperMetadata resource. Callers must specify
/// the properties they wish to update in the fields parameter, as well as
/// specify at least one DataFilter matching the metadata they wish to update.
class UpdateDeveloperMetadataRequest {
  /// The filters matching the developer metadata entries to update.
  core.List<DataFilter>? dataFilters;

  /// The value that all metadata matched by the data filters will be updated
  /// to.
  DeveloperMetadata? developerMetadata;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `developerMetadata` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field.
  core.String? fields;

  UpdateDeveloperMetadataRequest({
    this.dataFilters,
    this.developerMetadata,
    this.fields,
  });

  UpdateDeveloperMetadataRequest.fromJson(core.Map json_)
    : this(
        dataFilters: (json_['dataFilters'] as core.List?)
            ?.map(
              (value) => DataFilter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        developerMetadata: json_.containsKey('developerMetadata')
            ? DeveloperMetadata.fromJson(
                json_['developerMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilters = this.dataFilters;
    final developerMetadata = this.developerMetadata;
    final fields = this.fields;
    return {
      'dataFilters': ?dataFilters,
      'developerMetadata': ?developerMetadata,
      'fields': ?fields,
    };
  }
}

/// The response from updating developer metadata.
class UpdateDeveloperMetadataResponse {
  /// The updated developer metadata.
  core.List<DeveloperMetadata>? developerMetadata;

  UpdateDeveloperMetadataResponse({this.developerMetadata});

  UpdateDeveloperMetadataResponse.fromJson(core.Map json_)
    : this(
        developerMetadata: (json_['developerMetadata'] as core.List?)
            ?.map(
              (value) => DeveloperMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerMetadata = this.developerMetadata;
    return {'developerMetadata': ?developerMetadata};
  }
}

/// Updates the state of the specified group.
class UpdateDimensionGroupRequest {
  /// The group whose state should be updated.
  ///
  /// The range and depth of the group should specify a valid group on the
  /// sheet, and all other fields updated.
  DimensionGroup? dimensionGroup;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `dimensionGroup` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  UpdateDimensionGroupRequest({this.dimensionGroup, this.fields});

  UpdateDimensionGroupRequest.fromJson(core.Map json_)
    : this(
        dimensionGroup: json_.containsKey('dimensionGroup')
            ? DimensionGroup.fromJson(
                json_['dimensionGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionGroup = this.dimensionGroup;
    final fields = this.fields;
    return {'dimensionGroup': ?dimensionGroup, 'fields': ?fields};
  }
}

/// Updates properties of dimensions within the specified range.
class UpdateDimensionPropertiesRequest {
  /// The columns on a data source sheet to update.
  DataSourceSheetDimensionRange? dataSourceSheetRange;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// Properties to update.
  DimensionProperties? properties;

  /// The rows or columns to update.
  DimensionRange? range;

  UpdateDimensionPropertiesRequest({
    this.dataSourceSheetRange,
    this.fields,
    this.properties,
    this.range,
  });

  UpdateDimensionPropertiesRequest.fromJson(core.Map json_)
    : this(
        dataSourceSheetRange: json_.containsKey('dataSourceSheetRange')
            ? DataSourceSheetDimensionRange.fromJson(
                json_['dataSourceSheetRange']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
        properties: json_.containsKey('properties')
            ? DimensionProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        range: json_.containsKey('range')
            ? DimensionRange.fromJson(
                json_['range'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceSheetRange = this.dataSourceSheetRange;
    final fields = this.fields;
    final properties = this.properties;
    final range = this.range;
    return {
      'dataSourceSheetRange': ?dataSourceSheetRange,
      'fields': ?fields,
      'properties': ?properties,
      'range': ?range,
    };
  }
}

/// Updates an embedded object's border property.
class UpdateEmbeddedObjectBorderRequest {
  /// The border that applies to the embedded object.
  EmbeddedObjectBorder? border;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `border` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The ID of the embedded object to update.
  core.int? objectId;

  UpdateEmbeddedObjectBorderRequest({this.border, this.fields, this.objectId});

  UpdateEmbeddedObjectBorderRequest.fromJson(core.Map json_)
    : this(
        border: json_.containsKey('border')
            ? EmbeddedObjectBorder.fromJson(
                json_['border'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fields: json_['fields'] as core.String?,
        objectId: json_['objectId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final border = this.border;
    final fields = this.fields;
    final objectId = this.objectId;
    return {'border': ?border, 'fields': ?fields, 'objectId': ?objectId};
  }
}

/// Update an embedded object's position (such as a moving or resizing a chart
/// or image).
class UpdateEmbeddedObjectPositionRequest {
  /// The fields of OverlayPosition that should be updated when setting a new
  /// position.
  ///
  /// Used only if newPosition.overlayPosition is set, in which case at least
  /// one field must be specified. The root `newPosition.overlayPosition` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field.
  core.String? fields;

  /// An explicit position to move the embedded object to.
  ///
  /// If newPosition.sheetId is set, a new sheet with that ID will be created.
  /// If newPosition.newSheet is set to true, a new sheet will be created with
  /// an ID that will be chosen for you.
  EmbeddedObjectPosition? newPosition;

  /// The ID of the object to moved.
  core.int? objectId;

  UpdateEmbeddedObjectPositionRequest({
    this.fields,
    this.newPosition,
    this.objectId,
  });

  UpdateEmbeddedObjectPositionRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        newPosition: json_.containsKey('newPosition')
            ? EmbeddedObjectPosition.fromJson(
                json_['newPosition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        objectId: json_['objectId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final newPosition = this.newPosition;
    final objectId = this.objectId;
    return {
      'fields': ?fields,
      'newPosition': ?newPosition,
      'objectId': ?objectId,
    };
  }
}

/// The result of updating an embedded object's position.
class UpdateEmbeddedObjectPositionResponse {
  /// The new position of the embedded object.
  EmbeddedObjectPosition? position;

  UpdateEmbeddedObjectPositionResponse({this.position});

  UpdateEmbeddedObjectPositionResponse.fromJson(core.Map json_)
    : this(
        position: json_.containsKey('position')
            ? EmbeddedObjectPosition.fromJson(
                json_['position'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final position = this.position;
    return {'position': ?position};
  }
}

/// Updates properties of the filter view.
class UpdateFilterViewRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `filter` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The new properties of the filter view.
  FilterView? filter;

  UpdateFilterViewRequest({this.fields, this.filter});

  UpdateFilterViewRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        filter: json_.containsKey('filter')
            ? FilterView.fromJson(
                json_['filter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final filter = this.filter;
    return {'fields': ?fields, 'filter': ?filter};
  }
}

/// Updates properties of the named range with the specified namedRangeId.
class UpdateNamedRangeRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `namedRange` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The named range to update with the new properties.
  NamedRange? namedRange;

  UpdateNamedRangeRequest({this.fields, this.namedRange});

  UpdateNamedRangeRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        namedRange: json_.containsKey('namedRange')
            ? NamedRange.fromJson(
                json_['namedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final namedRange = this.namedRange;
    return {'fields': ?fields, 'namedRange': ?namedRange};
  }
}

/// Updates an existing protected range with the specified protectedRangeId.
class UpdateProtectedRangeRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `protectedRange` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The protected range to update with the new properties.
  ProtectedRange? protectedRange;

  UpdateProtectedRangeRequest({this.fields, this.protectedRange});

  UpdateProtectedRangeRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        protectedRange: json_.containsKey('protectedRange')
            ? ProtectedRange.fromJson(
                json_['protectedRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final protectedRange = this.protectedRange;
    return {'fields': ?fields, 'protectedRange': ?protectedRange};
  }
}

/// Updates properties of the sheet with the specified sheetId.
class UpdateSheetPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The properties to update.
  SheetProperties? properties;

  UpdateSheetPropertiesRequest({this.fields, this.properties});

  UpdateSheetPropertiesRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        properties: json_.containsKey('properties')
            ? SheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final properties = this.properties;
    return {'fields': ?fields, 'properties': ?properties};
  }
}

/// Updates a slicer's specifications.
///
/// (This does not move or resize a slicer. To move or resize a slicer use
/// UpdateEmbeddedObjectPositionRequest.
class UpdateSlicerSpecRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root \`SlicerSpec\` is implied
  /// and should not be specified. A single "*"\` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The id of the slicer to update.
  core.int? slicerId;

  /// The specification to apply to the slicer.
  SlicerSpec? spec;

  UpdateSlicerSpecRequest({this.fields, this.slicerId, this.spec});

  UpdateSlicerSpecRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        slicerId: json_['slicerId'] as core.int?,
        spec: json_.containsKey('spec')
            ? SlicerSpec.fromJson(
                json_['spec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final slicerId = this.slicerId;
    final spec = this.spec;
    return {'fields': ?fields, 'slicerId': ?slicerId, 'spec': ?spec};
  }
}

/// Updates properties of a spreadsheet.
class UpdateSpreadsheetPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root 'properties' is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  /// The properties to update.
  SpreadsheetProperties? properties;

  UpdateSpreadsheetPropertiesRequest({this.fields, this.properties});

  UpdateSpreadsheetPropertiesRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        properties: json_.containsKey('properties')
            ? SpreadsheetProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final properties = this.properties;
    return {'fields': ?fields, 'properties': ?properties};
  }
}

/// Updates a table in the spreadsheet.
class UpdateTableRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `table` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  ///
  /// Required.
  core.String? fields;

  /// The table to update.
  ///
  /// Required.
  Table? table;

  UpdateTableRequest({this.fields, this.table});

  UpdateTableRequest.fromJson(core.Map json_)
    : this(
        fields: json_['fields'] as core.String?,
        table: json_.containsKey('table')
            ? Table.fromJson(
                json_['table'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final table = this.table;
    return {'fields': ?fields, 'table': ?table};
  }
}

/// The response when updating a range of values by a data filter in a
/// spreadsheet.
class UpdateValuesByDataFilterResponse {
  /// The data filter that selected the range that was updated.
  DataFilter? dataFilter;

  /// The number of cells updated.
  core.int? updatedCells;

  /// The number of columns where at least one cell in the column was updated.
  core.int? updatedColumns;

  /// The values of the cells in the range matched by the dataFilter after all
  /// updates were applied.
  ///
  /// This is only included if the request's `includeValuesInResponse` field was
  /// `true`.
  ValueRange? updatedData;

  /// The range (in
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell))
  /// that updates were applied to.
  core.String? updatedRange;

  /// The number of rows where at least one cell in the row was updated.
  core.int? updatedRows;

  UpdateValuesByDataFilterResponse({
    this.dataFilter,
    this.updatedCells,
    this.updatedColumns,
    this.updatedData,
    this.updatedRange,
    this.updatedRows,
  });

  UpdateValuesByDataFilterResponse.fromJson(core.Map json_)
    : this(
        dataFilter: json_.containsKey('dataFilter')
            ? DataFilter.fromJson(
                json_['dataFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updatedCells: json_['updatedCells'] as core.int?,
        updatedColumns: json_['updatedColumns'] as core.int?,
        updatedData: json_.containsKey('updatedData')
            ? ValueRange.fromJson(
                json_['updatedData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updatedRange: json_['updatedRange'] as core.String?,
        updatedRows: json_['updatedRows'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataFilter = this.dataFilter;
    final updatedCells = this.updatedCells;
    final updatedColumns = this.updatedColumns;
    final updatedData = this.updatedData;
    final updatedRange = this.updatedRange;
    final updatedRows = this.updatedRows;
    return {
      'dataFilter': ?dataFilter,
      'updatedCells': ?updatedCells,
      'updatedColumns': ?updatedColumns,
      'updatedData': ?updatedData,
      'updatedRange': ?updatedRange,
      'updatedRows': ?updatedRows,
    };
  }
}

/// The response when updating a range of values in a spreadsheet.
class UpdateValuesResponse {
  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  /// The number of cells updated.
  core.int? updatedCells;

  /// The number of columns where at least one cell in the column was updated.
  core.int? updatedColumns;

  /// The values of the cells after updates were applied.
  ///
  /// This is only included if the request's `includeValuesInResponse` field was
  /// `true`.
  ValueRange? updatedData;

  /// The range (in A1 notation) that updates were applied to.
  core.String? updatedRange;

  /// The number of rows where at least one cell in the row was updated.
  core.int? updatedRows;

  UpdateValuesResponse({
    this.spreadsheetId,
    this.updatedCells,
    this.updatedColumns,
    this.updatedData,
    this.updatedRange,
    this.updatedRows,
  });

  UpdateValuesResponse.fromJson(core.Map json_)
    : this(
        spreadsheetId: json_['spreadsheetId'] as core.String?,
        updatedCells: json_['updatedCells'] as core.int?,
        updatedColumns: json_['updatedColumns'] as core.int?,
        updatedData: json_.containsKey('updatedData')
            ? ValueRange.fromJson(
                json_['updatedData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updatedRange: json_['updatedRange'] as core.String?,
        updatedRows: json_['updatedRows'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final spreadsheetId = this.spreadsheetId;
    final updatedCells = this.updatedCells;
    final updatedColumns = this.updatedColumns;
    final updatedData = this.updatedData;
    final updatedRange = this.updatedRange;
    final updatedRows = this.updatedRows;
    return {
      'spreadsheetId': ?spreadsheetId,
      'updatedCells': ?updatedCells,
      'updatedColumns': ?updatedColumns,
      'updatedData': ?updatedData,
      'updatedRange': ?updatedRange,
      'updatedRows': ?updatedRows,
    };
  }
}

/// Data within a range of the spreadsheet.
class ValueRange {
  /// The major dimension of the values.
  ///
  /// For output, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then
  /// requesting `range=A1:B2,majorDimension=ROWS` will return `[[1,2],[3,4]]`,
  /// whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return
  /// `[[1,3],[2,4]]`. For input, with `range=A1:B2,majorDimension=ROWS` then
  /// `[[1,2],[3,4]]` will set `A1=1,B1=2,A2=3,B2=4`. With
  /// `range=A1:B2,majorDimension=COLUMNS` then `[[1,2],[3,4]]` will set
  /// `A1=1,B1=3,A2=2,B2=4`. When writing, if this field is not set, it defaults
  /// to ROWS.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String? majorDimension;

  /// The range the values cover, in
  /// [A1 notation](https://developers.google.com/workspace/sheets/api/guides/concepts#cell).
  ///
  /// For output, this range indicates the entire requested range, even though
  /// the values will exclude trailing rows and columns. When appending values,
  /// this field represents the range to search for a table, after which values
  /// will be appended.
  core.String? range;

  /// The data that was read or to be written.
  ///
  /// This is an array of arrays, the outer array representing all the data and
  /// each inner array representing a major dimension. Each item in the inner
  /// array corresponds with one cell. For output, empty trailing rows and
  /// columns will not be included. For input, supported value types are: bool,
  /// string, and double. Null values will be skipped. To set a cell to an empty
  /// value, set the string value to an empty string.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? values;

  ValueRange({this.majorDimension, this.range, this.values});

  ValueRange.fromJson(core.Map json_)
    : this(
        majorDimension: json_['majorDimension'] as core.String?,
        range: json_['range'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.List)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final majorDimension = this.majorDimension;
    final range = this.range;
    final values = this.values;
    return {
      'majorDimension': ?majorDimension,
      'range': ?range,
      'values': ?values,
    };
  }
}

/// Styles for a waterfall chart column.
class WaterfallChartColumnStyle {
  /// The color of the column.
  ///
  /// Deprecated: Use color_style.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Color? color;

  /// The color of the column.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  /// The label of the column's legend.
  core.String? label;

  WaterfallChartColumnStyle({this.color, this.colorStyle, this.label});

  WaterfallChartColumnStyle.fromJson(core.Map json_)
    : this(
        color: json_.containsKey('color')
            ? Color.fromJson(
                json_['color'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        colorStyle: json_.containsKey('colorStyle')
            ? ColorStyle.fromJson(
                json_['colorStyle'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        label: json_['label'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final color = this.color;
    final colorStyle = this.colorStyle;
    final label = this.label;
    return {'color': ?color, 'colorStyle': ?colorStyle, 'label': ?label};
  }
}

/// A custom subtotal column for a waterfall chart series.
class WaterfallChartCustomSubtotal {
  /// True if the data point at subtotal_index is the subtotal.
  ///
  /// If false, the subtotal will be computed and appear after the data point.
  core.bool? dataIsSubtotal;

  /// A label for the subtotal column.
  core.String? label;

  /// The zero-based index of a data point within the series.
  ///
  /// If data_is_subtotal is true, the data point at this index is the subtotal.
  /// Otherwise, the subtotal appears after the data point with this index. A
  /// series can have multiple subtotals at arbitrary indices, but subtotals do
  /// not affect the indices of the data points. For example, if a series has
  /// three data points, their indices will always be 0, 1, and 2, regardless of
  /// how many subtotals exist on the series or what data points they are
  /// associated with.
  core.int? subtotalIndex;

  WaterfallChartCustomSubtotal({
    this.dataIsSubtotal,
    this.label,
    this.subtotalIndex,
  });

  WaterfallChartCustomSubtotal.fromJson(core.Map json_)
    : this(
        dataIsSubtotal: json_['dataIsSubtotal'] as core.bool?,
        label: json_['label'] as core.String?,
        subtotalIndex: json_['subtotalIndex'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataIsSubtotal = this.dataIsSubtotal;
    final label = this.label;
    final subtotalIndex = this.subtotalIndex;
    return {
      'dataIsSubtotal': ?dataIsSubtotal,
      'label': ?label,
      'subtotalIndex': ?subtotalIndex,
    };
  }
}

/// The domain of a waterfall chart.
class WaterfallChartDomain {
  /// The data of the WaterfallChartDomain.
  ChartData? data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool? reversed;

  WaterfallChartDomain({this.data, this.reversed});

  WaterfallChartDomain.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? ChartData.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reversed: json_['reversed'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final reversed = this.reversed;
    return {'data': ?data, 'reversed': ?reversed};
  }
}

/// A single series of data for a waterfall chart.
class WaterfallChartSeries {
  /// Custom subtotal columns appearing in this series.
  ///
  /// The order in which subtotals are defined is not significant. Only one
  /// subtotal may be defined for each data point.
  core.List<WaterfallChartCustomSubtotal>? customSubtotals;

  /// The data being visualized in this series.
  ChartData? data;

  /// Information about the data labels for this series.
  DataLabel? dataLabel;

  /// True to hide the subtotal column from the end of the series.
  ///
  /// By default, a subtotal column will appear at the end of each series.
  /// Setting this field to true will hide that subtotal column for this series.
  core.bool? hideTrailingSubtotal;

  /// Styles for all columns in this series with negative values.
  WaterfallChartColumnStyle? negativeColumnsStyle;

  /// Styles for all columns in this series with positive values.
  WaterfallChartColumnStyle? positiveColumnsStyle;

  /// Styles for all subtotal columns in this series.
  WaterfallChartColumnStyle? subtotalColumnsStyle;

  WaterfallChartSeries({
    this.customSubtotals,
    this.data,
    this.dataLabel,
    this.hideTrailingSubtotal,
    this.negativeColumnsStyle,
    this.positiveColumnsStyle,
    this.subtotalColumnsStyle,
  });

  WaterfallChartSeries.fromJson(core.Map json_)
    : this(
        customSubtotals: (json_['customSubtotals'] as core.List?)
            ?.map(
              (value) => WaterfallChartCustomSubtotal.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        data: json_.containsKey('data')
            ? ChartData.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataLabel: json_.containsKey('dataLabel')
            ? DataLabel.fromJson(
                json_['dataLabel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        hideTrailingSubtotal: json_['hideTrailingSubtotal'] as core.bool?,
        negativeColumnsStyle: json_.containsKey('negativeColumnsStyle')
            ? WaterfallChartColumnStyle.fromJson(
                json_['negativeColumnsStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        positiveColumnsStyle: json_.containsKey('positiveColumnsStyle')
            ? WaterfallChartColumnStyle.fromJson(
                json_['positiveColumnsStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        subtotalColumnsStyle: json_.containsKey('subtotalColumnsStyle')
            ? WaterfallChartColumnStyle.fromJson(
                json_['subtotalColumnsStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customSubtotals = this.customSubtotals;
    final data = this.data;
    final dataLabel = this.dataLabel;
    final hideTrailingSubtotal = this.hideTrailingSubtotal;
    final negativeColumnsStyle = this.negativeColumnsStyle;
    final positiveColumnsStyle = this.positiveColumnsStyle;
    final subtotalColumnsStyle = this.subtotalColumnsStyle;
    return {
      'customSubtotals': ?customSubtotals,
      'data': ?data,
      'dataLabel': ?dataLabel,
      'hideTrailingSubtotal': ?hideTrailingSubtotal,
      'negativeColumnsStyle': ?negativeColumnsStyle,
      'positiveColumnsStyle': ?positiveColumnsStyle,
      'subtotalColumnsStyle': ?subtotalColumnsStyle,
    };
  }
}

/// A waterfall chart.
class WaterfallChartSpec {
  /// The line style for the connector lines.
  LineStyle? connectorLineStyle;

  /// The domain data (horizontal axis) for the waterfall chart.
  WaterfallChartDomain? domain;

  /// True to interpret the first value as a total.
  core.bool? firstValueIsTotal;

  /// True to hide connector lines between columns.
  core.bool? hideConnectorLines;

  /// The data this waterfall chart is visualizing.
  core.List<WaterfallChartSeries>? series;

  /// The stacked type.
  /// Possible string values are:
  /// - "WATERFALL_STACKED_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "STACKED" : Values corresponding to the same domain (horizontal axis)
  /// value will be stacked vertically.
  /// - "SEQUENTIAL" : Series will spread out along the horizontal axis.
  core.String? stackedType;

  /// Controls whether to display additional data labels on stacked charts which
  /// sum the total value of all stacked values at each value along the domain
  /// axis.
  ///
  /// stacked_type must be STACKED and neither CUSTOM nor placement can be set
  /// on the total_data_label.
  DataLabel? totalDataLabel;

  WaterfallChartSpec({
    this.connectorLineStyle,
    this.domain,
    this.firstValueIsTotal,
    this.hideConnectorLines,
    this.series,
    this.stackedType,
    this.totalDataLabel,
  });

  WaterfallChartSpec.fromJson(core.Map json_)
    : this(
        connectorLineStyle: json_.containsKey('connectorLineStyle')
            ? LineStyle.fromJson(
                json_['connectorLineStyle']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        domain: json_.containsKey('domain')
            ? WaterfallChartDomain.fromJson(
                json_['domain'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        firstValueIsTotal: json_['firstValueIsTotal'] as core.bool?,
        hideConnectorLines: json_['hideConnectorLines'] as core.bool?,
        series: (json_['series'] as core.List?)
            ?.map(
              (value) => WaterfallChartSeries.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        stackedType: json_['stackedType'] as core.String?,
        totalDataLabel: json_.containsKey('totalDataLabel')
            ? DataLabel.fromJson(
                json_['totalDataLabel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectorLineStyle = this.connectorLineStyle;
    final domain = this.domain;
    final firstValueIsTotal = this.firstValueIsTotal;
    final hideConnectorLines = this.hideConnectorLines;
    final series = this.series;
    final stackedType = this.stackedType;
    final totalDataLabel = this.totalDataLabel;
    return {
      'connectorLineStyle': ?connectorLineStyle,
      'domain': ?domain,
      'firstValueIsTotal': ?firstValueIsTotal,
      'hideConnectorLines': ?hideConnectorLines,
      'series': ?series,
      'stackedType': ?stackedType,
      'totalDataLabel': ?totalDataLabel,
    };
  }
}
