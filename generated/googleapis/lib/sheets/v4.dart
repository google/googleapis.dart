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

/// Google Sheets API - v4
///
/// Reads and writes Google Sheets.
///
/// For more information, see <https://developers.google.com/sheets/>
///
/// Create an instance of [SheetsApi] to access these resources:
///
/// - [SpreadsheetsResource]
///   - [SpreadsheetsDeveloperMetadataResource]
///   - [SpreadsheetsSheetsResource]
///   - [SpreadsheetsValuesResource]
library sheets.v4;

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

  SheetsApi(http.Client client,
      {core.String rootUrl = 'https://sheets.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        ':batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateSpreadsheetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v4/spreadsheets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the spreadsheet at the given ID.
  ///
  /// The caller must specify the spreadsheet ID. By default, data within grids
  /// is not returned. You can include grid data in one of 2 ways: * Specify a
  /// field mask listing your desired fields using the `fields` URL parameter in
  /// HTTP * Set the includeGridData URL parameter to true. If a field mask is
  /// set, the `includeGridData` parameter is ignored For large spreadsheets, as
  /// a best practice, retrieve only the specific spreadsheet fields that you
  /// want. To retrieve only subsets of spreadsheet data, use the ranges URL
  /// parameter. Ranges are specified using \[A1
  /// notation\](/sheets/api/guides/concepts#cell). You can define a single cell
  /// (for example, `A1`) or multiple cells (for example, `A1:D5`). You can also
  /// get cells from other sheets within the same spreadsheet (for example,
  /// `Sheet2!A1:C4`) or retrieve multiple ranges at once (for example,
  /// `?ranges=A1:D5&ranges=Sheet2!A1:C4`). Limiting the range returns only the
  /// portions of the spreadsheet that intersect the requested ranges.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The spreadsheet to request.
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
    core.bool? includeGridData,
    core.List<core.String>? ranges,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeGridData != null) 'includeGridData': ['${includeGridData}'],
      if (ranges != null) 'ranges': ranges,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' + commons.escapeVariable('$spreadsheetId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the spreadsheet at the given ID.
  ///
  /// The caller must specify the spreadsheet ID. This method differs from
  /// GetSpreadsheet in that it allows selecting which subsets of spreadsheet
  /// data to return by specifying a dataFilters parameter. Multiple DataFilters
  /// can be specified. Specifying one or more data filters returns the portions
  /// of the spreadsheet that intersect ranges matched by any of the filters. By
  /// default, data within grids is not returned. You can include grid data one
  /// of 2 ways: * Specify a field mask listing your desired fields using the
  /// `fields` URL parameter in HTTP * Set the includeGridData parameter to
  /// true. If a field mask is set, the `includeGridData` parameter is ignored
  /// For large spreadsheets, as a best practice, retrieve only the specific
  /// spreadsheet fields that you want.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        ':getByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Spreadsheet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/developerMetadata/' +
        commons.escapeVariable('$metadataId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeveloperMetadata.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/developerMetadata:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchDeveloperMetadataResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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
  /// \[guide\](/sheets/api/guides/values#appending_values) and \[sample
  /// code\](/sheets/api/samples/writing#append_values) for specific details of
  /// how tables are detected and data is appended. The caller must specify the
  /// spreadsheet ID, range, and a valueInputOption. The `valueInputOption` only
  /// controls how the input data will be added to the sheet (column-wise or
  /// row-wise), it does not influence what cell the data starts being written
  /// to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The \[A1 notation\](/sheets/api/guides/concepts#cell) of a range
  /// to search for a logical table of data. Values are appended after the last
  /// row of the table.
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
      if (includeValuesInResponse != null)
        'includeValuesInResponse': ['${includeValuesInResponse}'],
      if (insertDataOption != null) 'insertDataOption': [insertDataOption],
      if (responseDateTimeRenderOption != null)
        'responseDateTimeRenderOption': [responseDateTimeRenderOption],
      if (responseValueRenderOption != null)
        'responseValueRenderOption': [responseValueRenderOption],
      if (valueInputOption != null) 'valueInputOption': [valueInputOption],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchClear';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchClearValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchClearByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchClearValuesByDataFilterResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [ranges] - The \[A1 notation or R1C1
  /// notation\](/sheets/api/guides/concepts#cell) of the range to retrieve
  /// values from.
  ///
  /// [valueRenderOption] - How values should be represented in the output. The
  /// default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
      if (dateTimeRenderOption != null)
        'dateTimeRenderOption': [dateTimeRenderOption],
      if (majorDimension != null) 'majorDimension': [majorDimension],
      if (ranges != null) 'ranges': ranges,
      if (valueRenderOption != null) 'valueRenderOption': [valueRenderOption],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchGetByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetValuesByDataFilterResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values:batchUpdateByDataFilter';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateValuesByDataFilterResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [range] - The \[A1 notation or R1C1
  /// notation\](/sheets/api/guides/concepts#cell) of the values to clear.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a range of values from a spreadsheet.
  ///
  /// The caller must specify the spreadsheet ID and a range.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [range] - The \[A1 notation or R1C1
  /// notation\](/sheets/api/guides/concepts#cell) of the range to retrieve
  /// values from.
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
      if (dateTimeRenderOption != null)
        'dateTimeRenderOption': [dateTimeRenderOption],
      if (majorDimension != null) 'majorDimension': [majorDimension],
      if (valueRenderOption != null) 'valueRenderOption': [valueRenderOption],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
        commons.escapeVariable('$spreadsheetId') +
        '/values/' +
        commons.escapeVariable('$range');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ValueRange.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [range] - The \[A1 notation\](/sheets/api/guides/concepts#cell) of the
  /// values to update.
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
      if (includeValuesInResponse != null)
        'includeValuesInResponse': ['${includeValuesInResponse}'],
      if (responseDateTimeRenderOption != null)
        'responseDateTimeRenderOption': [responseDateTimeRenderOption],
      if (responseValueRenderOption != null)
        'responseValueRenderOption': [responseValueRenderOption],
      if (valueInputOption != null) 'valueInputOption': [valueInputOption],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/spreadsheets/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

  AddBandingRequest({
    this.bandedRange,
  });

  AddBandingRequest.fromJson(core.Map json_)
      : this(
          bandedRange: json_.containsKey('bandedRange')
              ? BandedRange.fromJson(
                  json_['bandedRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRange != null) 'bandedRange': bandedRange!,
      };
}

/// The result of adding a banded range.
class AddBandingResponse {
  /// The banded range that was added.
  BandedRange? bandedRange;

  AddBandingResponse({
    this.bandedRange,
  });

  AddBandingResponse.fromJson(core.Map json_)
      : this(
          bandedRange: json_.containsKey('bandedRange')
              ? BandedRange.fromJson(
                  json_['bandedRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRange != null) 'bandedRange': bandedRange!,
      };
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

  AddChartRequest({
    this.chart,
  });

  AddChartRequest.fromJson(core.Map json_)
      : this(
          chart: json_.containsKey('chart')
              ? EmbeddedChart.fromJson(
                  json_['chart'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chart != null) 'chart': chart!,
      };
}

/// The result of adding a chart to a spreadsheet.
class AddChartResponse {
  /// The newly added chart.
  EmbeddedChart? chart;

  AddChartResponse({
    this.chart,
  });

  AddChartResponse.fromJson(core.Map json_)
      : this(
          chart: json_.containsKey('chart')
              ? EmbeddedChart.fromJson(
                  json_['chart'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chart != null) 'chart': chart!,
      };
}

/// Adds a new conditional format rule at the given index.
///
/// All subsequent rules' indexes are incremented.
class AddConditionalFormatRuleRequest {
  /// The zero-based index where the rule should be inserted.
  core.int? index;

  /// The rule to add.
  ConditionalFormatRule? rule;

  AddConditionalFormatRuleRequest({
    this.index,
    this.rule,
  });

  AddConditionalFormatRuleRequest.fromJson(core.Map json_)
      : this(
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          rule: json_.containsKey('rule')
              ? ConditionalFormatRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (rule != null) 'rule': rule!,
      };
}

/// Adds a data source.
///
/// After the data source is added successfully, an associated DATA_SOURCE sheet
/// is created and an execution is triggered to refresh the sheet to read data
/// from the data source. The request requires an additional `bigquery.readonly`
/// OAuth scope.
class AddDataSourceRequest {
  /// The data source to add.
  DataSource? dataSource;

  AddDataSourceRequest({
    this.dataSource,
  });

  AddDataSourceRequest.fromJson(core.Map json_)
      : this(
          dataSource: json_.containsKey('dataSource')
              ? DataSource.fromJson(
                  json_['dataSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSource != null) 'dataSource': dataSource!,
      };
}

/// The result of adding a data source.
class AddDataSourceResponse {
  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// The data source that was created.
  DataSource? dataSource;

  AddDataSourceResponse({
    this.dataExecutionStatus,
    this.dataSource,
  });

  AddDataSourceResponse.fromJson(core.Map json_)
      : this(
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSource: json_.containsKey('dataSource')
              ? DataSource.fromJson(
                  json_['dataSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSource != null) 'dataSource': dataSource!,
      };
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

  AddDimensionGroupRequest({
    this.range,
  });

  AddDimensionGroupRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
}

/// The result of adding a group.
class AddDimensionGroupResponse {
  /// All groups of a dimension after adding a group to that dimension.
  core.List<DimensionGroup>? dimensionGroups;

  AddDimensionGroupResponse({
    this.dimensionGroups,
  });

  AddDimensionGroupResponse.fromJson(core.Map json_)
      : this(
          dimensionGroups: json_.containsKey('dimensionGroups')
              ? (json_['dimensionGroups'] as core.List)
                  .map((value) => DimensionGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionGroups != null) 'dimensionGroups': dimensionGroups!,
      };
}

/// Adds a filter view.
class AddFilterViewRequest {
  /// The filter to add.
  ///
  /// The filterViewId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a filter that
  /// already exists.)
  FilterView? filter;

  AddFilterViewRequest({
    this.filter,
  });

  AddFilterViewRequest.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? FilterView.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// The result of adding a filter view.
class AddFilterViewResponse {
  /// The newly added filter view.
  FilterView? filter;

  AddFilterViewResponse({
    this.filter,
  });

  AddFilterViewResponse.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? FilterView.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Adds a named range to the spreadsheet.
class AddNamedRangeRequest {
  /// The named range to add.
  ///
  /// The namedRangeId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a range that
  /// already exists.)
  NamedRange? namedRange;

  AddNamedRangeRequest({
    this.namedRange,
  });

  AddNamedRangeRequest.fromJson(core.Map json_)
      : this(
          namedRange: json_.containsKey('namedRange')
              ? NamedRange.fromJson(
                  json_['namedRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namedRange != null) 'namedRange': namedRange!,
      };
}

/// The result of adding a named range.
class AddNamedRangeResponse {
  /// The named range to add.
  NamedRange? namedRange;

  AddNamedRangeResponse({
    this.namedRange,
  });

  AddNamedRangeResponse.fromJson(core.Map json_)
      : this(
          namedRange: json_.containsKey('namedRange')
              ? NamedRange.fromJson(
                  json_['namedRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namedRange != null) 'namedRange': namedRange!,
      };
}

/// Adds a new protected range.
class AddProtectedRangeRequest {
  /// The protected range to be added.
  ///
  /// The protectedRangeId field is optional; if one is not set, an id will be
  /// randomly generated. (It is an error to specify the ID of a range that
  /// already exists.)
  ProtectedRange? protectedRange;

  AddProtectedRangeRequest({
    this.protectedRange,
  });

  AddProtectedRangeRequest.fromJson(core.Map json_)
      : this(
          protectedRange: json_.containsKey('protectedRange')
              ? ProtectedRange.fromJson(json_['protectedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (protectedRange != null) 'protectedRange': protectedRange!,
      };
}

/// The result of adding a new protected range.
class AddProtectedRangeResponse {
  /// The newly added protected range.
  ProtectedRange? protectedRange;

  AddProtectedRangeResponse({
    this.protectedRange,
  });

  AddProtectedRangeResponse.fromJson(core.Map json_)
      : this(
          protectedRange: json_.containsKey('protectedRange')
              ? ProtectedRange.fromJson(json_['protectedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (protectedRange != null) 'protectedRange': protectedRange!,
      };
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

  AddSheetRequest({
    this.properties,
  });

  AddSheetRequest.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? SheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
}

/// The result of adding a sheet.
class AddSheetResponse {
  /// The properties of the newly added sheet.
  SheetProperties? properties;

  AddSheetResponse({
    this.properties,
  });

  AddSheetResponse.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? SheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
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

  AddSlicerRequest({
    this.slicer,
  });

  AddSlicerRequest.fromJson(core.Map json_)
      : this(
          slicer: json_.containsKey('slicer')
              ? Slicer.fromJson(
                  json_['slicer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (slicer != null) 'slicer': slicer!,
      };
}

/// The result of adding a slicer to a spreadsheet.
class AddSlicerResponse {
  /// The newly added slicer.
  Slicer? slicer;

  AddSlicerResponse({
    this.slicer,
  });

  AddSlicerResponse.fromJson(core.Map json_)
      : this(
          slicer: json_.containsKey('slicer')
              ? Slicer.fromJson(
                  json_['slicer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (slicer != null) 'slicer': slicer!,
      };
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

  AppendCellsRequest({
    this.fields,
    this.rows,
    this.sheetId,
  });

  AppendCellsRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => RowData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (rows != null) 'rows': rows!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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

  AppendDimensionRequest({
    this.dimension,
    this.length,
    this.sheetId,
  });

  AppendDimensionRequest.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          length:
              json_.containsKey('length') ? json_['length'] as core.int : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (length != null) 'length': length!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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

  AppendValuesResponse({
    this.spreadsheetId,
    this.tableRange,
    this.updates,
  });

  AppendValuesResponse.fromJson(core.Map json_)
      : this(
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          tableRange: json_.containsKey('tableRange')
              ? json_['tableRange'] as core.String
              : null,
          updates: json_.containsKey('updates')
              ? UpdateValuesResponse.fromJson(
                  json_['updates'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (tableRange != null) 'tableRange': tableRange!,
        if (updates != null) 'updates': updates!,
      };
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
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceAndDestination: json_.containsKey('sourceAndDestination')
              ? SourceAndDestination.fromJson(json_['sourceAndDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          useAlternateSeries: json_.containsKey('useAlternateSeries')
              ? json_['useAlternateSeries'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (sourceAndDestination != null)
          'sourceAndDestination': sourceAndDestination!,
        if (useAlternateSeries != null)
          'useAlternateSeries': useAlternateSeries!,
      };
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
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dimensions: json_.containsKey('dimensions')
              ? DimensionRange.fromJson(
                  json_['dimensions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceSheetDimensions != null)
          'dataSourceSheetDimensions': dataSourceSheetDimensions!,
        if (dimensions != null) 'dimensions': dimensions!,
      };
}

/// A banded (alternating colors) range in a sheet.
class BandedRange {
  /// The id of the banded range.
  core.int? bandedRangeId;

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
    this.columnProperties,
    this.range,
    this.rowProperties,
  });

  BandedRange.fromJson(core.Map json_)
      : this(
          bandedRangeId: json_.containsKey('bandedRangeId')
              ? json_['bandedRangeId'] as core.int
              : null,
          columnProperties: json_.containsKey('columnProperties')
              ? BandingProperties.fromJson(json_['columnProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          rowProperties: json_.containsKey('rowProperties')
              ? BandingProperties.fromJson(
                  json_['rowProperties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRangeId != null) 'bandedRangeId': bandedRangeId!,
        if (columnProperties != null) 'columnProperties': columnProperties!,
        if (range != null) 'range': range!,
        if (rowProperties != null) 'rowProperties': rowProperties!,
      };
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
              ? Color.fromJson(json_['firstBandColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          firstBandColorStyle: json_.containsKey('firstBandColorStyle')
              ? ColorStyle.fromJson(json_['firstBandColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          footerColor: json_.containsKey('footerColor')
              ? Color.fromJson(
                  json_['footerColor'] as core.Map<core.String, core.dynamic>)
              : null,
          footerColorStyle: json_.containsKey('footerColorStyle')
              ? ColorStyle.fromJson(json_['footerColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          headerColor: json_.containsKey('headerColor')
              ? Color.fromJson(
                  json_['headerColor'] as core.Map<core.String, core.dynamic>)
              : null,
          headerColorStyle: json_.containsKey('headerColorStyle')
              ? ColorStyle.fromJson(json_['headerColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondBandColor: json_.containsKey('secondBandColor')
              ? Color.fromJson(json_['secondBandColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondBandColorStyle: json_.containsKey('secondBandColorStyle')
              ? ColorStyle.fromJson(json_['secondBandColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstBandColor != null) 'firstBandColor': firstBandColor!,
        if (firstBandColorStyle != null)
          'firstBandColorStyle': firstBandColorStyle!,
        if (footerColor != null) 'footerColor': footerColor!,
        if (footerColorStyle != null) 'footerColorStyle': footerColorStyle!,
        if (headerColor != null) 'headerColor': headerColor!,
        if (headerColorStyle != null) 'headerColorStyle': headerColorStyle!,
        if (secondBandColor != null) 'secondBandColor': secondBandColor!,
        if (secondBandColorStyle != null)
          'secondBandColorStyle': secondBandColorStyle!,
      };
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
          comparisonType: json_.containsKey('comparisonType')
              ? json_['comparisonType'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          negativeColor: json_.containsKey('negativeColor')
              ? Color.fromJson(
                  json_['negativeColor'] as core.Map<core.String, core.dynamic>)
              : null,
          negativeColorStyle: json_.containsKey('negativeColorStyle')
              ? ColorStyle.fromJson(json_['negativeColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          position: json_.containsKey('position')
              ? TextPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          positiveColor: json_.containsKey('positiveColor')
              ? Color.fromJson(
                  json_['positiveColor'] as core.Map<core.String, core.dynamic>)
              : null,
          positiveColorStyle: json_.containsKey('positiveColorStyle')
              ? ColorStyle.fromJson(json_['positiveColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comparisonType != null) 'comparisonType': comparisonType!,
        if (description != null) 'description': description!,
        if (negativeColor != null) 'negativeColor': negativeColor!,
        if (negativeColorStyle != null)
          'negativeColorStyle': negativeColorStyle!,
        if (position != null) 'position': position!,
        if (positiveColor != null) 'positiveColor': positiveColor!,
        if (positiveColorStyle != null)
          'positiveColorStyle': positiveColorStyle!,
        if (textFormat != null) 'textFormat': textFormat!,
      };
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
                  json_['format'] as core.Map<core.String, core.dynamic>)
              : null,
          position: json_.containsKey('position')
              ? json_['position'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          titleTextPosition: json_.containsKey('titleTextPosition')
              ? TextPosition.fromJson(json_['titleTextPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          viewWindowOptions: json_.containsKey('viewWindowOptions')
              ? ChartAxisViewWindowOptions.fromJson(json_['viewWindowOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (position != null) 'position': position!,
        if (title != null) 'title': title!,
        if (titleTextPosition != null) 'titleTextPosition': titleTextPosition!,
        if (viewWindowOptions != null) 'viewWindowOptions': viewWindowOptions!,
      };
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

  BasicChartDomain({
    this.domain,
    this.reversed,
  });

  BasicChartDomain.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? ChartData.fromJson(
                  json_['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          reversed: json_.containsKey('reversed')
              ? json_['reversed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (reversed != null) 'reversed': reversed!,
      };
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
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          dataLabel: json_.containsKey('dataLabel')
              ? DataLabel.fromJson(
                  json_['dataLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          lineStyle: json_.containsKey('lineStyle')
              ? LineStyle.fromJson(
                  json_['lineStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          pointStyle: json_.containsKey('pointStyle')
              ? PointStyle.fromJson(
                  json_['pointStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          series: json_.containsKey('series')
              ? ChartData.fromJson(
                  json_['series'] as core.Map<core.String, core.dynamic>)
              : null,
          styleOverrides: json_.containsKey('styleOverrides')
              ? (json_['styleOverrides'] as core.List)
                  .map((value) => BasicSeriesDataPointStyleOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          targetAxis: json_.containsKey('targetAxis')
              ? json_['targetAxis'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
        if (dataLabel != null) 'dataLabel': dataLabel!,
        if (lineStyle != null) 'lineStyle': lineStyle!,
        if (pointStyle != null) 'pointStyle': pointStyle!,
        if (series != null) 'series': series!,
        if (styleOverrides != null) 'styleOverrides': styleOverrides!,
        if (targetAxis != null) 'targetAxis': targetAxis!,
        if (type != null) 'type': type!,
      };
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
          axis: json_.containsKey('axis')
              ? (json_['axis'] as core.List)
                  .map((value) => BasicChartAxis.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          chartType: json_.containsKey('chartType')
              ? json_['chartType'] as core.String
              : null,
          compareMode: json_.containsKey('compareMode')
              ? json_['compareMode'] as core.String
              : null,
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => BasicChartDomain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerCount: json_.containsKey('headerCount')
              ? json_['headerCount'] as core.int
              : null,
          interpolateNulls: json_.containsKey('interpolateNulls')
              ? json_['interpolateNulls'] as core.bool
              : null,
          legendPosition: json_.containsKey('legendPosition')
              ? json_['legendPosition'] as core.String
              : null,
          lineSmoothing: json_.containsKey('lineSmoothing')
              ? json_['lineSmoothing'] as core.bool
              : null,
          series: json_.containsKey('series')
              ? (json_['series'] as core.List)
                  .map((value) => BasicChartSeries.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          stackedType: json_.containsKey('stackedType')
              ? json_['stackedType'] as core.String
              : null,
          threeDimensional: json_.containsKey('threeDimensional')
              ? json_['threeDimensional'] as core.bool
              : null,
          totalDataLabel: json_.containsKey('totalDataLabel')
              ? DataLabel.fromJson(json_['totalDataLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (axis != null) 'axis': axis!,
        if (chartType != null) 'chartType': chartType!,
        if (compareMode != null) 'compareMode': compareMode!,
        if (domains != null) 'domains': domains!,
        if (headerCount != null) 'headerCount': headerCount!,
        if (interpolateNulls != null) 'interpolateNulls': interpolateNulls!,
        if (legendPosition != null) 'legendPosition': legendPosition!,
        if (lineSmoothing != null) 'lineSmoothing': lineSmoothing!,
        if (series != null) 'series': series!,
        if (stackedType != null) 'stackedType': stackedType!,
        if (threeDimensional != null) 'threeDimensional': threeDimensional!,
        if (totalDataLabel != null) 'totalDataLabel': totalDataLabel!,
      };
}

/// The default filter associated with a sheet.
class BasicFilter {
  /// The criteria for showing/hiding values per column.
  ///
  /// The map's key is the column index, and the value is the criteria for that
  /// column. This field is deprecated in favor of filter_specs.
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

  BasicFilter({
    this.criteria,
    this.filterSpecs,
    this.range,
    this.sortSpecs,
  });

  BasicFilter.fromJson(core.Map json_)
      : this(
          criteria: json_.containsKey('criteria')
              ? (json_['criteria'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    FilterCriteria.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => FilterSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          sortSpecs: json_.containsKey('sortSpecs')
              ? (json_['sortSpecs'] as core.List)
                  .map((value) => SortSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (criteria != null) 'criteria': criteria!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
        if (range != null) 'range': range!,
        if (sortSpecs != null) 'sortSpecs': sortSpecs!,
      };
}

/// Style override settings for a single series data point.
class BasicSeriesDataPointStyleOverride {
  /// Color of the series data point.
  ///
  /// If empty, the series default is used. Deprecated: Use color_style.
  Color? color;

  /// Color of the series data point.
  ///
  /// If empty, the series default is used. If color is also set, this field
  /// takes precedence.
  ColorStyle? colorStyle;

  /// Zero based index of the series data point.
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
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          pointStyle: json_.containsKey('pointStyle')
              ? PointStyle.fromJson(
                  json_['pointStyle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
        if (index != null) 'index': index!,
        if (pointStyle != null) 'pointStyle': pointStyle!,
      };
}

/// The request for clearing more than one range selected by a DataFilter in a
/// spreadsheet.
class BatchClearValuesByDataFilterRequest {
  /// The DataFilters used to determine which ranges to clear.
  core.List<DataFilter>? dataFilters;

  BatchClearValuesByDataFilterRequest({
    this.dataFilters,
  });

  BatchClearValuesByDataFilterRequest.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
      };
}

/// The response when clearing a range of values selected with DataFilters in a
/// spreadsheet.
class BatchClearValuesByDataFilterResponse {
  /// The ranges that were cleared, in \[A1
  /// notation\](/sheets/api/guides/concepts#cell).
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
          clearedRanges: json_.containsKey('clearedRanges')
              ? (json_['clearedRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearedRanges != null) 'clearedRanges': clearedRanges!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// The request for clearing more than one range of values in a spreadsheet.
class BatchClearValuesRequest {
  /// The ranges to clear, in \[A1 notation or R1C1
  /// notation\](/sheets/api/guides/concepts#cell).
  core.List<core.String>? ranges;

  BatchClearValuesRequest({
    this.ranges,
  });

  BatchClearValuesRequest.fromJson(core.Map json_)
      : this(
          ranges: json_.containsKey('ranges')
              ? (json_['ranges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ranges != null) 'ranges': ranges!,
      };
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

  BatchClearValuesResponse({
    this.clearedRanges,
    this.spreadsheetId,
  });

  BatchClearValuesResponse.fromJson(core.Map json_)
      : this(
          clearedRanges: json_.containsKey('clearedRanges')
              ? (json_['clearedRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearedRanges != null) 'clearedRanges': clearedRanges!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
  core.String? valueRenderOption;

  BatchGetValuesByDataFilterRequest({
    this.dataFilters,
    this.dateTimeRenderOption,
    this.majorDimension,
    this.valueRenderOption,
  });

  BatchGetValuesByDataFilterRequest.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dateTimeRenderOption: json_.containsKey('dateTimeRenderOption')
              ? json_['dateTimeRenderOption'] as core.String
              : null,
          majorDimension: json_.containsKey('majorDimension')
              ? json_['majorDimension'] as core.String
              : null,
          valueRenderOption: json_.containsKey('valueRenderOption')
              ? json_['valueRenderOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
        if (dateTimeRenderOption != null)
          'dateTimeRenderOption': dateTimeRenderOption!,
        if (majorDimension != null) 'majorDimension': majorDimension!,
        if (valueRenderOption != null) 'valueRenderOption': valueRenderOption!,
      };
}

/// The response when retrieving more than one range of values in a spreadsheet
/// selected by DataFilters.
class BatchGetValuesByDataFilterResponse {
  /// The ID of the spreadsheet the data was retrieved from.
  core.String? spreadsheetId;

  /// The requested values with the list of data filters that matched them.
  core.List<MatchedValueRange>? valueRanges;

  BatchGetValuesByDataFilterResponse({
    this.spreadsheetId,
    this.valueRanges,
  });

  BatchGetValuesByDataFilterResponse.fromJson(core.Map json_)
      : this(
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          valueRanges: json_.containsKey('valueRanges')
              ? (json_['valueRanges'] as core.List)
                  .map((value) => MatchedValueRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (valueRanges != null) 'valueRanges': valueRanges!,
      };
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

  BatchGetValuesResponse({
    this.spreadsheetId,
    this.valueRanges,
  });

  BatchGetValuesResponse.fromJson(core.Map json_)
      : this(
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          valueRanges: json_.containsKey('valueRanges')
              ? (json_['valueRanges'] as core.List)
                  .map((value) => ValueRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (valueRanges != null) 'valueRanges': valueRanges!,
      };
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
              json_.containsKey('includeSpreadsheetInResponse')
                  ? json_['includeSpreadsheetInResponse'] as core.bool
                  : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => Request.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          responseIncludeGridData: json_.containsKey('responseIncludeGridData')
              ? json_['responseIncludeGridData'] as core.bool
              : null,
          responseRanges: json_.containsKey('responseRanges')
              ? (json_['responseRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeSpreadsheetInResponse != null)
          'includeSpreadsheetInResponse': includeSpreadsheetInResponse!,
        if (requests != null) 'requests': requests!,
        if (responseIncludeGridData != null)
          'responseIncludeGridData': responseIncludeGridData!,
        if (responseRanges != null) 'responseRanges': responseRanges!,
      };
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
          replies: json_.containsKey('replies')
              ? (json_['replies'] as core.List)
                  .map((value) => Response.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          updatedSpreadsheet: json_.containsKey('updatedSpreadsheet')
              ? Spreadsheet.fromJson(json_['updatedSpreadsheet']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (replies != null) 'replies': replies!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (updatedSpreadsheet != null)
          'updatedSpreadsheet': updatedSpreadsheet!,
      };
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => DataFilterValueRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeValuesInResponse: json_.containsKey('includeValuesInResponse')
              ? json_['includeValuesInResponse'] as core.bool
              : null,
          responseDateTimeRenderOption:
              json_.containsKey('responseDateTimeRenderOption')
                  ? json_['responseDateTimeRenderOption'] as core.String
                  : null,
          responseValueRenderOption:
              json_.containsKey('responseValueRenderOption')
                  ? json_['responseValueRenderOption'] as core.String
                  : null,
          valueInputOption: json_.containsKey('valueInputOption')
              ? json_['valueInputOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (includeValuesInResponse != null)
          'includeValuesInResponse': includeValuesInResponse!,
        if (responseDateTimeRenderOption != null)
          'responseDateTimeRenderOption': responseDateTimeRenderOption!,
        if (responseValueRenderOption != null)
          'responseValueRenderOption': responseValueRenderOption!,
        if (valueInputOption != null) 'valueInputOption': valueInputOption!,
      };
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
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => UpdateValuesByDataFilterResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          totalUpdatedCells: json_.containsKey('totalUpdatedCells')
              ? json_['totalUpdatedCells'] as core.int
              : null,
          totalUpdatedColumns: json_.containsKey('totalUpdatedColumns')
              ? json_['totalUpdatedColumns'] as core.int
              : null,
          totalUpdatedRows: json_.containsKey('totalUpdatedRows')
              ? json_['totalUpdatedRows'] as core.int
              : null,
          totalUpdatedSheets: json_.containsKey('totalUpdatedSheets')
              ? json_['totalUpdatedSheets'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (totalUpdatedCells != null) 'totalUpdatedCells': totalUpdatedCells!,
        if (totalUpdatedColumns != null)
          'totalUpdatedColumns': totalUpdatedColumns!,
        if (totalUpdatedRows != null) 'totalUpdatedRows': totalUpdatedRows!,
        if (totalUpdatedSheets != null)
          'totalUpdatedSheets': totalUpdatedSheets!,
      };
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
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the cell's formatting. Formatting is based on the
  /// spreadsheet's locale, not the requesting user's locale. For example, if
  /// `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2`
  /// would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated. The reply will include the
  /// formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted
  /// as currency, then A2 would return `"=A1"`.
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
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => ValueRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeValuesInResponse: json_.containsKey('includeValuesInResponse')
              ? json_['includeValuesInResponse'] as core.bool
              : null,
          responseDateTimeRenderOption:
              json_.containsKey('responseDateTimeRenderOption')
                  ? json_['responseDateTimeRenderOption'] as core.String
                  : null,
          responseValueRenderOption:
              json_.containsKey('responseValueRenderOption')
                  ? json_['responseValueRenderOption'] as core.String
                  : null,
          valueInputOption: json_.containsKey('valueInputOption')
              ? json_['valueInputOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (includeValuesInResponse != null)
          'includeValuesInResponse': includeValuesInResponse!,
        if (responseDateTimeRenderOption != null)
          'responseDateTimeRenderOption': responseDateTimeRenderOption!,
        if (responseValueRenderOption != null)
          'responseValueRenderOption': responseValueRenderOption!,
        if (valueInputOption != null) 'valueInputOption': valueInputOption!,
      };
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
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => UpdateValuesResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          totalUpdatedCells: json_.containsKey('totalUpdatedCells')
              ? json_['totalUpdatedCells'] as core.int
              : null,
          totalUpdatedColumns: json_.containsKey('totalUpdatedColumns')
              ? json_['totalUpdatedColumns'] as core.int
              : null,
          totalUpdatedRows: json_.containsKey('totalUpdatedRows')
              ? json_['totalUpdatedRows'] as core.int
              : null,
          totalUpdatedSheets: json_.containsKey('totalUpdatedSheets')
              ? json_['totalUpdatedSheets'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (totalUpdatedCells != null) 'totalUpdatedCells': totalUpdatedCells!,
        if (totalUpdatedColumns != null)
          'totalUpdatedColumns': totalUpdatedColumns!,
        if (totalUpdatedRows != null) 'totalUpdatedRows': totalUpdatedRows!,
        if (totalUpdatedSheets != null)
          'totalUpdatedSheets': totalUpdatedSheets!,
      };
}

/// The specification of a BigQuery data source that's connected to a sheet.
class BigQueryDataSourceSpec {
  /// The ID of a BigQuery enabled GCP project with a billing account attached.
  ///
  /// For any queries executed against the data source, the project is charged.
  core.String? projectId;

  /// A BigQueryQuerySpec.
  BigQueryQuerySpec? querySpec;

  /// A BigQueryTableSpec.
  BigQueryTableSpec? tableSpec;

  BigQueryDataSourceSpec({
    this.projectId,
    this.querySpec,
    this.tableSpec,
  });

  BigQueryDataSourceSpec.fromJson(core.Map json_)
      : this(
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          querySpec: json_.containsKey('querySpec')
              ? BigQueryQuerySpec.fromJson(
                  json_['querySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          tableSpec: json_.containsKey('tableSpec')
              ? BigQueryTableSpec.fromJson(
                  json_['tableSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (querySpec != null) 'querySpec': querySpec!,
        if (tableSpec != null) 'tableSpec': tableSpec!,
      };
}

/// Specifies a custom BigQuery query.
class BigQueryQuerySpec {
  /// The raw query string.
  core.String? rawQuery;

  BigQueryQuerySpec({
    this.rawQuery,
  });

  BigQueryQuerySpec.fromJson(core.Map json_)
      : this(
          rawQuery: json_.containsKey('rawQuery')
              ? json_['rawQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rawQuery != null) 'rawQuery': rawQuery!,
      };
}

/// Specifies a BigQuery table definition.
///
/// Only [native tables](https://cloud.google.com/bigquery/docs/tables-intro) is
/// allowed.
class BigQueryTableSpec {
  /// The BigQuery dataset id.
  core.String? datasetId;

  /// The BigQuery table id.
  core.String? tableId;

  /// The ID of a BigQuery project the table belongs to.
  ///
  /// If not specified, the project_id is assumed.
  core.String? tableProjectId;

  BigQueryTableSpec({
    this.datasetId,
    this.tableId,
    this.tableProjectId,
  });

  BigQueryTableSpec.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
          tableProjectId: json_.containsKey('tableProjectId')
              ? json_['tableProjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (tableId != null) 'tableId': tableId!,
        if (tableProjectId != null) 'tableProjectId': tableProjectId!,
      };
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
  core.String? type;

  /// The values of the condition.
  ///
  /// The number of supported values depends on the condition type. Some support
  /// zero values, others one or two values, and ConditionType.ONE_OF_LIST
  /// supports an arbitrary number of values.
  core.List<ConditionValue>? values;

  BooleanCondition({
    this.type,
    this.values,
  });

  BooleanCondition.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => ConditionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (values != null) 'values': values!,
      };
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
  /// italic, strikethrough, foreground color & background color.
  CellFormat? format;

  BooleanRule({
    this.condition,
    this.format,
  });

  BooleanRule.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? BooleanCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          format: json_.containsKey('format')
              ? CellFormat.fromJson(
                  json_['format'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (format != null) 'format': format!,
      };
}

/// A border along a cell.
class Border {
  /// The color of the border.
  ///
  /// Deprecated: Use color_style.
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
  core.int? width;

  Border({
    this.color,
    this.colorStyle,
    this.style,
    this.width,
  });

  Border.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          style:
              json_.containsKey('style') ? json_['style'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
        if (style != null) 'style': style!,
        if (width != null) 'width': width!,
      };
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

  Borders({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  Borders.fromJson(core.Map json_)
      : this(
          bottom: json_.containsKey('bottom')
              ? Border.fromJson(
                  json_['bottom'] as core.Map<core.String, core.dynamic>)
              : null,
          left: json_.containsKey('left')
              ? Border.fromJson(
                  json_['left'] as core.Map<core.String, core.dynamic>)
              : null,
          right: json_.containsKey('right')
              ? Border.fromJson(
                  json_['right'] as core.Map<core.String, core.dynamic>)
              : null,
          top: json_.containsKey('top')
              ? Border.fromJson(
                  json_['top'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottom != null) 'bottom': bottom!,
        if (left != null) 'left': left!,
        if (right != null) 'right': right!,
        if (top != null) 'top': top!,
      };
}

/// A bubble chart.
class BubbleChartSpec {
  /// The bubble border color.
  ///
  /// Deprecated: Use bubble_border_color_style.
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
              ? Color.fromJson(json_['bubbleBorderColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bubbleBorderColorStyle: json_.containsKey('bubbleBorderColorStyle')
              ? ColorStyle.fromJson(json_['bubbleBorderColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bubbleLabels: json_.containsKey('bubbleLabels')
              ? ChartData.fromJson(
                  json_['bubbleLabels'] as core.Map<core.String, core.dynamic>)
              : null,
          bubbleMaxRadiusSize: json_.containsKey('bubbleMaxRadiusSize')
              ? json_['bubbleMaxRadiusSize'] as core.int
              : null,
          bubbleMinRadiusSize: json_.containsKey('bubbleMinRadiusSize')
              ? json_['bubbleMinRadiusSize'] as core.int
              : null,
          bubbleOpacity: json_.containsKey('bubbleOpacity')
              ? (json_['bubbleOpacity'] as core.num).toDouble()
              : null,
          bubbleSizes: json_.containsKey('bubbleSizes')
              ? ChartData.fromJson(
                  json_['bubbleSizes'] as core.Map<core.String, core.dynamic>)
              : null,
          bubbleTextStyle: json_.containsKey('bubbleTextStyle')
              ? TextFormat.fromJson(json_['bubbleTextStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domain: json_.containsKey('domain')
              ? ChartData.fromJson(
                  json_['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          groupIds: json_.containsKey('groupIds')
              ? ChartData.fromJson(
                  json_['groupIds'] as core.Map<core.String, core.dynamic>)
              : null,
          legendPosition: json_.containsKey('legendPosition')
              ? json_['legendPosition'] as core.String
              : null,
          series: json_.containsKey('series')
              ? ChartData.fromJson(
                  json_['series'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bubbleBorderColor != null) 'bubbleBorderColor': bubbleBorderColor!,
        if (bubbleBorderColorStyle != null)
          'bubbleBorderColorStyle': bubbleBorderColorStyle!,
        if (bubbleLabels != null) 'bubbleLabels': bubbleLabels!,
        if (bubbleMaxRadiusSize != null)
          'bubbleMaxRadiusSize': bubbleMaxRadiusSize!,
        if (bubbleMinRadiusSize != null)
          'bubbleMinRadiusSize': bubbleMinRadiusSize!,
        if (bubbleOpacity != null) 'bubbleOpacity': bubbleOpacity!,
        if (bubbleSizes != null) 'bubbleSizes': bubbleSizes!,
        if (bubbleTextStyle != null) 'bubbleTextStyle': bubbleTextStyle!,
        if (domain != null) 'domain': domain!,
        if (groupIds != null) 'groupIds': groupIds!,
        if (legendPosition != null) 'legendPosition': legendPosition!,
        if (series != null) 'series': series!,
      };
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

  CandlestickChartSpec({
    this.data,
    this.domain,
  });

  CandlestickChartSpec.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => CandlestickData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          domain: json_.containsKey('domain')
              ? CandlestickDomain.fromJson(
                  json_['domain'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (domain != null) 'domain': domain!,
      };
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
                  json_['closeSeries'] as core.Map<core.String, core.dynamic>)
              : null,
          highSeries: json_.containsKey('highSeries')
              ? CandlestickSeries.fromJson(
                  json_['highSeries'] as core.Map<core.String, core.dynamic>)
              : null,
          lowSeries: json_.containsKey('lowSeries')
              ? CandlestickSeries.fromJson(
                  json_['lowSeries'] as core.Map<core.String, core.dynamic>)
              : null,
          openSeries: json_.containsKey('openSeries')
              ? CandlestickSeries.fromJson(
                  json_['openSeries'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (closeSeries != null) 'closeSeries': closeSeries!,
        if (highSeries != null) 'highSeries': highSeries!,
        if (lowSeries != null) 'lowSeries': lowSeries!,
        if (openSeries != null) 'openSeries': openSeries!,
      };
}

/// The domain of a CandlestickChart.
class CandlestickDomain {
  /// The data of the CandlestickDomain.
  ChartData? data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool? reversed;

  CandlestickDomain({
    this.data,
    this.reversed,
  });

  CandlestickDomain.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data')
              ? ChartData.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
          reversed: json_.containsKey('reversed')
              ? json_['reversed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (reversed != null) 'reversed': reversed!,
      };
}

/// The series of a CandlestickData.
class CandlestickSeries {
  /// The data of the CandlestickSeries.
  ChartData? data;

  CandlestickSeries({
    this.data,
  });

  CandlestickSeries.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data')
              ? ChartData.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
      };
}

/// Data about a specific cell.
class CellData {
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
  /// e.g, `1234`, `'Hello'`, or `=NOW()` Note: Dates, Times and DateTimes are
  /// represented as doubles in serial number format.
  ExtendedValue? userEnteredValue;

  CellData({
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
          dataSourceFormula: json_.containsKey('dataSourceFormula')
              ? DataSourceFormula.fromJson(json_['dataSourceFormula']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceTable: json_.containsKey('dataSourceTable')
              ? DataSourceTable.fromJson(json_['dataSourceTable']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataValidation: json_.containsKey('dataValidation')
              ? DataValidationRule.fromJson(json_['dataValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveFormat: json_.containsKey('effectiveFormat')
              ? CellFormat.fromJson(json_['effectiveFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveValue: json_.containsKey('effectiveValue')
              ? ExtendedValue.fromJson(json_['effectiveValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          formattedValue: json_.containsKey('formattedValue')
              ? json_['formattedValue'] as core.String
              : null,
          hyperlink: json_.containsKey('hyperlink')
              ? json_['hyperlink'] as core.String
              : null,
          note: json_.containsKey('note') ? json_['note'] as core.String : null,
          pivotTable: json_.containsKey('pivotTable')
              ? PivotTable.fromJson(
                  json_['pivotTable'] as core.Map<core.String, core.dynamic>)
              : null,
          textFormatRuns: json_.containsKey('textFormatRuns')
              ? (json_['textFormatRuns'] as core.List)
                  .map((value) => TextFormatRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userEnteredFormat: json_.containsKey('userEnteredFormat')
              ? CellFormat.fromJson(json_['userEnteredFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userEnteredValue: json_.containsKey('userEnteredValue')
              ? ExtendedValue.fromJson(json_['userEnteredValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceFormula != null) 'dataSourceFormula': dataSourceFormula!,
        if (dataSourceTable != null) 'dataSourceTable': dataSourceTable!,
        if (dataValidation != null) 'dataValidation': dataValidation!,
        if (effectiveFormat != null) 'effectiveFormat': effectiveFormat!,
        if (effectiveValue != null) 'effectiveValue': effectiveValue!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (hyperlink != null) 'hyperlink': hyperlink!,
        if (note != null) 'note': note!,
        if (pivotTable != null) 'pivotTable': pivotTable!,
        if (textFormatRuns != null) 'textFormatRuns': textFormatRuns!,
        if (userEnteredFormat != null) 'userEnteredFormat': userEnteredFormat!,
        if (userEnteredValue != null) 'userEnteredValue': userEnteredValue!,
      };
}

/// The format of a cell.
class CellFormat {
  /// The background color of the cell.
  ///
  /// Deprecated: Use background_color_style.
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
              ? Color.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backgroundColorStyle: json_.containsKey('backgroundColorStyle')
              ? ColorStyle.fromJson(json_['backgroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          borders: json_.containsKey('borders')
              ? Borders.fromJson(
                  json_['borders'] as core.Map<core.String, core.dynamic>)
              : null,
          horizontalAlignment: json_.containsKey('horizontalAlignment')
              ? json_['horizontalAlignment'] as core.String
              : null,
          hyperlinkDisplayType: json_.containsKey('hyperlinkDisplayType')
              ? json_['hyperlinkDisplayType'] as core.String
              : null,
          numberFormat: json_.containsKey('numberFormat')
              ? NumberFormat.fromJson(
                  json_['numberFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          padding: json_.containsKey('padding')
              ? Padding.fromJson(
                  json_['padding'] as core.Map<core.String, core.dynamic>)
              : null,
          textDirection: json_.containsKey('textDirection')
              ? json_['textDirection'] as core.String
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          textRotation: json_.containsKey('textRotation')
              ? TextRotation.fromJson(
                  json_['textRotation'] as core.Map<core.String, core.dynamic>)
              : null,
          verticalAlignment: json_.containsKey('verticalAlignment')
              ? json_['verticalAlignment'] as core.String
              : null,
          wrapStrategy: json_.containsKey('wrapStrategy')
              ? json_['wrapStrategy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (backgroundColorStyle != null)
          'backgroundColorStyle': backgroundColorStyle!,
        if (borders != null) 'borders': borders!,
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
        if (hyperlinkDisplayType != null)
          'hyperlinkDisplayType': hyperlinkDisplayType!,
        if (numberFormat != null) 'numberFormat': numberFormat!,
        if (padding != null) 'padding': padding!,
        if (textDirection != null) 'textDirection': textDirection!,
        if (textFormat != null) 'textFormat': textFormat!,
        if (textRotation != null) 'textRotation': textRotation!,
        if (verticalAlignment != null) 'verticalAlignment': verticalAlignment!,
        if (wrapStrategy != null) 'wrapStrategy': wrapStrategy!,
      };
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
          viewWindowMax: json_.containsKey('viewWindowMax')
              ? (json_['viewWindowMax'] as core.num).toDouble()
              : null,
          viewWindowMin: json_.containsKey('viewWindowMin')
              ? (json_['viewWindowMin'] as core.num).toDouble()
              : null,
          viewWindowMode: json_.containsKey('viewWindowMode')
              ? json_['viewWindowMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewWindowMax != null) 'viewWindowMax': viewWindowMax!,
        if (viewWindowMin != null) 'viewWindowMin': viewWindowMin!,
        if (viewWindowMode != null) 'viewWindowMode': viewWindowMode!,
      };
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

  ChartCustomNumberFormatOptions({
    this.prefix,
    this.suffix,
  });

  ChartCustomNumberFormatOptions.fromJson(core.Map json_)
      : this(
          prefix: json_.containsKey('prefix')
              ? json_['prefix'] as core.String
              : null,
          suffix: json_.containsKey('suffix')
              ? json_['suffix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (prefix != null) 'prefix': prefix!,
        if (suffix != null) 'suffix': suffix!,
      };
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
          aggregateType: json_.containsKey('aggregateType')
              ? json_['aggregateType'] as core.String
              : null,
          columnReference: json_.containsKey('columnReference')
              ? DataSourceColumnReference.fromJson(json_['columnReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          groupRule: json_.containsKey('groupRule')
              ? ChartGroupRule.fromJson(
                  json_['groupRule'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceRange: json_.containsKey('sourceRange')
              ? ChartSourceRange.fromJson(
                  json_['sourceRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateType != null) 'aggregateType': aggregateType!,
        if (columnReference != null) 'columnReference': columnReference!,
        if (groupRule != null) 'groupRule': groupRule!,
        if (sourceRange != null) 'sourceRange': sourceRange!,
      };
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

  ChartDateTimeRule({
    this.type,
  });

  ChartDateTimeRule.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
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

  ChartGroupRule({
    this.dateTimeRule,
    this.histogramRule,
  });

  ChartGroupRule.fromJson(core.Map json_)
      : this(
          dateTimeRule: json_.containsKey('dateTimeRule')
              ? ChartDateTimeRule.fromJson(
                  json_['dateTimeRule'] as core.Map<core.String, core.dynamic>)
              : null,
          histogramRule: json_.containsKey('histogramRule')
              ? ChartHistogramRule.fromJson(
                  json_['histogramRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTimeRule != null) 'dateTimeRule': dateTimeRule!,
        if (histogramRule != null) 'histogramRule': histogramRule!,
      };
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

  ChartHistogramRule({
    this.intervalSize,
    this.maxValue,
    this.minValue,
  });

  ChartHistogramRule.fromJson(core.Map json_)
      : this(
          intervalSize: json_.containsKey('intervalSize')
              ? (json_['intervalSize'] as core.num).toDouble()
              : null,
          maxValue: json_.containsKey('maxValue')
              ? (json_['maxValue'] as core.num).toDouble()
              : null,
          minValue: json_.containsKey('minValue')
              ? (json_['minValue'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intervalSize != null) 'intervalSize': intervalSize!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
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

  ChartSourceRange({
    this.sources,
  });

  ChartSourceRange.fromJson(core.Map json_)
      : this(
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => GridRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sources != null) 'sources': sources!,
      };
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
          altText: json_.containsKey('altText')
              ? json_['altText'] as core.String
              : null,
          backgroundColor: json_.containsKey('backgroundColor')
              ? Color.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backgroundColorStyle: json_.containsKey('backgroundColorStyle')
              ? ColorStyle.fromJson(json_['backgroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          basicChart: json_.containsKey('basicChart')
              ? BasicChartSpec.fromJson(
                  json_['basicChart'] as core.Map<core.String, core.dynamic>)
              : null,
          bubbleChart: json_.containsKey('bubbleChart')
              ? BubbleChartSpec.fromJson(
                  json_['bubbleChart'] as core.Map<core.String, core.dynamic>)
              : null,
          candlestickChart: json_.containsKey('candlestickChart')
              ? CandlestickChartSpec.fromJson(json_['candlestickChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceChartProperties:
              json_.containsKey('dataSourceChartProperties')
                  ? DataSourceChartProperties.fromJson(
                      json_['dataSourceChartProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => FilterSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fontName: json_.containsKey('fontName')
              ? json_['fontName'] as core.String
              : null,
          hiddenDimensionStrategy: json_.containsKey('hiddenDimensionStrategy')
              ? json_['hiddenDimensionStrategy'] as core.String
              : null,
          histogramChart: json_.containsKey('histogramChart')
              ? HistogramChartSpec.fromJson(json_['histogramChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maximized: json_.containsKey('maximized')
              ? json_['maximized'] as core.bool
              : null,
          orgChart: json_.containsKey('orgChart')
              ? OrgChartSpec.fromJson(
                  json_['orgChart'] as core.Map<core.String, core.dynamic>)
              : null,
          pieChart: json_.containsKey('pieChart')
              ? PieChartSpec.fromJson(
                  json_['pieChart'] as core.Map<core.String, core.dynamic>)
              : null,
          scorecardChart: json_.containsKey('scorecardChart')
              ? ScorecardChartSpec.fromJson(json_['scorecardChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sortSpecs: json_.containsKey('sortSpecs')
              ? (json_['sortSpecs'] as core.List)
                  .map((value) => SortSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subtitle: json_.containsKey('subtitle')
              ? json_['subtitle'] as core.String
              : null,
          subtitleTextFormat: json_.containsKey('subtitleTextFormat')
              ? TextFormat.fromJson(json_['subtitleTextFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subtitleTextPosition: json_.containsKey('subtitleTextPosition')
              ? TextPosition.fromJson(json_['subtitleTextPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          titleTextFormat: json_.containsKey('titleTextFormat')
              ? TextFormat.fromJson(json_['titleTextFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          titleTextPosition: json_.containsKey('titleTextPosition')
              ? TextPosition.fromJson(json_['titleTextPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          treemapChart: json_.containsKey('treemapChart')
              ? TreemapChartSpec.fromJson(
                  json_['treemapChart'] as core.Map<core.String, core.dynamic>)
              : null,
          waterfallChart: json_.containsKey('waterfallChart')
              ? WaterfallChartSpec.fromJson(json_['waterfallChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (altText != null) 'altText': altText!,
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (backgroundColorStyle != null)
          'backgroundColorStyle': backgroundColorStyle!,
        if (basicChart != null) 'basicChart': basicChart!,
        if (bubbleChart != null) 'bubbleChart': bubbleChart!,
        if (candlestickChart != null) 'candlestickChart': candlestickChart!,
        if (dataSourceChartProperties != null)
          'dataSourceChartProperties': dataSourceChartProperties!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
        if (fontName != null) 'fontName': fontName!,
        if (hiddenDimensionStrategy != null)
          'hiddenDimensionStrategy': hiddenDimensionStrategy!,
        if (histogramChart != null) 'histogramChart': histogramChart!,
        if (maximized != null) 'maximized': maximized!,
        if (orgChart != null) 'orgChart': orgChart!,
        if (pieChart != null) 'pieChart': pieChart!,
        if (scorecardChart != null) 'scorecardChart': scorecardChart!,
        if (sortSpecs != null) 'sortSpecs': sortSpecs!,
        if (subtitle != null) 'subtitle': subtitle!,
        if (subtitleTextFormat != null)
          'subtitleTextFormat': subtitleTextFormat!,
        if (subtitleTextPosition != null)
          'subtitleTextPosition': subtitleTextPosition!,
        if (title != null) 'title': title!,
        if (titleTextFormat != null) 'titleTextFormat': titleTextFormat!,
        if (titleTextPosition != null) 'titleTextPosition': titleTextPosition!,
        if (treemapChart != null) 'treemapChart': treemapChart!,
        if (waterfallChart != null) 'waterfallChart': waterfallChart!,
      };
}

/// Clears the basic filter, if any exists on the sheet.
class ClearBasicFilterRequest {
  /// The sheet ID on which the basic filter should be cleared.
  core.int? sheetId;

  ClearBasicFilterRequest({
    this.sheetId,
  });

  ClearBasicFilterRequest.fromJson(core.Map json_)
      : this(
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sheetId != null) 'sheetId': sheetId!,
      };
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

  ClearValuesResponse({
    this.clearedRange,
    this.spreadsheetId,
  });

  ClearValuesResponse.fromJson(core.Map json_)
      : this(
          clearedRange: json_.containsKey('clearedRange')
              ? json_['clearedRange'] as core.String
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearedRange != null) 'clearedRange': clearedRange!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
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
  /// \[`alpha`\](/sheets/api/reference/rest/v4/spreadsheets/other#Color.FIELDS.alpha)
  /// value in the
  /// \[`Color`\](/sheets/api/reference/rest/v4/spreadsheets/other#color) object
  /// isn't generally supported.
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

  ColorStyle({
    this.rgbColor,
    this.themeColor,
  });

  ColorStyle.fromJson(core.Map json_)
      : this(
          rgbColor: json_.containsKey('rgbColor')
              ? Color.fromJson(
                  json_['rgbColor'] as core.Map<core.String, core.dynamic>)
              : null,
          themeColor: json_.containsKey('themeColor')
              ? json_['themeColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rgbColor != null) 'rgbColor': rgbColor!,
        if (themeColor != null) 'themeColor': themeColor!,
      };
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

  ConditionValue({
    this.relativeDate,
    this.userEnteredValue,
  });

  ConditionValue.fromJson(core.Map json_)
      : this(
          relativeDate: json_.containsKey('relativeDate')
              ? json_['relativeDate'] as core.String
              : null,
          userEnteredValue: json_.containsKey('userEnteredValue')
              ? json_['userEnteredValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relativeDate != null) 'relativeDate': relativeDate!,
        if (userEnteredValue != null) 'userEnteredValue': userEnteredValue!,
      };
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

  ConditionalFormatRule({
    this.booleanRule,
    this.gradientRule,
    this.ranges,
  });

  ConditionalFormatRule.fromJson(core.Map json_)
      : this(
          booleanRule: json_.containsKey('booleanRule')
              ? BooleanRule.fromJson(
                  json_['booleanRule'] as core.Map<core.String, core.dynamic>)
              : null,
          gradientRule: json_.containsKey('gradientRule')
              ? GradientRule.fromJson(
                  json_['gradientRule'] as core.Map<core.String, core.dynamic>)
              : null,
          ranges: json_.containsKey('ranges')
              ? (json_['ranges'] as core.List)
                  .map((value) => GridRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanRule != null) 'booleanRule': booleanRule!,
        if (gradientRule != null) 'gradientRule': gradientRule!,
        if (ranges != null) 'ranges': ranges!,
      };
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
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          pasteOrientation: json_.containsKey('pasteOrientation')
              ? json_['pasteOrientation'] as core.String
              : null,
          pasteType: json_.containsKey('pasteType')
              ? json_['pasteType'] as core.String
              : null,
          source: json_.containsKey('source')
              ? GridRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (pasteOrientation != null) 'pasteOrientation': pasteOrientation!,
        if (pasteType != null) 'pasteType': pasteType!,
        if (source != null) 'source': source!,
      };
}

/// The request to copy a sheet across spreadsheets.
class CopySheetToAnotherSpreadsheetRequest {
  /// The ID of the spreadsheet to copy the sheet to.
  core.String? destinationSpreadsheetId;

  CopySheetToAnotherSpreadsheetRequest({
    this.destinationSpreadsheetId,
  });

  CopySheetToAnotherSpreadsheetRequest.fromJson(core.Map json_)
      : this(
          destinationSpreadsheetId:
              json_.containsKey('destinationSpreadsheetId')
                  ? json_['destinationSpreadsheetId'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationSpreadsheetId != null)
          'destinationSpreadsheetId': destinationSpreadsheetId!,
      };
}

/// A request to create developer metadata.
class CreateDeveloperMetadataRequest {
  /// The developer metadata to create.
  DeveloperMetadata? developerMetadata;

  CreateDeveloperMetadataRequest({
    this.developerMetadata,
  });

  CreateDeveloperMetadataRequest.fromJson(core.Map json_)
      : this(
          developerMetadata: json_.containsKey('developerMetadata')
              ? DeveloperMetadata.fromJson(json_['developerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
      };
}

/// The response from creating developer metadata.
class CreateDeveloperMetadataResponse {
  /// The developer metadata that was created.
  DeveloperMetadata? developerMetadata;

  CreateDeveloperMetadataResponse({
    this.developerMetadata,
  });

  CreateDeveloperMetadataResponse.fromJson(core.Map json_)
      : this(
          developerMetadata: json_.containsKey('developerMetadata')
              ? DeveloperMetadata.fromJson(json_['developerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
      };
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

  CutPasteRequest({
    this.destination,
    this.pasteType,
    this.source,
  });

  CutPasteRequest.fromJson(core.Map json_)
      : this(
          destination: json_.containsKey('destination')
              ? GridCoordinate.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          pasteType: json_.containsKey('pasteType')
              ? json_['pasteType'] as core.String
              : null,
          source: json_.containsKey('source')
              ? GridRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (pasteType != null) 'pasteType': pasteType!,
        if (source != null) 'source': source!,
      };
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
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          lastRefreshTime: json_.containsKey('lastRefreshTime')
              ? json_['lastRefreshTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (lastRefreshTime != null) 'lastRefreshTime': lastRefreshTime!,
        if (state != null) 'state': state!,
      };
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

  DataFilter({
    this.a1Range,
    this.developerMetadataLookup,
    this.gridRange,
  });

  DataFilter.fromJson(core.Map json_)
      : this(
          a1Range: json_.containsKey('a1Range')
              ? json_['a1Range'] as core.String
              : null,
          developerMetadataLookup: json_.containsKey('developerMetadataLookup')
              ? DeveloperMetadataLookup.fromJson(
                  json_['developerMetadataLookup']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gridRange: json_.containsKey('gridRange')
              ? GridRange.fromJson(
                  json_['gridRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (a1Range != null) 'a1Range': a1Range!,
        if (developerMetadataLookup != null)
          'developerMetadataLookup': developerMetadataLookup!,
        if (gridRange != null) 'gridRange': gridRange!,
      };
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

  DataFilterValueRange({
    this.dataFilter,
    this.majorDimension,
    this.values,
  });

  DataFilterValueRange.fromJson(core.Map json_)
      : this(
          dataFilter: json_.containsKey('dataFilter')
              ? DataFilter.fromJson(
                  json_['dataFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          majorDimension: json_.containsKey('majorDimension')
              ? json_['majorDimension'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilter != null) 'dataFilter': dataFilter!,
        if (majorDimension != null) 'majorDimension': majorDimension!,
        if (values != null) 'values': values!,
      };
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

  DataLabel({
    this.customLabelData,
    this.placement,
    this.textFormat,
    this.type,
  });

  DataLabel.fromJson(core.Map json_)
      : this(
          customLabelData: json_.containsKey('customLabelData')
              ? ChartData.fromJson(json_['customLabelData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          placement: json_.containsKey('placement')
              ? json_['placement'] as core.String
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLabelData != null) 'customLabelData': customLabelData!,
        if (placement != null) 'placement': placement!,
        if (textFormat != null) 'textFormat': textFormat!,
        if (type != null) 'type': type!,
      };
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
          calculatedColumns: json_.containsKey('calculatedColumns')
              ? (json_['calculatedColumns'] as core.List)
                  .map((value) => DataSourceColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
          spec: json_.containsKey('spec')
              ? DataSourceSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calculatedColumns != null) 'calculatedColumns': calculatedColumns!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (sheetId != null) 'sheetId': sheetId!,
        if (spec != null) 'spec': spec!,
      };
}

/// Properties of a data source chart.
class DataSourceChartProperties {
  /// The data execution status.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// ID of the data source that the chart is associated with.
  core.String? dataSourceId;

  DataSourceChartProperties({
    this.dataExecutionStatus,
    this.dataSourceId,
  });

  DataSourceChartProperties.fromJson(core.Map json_)
      : this(
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
      };
}

/// A column in a data source.
class DataSourceColumn {
  /// The formula of the calculated column.
  core.String? formula;

  /// The column reference.
  DataSourceColumnReference? reference;

  DataSourceColumn({
    this.formula,
    this.reference,
  });

  DataSourceColumn.fromJson(core.Map json_)
      : this(
          formula: json_.containsKey('formula')
              ? json_['formula'] as core.String
              : null,
          reference: json_.containsKey('reference')
              ? DataSourceColumnReference.fromJson(
                  json_['reference'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formula != null) 'formula': formula!,
        if (reference != null) 'reference': reference!,
      };
}

/// An unique identifier that references a data source column.
class DataSourceColumnReference {
  /// The display name of the column.
  ///
  /// It should be unique within a data source.
  core.String? name;

  DataSourceColumnReference({
    this.name,
  });

  DataSourceColumnReference.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A data source formula.
class DataSourceFormula {
  /// The data execution status.
  ///
  /// Output only.
  DataExecutionStatus? dataExecutionStatus;

  /// The ID of the data source the formula is associated with.
  core.String? dataSourceId;

  DataSourceFormula({
    this.dataExecutionStatus,
    this.dataSourceId,
  });

  DataSourceFormula.fromJson(core.Map json_)
      : this(
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
      };
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
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          dataSourceFormulaCell: json_.containsKey('dataSourceFormulaCell')
              ? GridCoordinate.fromJson(json_['dataSourceFormulaCell']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourcePivotTableAnchorCell: json_
                  .containsKey('dataSourcePivotTableAnchorCell')
              ? GridCoordinate.fromJson(json_['dataSourcePivotTableAnchorCell']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceTableAnchorCell:
              json_.containsKey('dataSourceTableAnchorCell')
                  ? GridCoordinate.fromJson(json_['dataSourceTableAnchorCell']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartId != null) 'chartId': chartId!,
        if (dataSourceFormulaCell != null)
          'dataSourceFormulaCell': dataSourceFormulaCell!,
        if (dataSourcePivotTableAnchorCell != null)
          'dataSourcePivotTableAnchorCell': dataSourcePivotTableAnchorCell!,
        if (dataSourceTableAnchorCell != null)
          'dataSourceTableAnchorCell': dataSourceTableAnchorCell!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
}

/// A list of references to data source objects.
class DataSourceObjectReferences {
  /// The references.
  core.List<DataSourceObjectReference>? references;

  DataSourceObjectReferences({
    this.references,
  });

  DataSourceObjectReferences.fromJson(core.Map json_)
      : this(
          references: json_.containsKey('references')
              ? (json_['references'] as core.List)
                  .map((value) => DataSourceObjectReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (references != null) 'references': references!,
      };
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

  DataSourceParameter({
    this.name,
    this.namedRangeId,
    this.range,
  });

  DataSourceParameter.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namedRangeId: json_.containsKey('namedRangeId')
              ? json_['namedRangeId'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (namedRangeId != null) 'namedRangeId': namedRangeId!,
        if (range != null) 'range': range!,
      };
}

/// A schedule for data to refresh every day in a given time interval.
class DataSourceRefreshDailySchedule {
  /// The start time of a time interval in which a data source refresh is
  /// scheduled.
  ///
  /// Only `hours` part is used. The time interval size defaults to that in the
  /// Sheets editor.
  TimeOfDay? startTime;

  DataSourceRefreshDailySchedule({
    this.startTime,
  });

  DataSourceRefreshDailySchedule.fromJson(core.Map json_)
      : this(
          startTime: json_.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A monthly schedule for data to refresh on specific days in the month in a
/// given time interval.
class DataSourceRefreshMonthlySchedule {
  /// Days of the month to refresh.
  ///
  /// Only 1-28 are supported, mapping to the 1st to the 28th day. At lesat one
  /// day must be specified.
  core.List<core.int>? daysOfMonth;

  /// The start time of a time interval in which a data source refresh is
  /// scheduled.
  ///
  /// Only `hours` part is used. The time interval size defaults to that in the
  /// Sheets editor.
  TimeOfDay? startTime;

  DataSourceRefreshMonthlySchedule({
    this.daysOfMonth,
    this.startTime,
  });

  DataSourceRefreshMonthlySchedule.fromJson(core.Map json_)
      : this(
          daysOfMonth: json_.containsKey('daysOfMonth')
              ? (json_['daysOfMonth'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfMonth != null) 'daysOfMonth': daysOfMonth!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Schedule for refreshing the data source.
///
/// Data sources in the spreadsheet are refreshed within a time interval. You
/// can specify the start time by clicking the Scheduled Refresh button in the
/// Sheets editor, but the interval is fixed at 4 hours. For example, if you
/// specify a start time of 8am , the refresh will take place between 8am and
/// 12pm every day.
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
                  json_['dailySchedule'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          monthlySchedule: json_.containsKey('monthlySchedule')
              ? DataSourceRefreshMonthlySchedule.fromJson(
                  json_['monthlySchedule']
                      as core.Map<core.String, core.dynamic>)
              : null,
          nextRun: json_.containsKey('nextRun')
              ? Interval.fromJson(
                  json_['nextRun'] as core.Map<core.String, core.dynamic>)
              : null,
          refreshScope: json_.containsKey('refreshScope')
              ? json_['refreshScope'] as core.String
              : null,
          weeklySchedule: json_.containsKey('weeklySchedule')
              ? DataSourceRefreshWeeklySchedule.fromJson(json_['weeklySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailySchedule != null) 'dailySchedule': dailySchedule!,
        if (enabled != null) 'enabled': enabled!,
        if (monthlySchedule != null) 'monthlySchedule': monthlySchedule!,
        if (nextRun != null) 'nextRun': nextRun!,
        if (refreshScope != null) 'refreshScope': refreshScope!,
        if (weeklySchedule != null) 'weeklySchedule': weeklySchedule!,
      };
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

  DataSourceRefreshWeeklySchedule({
    this.daysOfWeek,
    this.startTime,
  });

  DataSourceRefreshWeeklySchedule.fromJson(core.Map json_)
      : this(
          daysOfWeek: json_.containsKey('daysOfWeek')
              ? (json_['daysOfWeek'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          startTime: json_.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A range along a single dimension on a DATA_SOURCE sheet.
class DataSourceSheetDimensionRange {
  /// The columns on the data source sheet.
  core.List<DataSourceColumnReference>? columnReferences;

  /// The ID of the data source sheet the range is on.
  core.int? sheetId;

  DataSourceSheetDimensionRange({
    this.columnReferences,
    this.sheetId,
  });

  DataSourceSheetDimensionRange.fromJson(core.Map json_)
      : this(
          columnReferences: json_.containsKey('columnReferences')
              ? (json_['columnReferences'] as core.List)
                  .map((value) => DataSourceColumnReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnReferences != null) 'columnReferences': columnReferences!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => DataSourceColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
      };
}

/// This specifies the details of the data source.
///
/// For example, for BigQuery, this specifies information about the BigQuery
/// source.
class DataSourceSpec {
  /// A BigQueryDataSourceSpec.
  BigQueryDataSourceSpec? bigQuery;

  /// The parameters of the data source, used when querying the data source.
  core.List<DataSourceParameter>? parameters;

  DataSourceSpec({
    this.bigQuery,
    this.parameters,
  });

  DataSourceSpec.fromJson(core.Map json_)
      : this(
          bigQuery: json_.containsKey('bigQuery')
              ? BigQueryDataSourceSpec.fromJson(
                  json_['bigQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) => DataSourceParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQuery != null) 'bigQuery': bigQuery!,
        if (parameters != null) 'parameters': parameters!,
      };
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
          columnSelectionType: json_.containsKey('columnSelectionType')
              ? json_['columnSelectionType'] as core.String
              : null,
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => DataSourceColumnReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => FilterSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowLimit: json_.containsKey('rowLimit')
              ? json_['rowLimit'] as core.int
              : null,
          sortSpecs: json_.containsKey('sortSpecs')
              ? (json_['sortSpecs'] as core.List)
                  .map((value) => SortSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnSelectionType != null)
          'columnSelectionType': columnSelectionType!,
        if (columns != null) 'columns': columns!,
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
        if (rowLimit != null) 'rowLimit': rowLimit!,
        if (sortSpecs != null) 'sortSpecs': sortSpecs!,
      };
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
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          inputMessage: json_.containsKey('inputMessage')
              ? json_['inputMessage'] as core.String
              : null,
          showCustomUi: json_.containsKey('showCustomUi')
              ? json_['showCustomUi'] as core.bool
              : null,
          strict:
              json_.containsKey('strict') ? json_['strict'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (inputMessage != null) 'inputMessage': inputMessage!,
        if (showCustomUi != null) 'showCustomUi': showCustomUi!,
        if (strict != null) 'strict': strict!,
      };
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

  DateTimeRule({
    this.type,
  });

  DateTimeRule.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Removes the banded range with the given ID from the spreadsheet.
class DeleteBandingRequest {
  /// The ID of the banded range to delete.
  core.int? bandedRangeId;

  DeleteBandingRequest({
    this.bandedRangeId,
  });

  DeleteBandingRequest.fromJson(core.Map json_)
      : this(
          bandedRangeId: json_.containsKey('bandedRangeId')
              ? json_['bandedRangeId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRangeId != null) 'bandedRangeId': bandedRangeId!,
      };
}

/// Deletes a conditional format rule at the given index.
///
/// All subsequent rules' indexes are decremented.
class DeleteConditionalFormatRuleRequest {
  /// The zero-based index of the rule to be deleted.
  core.int? index;

  /// The sheet the rule is being deleted from.
  core.int? sheetId;

  DeleteConditionalFormatRuleRequest({
    this.index,
    this.sheetId,
  });

  DeleteConditionalFormatRuleRequest.fromJson(core.Map json_)
      : this(
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
}

/// The result of deleting a conditional format rule.
class DeleteConditionalFormatRuleResponse {
  /// The rule that was deleted.
  ConditionalFormatRule? rule;

  DeleteConditionalFormatRuleResponse({
    this.rule,
  });

  DeleteConditionalFormatRuleResponse.fromJson(core.Map json_)
      : this(
          rule: json_.containsKey('rule')
              ? ConditionalFormatRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rule != null) 'rule': rule!,
      };
}

/// Deletes a data source.
///
/// The request also deletes the associated data source sheet, and unlinks all
/// associated data source objects.
class DeleteDataSourceRequest {
  /// The ID of the data source to delete.
  core.String? dataSourceId;

  DeleteDataSourceRequest({
    this.dataSourceId,
  });

  DeleteDataSourceRequest.fromJson(core.Map json_)
      : this(
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
      };
}

/// A request to delete developer metadata.
class DeleteDeveloperMetadataRequest {
  /// The data filter describing the criteria used to select which developer
  /// metadata entry to delete.
  DataFilter? dataFilter;

  DeleteDeveloperMetadataRequest({
    this.dataFilter,
  });

  DeleteDeveloperMetadataRequest.fromJson(core.Map json_)
      : this(
          dataFilter: json_.containsKey('dataFilter')
              ? DataFilter.fromJson(
                  json_['dataFilter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilter != null) 'dataFilter': dataFilter!,
      };
}

/// The response from deleting developer metadata.
class DeleteDeveloperMetadataResponse {
  /// The metadata that was deleted.
  core.List<DeveloperMetadata>? deletedDeveloperMetadata;

  DeleteDeveloperMetadataResponse({
    this.deletedDeveloperMetadata,
  });

  DeleteDeveloperMetadataResponse.fromJson(core.Map json_)
      : this(
          deletedDeveloperMetadata:
              json_.containsKey('deletedDeveloperMetadata')
                  ? (json_['deletedDeveloperMetadata'] as core.List)
                      .map((value) => DeveloperMetadata.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletedDeveloperMetadata != null)
          'deletedDeveloperMetadata': deletedDeveloperMetadata!,
      };
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

  DeleteDimensionGroupRequest({
    this.range,
  });

  DeleteDimensionGroupRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
}

/// The result of deleting a group.
class DeleteDimensionGroupResponse {
  /// All groups of a dimension after deleting a group from that dimension.
  core.List<DimensionGroup>? dimensionGroups;

  DeleteDimensionGroupResponse({
    this.dimensionGroups,
  });

  DeleteDimensionGroupResponse.fromJson(core.Map json_)
      : this(
          dimensionGroups: json_.containsKey('dimensionGroups')
              ? (json_['dimensionGroups'] as core.List)
                  .map((value) => DimensionGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionGroups != null) 'dimensionGroups': dimensionGroups!,
      };
}

/// Deletes the dimensions from the sheet.
class DeleteDimensionRequest {
  /// The dimensions to delete from the sheet.
  DimensionRange? range;

  DeleteDimensionRequest({
    this.range,
  });

  DeleteDimensionRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
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

  DeleteDuplicatesRequest({
    this.comparisonColumns,
    this.range,
  });

  DeleteDuplicatesRequest.fromJson(core.Map json_)
      : this(
          comparisonColumns: json_.containsKey('comparisonColumns')
              ? (json_['comparisonColumns'] as core.List)
                  .map((value) => DimensionRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comparisonColumns != null) 'comparisonColumns': comparisonColumns!,
        if (range != null) 'range': range!,
      };
}

/// The result of removing duplicates in a range.
class DeleteDuplicatesResponse {
  /// The number of duplicate rows removed.
  core.int? duplicatesRemovedCount;

  DeleteDuplicatesResponse({
    this.duplicatesRemovedCount,
  });

  DeleteDuplicatesResponse.fromJson(core.Map json_)
      : this(
          duplicatesRemovedCount: json_.containsKey('duplicatesRemovedCount')
              ? json_['duplicatesRemovedCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duplicatesRemovedCount != null)
          'duplicatesRemovedCount': duplicatesRemovedCount!,
      };
}

/// Deletes the embedded object with the given ID.
class DeleteEmbeddedObjectRequest {
  /// The ID of the embedded object to delete.
  core.int? objectId;

  DeleteEmbeddedObjectRequest({
    this.objectId,
  });

  DeleteEmbeddedObjectRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Deletes a particular filter view.
class DeleteFilterViewRequest {
  /// The ID of the filter to delete.
  core.int? filterId;

  DeleteFilterViewRequest({
    this.filterId,
  });

  DeleteFilterViewRequest.fromJson(core.Map json_)
      : this(
          filterId: json_.containsKey('filterId')
              ? json_['filterId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterId != null) 'filterId': filterId!,
      };
}

/// Removes the named range with the given ID from the spreadsheet.
class DeleteNamedRangeRequest {
  /// The ID of the named range to delete.
  core.String? namedRangeId;

  DeleteNamedRangeRequest({
    this.namedRangeId,
  });

  DeleteNamedRangeRequest.fromJson(core.Map json_)
      : this(
          namedRangeId: json_.containsKey('namedRangeId')
              ? json_['namedRangeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namedRangeId != null) 'namedRangeId': namedRangeId!,
      };
}

/// Deletes the protected range with the given ID.
class DeleteProtectedRangeRequest {
  /// The ID of the protected range to delete.
  core.int? protectedRangeId;

  DeleteProtectedRangeRequest({
    this.protectedRangeId,
  });

  DeleteProtectedRangeRequest.fromJson(core.Map json_)
      : this(
          protectedRangeId: json_.containsKey('protectedRangeId')
              ? json_['protectedRangeId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (protectedRangeId != null) 'protectedRangeId': protectedRangeId!,
      };
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

  DeleteRangeRequest({
    this.range,
    this.shiftDimension,
  });

  DeleteRangeRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          shiftDimension: json_.containsKey('shiftDimension')
              ? json_['shiftDimension'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (shiftDimension != null) 'shiftDimension': shiftDimension!,
      };
}

/// Deletes the requested sheet.
class DeleteSheetRequest {
  /// The ID of the sheet to delete.
  ///
  /// If the sheet is of DATA_SOURCE type, the associated DataSource is also
  /// deleted.
  core.int? sheetId;

  DeleteSheetRequest({
    this.sheetId,
  });

  DeleteSheetRequest.fromJson(core.Map json_)
      : this(
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sheetId != null) 'sheetId': sheetId!,
      };
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
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          metadataId: json_.containsKey('metadataId')
              ? json_['metadataId'] as core.int
              : null,
          metadataKey: json_.containsKey('metadataKey')
              ? json_['metadataKey'] as core.String
              : null,
          metadataValue: json_.containsKey('metadataValue')
              ? json_['metadataValue'] as core.String
              : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (metadataId != null) 'metadataId': metadataId!,
        if (metadataKey != null) 'metadataKey': metadataKey!,
        if (metadataValue != null) 'metadataValue': metadataValue!,
        if (visibility != null) 'visibility': visibility!,
      };
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
              ? DimensionRange.fromJson(json_['dimensionRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
          spreadsheet: json_.containsKey('spreadsheet')
              ? json_['spreadsheet'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionRange != null) 'dimensionRange': dimensionRange!,
        if (locationType != null) 'locationType': locationType!,
        if (sheetId != null) 'sheetId': sheetId!,
        if (spreadsheet != null) 'spreadsheet': spreadsheet!,
      };
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
  /// If left unspecified, all developer metadata visibile to the requesting
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
              json_.containsKey('locationMatchingStrategy')
                  ? json_['locationMatchingStrategy'] as core.String
                  : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
          metadataId: json_.containsKey('metadataId')
              ? json_['metadataId'] as core.int
              : null,
          metadataKey: json_.containsKey('metadataKey')
              ? json_['metadataKey'] as core.String
              : null,
          metadataLocation: json_.containsKey('metadataLocation')
              ? DeveloperMetadataLocation.fromJson(json_['metadataLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadataValue: json_.containsKey('metadataValue')
              ? json_['metadataValue'] as core.String
              : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationMatchingStrategy != null)
          'locationMatchingStrategy': locationMatchingStrategy!,
        if (locationType != null) 'locationType': locationType!,
        if (metadataId != null) 'metadataId': metadataId!,
        if (metadataKey != null) 'metadataKey': metadataKey!,
        if (metadataLocation != null) 'metadataLocation': metadataLocation!,
        if (metadataValue != null) 'metadataValue': metadataValue!,
        if (visibility != null) 'visibility': visibility!,
      };
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

  DimensionGroup({
    this.collapsed,
    this.depth,
    this.range,
  });

  DimensionGroup.fromJson(core.Map json_)
      : this(
          collapsed: json_.containsKey('collapsed')
              ? json_['collapsed'] as core.bool
              : null,
          depth: json_.containsKey('depth') ? json_['depth'] as core.int : null,
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collapsed != null) 'collapsed': collapsed!,
        if (depth != null) 'depth': depth!,
        if (range != null) 'range': range!,
      };
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
                          as core.Map<core.String, core.dynamic>)
                  : null,
          developerMetadata: json_.containsKey('developerMetadata')
              ? (json_['developerMetadata'] as core.List)
                  .map((value) => DeveloperMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hiddenByFilter: json_.containsKey('hiddenByFilter')
              ? json_['hiddenByFilter'] as core.bool
              : null,
          hiddenByUser: json_.containsKey('hiddenByUser')
              ? json_['hiddenByUser'] as core.bool
              : null,
          pixelSize: json_.containsKey('pixelSize')
              ? json_['pixelSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
        if (hiddenByFilter != null) 'hiddenByFilter': hiddenByFilter!,
        if (hiddenByUser != null) 'hiddenByUser': hiddenByUser!,
        if (pixelSize != null) 'pixelSize': pixelSize!,
      };
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
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.int
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (endIndex != null) 'endIndex': endIndex!,
        if (sheetId != null) 'sheetId': sheetId!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Duplicates a particular filter view.
class DuplicateFilterViewRequest {
  /// The ID of the filter being duplicated.
  core.int? filterId;

  DuplicateFilterViewRequest({
    this.filterId,
  });

  DuplicateFilterViewRequest.fromJson(core.Map json_)
      : this(
          filterId: json_.containsKey('filterId')
              ? json_['filterId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterId != null) 'filterId': filterId!,
      };
}

/// The result of a filter view being duplicated.
class DuplicateFilterViewResponse {
  /// The newly created filter.
  FilterView? filter;

  DuplicateFilterViewResponse({
    this.filter,
  });

  DuplicateFilterViewResponse.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? FilterView.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
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
          insertSheetIndex: json_.containsKey('insertSheetIndex')
              ? json_['insertSheetIndex'] as core.int
              : null,
          newSheetId: json_.containsKey('newSheetId')
              ? json_['newSheetId'] as core.int
              : null,
          newSheetName: json_.containsKey('newSheetName')
              ? json_['newSheetName'] as core.String
              : null,
          sourceSheetId: json_.containsKey('sourceSheetId')
              ? json_['sourceSheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertSheetIndex != null) 'insertSheetIndex': insertSheetIndex!,
        if (newSheetId != null) 'newSheetId': newSheetId!,
        if (newSheetName != null) 'newSheetName': newSheetName!,
        if (sourceSheetId != null) 'sourceSheetId': sourceSheetId!,
      };
}

/// The result of duplicating a sheet.
class DuplicateSheetResponse {
  /// The properties of the duplicate sheet.
  SheetProperties? properties;

  DuplicateSheetResponse({
    this.properties,
  });

  DuplicateSheetResponse.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? SheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
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

  Editors({
    this.domainUsersCanEdit,
    this.groups,
    this.users,
  });

  Editors.fromJson(core.Map json_)
      : this(
          domainUsersCanEdit: json_.containsKey('domainUsersCanEdit')
              ? json_['domainUsersCanEdit'] as core.bool
              : null,
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          users: json_.containsKey('users')
              ? (json_['users'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainUsersCanEdit != null)
          'domainUsersCanEdit': domainUsersCanEdit!,
        if (groups != null) 'groups': groups!,
        if (users != null) 'users': users!,
      };
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

  EmbeddedChart({
    this.border,
    this.chartId,
    this.position,
    this.spec,
  });

  EmbeddedChart.fromJson(core.Map json_)
      : this(
          border: json_.containsKey('border')
              ? EmbeddedObjectBorder.fromJson(
                  json_['border'] as core.Map<core.String, core.dynamic>)
              : null,
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          position: json_.containsKey('position')
              ? EmbeddedObjectPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? ChartSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (border != null) 'border': border!,
        if (chartId != null) 'chartId': chartId!,
        if (position != null) 'position': position!,
        if (spec != null) 'spec': spec!,
      };
}

/// A border along an embedded object.
class EmbeddedObjectBorder {
  /// The color of the border.
  ///
  /// Deprecated: Use color_style.
  Color? color;

  /// The color of the border.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  EmbeddedObjectBorder({
    this.color,
    this.colorStyle,
  });

  EmbeddedObjectBorder.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
      };
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

  EmbeddedObjectPosition({
    this.newSheet,
    this.overlayPosition,
    this.sheetId,
  });

  EmbeddedObjectPosition.fromJson(core.Map json_)
      : this(
          newSheet: json_.containsKey('newSheet')
              ? json_['newSheet'] as core.bool
              : null,
          overlayPosition: json_.containsKey('overlayPosition')
              ? OverlayPosition.fromJson(json_['overlayPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newSheet != null) 'newSheet': newSheet!,
        if (overlayPosition != null) 'overlayPosition': overlayPosition!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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

  ErrorValue({
    this.message,
    this.type,
  });

  ErrorValue.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (type != null) 'type': type!,
      };
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
          boolValue: json_.containsKey('boolValue')
              ? json_['boolValue'] as core.bool
              : null,
          errorValue: json_.containsKey('errorValue')
              ? ErrorValue.fromJson(
                  json_['errorValue'] as core.Map<core.String, core.dynamic>)
              : null,
          formulaValue: json_.containsKey('formulaValue')
              ? json_['formulaValue'] as core.String
              : null,
          numberValue: json_.containsKey('numberValue')
              ? (json_['numberValue'] as core.num).toDouble()
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (errorValue != null) 'errorValue': errorValue!,
        if (formulaValue != null) 'formulaValue': formulaValue!,
        if (numberValue != null) 'numberValue': numberValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
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
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          hiddenValues: json_.containsKey('hiddenValues')
              ? (json_['hiddenValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          visibleBackgroundColor: json_.containsKey('visibleBackgroundColor')
              ? Color.fromJson(json_['visibleBackgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visibleBackgroundColorStyle:
              json_.containsKey('visibleBackgroundColorStyle')
                  ? ColorStyle.fromJson(json_['visibleBackgroundColorStyle']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          visibleForegroundColor: json_.containsKey('visibleForegroundColor')
              ? Color.fromJson(json_['visibleForegroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visibleForegroundColorStyle:
              json_.containsKey('visibleForegroundColorStyle')
                  ? ColorStyle.fromJson(json_['visibleForegroundColorStyle']
                      as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (hiddenValues != null) 'hiddenValues': hiddenValues!,
        if (visibleBackgroundColor != null)
          'visibleBackgroundColor': visibleBackgroundColor!,
        if (visibleBackgroundColorStyle != null)
          'visibleBackgroundColorStyle': visibleBackgroundColorStyle!,
        if (visibleForegroundColor != null)
          'visibleForegroundColor': visibleForegroundColor!,
        if (visibleForegroundColorStyle != null)
          'visibleForegroundColorStyle': visibleForegroundColorStyle!,
      };
}

/// The filter criteria associated with a specific column.
class FilterSpec {
  /// The column index.
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
          columnIndex: json_.containsKey('columnIndex')
              ? json_['columnIndex'] as core.int
              : null,
          dataSourceColumnReference:
              json_.containsKey('dataSourceColumnReference')
                  ? DataSourceColumnReference.fromJson(
                      json_['dataSourceColumnReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          filterCriteria: json_.containsKey('filterCriteria')
              ? FilterCriteria.fromJson(json_['filterCriteria']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnIndex != null) 'columnIndex': columnIndex!,
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (filterCriteria != null) 'filterCriteria': filterCriteria!,
      };
}

/// A filter view.
class FilterView {
  /// The criteria for showing/hiding values per column.
  ///
  /// The map's key is the column index, and the value is the criteria for that
  /// column. This field is deprecated in favor of filter_specs.
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
  /// When writing, only one of range or named_range_id may be set.
  core.String? namedRangeId;

  /// The range this filter view covers.
  ///
  /// When writing, only one of range or named_range_id may be set.
  GridRange? range;

  /// The sort order per column.
  ///
  /// Later specifications are used when values are equal in the earlier
  /// specifications.
  core.List<SortSpec>? sortSpecs;

  /// The name of the filter view.
  core.String? title;

  FilterView({
    this.criteria,
    this.filterSpecs,
    this.filterViewId,
    this.namedRangeId,
    this.range,
    this.sortSpecs,
    this.title,
  });

  FilterView.fromJson(core.Map json_)
      : this(
          criteria: json_.containsKey('criteria')
              ? (json_['criteria'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    FilterCriteria.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => FilterSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filterViewId: json_.containsKey('filterViewId')
              ? json_['filterViewId'] as core.int
              : null,
          namedRangeId: json_.containsKey('namedRangeId')
              ? json_['namedRangeId'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          sortSpecs: json_.containsKey('sortSpecs')
              ? (json_['sortSpecs'] as core.List)
                  .map((value) => SortSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (criteria != null) 'criteria': criteria!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
        if (filterViewId != null) 'filterViewId': filterViewId!,
        if (namedRangeId != null) 'namedRangeId': namedRangeId!,
        if (range != null) 'range': range!,
        if (sortSpecs != null) 'sortSpecs': sortSpecs!,
        if (title != null) 'title': title!,
      };
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
          allSheets: json_.containsKey('allSheets')
              ? json_['allSheets'] as core.bool
              : null,
          find: json_.containsKey('find') ? json_['find'] as core.String : null,
          includeFormulas: json_.containsKey('includeFormulas')
              ? json_['includeFormulas'] as core.bool
              : null,
          matchCase: json_.containsKey('matchCase')
              ? json_['matchCase'] as core.bool
              : null,
          matchEntireCell: json_.containsKey('matchEntireCell')
              ? json_['matchEntireCell'] as core.bool
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          replacement: json_.containsKey('replacement')
              ? json_['replacement'] as core.String
              : null,
          searchByRegex: json_.containsKey('searchByRegex')
              ? json_['searchByRegex'] as core.bool
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allSheets != null) 'allSheets': allSheets!,
        if (find != null) 'find': find!,
        if (includeFormulas != null) 'includeFormulas': includeFormulas!,
        if (matchCase != null) 'matchCase': matchCase!,
        if (matchEntireCell != null) 'matchEntireCell': matchEntireCell!,
        if (range != null) 'range': range!,
        if (replacement != null) 'replacement': replacement!,
        if (searchByRegex != null) 'searchByRegex': searchByRegex!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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
          formulasChanged: json_.containsKey('formulasChanged')
              ? json_['formulasChanged'] as core.int
              : null,
          occurrencesChanged: json_.containsKey('occurrencesChanged')
              ? json_['occurrencesChanged'] as core.int
              : null,
          rowsChanged: json_.containsKey('rowsChanged')
              ? json_['rowsChanged'] as core.int
              : null,
          sheetsChanged: json_.containsKey('sheetsChanged')
              ? json_['sheetsChanged'] as core.int
              : null,
          valuesChanged: json_.containsKey('valuesChanged')
              ? json_['valuesChanged'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formulasChanged != null) 'formulasChanged': formulasChanged!,
        if (occurrencesChanged != null)
          'occurrencesChanged': occurrencesChanged!,
        if (rowsChanged != null) 'rowsChanged': rowsChanged!,
        if (sheetsChanged != null) 'sheetsChanged': sheetsChanged!,
        if (valuesChanged != null) 'valuesChanged': valuesChanged!,
      };
}

/// The request for retrieving a Spreadsheet.
class GetSpreadsheetByDataFilterRequest {
  /// The DataFilters used to select which ranges to retrieve from the
  /// spreadsheet.
  core.List<DataFilter>? dataFilters;

  /// True if grid data should be returned.
  ///
  /// This parameter is ignored if a field mask was set in the request.
  core.bool? includeGridData;

  GetSpreadsheetByDataFilterRequest({
    this.dataFilters,
    this.includeGridData,
  });

  GetSpreadsheetByDataFilterRequest.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeGridData: json_.containsKey('includeGridData')
              ? json_['includeGridData'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
        if (includeGridData != null) 'includeGridData': includeGridData!,
      };
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

  GradientRule({
    this.maxpoint,
    this.midpoint,
    this.minpoint,
  });

  GradientRule.fromJson(core.Map json_)
      : this(
          maxpoint: json_.containsKey('maxpoint')
              ? InterpolationPoint.fromJson(
                  json_['maxpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          midpoint: json_.containsKey('midpoint')
              ? InterpolationPoint.fromJson(
                  json_['midpoint'] as core.Map<core.String, core.dynamic>)
              : null,
          minpoint: json_.containsKey('minpoint')
              ? InterpolationPoint.fromJson(
                  json_['minpoint'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxpoint != null) 'maxpoint': maxpoint!,
        if (midpoint != null) 'midpoint': midpoint!,
        if (minpoint != null) 'minpoint': minpoint!,
      };
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

  GridCoordinate({
    this.columnIndex,
    this.rowIndex,
    this.sheetId,
  });

  GridCoordinate.fromJson(core.Map json_)
      : this(
          columnIndex: json_.containsKey('columnIndex')
              ? json_['columnIndex'] as core.int
              : null,
          rowIndex: json_.containsKey('rowIndex')
              ? json_['rowIndex'] as core.int
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnIndex != null) 'columnIndex': columnIndex!,
        if (rowIndex != null) 'rowIndex': rowIndex!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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
          columnMetadata: json_.containsKey('columnMetadata')
              ? (json_['columnMetadata'] as core.List)
                  .map((value) => DimensionProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowData: json_.containsKey('rowData')
              ? (json_['rowData'] as core.List)
                  .map((value) => RowData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowMetadata: json_.containsKey('rowMetadata')
              ? (json_['rowMetadata'] as core.List)
                  .map((value) => DimensionProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startColumn: json_.containsKey('startColumn')
              ? json_['startColumn'] as core.int
              : null,
          startRow: json_.containsKey('startRow')
              ? json_['startRow'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnMetadata != null) 'columnMetadata': columnMetadata!,
        if (rowData != null) 'rowData': rowData!,
        if (rowMetadata != null) 'rowMetadata': rowMetadata!,
        if (startColumn != null) 'startColumn': startColumn!,
        if (startRow != null) 'startRow': startRow!,
      };
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
          columnCount: json_.containsKey('columnCount')
              ? json_['columnCount'] as core.int
              : null,
          columnGroupControlAfter: json_.containsKey('columnGroupControlAfter')
              ? json_['columnGroupControlAfter'] as core.bool
              : null,
          frozenColumnCount: json_.containsKey('frozenColumnCount')
              ? json_['frozenColumnCount'] as core.int
              : null,
          frozenRowCount: json_.containsKey('frozenRowCount')
              ? json_['frozenRowCount'] as core.int
              : null,
          hideGridlines: json_.containsKey('hideGridlines')
              ? json_['hideGridlines'] as core.bool
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.int
              : null,
          rowGroupControlAfter: json_.containsKey('rowGroupControlAfter')
              ? json_['rowGroupControlAfter'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnCount != null) 'columnCount': columnCount!,
        if (columnGroupControlAfter != null)
          'columnGroupControlAfter': columnGroupControlAfter!,
        if (frozenColumnCount != null) 'frozenColumnCount': frozenColumnCount!,
        if (frozenRowCount != null) 'frozenRowCount': frozenRowCount!,
        if (hideGridlines != null) 'hideGridlines': hideGridlines!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (rowGroupControlAfter != null)
          'rowGroupControlAfter': rowGroupControlAfter!,
      };
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
          endColumnIndex: json_.containsKey('endColumnIndex')
              ? json_['endColumnIndex'] as core.int
              : null,
          endRowIndex: json_.containsKey('endRowIndex')
              ? json_['endRowIndex'] as core.int
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
          startColumnIndex: json_.containsKey('startColumnIndex')
              ? json_['startColumnIndex'] as core.int
              : null,
          startRowIndex: json_.containsKey('startRowIndex')
              ? json_['startRowIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endColumnIndex != null) 'endColumnIndex': endColumnIndex!,
        if (endRowIndex != null) 'endRowIndex': endRowIndex!,
        if (sheetId != null) 'sheetId': sheetId!,
        if (startColumnIndex != null) 'startColumnIndex': startColumnIndex!,
        if (startRowIndex != null) 'startRowIndex': startRowIndex!,
      };
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
          bucketSize: json_.containsKey('bucketSize')
              ? (json_['bucketSize'] as core.num).toDouble()
              : null,
          legendPosition: json_.containsKey('legendPosition')
              ? json_['legendPosition'] as core.String
              : null,
          outlierPercentile: json_.containsKey('outlierPercentile')
              ? (json_['outlierPercentile'] as core.num).toDouble()
              : null,
          series: json_.containsKey('series')
              ? (json_['series'] as core.List)
                  .map((value) => HistogramSeries.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          showItemDividers: json_.containsKey('showItemDividers')
              ? json_['showItemDividers'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (legendPosition != null) 'legendPosition': legendPosition!,
        if (outlierPercentile != null) 'outlierPercentile': outlierPercentile!,
        if (series != null) 'series': series!,
        if (showItemDividers != null) 'showItemDividers': showItemDividers!,
      };
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

  HistogramRule({
    this.end,
    this.interval,
    this.start,
  });

  HistogramRule.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end')
              ? (json_['end'] as core.num).toDouble()
              : null,
          interval: json_.containsKey('interval')
              ? (json_['interval'] as core.num).toDouble()
              : null,
          start: json_.containsKey('start')
              ? (json_['start'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (interval != null) 'interval': interval!,
        if (start != null) 'start': start!,
      };
}

/// A histogram series containing the series color and data.
class HistogramSeries {
  /// The color of the column representing this series in each bucket.
  ///
  /// This field is optional. Deprecated: Use bar_color_style.
  Color? barColor;

  /// The color of the column representing this series in each bucket.
  ///
  /// This field is optional. If bar_color is also set, this field takes
  /// precedence.
  ColorStyle? barColorStyle;

  /// The data for this histogram series.
  ChartData? data;

  HistogramSeries({
    this.barColor,
    this.barColorStyle,
    this.data,
  });

  HistogramSeries.fromJson(core.Map json_)
      : this(
          barColor: json_.containsKey('barColor')
              ? Color.fromJson(
                  json_['barColor'] as core.Map<core.String, core.dynamic>)
              : null,
          barColorStyle: json_.containsKey('barColorStyle')
              ? ColorStyle.fromJson(
                  json_['barColorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          data: json_.containsKey('data')
              ? ChartData.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (barColor != null) 'barColor': barColor!,
        if (barColorStyle != null) 'barColorStyle': barColorStyle!,
        if (data != null) 'data': data!,
      };
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

  InsertDimensionRequest({
    this.inheritFromBefore,
    this.range,
  });

  InsertDimensionRequest.fromJson(core.Map json_)
      : this(
          inheritFromBefore: json_.containsKey('inheritFromBefore')
              ? json_['inheritFromBefore'] as core.bool
              : null,
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inheritFromBefore != null) 'inheritFromBefore': inheritFromBefore!,
        if (range != null) 'range': range!,
      };
}

/// Inserts cells into a range, shifting the existing cells over or down.
class InsertRangeRequest {
  /// The range to insert new cells into.
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

  InsertRangeRequest({
    this.range,
    this.shiftDimension,
  });

  InsertRangeRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          shiftDimension: json_.containsKey('shiftDimension')
              ? json_['shiftDimension'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (shiftDimension != null) 'shiftDimension': shiftDimension!,
      };
}

/// A single interpolation point on a gradient conditional format.
///
/// These pin the gradient color scale according to the color, type and value
/// chosen.
class InterpolationPoint {
  /// The color this interpolation point should use.
  ///
  /// Deprecated: Use color_style.
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

  InterpolationPoint({
    this.color,
    this.colorStyle,
    this.type,
    this.value,
  });

  InterpolationPoint.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
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

  IterativeCalculationSettings({
    this.convergenceThreshold,
    this.maxIterations,
  });

  IterativeCalculationSettings.fromJson(core.Map json_)
      : this(
          convergenceThreshold: json_.containsKey('convergenceThreshold')
              ? (json_['convergenceThreshold'] as core.num).toDouble()
              : null,
          maxIterations: json_.containsKey('maxIterations')
              ? json_['maxIterations'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (convergenceThreshold != null)
          'convergenceThreshold': convergenceThreshold!,
        if (maxIterations != null) 'maxIterations': maxIterations!,
      };
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

  KeyValueFormat({
    this.position,
    this.textFormat,
  });

  KeyValueFormat.fromJson(core.Map json_)
      : this(
          position: json_.containsKey('position')
              ? TextPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (textFormat != null) 'textFormat': textFormat!,
      };
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

  LineStyle({
    this.type,
    this.width,
  });

  LineStyle.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (width != null) 'width': width!,
      };
}

/// An external or local reference.
class Link {
  /// The link identifier.
  core.String? uri;

  Link({
    this.uri,
  });

  Link.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
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

  ManualRule({
    this.groups,
  });

  ManualRule.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => ManualRuleGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
      };
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

  ManualRuleGroup({
    this.groupName,
    this.items,
  });

  ManualRuleGroup.fromJson(core.Map json_)
      : this(
          groupName: json_.containsKey('groupName')
              ? ExtendedValue.fromJson(
                  json_['groupName'] as core.Map<core.String, core.dynamic>)
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => ExtendedValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupName != null) 'groupName': groupName!,
        if (items != null) 'items': items!,
      };
}

/// A developer metadata entry and the data filters specified in the original
/// request that matched it.
class MatchedDeveloperMetadata {
  /// All filters matching the returned developer metadata.
  core.List<DataFilter>? dataFilters;

  /// The developer metadata matching the specified filters.
  DeveloperMetadata? developerMetadata;

  MatchedDeveloperMetadata({
    this.dataFilters,
    this.developerMetadata,
  });

  MatchedDeveloperMetadata.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          developerMetadata: json_.containsKey('developerMetadata')
              ? DeveloperMetadata.fromJson(json_['developerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
      };
}

/// A value range that was matched by one or more data filers.
class MatchedValueRange {
  /// The DataFilters from the request that matched the range of values.
  core.List<DataFilter>? dataFilters;

  /// The values matched by the DataFilter.
  ValueRange? valueRange;

  MatchedValueRange({
    this.dataFilters,
    this.valueRange,
  });

  MatchedValueRange.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueRange: json_.containsKey('valueRange')
              ? ValueRange.fromJson(
                  json_['valueRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
        if (valueRange != null) 'valueRange': valueRange!,
      };
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

  MergeCellsRequest({
    this.mergeType,
    this.range,
  });

  MergeCellsRequest.fromJson(core.Map json_)
      : this(
          mergeType: json_.containsKey('mergeType')
              ? json_['mergeType'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mergeType != null) 'mergeType': mergeType!,
        if (range != null) 'range': range!,
      };
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

  MoveDimensionRequest({
    this.destinationIndex,
    this.source,
  });

  MoveDimensionRequest.fromJson(core.Map json_)
      : this(
          destinationIndex: json_.containsKey('destinationIndex')
              ? json_['destinationIndex'] as core.int
              : null,
          source: json_.containsKey('source')
              ? DimensionRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationIndex != null) 'destinationIndex': destinationIndex!,
        if (source != null) 'source': source!,
      };
}

/// A named range.
class NamedRange {
  /// The name of the named range.
  core.String? name;

  /// The ID of the named range.
  core.String? namedRangeId;

  /// The range this represents.
  GridRange? range;

  NamedRange({
    this.name,
    this.namedRangeId,
    this.range,
  });

  NamedRange.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namedRangeId: json_.containsKey('namedRangeId')
              ? json_['namedRangeId'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (namedRangeId != null) 'namedRangeId': namedRangeId!,
        if (range != null) 'range': range!,
      };
}

/// The number format of a cell.
class NumberFormat {
  /// Pattern string used for formatting.
  ///
  /// If not set, a default pattern based on the user's locale will be used if
  /// necessary for the given type. See the \[Date and Number Formats
  /// guide\](/sheets/api/guides/formats) for more information about the
  /// supported patterns.
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

  NumberFormat({
    this.pattern,
    this.type,
  });

  NumberFormat.fromJson(core.Map json_)
      : this(
          pattern: json_.containsKey('pattern')
              ? json_['pattern'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pattern != null) 'pattern': pattern!,
        if (type != null) 'type': type!,
      };
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
                  json_['labels'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeColor: json_.containsKey('nodeColor')
              ? Color.fromJson(
                  json_['nodeColor'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeColorStyle: json_.containsKey('nodeColorStyle')
              ? ColorStyle.fromJson(json_['nodeColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          nodeSize: json_.containsKey('nodeSize')
              ? json_['nodeSize'] as core.String
              : null,
          parentLabels: json_.containsKey('parentLabels')
              ? ChartData.fromJson(
                  json_['parentLabels'] as core.Map<core.String, core.dynamic>)
              : null,
          selectedNodeColor: json_.containsKey('selectedNodeColor')
              ? Color.fromJson(json_['selectedNodeColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selectedNodeColorStyle: json_.containsKey('selectedNodeColorStyle')
              ? ColorStyle.fromJson(json_['selectedNodeColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tooltips: json_.containsKey('tooltips')
              ? ChartData.fromJson(
                  json_['tooltips'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (nodeColor != null) 'nodeColor': nodeColor!,
        if (nodeColorStyle != null) 'nodeColorStyle': nodeColorStyle!,
        if (nodeSize != null) 'nodeSize': nodeSize!,
        if (parentLabels != null) 'parentLabels': parentLabels!,
        if (selectedNodeColor != null) 'selectedNodeColor': selectedNodeColor!,
        if (selectedNodeColorStyle != null)
          'selectedNodeColorStyle': selectedNodeColorStyle!,
        if (tooltips != null) 'tooltips': tooltips!,
      };
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
                  json_['anchorCell'] as core.Map<core.String, core.dynamic>)
              : null,
          heightPixels: json_.containsKey('heightPixels')
              ? json_['heightPixels'] as core.int
              : null,
          offsetXPixels: json_.containsKey('offsetXPixels')
              ? json_['offsetXPixels'] as core.int
              : null,
          offsetYPixels: json_.containsKey('offsetYPixels')
              ? json_['offsetYPixels'] as core.int
              : null,
          widthPixels: json_.containsKey('widthPixels')
              ? json_['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anchorCell != null) 'anchorCell': anchorCell!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (offsetXPixels != null) 'offsetXPixels': offsetXPixels!,
        if (offsetYPixels != null) 'offsetYPixels': offsetYPixels!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
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

  Padding({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  Padding.fromJson(core.Map json_)
      : this(
          bottom:
              json_.containsKey('bottom') ? json_['bottom'] as core.int : null,
          left: json_.containsKey('left') ? json_['left'] as core.int : null,
          right: json_.containsKey('right') ? json_['right'] as core.int : null,
          top: json_.containsKey('top') ? json_['top'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottom != null) 'bottom': bottom!,
        if (left != null) 'left': left!,
        if (right != null) 'right': right!,
        if (top != null) 'top': top!,
      };
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
                  json_['coordinate'] as core.Map<core.String, core.dynamic>)
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          delimiter: json_.containsKey('delimiter')
              ? json_['delimiter'] as core.String
              : null,
          html: json_.containsKey('html') ? json_['html'] as core.bool : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coordinate != null) 'coordinate': coordinate!,
        if (data != null) 'data': data!,
        if (delimiter != null) 'delimiter': delimiter!,
        if (html != null) 'html': html!,
        if (type != null) 'type': type!,
      };
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
                  json_['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          legendPosition: json_.containsKey('legendPosition')
              ? json_['legendPosition'] as core.String
              : null,
          pieHole: json_.containsKey('pieHole')
              ? (json_['pieHole'] as core.num).toDouble()
              : null,
          series: json_.containsKey('series')
              ? ChartData.fromJson(
                  json_['series'] as core.Map<core.String, core.dynamic>)
              : null,
          threeDimensional: json_.containsKey('threeDimensional')
              ? json_['threeDimensional'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (legendPosition != null) 'legendPosition': legendPosition!,
        if (pieHole != null) 'pieHole': pieHole!,
        if (series != null) 'series': series!,
        if (threeDimensional != null) 'threeDimensional': threeDimensional!,
      };
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
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          visibleByDefault: json_.containsKey('visibleByDefault')
              ? json_['visibleByDefault'] as core.bool
              : null,
          visibleValues: json_.containsKey('visibleValues')
              ? (json_['visibleValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (visibleByDefault != null) 'visibleByDefault': visibleByDefault!,
        if (visibleValues != null) 'visibleValues': visibleValues!,
      };
}

/// The pivot table filter criteria associated with a specific source column
/// offset.
class PivotFilterSpec {
  /// The column offset of the source range.
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
          columnOffsetIndex: json_.containsKey('columnOffsetIndex')
              ? json_['columnOffsetIndex'] as core.int
              : null,
          dataSourceColumnReference:
              json_.containsKey('dataSourceColumnReference')
                  ? DataSourceColumnReference.fromJson(
                      json_['dataSourceColumnReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          filterCriteria: json_.containsKey('filterCriteria')
              ? PivotFilterCriteria.fromJson(json_['filterCriteria']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnOffsetIndex != null) 'columnOffsetIndex': columnOffsetIndex!,
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (filterCriteria != null) 'filterCriteria': filterCriteria!,
      };
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
                          as core.Map<core.String, core.dynamic>)
                  : null,
          groupLimit: json_.containsKey('groupLimit')
              ? PivotGroupLimit.fromJson(
                  json_['groupLimit'] as core.Map<core.String, core.dynamic>)
              : null,
          groupRule: json_.containsKey('groupRule')
              ? PivotGroupRule.fromJson(
                  json_['groupRule'] as core.Map<core.String, core.dynamic>)
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          repeatHeadings: json_.containsKey('repeatHeadings')
              ? json_['repeatHeadings'] as core.bool
              : null,
          showTotals: json_.containsKey('showTotals')
              ? json_['showTotals'] as core.bool
              : null,
          sortOrder: json_.containsKey('sortOrder')
              ? json_['sortOrder'] as core.String
              : null,
          sourceColumnOffset: json_.containsKey('sourceColumnOffset')
              ? json_['sourceColumnOffset'] as core.int
              : null,
          valueBucket: json_.containsKey('valueBucket')
              ? PivotGroupSortValueBucket.fromJson(
                  json_['valueBucket'] as core.Map<core.String, core.dynamic>)
              : null,
          valueMetadata: json_.containsKey('valueMetadata')
              ? (json_['valueMetadata'] as core.List)
                  .map((value) => PivotGroupValueMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (groupLimit != null) 'groupLimit': groupLimit!,
        if (groupRule != null) 'groupRule': groupRule!,
        if (label != null) 'label': label!,
        if (repeatHeadings != null) 'repeatHeadings': repeatHeadings!,
        if (showTotals != null) 'showTotals': showTotals!,
        if (sortOrder != null) 'sortOrder': sortOrder!,
        if (sourceColumnOffset != null)
          'sourceColumnOffset': sourceColumnOffset!,
        if (valueBucket != null) 'valueBucket': valueBucket!,
        if (valueMetadata != null) 'valueMetadata': valueMetadata!,
      };
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

  PivotGroupLimit({
    this.applyOrder,
    this.countLimit,
  });

  PivotGroupLimit.fromJson(core.Map json_)
      : this(
          applyOrder: json_.containsKey('applyOrder')
              ? json_['applyOrder'] as core.int
              : null,
          countLimit: json_.containsKey('countLimit')
              ? json_['countLimit'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyOrder != null) 'applyOrder': applyOrder!,
        if (countLimit != null) 'countLimit': countLimit!,
      };
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

  PivotGroupRule({
    this.dateTimeRule,
    this.histogramRule,
    this.manualRule,
  });

  PivotGroupRule.fromJson(core.Map json_)
      : this(
          dateTimeRule: json_.containsKey('dateTimeRule')
              ? DateTimeRule.fromJson(
                  json_['dateTimeRule'] as core.Map<core.String, core.dynamic>)
              : null,
          histogramRule: json_.containsKey('histogramRule')
              ? HistogramRule.fromJson(
                  json_['histogramRule'] as core.Map<core.String, core.dynamic>)
              : null,
          manualRule: json_.containsKey('manualRule')
              ? ManualRule.fromJson(
                  json_['manualRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTimeRule != null) 'dateTimeRule': dateTimeRule!,
        if (histogramRule != null) 'histogramRule': histogramRule!,
        if (manualRule != null) 'manualRule': manualRule!,
      };
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

  PivotGroupSortValueBucket({
    this.buckets,
    this.valuesIndex,
  });

  PivotGroupSortValueBucket.fromJson(core.Map json_)
      : this(
          buckets: json_.containsKey('buckets')
              ? (json_['buckets'] as core.List)
                  .map((value) => ExtendedValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valuesIndex: json_.containsKey('valuesIndex')
              ? json_['valuesIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buckets != null) 'buckets': buckets!,
        if (valuesIndex != null) 'valuesIndex': valuesIndex!,
      };
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

  PivotGroupValueMetadata({
    this.collapsed,
    this.value,
  });

  PivotGroupValueMetadata.fromJson(core.Map json_)
      : this(
          collapsed: json_.containsKey('collapsed')
              ? json_['collapsed'] as core.bool
              : null,
          value: json_.containsKey('value')
              ? ExtendedValue.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collapsed != null) 'collapsed': collapsed!,
        if (value != null) 'value': value!,
      };
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
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => PivotGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          criteria: json_.containsKey('criteria')
              ? (json_['criteria'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    PivotFilterCriteria.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
          filterSpecs: json_.containsKey('filterSpecs')
              ? (json_['filterSpecs'] as core.List)
                  .map((value) => PivotFilterSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => PivotGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          source: json_.containsKey('source')
              ? GridRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          valueLayout: json_.containsKey('valueLayout')
              ? json_['valueLayout'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => PivotValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (criteria != null) 'criteria': criteria!,
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (filterSpecs != null) 'filterSpecs': filterSpecs!,
        if (rows != null) 'rows': rows!,
        if (source != null) 'source': source!,
        if (valueLayout != null) 'valueLayout': valueLayout!,
        if (values != null) 'values': values!,
      };
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
          calculatedDisplayType: json_.containsKey('calculatedDisplayType')
              ? json_['calculatedDisplayType'] as core.String
              : null,
          dataSourceColumnReference:
              json_.containsKey('dataSourceColumnReference')
                  ? DataSourceColumnReference.fromJson(
                      json_['dataSourceColumnReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          formula: json_.containsKey('formula')
              ? json_['formula'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sourceColumnOffset: json_.containsKey('sourceColumnOffset')
              ? json_['sourceColumnOffset'] as core.int
              : null,
          summarizeFunction: json_.containsKey('summarizeFunction')
              ? json_['summarizeFunction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calculatedDisplayType != null)
          'calculatedDisplayType': calculatedDisplayType!,
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (formula != null) 'formula': formula!,
        if (name != null) 'name': name!,
        if (sourceColumnOffset != null)
          'sourceColumnOffset': sourceColumnOffset!,
        if (summarizeFunction != null) 'summarizeFunction': summarizeFunction!,
      };
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

  PointStyle({
    this.shape,
    this.size,
  });

  PointStyle.fromJson(core.Map json_)
      : this(
          shape:
              json_.containsKey('shape') ? json_['shape'] as core.String : null,
          size: json_.containsKey('size')
              ? (json_['size'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shape != null) 'shape': shape!,
        if (size != null) 'size': size!,
      };
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
  /// When writing, only one of range or named_range_id may be set.
  core.String? namedRangeId;

  /// The ID of the protected range.
  ///
  /// This field is read-only.
  core.int? protectedRangeId;

  /// The range that is being protected.
  ///
  /// The range may be fully unbounded, in which case this is considered a
  /// protected sheet. When writing, only one of range or named_range_id may be
  /// set.
  GridRange? range;

  /// True if the user who requested this protected range can edit the protected
  /// area.
  ///
  /// This field is read-only.
  core.bool? requestingUserCanEdit;

  /// The list of unprotected ranges within a protected sheet.
  ///
  /// Unprotected ranges are only supported on protected sheets.
  core.List<GridRange>? unprotectedRanges;

  /// True if this protected range will show a warning when editing.
  ///
  /// Warning-based protection means that every user can edit data in the
  /// protected range, except editing will prompt a warning asking the user to
  /// confirm the edit. When writing: if this field is true, then editors is
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
    this.unprotectedRanges,
    this.warningOnly,
  });

  ProtectedRange.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          editors: json_.containsKey('editors')
              ? Editors.fromJson(
                  json_['editors'] as core.Map<core.String, core.dynamic>)
              : null,
          namedRangeId: json_.containsKey('namedRangeId')
              ? json_['namedRangeId'] as core.String
              : null,
          protectedRangeId: json_.containsKey('protectedRangeId')
              ? json_['protectedRangeId'] as core.int
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          requestingUserCanEdit: json_.containsKey('requestingUserCanEdit')
              ? json_['requestingUserCanEdit'] as core.bool
              : null,
          unprotectedRanges: json_.containsKey('unprotectedRanges')
              ? (json_['unprotectedRanges'] as core.List)
                  .map((value) => GridRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warningOnly: json_.containsKey('warningOnly')
              ? json_['warningOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (editors != null) 'editors': editors!,
        if (namedRangeId != null) 'namedRangeId': namedRangeId!,
        if (protectedRangeId != null) 'protectedRangeId': protectedRangeId!,
        if (range != null) 'range': range!,
        if (requestingUserCanEdit != null)
          'requestingUserCanEdit': requestingUserCanEdit!,
        if (unprotectedRanges != null) 'unprotectedRanges': unprotectedRanges!,
        if (warningOnly != null) 'warningOnly': warningOnly!,
      };
}

/// Randomizes the order of the rows in a range.
class RandomizeRangeRequest {
  /// The range to randomize.
  GridRange? range;

  RandomizeRangeRequest({
    this.range,
  });

  RandomizeRangeRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
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
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reference: json_.containsKey('reference')
              ? DataSourceObjectReference.fromJson(
                  json_['reference'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (reference != null) 'reference': reference!,
      };
}

/// Refreshes one or multiple data source objects in the spreadsheet by the
/// specified references.
///
/// The request requires an additional `bigquery.readonly` OAuth scope. If there
/// are multiple refresh requests referencing the same data source objects in
/// one batch, only the last refresh request is processed, and all those
/// requests will have the same response accordingly.
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
          dataSourceId: json_.containsKey('dataSourceId')
              ? json_['dataSourceId'] as core.String
              : null,
          force:
              json_.containsKey('force') ? json_['force'] as core.bool : null,
          isAll:
              json_.containsKey('isAll') ? json_['isAll'] as core.bool : null,
          references: json_.containsKey('references')
              ? DataSourceObjectReferences.fromJson(
                  json_['references'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceId != null) 'dataSourceId': dataSourceId!,
        if (force != null) 'force': force!,
        if (isAll != null) 'isAll': isAll!,
        if (references != null) 'references': references!,
      };
}

/// The response from refreshing one or multiple data source objects.
class RefreshDataSourceResponse {
  /// All the refresh status for the data source object references specified in
  /// the request.
  ///
  /// If is_all is specified, the field contains only those in failure status.
  core.List<RefreshDataSourceObjectExecutionStatus>? statuses;

  RefreshDataSourceResponse({
    this.statuses,
  });

  RefreshDataSourceResponse.fromJson(core.Map json_)
      : this(
          statuses: json_.containsKey('statuses')
              ? (json_['statuses'] as core.List)
                  .map((value) =>
                      RefreshDataSourceObjectExecutionStatus.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (statuses != null) 'statuses': statuses!,
      };
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

  RepeatCellRequest({
    this.cell,
    this.fields,
    this.range,
  });

  RepeatCellRequest.fromJson(core.Map json_)
      : this(
          cell: json_.containsKey('cell')
              ? CellData.fromJson(
                  json_['cell'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cell != null) 'cell': cell!,
        if (fields != null) 'fields': fields!,
        if (range != null) 'range': range!,
      };
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

  /// Appends cells after the last row with data in a sheet.
  AppendCellsRequest? appendCells;

  /// Appends dimensions to the end of a sheet.
  AppendDimensionRequest? appendDimension;

  /// Automatically fills in more data based on existing data.
  AutoFillRequest? autoFill;

  /// Automatically resizes one or more dimensions based on the contents of the
  /// cells in that dimension.
  AutoResizeDimensionsRequest? autoResizeDimensions;

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

  /// Refreshs one or multiple data sources and associated dbobjects.
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
    this.appendCells,
    this.appendDimension,
    this.autoFill,
    this.autoResizeDimensions,
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
  });

  Request.fromJson(core.Map json_)
      : this(
          addBanding: json_.containsKey('addBanding')
              ? AddBandingRequest.fromJson(
                  json_['addBanding'] as core.Map<core.String, core.dynamic>)
              : null,
          addChart: json_.containsKey('addChart')
              ? AddChartRequest.fromJson(
                  json_['addChart'] as core.Map<core.String, core.dynamic>)
              : null,
          addConditionalFormatRule:
              json_.containsKey('addConditionalFormatRule')
                  ? AddConditionalFormatRuleRequest.fromJson(
                      json_['addConditionalFormatRule']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          addDataSource: json_.containsKey('addDataSource')
              ? AddDataSourceRequest.fromJson(
                  json_['addDataSource'] as core.Map<core.String, core.dynamic>)
              : null,
          addDimensionGroup: json_.containsKey('addDimensionGroup')
              ? AddDimensionGroupRequest.fromJson(json_['addDimensionGroup']
                  as core.Map<core.String, core.dynamic>)
              : null,
          addFilterView: json_.containsKey('addFilterView')
              ? AddFilterViewRequest.fromJson(
                  json_['addFilterView'] as core.Map<core.String, core.dynamic>)
              : null,
          addNamedRange: json_.containsKey('addNamedRange')
              ? AddNamedRangeRequest.fromJson(
                  json_['addNamedRange'] as core.Map<core.String, core.dynamic>)
              : null,
          addProtectedRange: json_.containsKey('addProtectedRange')
              ? AddProtectedRangeRequest.fromJson(json_['addProtectedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          addSheet: json_.containsKey('addSheet')
              ? AddSheetRequest.fromJson(
                  json_['addSheet'] as core.Map<core.String, core.dynamic>)
              : null,
          addSlicer: json_.containsKey('addSlicer')
              ? AddSlicerRequest.fromJson(
                  json_['addSlicer'] as core.Map<core.String, core.dynamic>)
              : null,
          appendCells: json_.containsKey('appendCells')
              ? AppendCellsRequest.fromJson(
                  json_['appendCells'] as core.Map<core.String, core.dynamic>)
              : null,
          appendDimension: json_.containsKey('appendDimension')
              ? AppendDimensionRequest.fromJson(json_['appendDimension']
                  as core.Map<core.String, core.dynamic>)
              : null,
          autoFill: json_.containsKey('autoFill')
              ? AutoFillRequest.fromJson(
                  json_['autoFill'] as core.Map<core.String, core.dynamic>)
              : null,
          autoResizeDimensions: json_.containsKey('autoResizeDimensions')
              ? AutoResizeDimensionsRequest.fromJson(
                  json_['autoResizeDimensions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          clearBasicFilter: json_.containsKey('clearBasicFilter')
              ? ClearBasicFilterRequest.fromJson(json_['clearBasicFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          copyPaste: json_.containsKey('copyPaste')
              ? CopyPasteRequest.fromJson(
                  json_['copyPaste'] as core.Map<core.String, core.dynamic>)
              : null,
          createDeveloperMetadata: json_.containsKey('createDeveloperMetadata')
              ? CreateDeveloperMetadataRequest.fromJson(
                  json_['createDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cutPaste: json_.containsKey('cutPaste')
              ? CutPasteRequest.fromJson(
                  json_['cutPaste'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteBanding: json_.containsKey('deleteBanding')
              ? DeleteBandingRequest.fromJson(
                  json_['deleteBanding'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteConditionalFormatRule:
              json_.containsKey('deleteConditionalFormatRule')
                  ? DeleteConditionalFormatRuleRequest.fromJson(
                      json_['deleteConditionalFormatRule']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          deleteDataSource: json_.containsKey('deleteDataSource')
              ? DeleteDataSourceRequest.fromJson(json_['deleteDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteDeveloperMetadata: json_.containsKey('deleteDeveloperMetadata')
              ? DeleteDeveloperMetadataRequest.fromJson(
                  json_['deleteDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteDimension: json_.containsKey('deleteDimension')
              ? DeleteDimensionRequest.fromJson(json_['deleteDimension']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteDimensionGroup: json_.containsKey('deleteDimensionGroup')
              ? DeleteDimensionGroupRequest.fromJson(
                  json_['deleteDimensionGroup']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteDuplicates: json_.containsKey('deleteDuplicates')
              ? DeleteDuplicatesRequest.fromJson(json_['deleteDuplicates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteEmbeddedObject: json_.containsKey('deleteEmbeddedObject')
              ? DeleteEmbeddedObjectRequest.fromJson(
                  json_['deleteEmbeddedObject']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteFilterView: json_.containsKey('deleteFilterView')
              ? DeleteFilterViewRequest.fromJson(json_['deleteFilterView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteNamedRange: json_.containsKey('deleteNamedRange')
              ? DeleteNamedRangeRequest.fromJson(json_['deleteNamedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteProtectedRange: json_.containsKey('deleteProtectedRange')
              ? DeleteProtectedRangeRequest.fromJson(
                  json_['deleteProtectedRange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteRange: json_.containsKey('deleteRange')
              ? DeleteRangeRequest.fromJson(
                  json_['deleteRange'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteSheet: json_.containsKey('deleteSheet')
              ? DeleteSheetRequest.fromJson(
                  json_['deleteSheet'] as core.Map<core.String, core.dynamic>)
              : null,
          duplicateFilterView: json_.containsKey('duplicateFilterView')
              ? DuplicateFilterViewRequest.fromJson(json_['duplicateFilterView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          duplicateSheet: json_.containsKey('duplicateSheet')
              ? DuplicateSheetRequest.fromJson(json_['duplicateSheet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          findReplace: json_.containsKey('findReplace')
              ? FindReplaceRequest.fromJson(
                  json_['findReplace'] as core.Map<core.String, core.dynamic>)
              : null,
          insertDimension: json_.containsKey('insertDimension')
              ? InsertDimensionRequest.fromJson(json_['insertDimension']
                  as core.Map<core.String, core.dynamic>)
              : null,
          insertRange: json_.containsKey('insertRange')
              ? InsertRangeRequest.fromJson(
                  json_['insertRange'] as core.Map<core.String, core.dynamic>)
              : null,
          mergeCells: json_.containsKey('mergeCells')
              ? MergeCellsRequest.fromJson(
                  json_['mergeCells'] as core.Map<core.String, core.dynamic>)
              : null,
          moveDimension: json_.containsKey('moveDimension')
              ? MoveDimensionRequest.fromJson(
                  json_['moveDimension'] as core.Map<core.String, core.dynamic>)
              : null,
          pasteData: json_.containsKey('pasteData')
              ? PasteDataRequest.fromJson(
                  json_['pasteData'] as core.Map<core.String, core.dynamic>)
              : null,
          randomizeRange: json_.containsKey('randomizeRange')
              ? RandomizeRangeRequest.fromJson(json_['randomizeRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          refreshDataSource: json_.containsKey('refreshDataSource')
              ? RefreshDataSourceRequest.fromJson(json_['refreshDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          repeatCell: json_.containsKey('repeatCell')
              ? RepeatCellRequest.fromJson(
                  json_['repeatCell'] as core.Map<core.String, core.dynamic>)
              : null,
          setBasicFilter: json_.containsKey('setBasicFilter')
              ? SetBasicFilterRequest.fromJson(json_['setBasicFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          setDataValidation: json_.containsKey('setDataValidation')
              ? SetDataValidationRequest.fromJson(json_['setDataValidation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sortRange: json_.containsKey('sortRange')
              ? SortRangeRequest.fromJson(
                  json_['sortRange'] as core.Map<core.String, core.dynamic>)
              : null,
          textToColumns: json_.containsKey('textToColumns')
              ? TextToColumnsRequest.fromJson(
                  json_['textToColumns'] as core.Map<core.String, core.dynamic>)
              : null,
          trimWhitespace: json_.containsKey('trimWhitespace')
              ? TrimWhitespaceRequest.fromJson(json_['trimWhitespace']
                  as core.Map<core.String, core.dynamic>)
              : null,
          unmergeCells: json_.containsKey('unmergeCells')
              ? UnmergeCellsRequest.fromJson(
                  json_['unmergeCells'] as core.Map<core.String, core.dynamic>)
              : null,
          updateBanding: json_.containsKey('updateBanding')
              ? UpdateBandingRequest.fromJson(
                  json_['updateBanding'] as core.Map<core.String, core.dynamic>)
              : null,
          updateBorders: json_.containsKey('updateBorders')
              ? UpdateBordersRequest.fromJson(
                  json_['updateBorders'] as core.Map<core.String, core.dynamic>)
              : null,
          updateCells: json_.containsKey('updateCells')
              ? UpdateCellsRequest.fromJson(
                  json_['updateCells'] as core.Map<core.String, core.dynamic>)
              : null,
          updateChartSpec: json_.containsKey('updateChartSpec')
              ? UpdateChartSpecRequest.fromJson(json_['updateChartSpec']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateConditionalFormatRule:
              json_.containsKey('updateConditionalFormatRule')
                  ? UpdateConditionalFormatRuleRequest.fromJson(
                      json_['updateConditionalFormatRule']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateDataSource: json_.containsKey('updateDataSource')
              ? UpdateDataSourceRequest.fromJson(json_['updateDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateDeveloperMetadata: json_.containsKey('updateDeveloperMetadata')
              ? UpdateDeveloperMetadataRequest.fromJson(
                  json_['updateDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateDimensionGroup: json_.containsKey('updateDimensionGroup')
              ? UpdateDimensionGroupRequest.fromJson(
                  json_['updateDimensionGroup']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateDimensionProperties:
              json_.containsKey('updateDimensionProperties')
                  ? UpdateDimensionPropertiesRequest.fromJson(
                      json_['updateDimensionProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateEmbeddedObjectBorder:
              json_.containsKey('updateEmbeddedObjectBorder')
                  ? UpdateEmbeddedObjectBorderRequest.fromJson(
                      json_['updateEmbeddedObjectBorder']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateEmbeddedObjectPosition:
              json_.containsKey('updateEmbeddedObjectPosition')
                  ? UpdateEmbeddedObjectPositionRequest.fromJson(
                      json_['updateEmbeddedObjectPosition']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateFilterView: json_.containsKey('updateFilterView')
              ? UpdateFilterViewRequest.fromJson(json_['updateFilterView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateNamedRange: json_.containsKey('updateNamedRange')
              ? UpdateNamedRangeRequest.fromJson(json_['updateNamedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateProtectedRange: json_.containsKey('updateProtectedRange')
              ? UpdateProtectedRangeRequest.fromJson(
                  json_['updateProtectedRange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSheetProperties: json_.containsKey('updateSheetProperties')
              ? UpdateSheetPropertiesRequest.fromJson(
                  json_['updateSheetProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSlicerSpec: json_.containsKey('updateSlicerSpec')
              ? UpdateSlicerSpecRequest.fromJson(json_['updateSlicerSpec']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateSpreadsheetProperties:
              json_.containsKey('updateSpreadsheetProperties')
                  ? UpdateSpreadsheetPropertiesRequest.fromJson(
                      json_['updateSpreadsheetProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addBanding != null) 'addBanding': addBanding!,
        if (addChart != null) 'addChart': addChart!,
        if (addConditionalFormatRule != null)
          'addConditionalFormatRule': addConditionalFormatRule!,
        if (addDataSource != null) 'addDataSource': addDataSource!,
        if (addDimensionGroup != null) 'addDimensionGroup': addDimensionGroup!,
        if (addFilterView != null) 'addFilterView': addFilterView!,
        if (addNamedRange != null) 'addNamedRange': addNamedRange!,
        if (addProtectedRange != null) 'addProtectedRange': addProtectedRange!,
        if (addSheet != null) 'addSheet': addSheet!,
        if (addSlicer != null) 'addSlicer': addSlicer!,
        if (appendCells != null) 'appendCells': appendCells!,
        if (appendDimension != null) 'appendDimension': appendDimension!,
        if (autoFill != null) 'autoFill': autoFill!,
        if (autoResizeDimensions != null)
          'autoResizeDimensions': autoResizeDimensions!,
        if (clearBasicFilter != null) 'clearBasicFilter': clearBasicFilter!,
        if (copyPaste != null) 'copyPaste': copyPaste!,
        if (createDeveloperMetadata != null)
          'createDeveloperMetadata': createDeveloperMetadata!,
        if (cutPaste != null) 'cutPaste': cutPaste!,
        if (deleteBanding != null) 'deleteBanding': deleteBanding!,
        if (deleteConditionalFormatRule != null)
          'deleteConditionalFormatRule': deleteConditionalFormatRule!,
        if (deleteDataSource != null) 'deleteDataSource': deleteDataSource!,
        if (deleteDeveloperMetadata != null)
          'deleteDeveloperMetadata': deleteDeveloperMetadata!,
        if (deleteDimension != null) 'deleteDimension': deleteDimension!,
        if (deleteDimensionGroup != null)
          'deleteDimensionGroup': deleteDimensionGroup!,
        if (deleteDuplicates != null) 'deleteDuplicates': deleteDuplicates!,
        if (deleteEmbeddedObject != null)
          'deleteEmbeddedObject': deleteEmbeddedObject!,
        if (deleteFilterView != null) 'deleteFilterView': deleteFilterView!,
        if (deleteNamedRange != null) 'deleteNamedRange': deleteNamedRange!,
        if (deleteProtectedRange != null)
          'deleteProtectedRange': deleteProtectedRange!,
        if (deleteRange != null) 'deleteRange': deleteRange!,
        if (deleteSheet != null) 'deleteSheet': deleteSheet!,
        if (duplicateFilterView != null)
          'duplicateFilterView': duplicateFilterView!,
        if (duplicateSheet != null) 'duplicateSheet': duplicateSheet!,
        if (findReplace != null) 'findReplace': findReplace!,
        if (insertDimension != null) 'insertDimension': insertDimension!,
        if (insertRange != null) 'insertRange': insertRange!,
        if (mergeCells != null) 'mergeCells': mergeCells!,
        if (moveDimension != null) 'moveDimension': moveDimension!,
        if (pasteData != null) 'pasteData': pasteData!,
        if (randomizeRange != null) 'randomizeRange': randomizeRange!,
        if (refreshDataSource != null) 'refreshDataSource': refreshDataSource!,
        if (repeatCell != null) 'repeatCell': repeatCell!,
        if (setBasicFilter != null) 'setBasicFilter': setBasicFilter!,
        if (setDataValidation != null) 'setDataValidation': setDataValidation!,
        if (sortRange != null) 'sortRange': sortRange!,
        if (textToColumns != null) 'textToColumns': textToColumns!,
        if (trimWhitespace != null) 'trimWhitespace': trimWhitespace!,
        if (unmergeCells != null) 'unmergeCells': unmergeCells!,
        if (updateBanding != null) 'updateBanding': updateBanding!,
        if (updateBorders != null) 'updateBorders': updateBorders!,
        if (updateCells != null) 'updateCells': updateCells!,
        if (updateChartSpec != null) 'updateChartSpec': updateChartSpec!,
        if (updateConditionalFormatRule != null)
          'updateConditionalFormatRule': updateConditionalFormatRule!,
        if (updateDataSource != null) 'updateDataSource': updateDataSource!,
        if (updateDeveloperMetadata != null)
          'updateDeveloperMetadata': updateDeveloperMetadata!,
        if (updateDimensionGroup != null)
          'updateDimensionGroup': updateDimensionGroup!,
        if (updateDimensionProperties != null)
          'updateDimensionProperties': updateDimensionProperties!,
        if (updateEmbeddedObjectBorder != null)
          'updateEmbeddedObjectBorder': updateEmbeddedObjectBorder!,
        if (updateEmbeddedObjectPosition != null)
          'updateEmbeddedObjectPosition': updateEmbeddedObjectPosition!,
        if (updateFilterView != null) 'updateFilterView': updateFilterView!,
        if (updateNamedRange != null) 'updateNamedRange': updateNamedRange!,
        if (updateProtectedRange != null)
          'updateProtectedRange': updateProtectedRange!,
        if (updateSheetProperties != null)
          'updateSheetProperties': updateSheetProperties!,
        if (updateSlicerSpec != null) 'updateSlicerSpec': updateSlicerSpec!,
        if (updateSpreadsheetProperties != null)
          'updateSpreadsheetProperties': updateSpreadsheetProperties!,
      };
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
                  json_['addBanding'] as core.Map<core.String, core.dynamic>)
              : null,
          addChart: json_.containsKey('addChart')
              ? AddChartResponse.fromJson(
                  json_['addChart'] as core.Map<core.String, core.dynamic>)
              : null,
          addDataSource: json_.containsKey('addDataSource')
              ? AddDataSourceResponse.fromJson(
                  json_['addDataSource'] as core.Map<core.String, core.dynamic>)
              : null,
          addDimensionGroup: json_.containsKey('addDimensionGroup')
              ? AddDimensionGroupResponse.fromJson(json_['addDimensionGroup']
                  as core.Map<core.String, core.dynamic>)
              : null,
          addFilterView: json_.containsKey('addFilterView')
              ? AddFilterViewResponse.fromJson(
                  json_['addFilterView'] as core.Map<core.String, core.dynamic>)
              : null,
          addNamedRange: json_.containsKey('addNamedRange')
              ? AddNamedRangeResponse.fromJson(
                  json_['addNamedRange'] as core.Map<core.String, core.dynamic>)
              : null,
          addProtectedRange: json_.containsKey('addProtectedRange')
              ? AddProtectedRangeResponse.fromJson(json_['addProtectedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          addSheet: json_.containsKey('addSheet')
              ? AddSheetResponse.fromJson(
                  json_['addSheet'] as core.Map<core.String, core.dynamic>)
              : null,
          addSlicer: json_.containsKey('addSlicer')
              ? AddSlicerResponse.fromJson(
                  json_['addSlicer'] as core.Map<core.String, core.dynamic>)
              : null,
          createDeveloperMetadata: json_.containsKey('createDeveloperMetadata')
              ? CreateDeveloperMetadataResponse.fromJson(
                  json_['createDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteConditionalFormatRule:
              json_.containsKey('deleteConditionalFormatRule')
                  ? DeleteConditionalFormatRuleResponse.fromJson(
                      json_['deleteConditionalFormatRule']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          deleteDeveloperMetadata: json_.containsKey('deleteDeveloperMetadata')
              ? DeleteDeveloperMetadataResponse.fromJson(
                  json_['deleteDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteDimensionGroup: json_.containsKey('deleteDimensionGroup')
              ? DeleteDimensionGroupResponse.fromJson(
                  json_['deleteDimensionGroup']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteDuplicates: json_.containsKey('deleteDuplicates')
              ? DeleteDuplicatesResponse.fromJson(json_['deleteDuplicates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          duplicateFilterView: json_.containsKey('duplicateFilterView')
              ? DuplicateFilterViewResponse.fromJson(
                  json_['duplicateFilterView']
                      as core.Map<core.String, core.dynamic>)
              : null,
          duplicateSheet: json_.containsKey('duplicateSheet')
              ? DuplicateSheetResponse.fromJson(json_['duplicateSheet']
                  as core.Map<core.String, core.dynamic>)
              : null,
          findReplace: json_.containsKey('findReplace')
              ? FindReplaceResponse.fromJson(
                  json_['findReplace'] as core.Map<core.String, core.dynamic>)
              : null,
          refreshDataSource: json_.containsKey('refreshDataSource')
              ? RefreshDataSourceResponse.fromJson(json_['refreshDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          trimWhitespace: json_.containsKey('trimWhitespace')
              ? TrimWhitespaceResponse.fromJson(json_['trimWhitespace']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateConditionalFormatRule:
              json_.containsKey('updateConditionalFormatRule')
                  ? UpdateConditionalFormatRuleResponse.fromJson(
                      json_['updateConditionalFormatRule']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateDataSource: json_.containsKey('updateDataSource')
              ? UpdateDataSourceResponse.fromJson(json_['updateDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateDeveloperMetadata: json_.containsKey('updateDeveloperMetadata')
              ? UpdateDeveloperMetadataResponse.fromJson(
                  json_['updateDeveloperMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateEmbeddedObjectPosition:
              json_.containsKey('updateEmbeddedObjectPosition')
                  ? UpdateEmbeddedObjectPositionResponse.fromJson(
                      json_['updateEmbeddedObjectPosition']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addBanding != null) 'addBanding': addBanding!,
        if (addChart != null) 'addChart': addChart!,
        if (addDataSource != null) 'addDataSource': addDataSource!,
        if (addDimensionGroup != null) 'addDimensionGroup': addDimensionGroup!,
        if (addFilterView != null) 'addFilterView': addFilterView!,
        if (addNamedRange != null) 'addNamedRange': addNamedRange!,
        if (addProtectedRange != null) 'addProtectedRange': addProtectedRange!,
        if (addSheet != null) 'addSheet': addSheet!,
        if (addSlicer != null) 'addSlicer': addSlicer!,
        if (createDeveloperMetadata != null)
          'createDeveloperMetadata': createDeveloperMetadata!,
        if (deleteConditionalFormatRule != null)
          'deleteConditionalFormatRule': deleteConditionalFormatRule!,
        if (deleteDeveloperMetadata != null)
          'deleteDeveloperMetadata': deleteDeveloperMetadata!,
        if (deleteDimensionGroup != null)
          'deleteDimensionGroup': deleteDimensionGroup!,
        if (deleteDuplicates != null) 'deleteDuplicates': deleteDuplicates!,
        if (duplicateFilterView != null)
          'duplicateFilterView': duplicateFilterView!,
        if (duplicateSheet != null) 'duplicateSheet': duplicateSheet!,
        if (findReplace != null) 'findReplace': findReplace!,
        if (refreshDataSource != null) 'refreshDataSource': refreshDataSource!,
        if (trimWhitespace != null) 'trimWhitespace': trimWhitespace!,
        if (updateConditionalFormatRule != null)
          'updateConditionalFormatRule': updateConditionalFormatRule!,
        if (updateDataSource != null) 'updateDataSource': updateDataSource!,
        if (updateDeveloperMetadata != null)
          'updateDeveloperMetadata': updateDeveloperMetadata!,
        if (updateEmbeddedObjectPosition != null)
          'updateEmbeddedObjectPosition': updateEmbeddedObjectPosition!,
      };
}

/// Data about each cell in a row.
class RowData {
  /// The values in the row, one per column.
  core.List<CellData>? values;

  RowData({
    this.values,
  });

  RowData.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => CellData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
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
          aggregateType: json_.containsKey('aggregateType')
              ? json_['aggregateType'] as core.String
              : null,
          baselineValueData: json_.containsKey('baselineValueData')
              ? ChartData.fromJson(json_['baselineValueData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          baselineValueFormat: json_.containsKey('baselineValueFormat')
              ? BaselineValueFormat.fromJson(json_['baselineValueFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customFormatOptions: json_.containsKey('customFormatOptions')
              ? ChartCustomNumberFormatOptions.fromJson(
                  json_['customFormatOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          keyValueData: json_.containsKey('keyValueData')
              ? ChartData.fromJson(
                  json_['keyValueData'] as core.Map<core.String, core.dynamic>)
              : null,
          keyValueFormat: json_.containsKey('keyValueFormat')
              ? KeyValueFormat.fromJson(json_['keyValueFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          numberFormatSource: json_.containsKey('numberFormatSource')
              ? json_['numberFormatSource'] as core.String
              : null,
          scaleFactor: json_.containsKey('scaleFactor')
              ? (json_['scaleFactor'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateType != null) 'aggregateType': aggregateType!,
        if (baselineValueData != null) 'baselineValueData': baselineValueData!,
        if (baselineValueFormat != null)
          'baselineValueFormat': baselineValueFormat!,
        if (customFormatOptions != null)
          'customFormatOptions': customFormatOptions!,
        if (keyValueData != null) 'keyValueData': keyValueData!,
        if (keyValueFormat != null) 'keyValueFormat': keyValueFormat!,
        if (numberFormatSource != null)
          'numberFormatSource': numberFormatSource!,
        if (scaleFactor != null) 'scaleFactor': scaleFactor!,
      };
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

  SearchDeveloperMetadataRequest({
    this.dataFilters,
  });

  SearchDeveloperMetadataRequest.fromJson(core.Map json_)
      : this(
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
      };
}

/// A reply to a developer metadata search request.
class SearchDeveloperMetadataResponse {
  /// The metadata matching the criteria of the search request.
  core.List<MatchedDeveloperMetadata>? matchedDeveloperMetadata;

  SearchDeveloperMetadataResponse({
    this.matchedDeveloperMetadata,
  });

  SearchDeveloperMetadataResponse.fromJson(core.Map json_)
      : this(
          matchedDeveloperMetadata:
              json_.containsKey('matchedDeveloperMetadata')
                  ? (json_['matchedDeveloperMetadata'] as core.List)
                      .map((value) => MatchedDeveloperMetadata.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchedDeveloperMetadata != null)
          'matchedDeveloperMetadata': matchedDeveloperMetadata!,
      };
}

/// Sets the basic filter associated with a sheet.
class SetBasicFilterRequest {
  /// The filter to set.
  BasicFilter? filter;

  SetBasicFilterRequest({
    this.filter,
  });

  SetBasicFilterRequest.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? BasicFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Sets a data validation rule to every cell in the range.
///
/// To clear validation in a range, call this with no rule specified.
class SetDataValidationRequest {
  /// The range the data validation rule should apply to.
  GridRange? range;

  /// The data validation rule to set on each cell in the range, or empty to
  /// clear the data validation in the range.
  DataValidationRule? rule;

  SetDataValidationRequest({
    this.range,
    this.rule,
  });

  SetDataValidationRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          rule: json_.containsKey('rule')
              ? DataValidationRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (rule != null) 'rule': rule!,
      };
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
  });

  Sheet.fromJson(core.Map json_)
      : this(
          bandedRanges: json_.containsKey('bandedRanges')
              ? (json_['bandedRanges'] as core.List)
                  .map((value) => BandedRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          basicFilter: json_.containsKey('basicFilter')
              ? BasicFilter.fromJson(
                  json_['basicFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          charts: json_.containsKey('charts')
              ? (json_['charts'] as core.List)
                  .map((value) => EmbeddedChart.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          columnGroups: json_.containsKey('columnGroups')
              ? (json_['columnGroups'] as core.List)
                  .map((value) => DimensionGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          conditionalFormats: json_.containsKey('conditionalFormats')
              ? (json_['conditionalFormats'] as core.List)
                  .map((value) => ConditionalFormatRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          data: json_.containsKey('data')
              ? (json_['data'] as core.List)
                  .map((value) => GridData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          developerMetadata: json_.containsKey('developerMetadata')
              ? (json_['developerMetadata'] as core.List)
                  .map((value) => DeveloperMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          filterViews: json_.containsKey('filterViews')
              ? (json_['filterViews'] as core.List)
                  .map((value) => FilterView.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          merges: json_.containsKey('merges')
              ? (json_['merges'] as core.List)
                  .map((value) => GridRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          properties: json_.containsKey('properties')
              ? SheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          protectedRanges: json_.containsKey('protectedRanges')
              ? (json_['protectedRanges'] as core.List)
                  .map((value) => ProtectedRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowGroups: json_.containsKey('rowGroups')
              ? (json_['rowGroups'] as core.List)
                  .map((value) => DimensionGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          slicers: json_.containsKey('slicers')
              ? (json_['slicers'] as core.List)
                  .map((value) => Slicer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRanges != null) 'bandedRanges': bandedRanges!,
        if (basicFilter != null) 'basicFilter': basicFilter!,
        if (charts != null) 'charts': charts!,
        if (columnGroups != null) 'columnGroups': columnGroups!,
        if (conditionalFormats != null)
          'conditionalFormats': conditionalFormats!,
        if (data != null) 'data': data!,
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
        if (filterViews != null) 'filterViews': filterViews!,
        if (merges != null) 'merges': merges!,
        if (properties != null) 'properties': properties!,
        if (protectedRanges != null) 'protectedRanges': protectedRanges!,
        if (rowGroups != null) 'rowGroups': rowGroups!,
        if (slicers != null) 'slicers': slicers!,
      };
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
  /// move" indexes. For example, if there were 3 sheets (S1, S2, S3) in order
  /// to move S1 ahead of S2 the index would have to be set to 2. A sheet index
  /// update request is ignored if the requested index is identical to the
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
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gridProperties: json_.containsKey('gridProperties')
              ? GridProperties.fromJson(json_['gridProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          rightToLeft: json_.containsKey('rightToLeft')
              ? json_['rightToLeft'] as core.bool
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
          sheetType: json_.containsKey('sheetType')
              ? json_['sheetType'] as core.String
              : null,
          tabColor: json_.containsKey('tabColor')
              ? Color.fromJson(
                  json_['tabColor'] as core.Map<core.String, core.dynamic>)
              : null,
          tabColorStyle: json_.containsKey('tabColorStyle')
              ? ColorStyle.fromJson(
                  json_['tabColorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceSheetProperties != null)
          'dataSourceSheetProperties': dataSourceSheetProperties!,
        if (gridProperties != null) 'gridProperties': gridProperties!,
        if (hidden != null) 'hidden': hidden!,
        if (index != null) 'index': index!,
        if (rightToLeft != null) 'rightToLeft': rightToLeft!,
        if (sheetId != null) 'sheetId': sheetId!,
        if (sheetType != null) 'sheetType': sheetType!,
        if (tabColor != null) 'tabColor': tabColor!,
        if (tabColorStyle != null) 'tabColorStyle': tabColorStyle!,
        if (title != null) 'title': title!,
      };
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

  Slicer({
    this.position,
    this.slicerId,
    this.spec,
  });

  Slicer.fromJson(core.Map json_)
      : this(
          position: json_.containsKey('position')
              ? EmbeddedObjectPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          slicerId: json_.containsKey('slicerId')
              ? json_['slicerId'] as core.int
              : null,
          spec: json_.containsKey('spec')
              ? SlicerSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (slicerId != null) 'slicerId': slicerId!,
        if (spec != null) 'spec': spec!,
      };
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
  Color? backgroundColor;

  /// The background color of the slicer.
  ///
  /// If background_color is also set, this field takes precedence.
  ColorStyle? backgroundColorStyle;

  /// The column index in the data table on which the filter is applied to.
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
          applyToPivotTables: json_.containsKey('applyToPivotTables')
              ? json_['applyToPivotTables'] as core.bool
              : null,
          backgroundColor: json_.containsKey('backgroundColor')
              ? Color.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backgroundColorStyle: json_.containsKey('backgroundColorStyle')
              ? ColorStyle.fromJson(json_['backgroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          columnIndex: json_.containsKey('columnIndex')
              ? json_['columnIndex'] as core.int
              : null,
          dataRange: json_.containsKey('dataRange')
              ? GridRange.fromJson(
                  json_['dataRange'] as core.Map<core.String, core.dynamic>)
              : null,
          filterCriteria: json_.containsKey('filterCriteria')
              ? FilterCriteria.fromJson(json_['filterCriteria']
                  as core.Map<core.String, core.dynamic>)
              : null,
          horizontalAlignment: json_.containsKey('horizontalAlignment')
              ? json_['horizontalAlignment'] as core.String
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyToPivotTables != null)
          'applyToPivotTables': applyToPivotTables!,
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (backgroundColorStyle != null)
          'backgroundColorStyle': backgroundColorStyle!,
        if (columnIndex != null) 'columnIndex': columnIndex!,
        if (dataRange != null) 'dataRange': dataRange!,
        if (filterCriteria != null) 'filterCriteria': filterCriteria!,
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
        if (textFormat != null) 'textFormat': textFormat!,
        if (title != null) 'title': title!,
      };
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

  SortRangeRequest({
    this.range,
    this.sortSpecs,
  });

  SortRangeRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          sortSpecs: json_.containsKey('sortSpecs')
              ? (json_['sortSpecs'] as core.List)
                  .map((value) => SortSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
        if (sortSpecs != null) 'sortSpecs': sortSpecs!,
      };
}

/// A sort order associated with a specific column or row.
class SortSpec {
  /// The background fill color to sort by; cells with this fill color are
  /// sorted to the top.
  ///
  /// Mutually exclusive with foreground_color. Deprecated: Use
  /// background_color_style.
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
              ? Color.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backgroundColorStyle: json_.containsKey('backgroundColorStyle')
              ? ColorStyle.fromJson(json_['backgroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceColumnReference:
              json_.containsKey('dataSourceColumnReference')
                  ? DataSourceColumnReference.fromJson(
                      json_['dataSourceColumnReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dimensionIndex: json_.containsKey('dimensionIndex')
              ? json_['dimensionIndex'] as core.int
              : null,
          foregroundColor: json_.containsKey('foregroundColor')
              ? Color.fromJson(json_['foregroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          foregroundColorStyle: json_.containsKey('foregroundColorStyle')
              ? ColorStyle.fromJson(json_['foregroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sortOrder: json_.containsKey('sortOrder')
              ? json_['sortOrder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (backgroundColorStyle != null)
          'backgroundColorStyle': backgroundColorStyle!,
        if (dataSourceColumnReference != null)
          'dataSourceColumnReference': dataSourceColumnReference!,
        if (dimensionIndex != null) 'dimensionIndex': dimensionIndex!,
        if (foregroundColor != null) 'foregroundColor': foregroundColor!,
        if (foregroundColorStyle != null)
          'foregroundColorStyle': foregroundColorStyle!,
        if (sortOrder != null) 'sortOrder': sortOrder!,
      };
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

  SourceAndDestination({
    this.dimension,
    this.fillLength,
    this.source,
  });

  SourceAndDestination.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          fillLength: json_.containsKey('fillLength')
              ? json_['fillLength'] as core.int
              : null,
          source: json_.containsKey('source')
              ? GridRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (fillLength != null) 'fillLength': fillLength!,
        if (source != null) 'source': source!,
      };
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
          dataSourceSchedules: json_.containsKey('dataSourceSchedules')
              ? (json_['dataSourceSchedules'] as core.List)
                  .map((value) => DataSourceRefreshSchedule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataSources: json_.containsKey('dataSources')
              ? (json_['dataSources'] as core.List)
                  .map((value) => DataSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          developerMetadata: json_.containsKey('developerMetadata')
              ? (json_['developerMetadata'] as core.List)
                  .map((value) => DeveloperMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          namedRanges: json_.containsKey('namedRanges')
              ? (json_['namedRanges'] as core.List)
                  .map((value) => NamedRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          properties: json_.containsKey('properties')
              ? SpreadsheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          sheets: json_.containsKey('sheets')
              ? (json_['sheets'] as core.List)
                  .map((value) => Sheet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          spreadsheetUrl: json_.containsKey('spreadsheetUrl')
              ? json_['spreadsheetUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceSchedules != null)
          'dataSourceSchedules': dataSourceSchedules!,
        if (dataSources != null) 'dataSources': dataSources!,
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
        if (namedRanges != null) 'namedRanges': namedRanges!,
        if (properties != null) 'properties': properties!,
        if (sheets != null) 'sheets': sheets!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (spreadsheetUrl != null) 'spreadsheetUrl': spreadsheetUrl!,
      };
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
    this.iterativeCalculationSettings,
    this.locale,
    this.spreadsheetTheme,
    this.timeZone,
    this.title,
  });

  SpreadsheetProperties.fromJson(core.Map json_)
      : this(
          autoRecalc: json_.containsKey('autoRecalc')
              ? json_['autoRecalc'] as core.String
              : null,
          defaultFormat: json_.containsKey('defaultFormat')
              ? CellFormat.fromJson(
                  json_['defaultFormat'] as core.Map<core.String, core.dynamic>)
              : null,
          iterativeCalculationSettings:
              json_.containsKey('iterativeCalculationSettings')
                  ? IterativeCalculationSettings.fromJson(
                      json_['iterativeCalculationSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          spreadsheetTheme: json_.containsKey('spreadsheetTheme')
              ? SpreadsheetTheme.fromJson(json_['spreadsheetTheme']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoRecalc != null) 'autoRecalc': autoRecalc!,
        if (defaultFormat != null) 'defaultFormat': defaultFormat!,
        if (iterativeCalculationSettings != null)
          'iterativeCalculationSettings': iterativeCalculationSettings!,
        if (locale != null) 'locale': locale!,
        if (spreadsheetTheme != null) 'spreadsheetTheme': spreadsheetTheme!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (title != null) 'title': title!,
      };
}

/// Represents spreadsheet theme
class SpreadsheetTheme {
  /// Name of the primary font family.
  core.String? primaryFontFamily;

  /// The spreadsheet theme color pairs.
  ///
  /// To update you must provide all theme color pairs.
  core.List<ThemeColorPair>? themeColors;

  SpreadsheetTheme({
    this.primaryFontFamily,
    this.themeColors,
  });

  SpreadsheetTheme.fromJson(core.Map json_)
      : this(
          primaryFontFamily: json_.containsKey('primaryFontFamily')
              ? json_['primaryFontFamily'] as core.String
              : null,
          themeColors: json_.containsKey('themeColors')
              ? (json_['themeColors'] as core.List)
                  .map((value) => ThemeColorPair.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primaryFontFamily != null) 'primaryFontFamily': primaryFontFamily!,
        if (themeColors != null) 'themeColors': themeColors!,
      };
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
          bold: json_.containsKey('bold') ? json_['bold'] as core.bool : null,
          fontFamily: json_.containsKey('fontFamily')
              ? json_['fontFamily'] as core.String
              : null,
          fontSize: json_.containsKey('fontSize')
              ? json_['fontSize'] as core.int
              : null,
          foregroundColor: json_.containsKey('foregroundColor')
              ? Color.fromJson(json_['foregroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          foregroundColorStyle: json_.containsKey('foregroundColorStyle')
              ? ColorStyle.fromJson(json_['foregroundColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          italic:
              json_.containsKey('italic') ? json_['italic'] as core.bool : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          strikethrough: json_.containsKey('strikethrough')
              ? json_['strikethrough'] as core.bool
              : null,
          underline: json_.containsKey('underline')
              ? json_['underline'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bold != null) 'bold': bold!,
        if (fontFamily != null) 'fontFamily': fontFamily!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (foregroundColor != null) 'foregroundColor': foregroundColor!,
        if (foregroundColorStyle != null)
          'foregroundColorStyle': foregroundColorStyle!,
        if (italic != null) 'italic': italic!,
        if (link != null) 'link': link!,
        if (strikethrough != null) 'strikethrough': strikethrough!,
        if (underline != null) 'underline': underline!,
      };
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

  /// The character index where this run starts.
  core.int? startIndex;

  TextFormatRun({
    this.format,
    this.startIndex,
  });

  TextFormatRun.fromJson(core.Map json_)
      : this(
          format: json_.containsKey('format')
              ? TextFormat.fromJson(
                  json_['format'] as core.Map<core.String, core.dynamic>)
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
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

  TextPosition({
    this.horizontalAlignment,
  });

  TextPosition.fromJson(core.Map json_)
      : this(
          horizontalAlignment: json_.containsKey('horizontalAlignment')
              ? json_['horizontalAlignment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
      };
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

  TextRotation({
    this.angle,
    this.vertical,
  });

  TextRotation.fromJson(core.Map json_)
      : this(
          angle: json_.containsKey('angle') ? json_['angle'] as core.int : null,
          vertical: json_.containsKey('vertical')
              ? json_['vertical'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (angle != null) 'angle': angle!,
        if (vertical != null) 'vertical': vertical!,
      };
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

  TextToColumnsRequest({
    this.delimiter,
    this.delimiterType,
    this.source,
  });

  TextToColumnsRequest.fromJson(core.Map json_)
      : this(
          delimiter: json_.containsKey('delimiter')
              ? json_['delimiter'] as core.String
              : null,
          delimiterType: json_.containsKey('delimiterType')
              ? json_['delimiterType'] as core.String
              : null,
          source: json_.containsKey('source')
              ? GridRange.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delimiter != null) 'delimiter': delimiter!,
        if (delimiterType != null) 'delimiterType': delimiterType!,
        if (source != null) 'source': source!,
      };
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

  ThemeColorPair({
    this.color,
    this.colorType,
  });

  ThemeColorPair.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? ColorStyle.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorType: json_.containsKey('colorType')
              ? json_['colorType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorType != null) 'colorType': colorType!,
      };
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
                  json_['maxValueColor'] as core.Map<core.String, core.dynamic>)
              : null,
          maxValueColorStyle: json_.containsKey('maxValueColorStyle')
              ? ColorStyle.fromJson(json_['maxValueColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          midValueColor: json_.containsKey('midValueColor')
              ? Color.fromJson(
                  json_['midValueColor'] as core.Map<core.String, core.dynamic>)
              : null,
          midValueColorStyle: json_.containsKey('midValueColorStyle')
              ? ColorStyle.fromJson(json_['midValueColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minValueColor: json_.containsKey('minValueColor')
              ? Color.fromJson(
                  json_['minValueColor'] as core.Map<core.String, core.dynamic>)
              : null,
          minValueColorStyle: json_.containsKey('minValueColorStyle')
              ? ColorStyle.fromJson(json_['minValueColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          noDataColor: json_.containsKey('noDataColor')
              ? Color.fromJson(
                  json_['noDataColor'] as core.Map<core.String, core.dynamic>)
              : null,
          noDataColorStyle: json_.containsKey('noDataColorStyle')
              ? ColorStyle.fromJson(json_['noDataColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValueColor != null) 'maxValueColor': maxValueColor!,
        if (maxValueColorStyle != null)
          'maxValueColorStyle': maxValueColorStyle!,
        if (midValueColor != null) 'midValueColor': midValueColor!,
        if (midValueColorStyle != null)
          'midValueColorStyle': midValueColorStyle!,
        if (minValueColor != null) 'minValueColor': minValueColor!,
        if (minValueColorStyle != null)
          'minValueColorStyle': minValueColorStyle!,
        if (noDataColor != null) 'noDataColor': noDataColor!,
        if (noDataColorStyle != null) 'noDataColorStyle': noDataColorStyle!,
      };
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
                  json_['colorData'] as core.Map<core.String, core.dynamic>)
              : null,
          colorScale: json_.containsKey('colorScale')
              ? TreemapChartColorScale.fromJson(
                  json_['colorScale'] as core.Map<core.String, core.dynamic>)
              : null,
          headerColor: json_.containsKey('headerColor')
              ? Color.fromJson(
                  json_['headerColor'] as core.Map<core.String, core.dynamic>)
              : null,
          headerColorStyle: json_.containsKey('headerColorStyle')
              ? ColorStyle.fromJson(json_['headerColorStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hideTooltips: json_.containsKey('hideTooltips')
              ? json_['hideTooltips'] as core.bool
              : null,
          hintedLevels: json_.containsKey('hintedLevels')
              ? json_['hintedLevels'] as core.int
              : null,
          labels: json_.containsKey('labels')
              ? ChartData.fromJson(
                  json_['labels'] as core.Map<core.String, core.dynamic>)
              : null,
          levels:
              json_.containsKey('levels') ? json_['levels'] as core.int : null,
          maxValue: json_.containsKey('maxValue')
              ? (json_['maxValue'] as core.num).toDouble()
              : null,
          minValue: json_.containsKey('minValue')
              ? (json_['minValue'] as core.num).toDouble()
              : null,
          parentLabels: json_.containsKey('parentLabels')
              ? ChartData.fromJson(
                  json_['parentLabels'] as core.Map<core.String, core.dynamic>)
              : null,
          sizeData: json_.containsKey('sizeData')
              ? ChartData.fromJson(
                  json_['sizeData'] as core.Map<core.String, core.dynamic>)
              : null,
          textFormat: json_.containsKey('textFormat')
              ? TextFormat.fromJson(
                  json_['textFormat'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colorData != null) 'colorData': colorData!,
        if (colorScale != null) 'colorScale': colorScale!,
        if (headerColor != null) 'headerColor': headerColor!,
        if (headerColorStyle != null) 'headerColorStyle': headerColorStyle!,
        if (hideTooltips != null) 'hideTooltips': hideTooltips!,
        if (hintedLevels != null) 'hintedLevels': hintedLevels!,
        if (labels != null) 'labels': labels!,
        if (levels != null) 'levels': levels!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (parentLabels != null) 'parentLabels': parentLabels!,
        if (sizeData != null) 'sizeData': sizeData!,
        if (textFormat != null) 'textFormat': textFormat!,
      };
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

  TrimWhitespaceRequest({
    this.range,
  });

  TrimWhitespaceRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
}

/// The result of trimming whitespace in cells.
class TrimWhitespaceResponse {
  /// The number of cells that were trimmed of whitespace.
  core.int? cellsChangedCount;

  TrimWhitespaceResponse({
    this.cellsChangedCount,
  });

  TrimWhitespaceResponse.fromJson(core.Map json_)
      : this(
          cellsChangedCount: json_.containsKey('cellsChangedCount')
              ? json_['cellsChangedCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellsChangedCount != null) 'cellsChangedCount': cellsChangedCount!,
      };
}

/// Unmerges cells in the given range.
class UnmergeCellsRequest {
  /// The range within which all cells should be unmerged.
  ///
  /// If the range spans multiple merges, all will be unmerged. The range must
  /// not partially span any merge.
  GridRange? range;

  UnmergeCellsRequest({
    this.range,
  });

  UnmergeCellsRequest.fromJson(core.Map json_)
      : this(
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (range != null) 'range': range!,
      };
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

  UpdateBandingRequest({
    this.bandedRange,
    this.fields,
  });

  UpdateBandingRequest.fromJson(core.Map json_)
      : this(
          bandedRange: json_.containsKey('bandedRange')
              ? BandedRange.fromJson(
                  json_['bandedRange'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandedRange != null) 'bandedRange': bandedRange!,
        if (fields != null) 'fields': fields!,
      };
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
                  json_['bottom'] as core.Map<core.String, core.dynamic>)
              : null,
          innerHorizontal: json_.containsKey('innerHorizontal')
              ? Border.fromJson(json_['innerHorizontal']
                  as core.Map<core.String, core.dynamic>)
              : null,
          innerVertical: json_.containsKey('innerVertical')
              ? Border.fromJson(
                  json_['innerVertical'] as core.Map<core.String, core.dynamic>)
              : null,
          left: json_.containsKey('left')
              ? Border.fromJson(
                  json_['left'] as core.Map<core.String, core.dynamic>)
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          right: json_.containsKey('right')
              ? Border.fromJson(
                  json_['right'] as core.Map<core.String, core.dynamic>)
              : null,
          top: json_.containsKey('top')
              ? Border.fromJson(
                  json_['top'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottom != null) 'bottom': bottom!,
        if (innerHorizontal != null) 'innerHorizontal': innerHorizontal!,
        if (innerVertical != null) 'innerVertical': innerVertical!,
        if (left != null) 'left': left!,
        if (range != null) 'range': range!,
        if (right != null) 'right': right!,
        if (top != null) 'top': top!,
      };
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

  UpdateCellsRequest({
    this.fields,
    this.range,
    this.rows,
    this.start,
  });

  UpdateCellsRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          range: json_.containsKey('range')
              ? GridRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => RowData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          start: json_.containsKey('start')
              ? GridCoordinate.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (range != null) 'range': range!,
        if (rows != null) 'rows': rows!,
        if (start != null) 'start': start!,
      };
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

  UpdateChartSpecRequest({
    this.chartId,
    this.spec,
  });

  UpdateChartSpecRequest.fromJson(core.Map json_)
      : this(
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          spec: json_.containsKey('spec')
              ? ChartSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartId != null) 'chartId': chartId!,
        if (spec != null) 'spec': spec!,
      };
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
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          newIndex: json_.containsKey('newIndex')
              ? json_['newIndex'] as core.int
              : null,
          rule: json_.containsKey('rule')
              ? ConditionalFormatRule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
          sheetId: json_.containsKey('sheetId')
              ? json_['sheetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (newIndex != null) 'newIndex': newIndex!,
        if (rule != null) 'rule': rule!,
        if (sheetId != null) 'sheetId': sheetId!,
      };
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
          newIndex: json_.containsKey('newIndex')
              ? json_['newIndex'] as core.int
              : null,
          newRule: json_.containsKey('newRule')
              ? ConditionalFormatRule.fromJson(
                  json_['newRule'] as core.Map<core.String, core.dynamic>)
              : null,
          oldIndex: json_.containsKey('oldIndex')
              ? json_['oldIndex'] as core.int
              : null,
          oldRule: json_.containsKey('oldRule')
              ? ConditionalFormatRule.fromJson(
                  json_['oldRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newIndex != null) 'newIndex': newIndex!,
        if (newRule != null) 'newRule': newRule!,
        if (oldIndex != null) 'oldIndex': oldIndex!,
        if (oldRule != null) 'oldRule': oldRule!,
      };
}

/// Updates a data source.
///
/// After the data source is updated successfully, an execution is triggered to
/// refresh the associated DATA_SOURCE sheet to read data from the updated data
/// source. The request requires an additional `bigquery.readonly` OAuth scope.
class UpdateDataSourceRequest {
  /// The data source to update.
  DataSource? dataSource;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `dataSource` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field.
  core.String? fields;

  UpdateDataSourceRequest({
    this.dataSource,
    this.fields,
  });

  UpdateDataSourceRequest.fromJson(core.Map json_)
      : this(
          dataSource: json_.containsKey('dataSource')
              ? DataSource.fromJson(
                  json_['dataSource'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSource != null) 'dataSource': dataSource!,
        if (fields != null) 'fields': fields!,
      };
}

/// The response from updating data source.
class UpdateDataSourceResponse {
  /// The data execution status.
  DataExecutionStatus? dataExecutionStatus;

  /// The updated data source.
  DataSource? dataSource;

  UpdateDataSourceResponse({
    this.dataExecutionStatus,
    this.dataSource,
  });

  UpdateDataSourceResponse.fromJson(core.Map json_)
      : this(
          dataExecutionStatus: json_.containsKey('dataExecutionStatus')
              ? DataExecutionStatus.fromJson(json_['dataExecutionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataSource: json_.containsKey('dataSource')
              ? DataSource.fromJson(
                  json_['dataSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataExecutionStatus != null)
          'dataExecutionStatus': dataExecutionStatus!,
        if (dataSource != null) 'dataSource': dataSource!,
      };
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
          dataFilters: json_.containsKey('dataFilters')
              ? (json_['dataFilters'] as core.List)
                  .map((value) => DataFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          developerMetadata: json_.containsKey('developerMetadata')
              ? DeveloperMetadata.fromJson(json_['developerMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilters != null) 'dataFilters': dataFilters!,
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
        if (fields != null) 'fields': fields!,
      };
}

/// The response from updating developer metadata.
class UpdateDeveloperMetadataResponse {
  /// The updated developer metadata.
  core.List<DeveloperMetadata>? developerMetadata;

  UpdateDeveloperMetadataResponse({
    this.developerMetadata,
  });

  UpdateDeveloperMetadataResponse.fromJson(core.Map json_)
      : this(
          developerMetadata: json_.containsKey('developerMetadata')
              ? (json_['developerMetadata'] as core.List)
                  .map((value) => DeveloperMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerMetadata != null) 'developerMetadata': developerMetadata!,
      };
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

  UpdateDimensionGroupRequest({
    this.dimensionGroup,
    this.fields,
  });

  UpdateDimensionGroupRequest.fromJson(core.Map json_)
      : this(
          dimensionGroup: json_.containsKey('dimensionGroup')
              ? DimensionGroup.fromJson(json_['dimensionGroup']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionGroup != null) 'dimensionGroup': dimensionGroup!,
        if (fields != null) 'fields': fields!,
      };
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
                      as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? DimensionProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          range: json_.containsKey('range')
              ? DimensionRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceSheetRange != null)
          'dataSourceSheetRange': dataSourceSheetRange!,
        if (fields != null) 'fields': fields!,
        if (properties != null) 'properties': properties!,
        if (range != null) 'range': range!,
      };
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

  UpdateEmbeddedObjectBorderRequest({
    this.border,
    this.fields,
    this.objectId,
  });

  UpdateEmbeddedObjectBorderRequest.fromJson(core.Map json_)
      : this(
          border: json_.containsKey('border')
              ? EmbeddedObjectBorder.fromJson(
                  json_['border'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (border != null) 'border': border!,
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
      };
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
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          newPosition: json_.containsKey('newPosition')
              ? EmbeddedObjectPosition.fromJson(
                  json_['newPosition'] as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (newPosition != null) 'newPosition': newPosition!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// The result of updating an embedded object's position.
class UpdateEmbeddedObjectPositionResponse {
  /// The new position of the embedded object.
  EmbeddedObjectPosition? position;

  UpdateEmbeddedObjectPositionResponse({
    this.position,
  });

  UpdateEmbeddedObjectPositionResponse.fromJson(core.Map json_)
      : this(
          position: json_.containsKey('position')
              ? EmbeddedObjectPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
      };
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

  UpdateFilterViewRequest({
    this.fields,
    this.filter,
  });

  UpdateFilterViewRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? FilterView.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (filter != null) 'filter': filter!,
      };
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

  UpdateNamedRangeRequest({
    this.fields,
    this.namedRange,
  });

  UpdateNamedRangeRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          namedRange: json_.containsKey('namedRange')
              ? NamedRange.fromJson(
                  json_['namedRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (namedRange != null) 'namedRange': namedRange!,
      };
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

  UpdateProtectedRangeRequest({
    this.fields,
    this.protectedRange,
  });

  UpdateProtectedRangeRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          protectedRange: json_.containsKey('protectedRange')
              ? ProtectedRange.fromJson(json_['protectedRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (protectedRange != null) 'protectedRange': protectedRange!,
      };
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

  UpdateSheetPropertiesRequest({
    this.fields,
    this.properties,
  });

  UpdateSheetPropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? SheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (properties != null) 'properties': properties!,
      };
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

  UpdateSlicerSpecRequest({
    this.fields,
    this.slicerId,
    this.spec,
  });

  UpdateSlicerSpecRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          slicerId: json_.containsKey('slicerId')
              ? json_['slicerId'] as core.int
              : null,
          spec: json_.containsKey('spec')
              ? SlicerSpec.fromJson(
                  json_['spec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (slicerId != null) 'slicerId': slicerId!,
        if (spec != null) 'spec': spec!,
      };
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

  UpdateSpreadsheetPropertiesRequest({
    this.fields,
    this.properties,
  });

  UpdateSpreadsheetPropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? SpreadsheetProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (properties != null) 'properties': properties!,
      };
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

  /// The range (in \[A1 notation\](/sheets/api/guides/concepts#cell)) that
  /// updates were applied to.
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
                  json_['dataFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          updatedCells: json_.containsKey('updatedCells')
              ? json_['updatedCells'] as core.int
              : null,
          updatedColumns: json_.containsKey('updatedColumns')
              ? json_['updatedColumns'] as core.int
              : null,
          updatedData: json_.containsKey('updatedData')
              ? ValueRange.fromJson(
                  json_['updatedData'] as core.Map<core.String, core.dynamic>)
              : null,
          updatedRange: json_.containsKey('updatedRange')
              ? json_['updatedRange'] as core.String
              : null,
          updatedRows: json_.containsKey('updatedRows')
              ? json_['updatedRows'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataFilter != null) 'dataFilter': dataFilter!,
        if (updatedCells != null) 'updatedCells': updatedCells!,
        if (updatedColumns != null) 'updatedColumns': updatedColumns!,
        if (updatedData != null) 'updatedData': updatedData!,
        if (updatedRange != null) 'updatedRange': updatedRange!,
        if (updatedRows != null) 'updatedRows': updatedRows!,
      };
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
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
          updatedCells: json_.containsKey('updatedCells')
              ? json_['updatedCells'] as core.int
              : null,
          updatedColumns: json_.containsKey('updatedColumns')
              ? json_['updatedColumns'] as core.int
              : null,
          updatedData: json_.containsKey('updatedData')
              ? ValueRange.fromJson(
                  json_['updatedData'] as core.Map<core.String, core.dynamic>)
              : null,
          updatedRange: json_.containsKey('updatedRange')
              ? json_['updatedRange'] as core.String
              : null,
          updatedRows: json_.containsKey('updatedRows')
              ? json_['updatedRows'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
        if (updatedCells != null) 'updatedCells': updatedCells!,
        if (updatedColumns != null) 'updatedColumns': updatedColumns!,
        if (updatedData != null) 'updatedData': updatedData!,
        if (updatedRange != null) 'updatedRange': updatedRange!,
        if (updatedRows != null) 'updatedRows': updatedRows!,
      };
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

  /// The range the values cover, in \[A1
  /// notation\](/sheets/api/guides/concepts#cell).
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

  ValueRange({
    this.majorDimension,
    this.range,
    this.values,
  });

  ValueRange.fromJson(core.Map json_)
      : this(
          majorDimension: json_.containsKey('majorDimension')
              ? json_['majorDimension'] as core.String
              : null,
          range:
              json_.containsKey('range') ? json_['range'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (majorDimension != null) 'majorDimension': majorDimension!,
        if (range != null) 'range': range!,
        if (values != null) 'values': values!,
      };
}

/// Styles for a waterfall chart column.
class WaterfallChartColumnStyle {
  /// The color of the column.
  ///
  /// Deprecated: Use color_style.
  Color? color;

  /// The color of the column.
  ///
  /// If color is also set, this field takes precedence.
  ColorStyle? colorStyle;

  /// The label of the column's legend.
  core.String? label;

  WaterfallChartColumnStyle({
    this.color,
    this.colorStyle,
    this.label,
  });

  WaterfallChartColumnStyle.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          colorStyle: json_.containsKey('colorStyle')
              ? ColorStyle.fromJson(
                  json_['colorStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (colorStyle != null) 'colorStyle': colorStyle!,
        if (label != null) 'label': label!,
      };
}

/// A custom subtotal column for a waterfall chart series.
class WaterfallChartCustomSubtotal {
  /// True if the data point at subtotal_index is the subtotal.
  ///
  /// If false, the subtotal will be computed and appear after the data point.
  core.bool? dataIsSubtotal;

  /// A label for the subtotal column.
  core.String? label;

  /// The 0-based index of a data point within the series.
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
          dataIsSubtotal: json_.containsKey('dataIsSubtotal')
              ? json_['dataIsSubtotal'] as core.bool
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          subtotalIndex: json_.containsKey('subtotalIndex')
              ? json_['subtotalIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataIsSubtotal != null) 'dataIsSubtotal': dataIsSubtotal!,
        if (label != null) 'label': label!,
        if (subtotalIndex != null) 'subtotalIndex': subtotalIndex!,
      };
}

/// The domain of a waterfall chart.
class WaterfallChartDomain {
  /// The data of the WaterfallChartDomain.
  ChartData? data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool? reversed;

  WaterfallChartDomain({
    this.data,
    this.reversed,
  });

  WaterfallChartDomain.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data')
              ? ChartData.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
          reversed: json_.containsKey('reversed')
              ? json_['reversed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (reversed != null) 'reversed': reversed!,
      };
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
          customSubtotals: json_.containsKey('customSubtotals')
              ? (json_['customSubtotals'] as core.List)
                  .map((value) => WaterfallChartCustomSubtotal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          data: json_.containsKey('data')
              ? ChartData.fromJson(
                  json_['data'] as core.Map<core.String, core.dynamic>)
              : null,
          dataLabel: json_.containsKey('dataLabel')
              ? DataLabel.fromJson(
                  json_['dataLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          hideTrailingSubtotal: json_.containsKey('hideTrailingSubtotal')
              ? json_['hideTrailingSubtotal'] as core.bool
              : null,
          negativeColumnsStyle: json_.containsKey('negativeColumnsStyle')
              ? WaterfallChartColumnStyle.fromJson(json_['negativeColumnsStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          positiveColumnsStyle: json_.containsKey('positiveColumnsStyle')
              ? WaterfallChartColumnStyle.fromJson(json_['positiveColumnsStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subtotalColumnsStyle: json_.containsKey('subtotalColumnsStyle')
              ? WaterfallChartColumnStyle.fromJson(json_['subtotalColumnsStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSubtotals != null) 'customSubtotals': customSubtotals!,
        if (data != null) 'data': data!,
        if (dataLabel != null) 'dataLabel': dataLabel!,
        if (hideTrailingSubtotal != null)
          'hideTrailingSubtotal': hideTrailingSubtotal!,
        if (negativeColumnsStyle != null)
          'negativeColumnsStyle': negativeColumnsStyle!,
        if (positiveColumnsStyle != null)
          'positiveColumnsStyle': positiveColumnsStyle!,
        if (subtotalColumnsStyle != null)
          'subtotalColumnsStyle': subtotalColumnsStyle!,
      };
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
              ? LineStyle.fromJson(json_['connectorLineStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domain: json_.containsKey('domain')
              ? WaterfallChartDomain.fromJson(
                  json_['domain'] as core.Map<core.String, core.dynamic>)
              : null,
          firstValueIsTotal: json_.containsKey('firstValueIsTotal')
              ? json_['firstValueIsTotal'] as core.bool
              : null,
          hideConnectorLines: json_.containsKey('hideConnectorLines')
              ? json_['hideConnectorLines'] as core.bool
              : null,
          series: json_.containsKey('series')
              ? (json_['series'] as core.List)
                  .map((value) => WaterfallChartSeries.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          stackedType: json_.containsKey('stackedType')
              ? json_['stackedType'] as core.String
              : null,
          totalDataLabel: json_.containsKey('totalDataLabel')
              ? DataLabel.fromJson(json_['totalDataLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorLineStyle != null)
          'connectorLineStyle': connectorLineStyle!,
        if (domain != null) 'domain': domain!,
        if (firstValueIsTotal != null) 'firstValueIsTotal': firstValueIsTotal!,
        if (hideConnectorLines != null)
          'hideConnectorLines': hideConnectorLines!,
        if (series != null) 'series': series!,
        if (stackedType != null) 'stackedType': stackedType!,
        if (totalDataLabel != null) 'totalDataLabel': totalDataLabel!,
      };
}
