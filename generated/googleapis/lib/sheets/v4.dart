// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.sheets.v4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client sheets/v4';

/// Reads and writes Google Sheets.
class SheetsApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const DriveScope = "https://www.googleapis.com/auth/drive";

  /// View and manage Google Drive files and folders that you have opened or
  /// created with this app
  static const DriveFileScope = "https://www.googleapis.com/auth/drive.file";

  /// See and download all your Google Drive files
  static const DriveReadonlyScope =
      "https://www.googleapis.com/auth/drive.readonly";

  /// See, edit, create, and delete your spreadsheets in Google Drive
  static const SpreadsheetsScope =
      "https://www.googleapis.com/auth/spreadsheets";

  /// View your Google Spreadsheets
  static const SpreadsheetsReadonlyScope =
      "https://www.googleapis.com/auth/spreadsheets.readonly";

  final commons.ApiRequester _requester;

  SpreadsheetsResourceApi get spreadsheets =>
      new SpreadsheetsResourceApi(_requester);

  SheetsApi(http.Client client,
      {core.String rootUrl = "https://sheets.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class SpreadsheetsResourceApi {
  final commons.ApiRequester _requester;

  SpreadsheetsDeveloperMetadataResourceApi get developerMetadata =>
      new SpreadsheetsDeveloperMetadataResourceApi(_requester);
  SpreadsheetsSheetsResourceApi get sheets =>
      new SpreadsheetsSheetsResourceApi(_requester);
  SpreadsheetsValuesResourceApi get values =>
      new SpreadsheetsValuesResourceApi(_requester);

  SpreadsheetsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Applies one or more updates to the spreadsheet.
  ///
  /// Each request is validated before
  /// being applied. If any request is not valid then the entire request will
  /// fail and nothing will be applied.
  ///
  /// Some requests have replies to
  /// give you some information about how
  /// they are applied. The replies will mirror the requests.  For example,
  /// if you applied 4 updates and the 3rd one had a reply, then the
  /// response will have 2 empty replies, the actual reply, and another empty
  /// reply, in that order.
  ///
  /// Due to the collaborative nature of spreadsheets, it is not guaranteed that
  /// the spreadsheet will reflect exactly your changes after this completes,
  /// however it is guaranteed that the updates in the request will be
  /// applied together atomically. Your changes may be altered with respect to
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
      BatchUpdateSpreadsheetRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        ':batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchUpdateSpreadsheetResponse.fromJson(data));
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
  async.Future<Spreadsheet> create(Spreadsheet request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Spreadsheet.fromJson(data));
  }

  /// Returns the spreadsheet at the given ID.
  /// The caller must specify the spreadsheet ID.
  ///
  /// By default, data within grids will not be returned.
  /// You can include grid data one of two ways:
  ///
  /// * Specify a field mask listing your desired fields using the `fields` URL
  /// parameter in HTTP
  ///
  /// * Set the includeGridData
  /// URL parameter to true.  If a field mask is set, the `includeGridData`
  /// parameter is ignored
  ///
  /// For large spreadsheets, it is recommended to retrieve only the specific
  /// fields of the spreadsheet that you want.
  ///
  /// To retrieve only subsets of the spreadsheet, use the
  /// ranges URL parameter.
  /// Multiple ranges can be specified.  Limiting the range will
  /// return only the portions of the spreadsheet that intersect the requested
  /// ranges. Ranges are specified using A1 notation.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The spreadsheet to request.
  ///
  /// [ranges] - The ranges to retrieve from the spreadsheet.
  ///
  /// [includeGridData] - True if grid data should be returned.
  /// This parameter is ignored if a field mask was set in the request.
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
  async.Future<Spreadsheet> get(core.String spreadsheetId,
      {core.List<core.String> ranges,
      core.bool includeGridData,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (ranges != null) {
      _queryParams["ranges"] = ranges;
    }
    if (includeGridData != null) {
      _queryParams["includeGridData"] = ["${includeGridData}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' + commons.Escaper.ecapeVariable('$spreadsheetId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Spreadsheet.fromJson(data));
  }

  /// Returns the spreadsheet at the given ID.
  /// The caller must specify the spreadsheet ID.
  ///
  /// This method differs from GetSpreadsheet in that it allows selecting
  /// which subsets of spreadsheet data to return by specifying a
  /// dataFilters parameter.
  /// Multiple DataFilters can be specified.  Specifying one or
  /// more data filters will return the portions of the spreadsheet that
  /// intersect ranges matched by any of the filters.
  ///
  /// By default, data within grids will not be returned.
  /// You can include grid data one of two ways:
  ///
  /// * Specify a field mask listing your desired fields using the `fields` URL
  /// parameter in HTTP
  ///
  /// * Set the includeGridData
  /// parameter to true.  If a field mask is set, the `includeGridData`
  /// parameter is ignored
  ///
  /// For large spreadsheets, it is recommended to retrieve only the specific
  /// fields of the spreadsheet that you want.
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
      GetSpreadsheetByDataFilterRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        ':getByDataFilter';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Spreadsheet.fromJson(data));
  }
}

class SpreadsheetsDeveloperMetadataResourceApi {
  final commons.ApiRequester _requester;

  SpreadsheetsDeveloperMetadataResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns the developer metadata with the specified ID.
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
      core.String spreadsheetId, core.int metadataId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (metadataId == null) {
      throw new core.ArgumentError("Parameter metadataId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/developerMetadata/' +
        commons.Escaper.ecapeVariable('$metadataId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DeveloperMetadata.fromJson(data));
  }

  /// Returns all developer metadata matching the specified DataFilter.
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
      SearchDeveloperMetadataRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/developerMetadata:search';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SearchDeveloperMetadataResponse.fromJson(data));
  }
}

class SpreadsheetsSheetsResourceApi {
  final commons.ApiRequester _requester;

  SpreadsheetsSheetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Copies a single sheet from a spreadsheet to another spreadsheet.
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
      core.int sheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (sheetId == null) {
      throw new core.ArgumentError("Parameter sheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/sheets/' +
        commons.Escaper.ecapeVariable('$sheetId') +
        ':copyTo';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SheetProperties.fromJson(data));
  }
}

class SpreadsheetsValuesResourceApi {
  final commons.ApiRequester _requester;

  SpreadsheetsValuesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Appends values to a spreadsheet. The input range is used to search for
  /// existing data and find a "table" within that range. Values will be
  /// appended to the next row of the table, starting with the first column of
  /// the table. See the
  /// [guide](/sheets/api/guides/values#appending_values)
  /// and
  /// [sample code](/sheets/api/samples/writing#append_values)
  /// for specific details of how tables are detected and data is appended.
  ///
  /// The caller must specify the spreadsheet ID, range, and
  /// a valueInputOption.  The `valueInputOption` only
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
  /// [range] - The A1 notation of a range to search for a logical table of
  /// data.
  /// Values will be appended after the last row of the table.
  ///
  /// [responseValueRenderOption] - Determines how values in the response should
  /// be rendered.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : A FORMATTED_VALUE.
  /// - "UNFORMATTED_VALUE" : A UNFORMATTED_VALUE.
  /// - "FORMULA" : A FORMULA.
  ///
  /// [insertDataOption] - How the input data should be inserted.
  /// Possible string values are:
  /// - "OVERWRITE" : A OVERWRITE.
  /// - "INSERT_ROWS" : A INSERT_ROWS.
  ///
  /// [valueInputOption] - How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : A INPUT_VALUE_OPTION_UNSPECIFIED.
  /// - "RAW" : A RAW.
  /// - "USER_ENTERED" : A USER_ENTERED.
  ///
  /// [responseDateTimeRenderOption] - Determines how dates, times, and
  /// durations in the response should be
  /// rendered. This is ignored if response_value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// [DateTimeRenderOption.SERIAL_NUMBER].
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : A SERIAL_NUMBER.
  /// - "FORMATTED_STRING" : A FORMATTED_STRING.
  ///
  /// [includeValuesInResponse] - Determines if the update response should
  /// include the values
  /// of the cells that were appended. By default, responses
  /// do not include the updated values.
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
      ValueRange request, core.String spreadsheetId, core.String range,
      {core.String responseValueRenderOption,
      core.String insertDataOption,
      core.String valueInputOption,
      core.String responseDateTimeRenderOption,
      core.bool includeValuesInResponse,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (range == null) {
      throw new core.ArgumentError("Parameter range is required.");
    }
    if (responseValueRenderOption != null) {
      _queryParams["responseValueRenderOption"] = [responseValueRenderOption];
    }
    if (insertDataOption != null) {
      _queryParams["insertDataOption"] = [insertDataOption];
    }
    if (valueInputOption != null) {
      _queryParams["valueInputOption"] = [valueInputOption];
    }
    if (responseDateTimeRenderOption != null) {
      _queryParams["responseDateTimeRenderOption"] = [
        responseDateTimeRenderOption
      ];
    }
    if (includeValuesInResponse != null) {
      _queryParams["includeValuesInResponse"] = ["${includeValuesInResponse}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values/' +
        commons.Escaper.ecapeVariable('$range') +
        ':append';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AppendValuesResponse.fromJson(data));
  }

  /// Clears one or more ranges of values from a spreadsheet.
  /// The caller must specify the spreadsheet ID and one or more ranges.
  /// Only values are cleared -- all other properties of the cell (such as
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
  /// Completes with a [BatchClearValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchClearValuesResponse> batchClear(
      BatchClearValuesRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchClear';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchClearValuesResponse.fromJson(data));
  }

  /// Clears one or more ranges of values from a spreadsheet.
  /// The caller must specify the spreadsheet ID and one or more
  /// DataFilters. Ranges matching any of the specified data
  /// filters will be cleared.  Only values are cleared -- all other properties
  /// of the cell (such as formatting, data validation, etc..) are kept.
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
      BatchClearValuesByDataFilterRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchClearByDataFilter';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new BatchClearValuesByDataFilterResponse.fromJson(data));
  }

  /// Returns one or more ranges of values from a spreadsheet.
  /// The caller must specify the spreadsheet ID and one or more ranges.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [valueRenderOption] - How values should be represented in the output.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : A FORMATTED_VALUE.
  /// - "UNFORMATTED_VALUE" : A UNFORMATTED_VALUE.
  /// - "FORMULA" : A FORMULA.
  ///
  /// [dateTimeRenderOption] - How dates, times, and durations should be
  /// represented in the output.
  /// This is ignored if value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// [DateTimeRenderOption.SERIAL_NUMBER].
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : A SERIAL_NUMBER.
  /// - "FORMATTED_STRING" : A FORMATTED_STRING.
  ///
  /// [ranges] - The A1 notation of the values to retrieve.
  ///
  /// [majorDimension] - The major dimension that results should use.
  ///
  /// For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`,
  /// then requesting `range=A1:B2,majorDimension=ROWS` will return
  /// `[[1,2],[3,4]]`,
  /// whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return
  /// `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : A DIMENSION_UNSPECIFIED.
  /// - "ROWS" : A ROWS.
  /// - "COLUMNS" : A COLUMNS.
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
  async.Future<BatchGetValuesResponse> batchGet(core.String spreadsheetId,
      {core.String valueRenderOption,
      core.String dateTimeRenderOption,
      core.List<core.String> ranges,
      core.String majorDimension,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (valueRenderOption != null) {
      _queryParams["valueRenderOption"] = [valueRenderOption];
    }
    if (dateTimeRenderOption != null) {
      _queryParams["dateTimeRenderOption"] = [dateTimeRenderOption];
    }
    if (ranges != null) {
      _queryParams["ranges"] = ranges;
    }
    if (majorDimension != null) {
      _queryParams["majorDimension"] = [majorDimension];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchGet';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BatchGetValuesResponse.fromJson(data));
  }

  /// Returns one or more ranges of values that match the specified data
  /// filters.
  /// The caller must specify the spreadsheet ID and one or more
  /// DataFilters.  Ranges that match any of the data filters in
  /// the request will be returned.
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
      BatchGetValuesByDataFilterRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchGetByDataFilter';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchGetValuesByDataFilterResponse.fromJson(data));
  }

  /// Sets values in one or more ranges of a spreadsheet.
  /// The caller must specify the spreadsheet ID,
  /// a valueInputOption, and one or more
  /// ValueRanges.
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
      BatchUpdateValuesRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchUpdate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchUpdateValuesResponse.fromJson(data));
  }

  /// Sets values in one or more ranges of a spreadsheet.
  /// The caller must specify the spreadsheet ID,
  /// a valueInputOption, and one or more
  /// DataFilterValueRanges.
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
      BatchUpdateValuesByDataFilterRequest request, core.String spreadsheetId,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values:batchUpdateByDataFilter';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new BatchUpdateValuesByDataFilterResponse.fromJson(data));
  }

  /// Clears values from a spreadsheet.
  /// The caller must specify the spreadsheet ID and range.
  /// Only values are cleared -- all other properties of the cell (such as
  /// formatting, data validation, etc..) are kept.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The A1 notation of the values to clear.
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
      ClearValuesRequest request, core.String spreadsheetId, core.String range,
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
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (range == null) {
      throw new core.ArgumentError("Parameter range is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values/' +
        commons.Escaper.ecapeVariable('$range') +
        ':clear';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ClearValuesResponse.fromJson(data));
  }

  /// Returns a range of values from a spreadsheet.
  /// The caller must specify the spreadsheet ID and a range.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to retrieve data from.
  ///
  /// [range] - The A1 notation of the values to retrieve.
  ///
  /// [majorDimension] - The major dimension that results should use.
  ///
  /// For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`,
  /// then requesting `range=A1:B2,majorDimension=ROWS` will return
  /// `[[1,2],[3,4]]`,
  /// whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return
  /// `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : A DIMENSION_UNSPECIFIED.
  /// - "ROWS" : A ROWS.
  /// - "COLUMNS" : A COLUMNS.
  ///
  /// [valueRenderOption] - How values should be represented in the output.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : A FORMATTED_VALUE.
  /// - "UNFORMATTED_VALUE" : A UNFORMATTED_VALUE.
  /// - "FORMULA" : A FORMULA.
  ///
  /// [dateTimeRenderOption] - How dates, times, and durations should be
  /// represented in the output.
  /// This is ignored if value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// [DateTimeRenderOption.SERIAL_NUMBER].
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : A SERIAL_NUMBER.
  /// - "FORMATTED_STRING" : A FORMATTED_STRING.
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
  async.Future<ValueRange> get(core.String spreadsheetId, core.String range,
      {core.String majorDimension,
      core.String valueRenderOption,
      core.String dateTimeRenderOption,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (range == null) {
      throw new core.ArgumentError("Parameter range is required.");
    }
    if (majorDimension != null) {
      _queryParams["majorDimension"] = [majorDimension];
    }
    if (valueRenderOption != null) {
      _queryParams["valueRenderOption"] = [valueRenderOption];
    }
    if (dateTimeRenderOption != null) {
      _queryParams["dateTimeRenderOption"] = [dateTimeRenderOption];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values/' +
        commons.Escaper.ecapeVariable('$range');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ValueRange.fromJson(data));
  }

  /// Sets values in a range of a spreadsheet.
  /// The caller must specify the spreadsheet ID, range, and
  /// a valueInputOption.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [spreadsheetId] - The ID of the spreadsheet to update.
  ///
  /// [range] - The A1 notation of the values to update.
  ///
  /// [valueInputOption] - How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : A INPUT_VALUE_OPTION_UNSPECIFIED.
  /// - "RAW" : A RAW.
  /// - "USER_ENTERED" : A USER_ENTERED.
  ///
  /// [responseDateTimeRenderOption] - Determines how dates, times, and
  /// durations in the response should be
  /// rendered. This is ignored if response_value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// DateTimeRenderOption.SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : A SERIAL_NUMBER.
  /// - "FORMATTED_STRING" : A FORMATTED_STRING.
  ///
  /// [includeValuesInResponse] - Determines if the update response should
  /// include the values
  /// of the cells that were updated. By default, responses
  /// do not include the updated values.
  /// If the range to write was larger than than the range actually written,
  /// the response will include all values in the requested range (excluding
  /// trailing empty rows and columns).
  ///
  /// [responseValueRenderOption] - Determines how values in the response should
  /// be rendered.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : A FORMATTED_VALUE.
  /// - "UNFORMATTED_VALUE" : A UNFORMATTED_VALUE.
  /// - "FORMULA" : A FORMULA.
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
      ValueRange request, core.String spreadsheetId, core.String range,
      {core.String valueInputOption,
      core.String responseDateTimeRenderOption,
      core.bool includeValuesInResponse,
      core.String responseValueRenderOption,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (spreadsheetId == null) {
      throw new core.ArgumentError("Parameter spreadsheetId is required.");
    }
    if (range == null) {
      throw new core.ArgumentError("Parameter range is required.");
    }
    if (valueInputOption != null) {
      _queryParams["valueInputOption"] = [valueInputOption];
    }
    if (responseDateTimeRenderOption != null) {
      _queryParams["responseDateTimeRenderOption"] = [
        responseDateTimeRenderOption
      ];
    }
    if (includeValuesInResponse != null) {
      _queryParams["includeValuesInResponse"] = ["${includeValuesInResponse}"];
    }
    if (responseValueRenderOption != null) {
      _queryParams["responseValueRenderOption"] = [responseValueRenderOption];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v4/spreadsheets/' +
        commons.Escaper.ecapeVariable('$spreadsheetId') +
        '/values/' +
        commons.Escaper.ecapeVariable('$range');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UpdateValuesResponse.fromJson(data));
  }
}

/// Adds a new banded range to the spreadsheet.
class AddBandingRequest {
  /// The banded range to add. The bandedRangeId
  /// field is optional; if one is not set, an id will be randomly generated.
  /// (It
  /// is an error to specify the ID of a range that already exists.)
  BandedRange bandedRange;

  AddBandingRequest();

  AddBandingRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRange")) {
      bandedRange = new BandedRange.fromJson(_json["bandedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRange != null) {
      _json["bandedRange"] = (bandedRange).toJson();
    }
    return _json;
  }
}

/// The result of adding a banded range.
class AddBandingResponse {
  /// The banded range that was added.
  BandedRange bandedRange;

  AddBandingResponse();

  AddBandingResponse.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRange")) {
      bandedRange = new BandedRange.fromJson(_json["bandedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRange != null) {
      _json["bandedRange"] = (bandedRange).toJson();
    }
    return _json;
  }
}

/// Adds a chart to a sheet in the spreadsheet.
class AddChartRequest {
  /// The chart that should be added to the spreadsheet, including the position
  /// where it should be placed. The chartId
  /// field is optional; if one is not set, an id will be randomly generated.
  /// (It
  /// is an error to specify the ID of an embedded object that already exists.)
  EmbeddedChart chart;

  AddChartRequest();

  AddChartRequest.fromJson(core.Map _json) {
    if (_json.containsKey("chart")) {
      chart = new EmbeddedChart.fromJson(_json["chart"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chart != null) {
      _json["chart"] = (chart).toJson();
    }
    return _json;
  }
}

/// The result of adding a chart to a spreadsheet.
class AddChartResponse {
  /// The newly added chart.
  EmbeddedChart chart;

  AddChartResponse();

  AddChartResponse.fromJson(core.Map _json) {
    if (_json.containsKey("chart")) {
      chart = new EmbeddedChart.fromJson(_json["chart"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chart != null) {
      _json["chart"] = (chart).toJson();
    }
    return _json;
  }
}

/// Adds a new conditional format rule at the given index.
/// All subsequent rules' indexes are incremented.
class AddConditionalFormatRuleRequest {
  /// The zero-based index where the rule should be inserted.
  core.int index;

  /// The rule to add.
  ConditionalFormatRule rule;

  AddConditionalFormatRuleRequest();

  AddConditionalFormatRuleRequest.fromJson(core.Map _json) {
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("rule")) {
      rule = new ConditionalFormatRule.fromJson(_json["rule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (index != null) {
      _json["index"] = index;
    }
    if (rule != null) {
      _json["rule"] = (rule).toJson();
    }
    return _json;
  }
}

/// Creates a group over the specified range.
///
/// If the requested range is a superset of the range of an existing group G,
/// then the depth of G is incremented and this new group G' has the
/// depth of that group. For example, a group [C:D, depth 1] + [B:E] results in
/// groups [B:E, depth 1] and [C:D, depth 2].
/// If the requested range is a subset of the range of an existing group G,
/// then the depth of the new group G' becomes one greater than the depth of G.
/// For example, a group [B:E, depth 1] + [C:D] results in groups [B:E, depth 1]
/// and [C:D, depth 2].
/// If the requested range starts before and ends within, or starts within and
/// ends after, the range of an existing group G, then the range of the existing
/// group G becomes the union of the ranges, and the new group G' has
/// depth one greater than the depth of G and range as the intersection of the
/// ranges. For example, a group [B:D, depth 1] + [C:E] results in groups [B:E,
/// depth 1] and [C:D, depth 2].
class AddDimensionGroupRequest {
  /// The range over which to create a group.
  DimensionRange range;

  AddDimensionGroupRequest();

  AddDimensionGroupRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// The result of adding a group.
class AddDimensionGroupResponse {
  /// All groups of a dimension after adding a group to that dimension.
  core.List<DimensionGroup> dimensionGroups;

  AddDimensionGroupResponse();

  AddDimensionGroupResponse.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionGroups")) {
      dimensionGroups = (_json["dimensionGroups"] as core.List)
          .map<DimensionGroup>((value) => new DimensionGroup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensionGroups != null) {
      _json["dimensionGroups"] =
          dimensionGroups.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Adds a filter view.
class AddFilterViewRequest {
  /// The filter to add. The filterViewId
  /// field is optional; if one is not set, an id will be randomly generated.
  /// (It
  /// is an error to specify the ID of a filter that already exists.)
  FilterView filter;

  AddFilterViewRequest();

  AddFilterViewRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = new FilterView.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// The result of adding a filter view.
class AddFilterViewResponse {
  /// The newly added filter view.
  FilterView filter;

  AddFilterViewResponse();

  AddFilterViewResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = new FilterView.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// Adds a named range to the spreadsheet.
class AddNamedRangeRequest {
  /// The named range to add. The namedRangeId
  /// field is optional; if one is not set, an id will be randomly generated.
  /// (It
  /// is an error to specify the ID of a range that already exists.)
  NamedRange namedRange;

  AddNamedRangeRequest();

  AddNamedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("namedRange")) {
      namedRange = new NamedRange.fromJson(_json["namedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namedRange != null) {
      _json["namedRange"] = (namedRange).toJson();
    }
    return _json;
  }
}

/// The result of adding a named range.
class AddNamedRangeResponse {
  /// The named range to add.
  NamedRange namedRange;

  AddNamedRangeResponse();

  AddNamedRangeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("namedRange")) {
      namedRange = new NamedRange.fromJson(_json["namedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namedRange != null) {
      _json["namedRange"] = (namedRange).toJson();
    }
    return _json;
  }
}

/// Adds a new protected range.
class AddProtectedRangeRequest {
  /// The protected range to be added. The
  /// protectedRangeId field is optional; if
  /// one is not set, an id will be randomly generated. (It is an error to
  /// specify the ID of a range that already exists.)
  ProtectedRange protectedRange;

  AddProtectedRangeRequest();

  AddProtectedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("protectedRange")) {
      protectedRange = new ProtectedRange.fromJson(_json["protectedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (protectedRange != null) {
      _json["protectedRange"] = (protectedRange).toJson();
    }
    return _json;
  }
}

/// The result of adding a new protected range.
class AddProtectedRangeResponse {
  /// The newly added protected range.
  ProtectedRange protectedRange;

  AddProtectedRangeResponse();

  AddProtectedRangeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("protectedRange")) {
      protectedRange = new ProtectedRange.fromJson(_json["protectedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (protectedRange != null) {
      _json["protectedRange"] = (protectedRange).toJson();
    }
    return _json;
  }
}

/// Adds a new sheet.
/// When a sheet is added at a given index,
/// all subsequent sheets' indexes are incremented.
/// To add an object sheet, use AddChartRequest instead and specify
/// EmbeddedObjectPosition.sheetId or
/// EmbeddedObjectPosition.newSheet.
class AddSheetRequest {
  /// The properties the new sheet should have.
  /// All properties are optional.
  /// The sheetId field is optional; if one is not
  /// set, an id will be randomly generated. (It is an error to specify the ID
  /// of a sheet that already exists.)
  SheetProperties properties;

  AddSheetRequest();

  AddSheetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("properties")) {
      properties = new SheetProperties.fromJson(_json["properties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    return _json;
  }
}

/// The result of adding a sheet.
class AddSheetResponse {
  /// The properties of the newly added sheet.
  SheetProperties properties;

  AddSheetResponse();

  AddSheetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("properties")) {
      properties = new SheetProperties.fromJson(_json["properties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    return _json;
  }
}

/// Adds new cells after the last row with data in a sheet,
/// inserting new rows into the sheet if necessary.
class AppendCellsRequest {
  /// The fields of CellData that should be updated.
  /// At least one field must be specified.
  /// The root is the CellData; 'row.values.' should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The data to append.
  core.List<RowData> rows;

  /// The sheet ID to append the data to.
  core.int sheetId;

  AppendCellsRequest();

  AppendCellsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<RowData>((value) => new RowData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (rows != null) {
      _json["rows"] = rows.map((value) => (value).toJson()).toList();
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// Appends rows or columns to the end of a sheet.
class AppendDimensionRequest {
  /// Whether rows or columns should be appended.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String dimension;

  /// The number of rows or columns to append.
  core.int length;

  /// The sheet to append rows or columns to.
  core.int sheetId;

  AppendDimensionRequest();

  AppendDimensionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("length")) {
      length = _json["length"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (length != null) {
      _json["length"] = length;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// The response when updating a range of values in a spreadsheet.
class AppendValuesResponse {
  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  /// The range (in A1 notation) of the table that values are being appended to
  /// (before the values were appended).
  /// Empty if no table was found.
  core.String tableRange;

  /// Information about the updates that were applied.
  UpdateValuesResponse updates;

  AppendValuesResponse();

  AppendValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("tableRange")) {
      tableRange = _json["tableRange"];
    }
    if (_json.containsKey("updates")) {
      updates = new UpdateValuesResponse.fromJson(_json["updates"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (tableRange != null) {
      _json["tableRange"] = tableRange;
    }
    if (updates != null) {
      _json["updates"] = (updates).toJson();
    }
    return _json;
  }
}

/// Fills in more data based on existing data.
class AutoFillRequest {
  /// The range to autofill. This will examine the range and detect
  /// the location that has data and automatically fill that data
  /// in to the rest of the range.
  GridRange range;

  /// The source and destination areas to autofill.
  /// This explicitly lists the source of the autofill and where to
  /// extend that data.
  SourceAndDestination sourceAndDestination;

  /// True if we should generate data with the "alternate" series.
  /// This differs based on the type and amount of source data.
  core.bool useAlternateSeries;

  AutoFillRequest();

  AutoFillRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("sourceAndDestination")) {
      sourceAndDestination =
          new SourceAndDestination.fromJson(_json["sourceAndDestination"]);
    }
    if (_json.containsKey("useAlternateSeries")) {
      useAlternateSeries = _json["useAlternateSeries"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (sourceAndDestination != null) {
      _json["sourceAndDestination"] = (sourceAndDestination).toJson();
    }
    if (useAlternateSeries != null) {
      _json["useAlternateSeries"] = useAlternateSeries;
    }
    return _json;
  }
}

/// Automatically resizes one or more dimensions based on the contents
/// of the cells in that dimension.
class AutoResizeDimensionsRequest {
  /// The dimensions to automatically resize.
  DimensionRange dimensions;

  AutoResizeDimensionsRequest();

  AutoResizeDimensionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dimensions")) {
      dimensions = new DimensionRange.fromJson(_json["dimensions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensions != null) {
      _json["dimensions"] = (dimensions).toJson();
    }
    return _json;
  }
}

/// A banded (alternating colors) range in a sheet.
class BandedRange {
  /// The id of the banded range.
  core.int bandedRangeId;

  /// Properties for column bands. These properties are applied on a column-
  /// by-column basis throughout all the columns in the range. At least one of
  /// row_properties or column_properties must be specified.
  BandingProperties columnProperties;

  /// The range over which these properties are applied.
  GridRange range;

  /// Properties for row bands. These properties are applied on a row-by-row
  /// basis throughout all the rows in the range. At least one of
  /// row_properties or column_properties must be specified.
  BandingProperties rowProperties;

  BandedRange();

  BandedRange.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRangeId")) {
      bandedRangeId = _json["bandedRangeId"];
    }
    if (_json.containsKey("columnProperties")) {
      columnProperties =
          new BandingProperties.fromJson(_json["columnProperties"]);
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("rowProperties")) {
      rowProperties = new BandingProperties.fromJson(_json["rowProperties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRangeId != null) {
      _json["bandedRangeId"] = bandedRangeId;
    }
    if (columnProperties != null) {
      _json["columnProperties"] = (columnProperties).toJson();
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (rowProperties != null) {
      _json["rowProperties"] = (rowProperties).toJson();
    }
    return _json;
  }
}

/// Properties referring a single dimension (either row or column). If both
/// BandedRange.row_properties and BandedRange.column_properties are
/// set, the fill colors are applied to cells according to the following rules:
///
/// * header_color and footer_color take priority over band colors.
/// * first_band_color takes priority over second_band_color.
/// * row_properties takes priority over column_properties.
///
/// For example, the first row color takes priority over the first column
/// color, but the first column color takes priority over the second row color.
/// Similarly, the row header takes priority over the column header in the
/// top left cell, but the column header takes priority over the first row
/// color if the row header is not set.
class BandingProperties {
  /// The first color that is alternating. (Required)
  Color firstBandColor;

  /// The color of the last row or column. If this field is not set, the last
  /// row or column will be filled with either first_band_color or
  /// second_band_color, depending on the color of the previous row or
  /// column.
  Color footerColor;

  /// The color of the first row or column. If this field is set, the first
  /// row or column will be filled with this color and the colors will
  /// alternate between first_band_color and second_band_color starting
  /// from the second row or column. Otherwise, the first row or column will be
  /// filled with first_band_color and the colors will proceed to alternate
  /// as they normally would.
  Color headerColor;

  /// The second color that is alternating. (Required)
  Color secondBandColor;

  BandingProperties();

  BandingProperties.fromJson(core.Map _json) {
    if (_json.containsKey("firstBandColor")) {
      firstBandColor = new Color.fromJson(_json["firstBandColor"]);
    }
    if (_json.containsKey("footerColor")) {
      footerColor = new Color.fromJson(_json["footerColor"]);
    }
    if (_json.containsKey("headerColor")) {
      headerColor = new Color.fromJson(_json["headerColor"]);
    }
    if (_json.containsKey("secondBandColor")) {
      secondBandColor = new Color.fromJson(_json["secondBandColor"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (firstBandColor != null) {
      _json["firstBandColor"] = (firstBandColor).toJson();
    }
    if (footerColor != null) {
      _json["footerColor"] = (footerColor).toJson();
    }
    if (headerColor != null) {
      _json["headerColor"] = (headerColor).toJson();
    }
    if (secondBandColor != null) {
      _json["secondBandColor"] = (secondBandColor).toJson();
    }
    return _json;
  }
}

/// An axis of the chart.
/// A chart may not have more than one axis per
/// axis position.
class BasicChartAxis {
  /// The format of the title.
  /// Only valid if the axis is not associated with the domain.
  TextFormat format;

  /// The position of this axis.
  /// Possible string values are:
  /// - "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_AXIS" : The axis rendered at the bottom of a chart.
  /// For most charts, this is the standard major axis.
  /// For bar charts, this is a minor axis.
  /// - "LEFT_AXIS" : The axis rendered at the left of a chart.
  /// For most charts, this is a minor axis.
  /// For bar charts, this is the standard major axis.
  /// - "RIGHT_AXIS" : The axis rendered at the right of a chart.
  /// For most charts, this is a minor axis.
  /// For bar charts, this is an unusual major axis.
  core.String position;

  /// The title of this axis. If set, this overrides any title inferred
  /// from headers of the data.
  core.String title;

  /// The axis title text position.
  TextPosition titleTextPosition;

  BasicChartAxis();

  BasicChartAxis.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = new TextFormat.fromJson(_json["format"]);
    }
    if (_json.containsKey("position")) {
      position = _json["position"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("titleTextPosition")) {
      titleTextPosition = new TextPosition.fromJson(_json["titleTextPosition"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (format != null) {
      _json["format"] = (format).toJson();
    }
    if (position != null) {
      _json["position"] = position;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (titleTextPosition != null) {
      _json["titleTextPosition"] = (titleTextPosition).toJson();
    }
    return _json;
  }
}

/// The domain of a chart.
/// For example, if charting stock prices over time, this would be the date.
class BasicChartDomain {
  /// The data of the domain. For example, if charting stock prices over time,
  /// this is the data representing the dates.
  ChartData domain;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool reversed;

  BasicChartDomain();

  BasicChartDomain.fromJson(core.Map _json) {
    if (_json.containsKey("domain")) {
      domain = new ChartData.fromJson(_json["domain"]);
    }
    if (_json.containsKey("reversed")) {
      reversed = _json["reversed"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domain != null) {
      _json["domain"] = (domain).toJson();
    }
    if (reversed != null) {
      _json["reversed"] = reversed;
    }
    return _json;
  }
}

/// A single series of data in a chart.
/// For example, if charting stock prices over time, multiple series may exist,
/// one for the "Open Price", "High Price", "Low Price" and "Close Price".
class BasicChartSeries {
  /// The color for elements (i.e. bars, lines, points) associated with this
  /// series.  If empty, a default color is used.
  Color color;

  /// The line style of this series. Valid only if the
  /// chartType is AREA,
  /// LINE, or SCATTER.
  /// COMBO charts are also supported if the
  /// series chart type is
  /// AREA or LINE.
  LineStyle lineStyle;

  /// The data being visualized in this chart series.
  ChartData series;

  /// The minor axis that will specify the range of values for this series.
  /// For example, if charting stocks over time, the "Volume" series
  /// may want to be pinned to the right with the prices pinned to the left,
  /// because the scale of trading volume is different than the scale of
  /// prices.
  /// It is an error to specify an axis that isn't a valid minor axis
  /// for the chart's type.
  /// Possible string values are:
  /// - "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_AXIS" : The axis rendered at the bottom of a chart.
  /// For most charts, this is the standard major axis.
  /// For bar charts, this is a minor axis.
  /// - "LEFT_AXIS" : The axis rendered at the left of a chart.
  /// For most charts, this is a minor axis.
  /// For bar charts, this is the standard major axis.
  /// - "RIGHT_AXIS" : The axis rendered at the right of a chart.
  /// For most charts, this is a minor axis.
  /// For bar charts, this is an unusual major axis.
  core.String targetAxis;

  /// The type of this series. Valid only if the
  /// chartType is
  /// COMBO.
  /// Different types will change the way the series is visualized.
  /// Only LINE, AREA,
  /// and COLUMN are supported.
  /// Possible string values are:
  /// - "BASIC_CHART_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "BAR" : A <a href="/chart/interactive/docs/gallery/barchart">bar
  /// chart</a>.
  /// - "LINE" : A <a href="/chart/interactive/docs/gallery/linechart">line
  /// chart</a>.
  /// - "AREA" : An <a href="/chart/interactive/docs/gallery/areachart">area
  /// chart</a>.
  /// - "COLUMN" : A <a
  /// href="/chart/interactive/docs/gallery/columnchart">column chart</a>.
  /// - "SCATTER" : A <a
  /// href="/chart/interactive/docs/gallery/scatterchart">scatter
  /// chart</a>.
  /// - "COMBO" : A <a href="/chart/interactive/docs/gallery/combochart">combo
  /// chart</a>.
  /// - "STEPPED_AREA" : A <a
  /// href="/chart/interactive/docs/gallery/steppedareachart">stepped area
  /// chart</a>.
  core.String type;

  BasicChartSeries();

  BasicChartSeries.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("lineStyle")) {
      lineStyle = new LineStyle.fromJson(_json["lineStyle"]);
    }
    if (_json.containsKey("series")) {
      series = new ChartData.fromJson(_json["series"]);
    }
    if (_json.containsKey("targetAxis")) {
      targetAxis = _json["targetAxis"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (lineStyle != null) {
      _json["lineStyle"] = (lineStyle).toJson();
    }
    if (series != null) {
      _json["series"] = (series).toJson();
    }
    if (targetAxis != null) {
      _json["targetAxis"] = targetAxis;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The specification for a basic chart.  See BasicChartType for the list
/// of charts this supports.
class BasicChartSpec {
  /// The axis on the chart.
  core.List<BasicChartAxis> axis;

  /// The type of the chart.
  /// Possible string values are:
  /// - "BASIC_CHART_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "BAR" : A <a href="/chart/interactive/docs/gallery/barchart">bar
  /// chart</a>.
  /// - "LINE" : A <a href="/chart/interactive/docs/gallery/linechart">line
  /// chart</a>.
  /// - "AREA" : An <a href="/chart/interactive/docs/gallery/areachart">area
  /// chart</a>.
  /// - "COLUMN" : A <a
  /// href="/chart/interactive/docs/gallery/columnchart">column chart</a>.
  /// - "SCATTER" : A <a
  /// href="/chart/interactive/docs/gallery/scatterchart">scatter
  /// chart</a>.
  /// - "COMBO" : A <a href="/chart/interactive/docs/gallery/combochart">combo
  /// chart</a>.
  /// - "STEPPED_AREA" : A <a
  /// href="/chart/interactive/docs/gallery/steppedareachart">stepped area
  /// chart</a>.
  core.String chartType;

  /// The behavior of tooltips and data highlighting when hovering on data and
  /// chart area.
  /// Possible string values are:
  /// - "BASIC_CHART_COMPARE_MODE_UNSPECIFIED" : Default value, do not use.
  /// - "DATUM" : Only the focused data element is highlighted and shown in the
  /// tooltip.
  /// - "CATEGORY" : All data elements with the same category (e.g., domain
  /// value) are
  /// highlighted and shown in the tooltip.
  core.String compareMode;

  /// The domain of data this is charting.
  /// Only a single domain is supported.
  core.List<BasicChartDomain> domains;

  /// The number of rows or columns in the data that are "headers".
  /// If not set, Google Sheets will guess how many rows are headers based
  /// on the data.
  ///
  /// (Note that BasicChartAxis.title may override the axis title
  ///  inferred from the header values.)
  core.int headerCount;

  /// If some values in a series are missing, gaps may appear in the chart (e.g,
  /// segments of lines in a line chart will be missing).  To eliminate these
  /// gaps set this to true.
  /// Applies to Line, Area, and Combo charts.
  core.bool interpolateNulls;

  /// The position of the chart legend.
  /// Possible string values are:
  /// - "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  core.String legendPosition;

  /// Gets whether all lines should be rendered smooth or straight by default.
  /// Applies to Line charts.
  core.bool lineSmoothing;

  /// The data this chart is visualizing.
  core.List<BasicChartSeries> series;

  /// The stacked type for charts that support vertical stacking.
  /// Applies to Area, Bar, Column, Combo, and Stepped Area charts.
  /// Possible string values are:
  /// - "BASIC_CHART_STACKED_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "NOT_STACKED" : Series are not stacked.
  /// - "STACKED" : Series values are stacked, each value is rendered vertically
  /// beginning
  /// from the top of the value below it.
  /// - "PERCENT_STACKED" : Vertical stacks are stretched to reach the top of
  /// the chart, with
  /// values laid out as percentages of each other.
  core.String stackedType;

  /// True to make the chart 3D.
  /// Applies to Bar and Column charts.
  core.bool threeDimensional;

  BasicChartSpec();

  BasicChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("axis")) {
      axis = (_json["axis"] as core.List)
          .map<BasicChartAxis>((value) => new BasicChartAxis.fromJson(value))
          .toList();
    }
    if (_json.containsKey("chartType")) {
      chartType = _json["chartType"];
    }
    if (_json.containsKey("compareMode")) {
      compareMode = _json["compareMode"];
    }
    if (_json.containsKey("domains")) {
      domains = (_json["domains"] as core.List)
          .map<BasicChartDomain>(
              (value) => new BasicChartDomain.fromJson(value))
          .toList();
    }
    if (_json.containsKey("headerCount")) {
      headerCount = _json["headerCount"];
    }
    if (_json.containsKey("interpolateNulls")) {
      interpolateNulls = _json["interpolateNulls"];
    }
    if (_json.containsKey("legendPosition")) {
      legendPosition = _json["legendPosition"];
    }
    if (_json.containsKey("lineSmoothing")) {
      lineSmoothing = _json["lineSmoothing"];
    }
    if (_json.containsKey("series")) {
      series = (_json["series"] as core.List)
          .map<BasicChartSeries>(
              (value) => new BasicChartSeries.fromJson(value))
          .toList();
    }
    if (_json.containsKey("stackedType")) {
      stackedType = _json["stackedType"];
    }
    if (_json.containsKey("threeDimensional")) {
      threeDimensional = _json["threeDimensional"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (axis != null) {
      _json["axis"] = axis.map((value) => (value).toJson()).toList();
    }
    if (chartType != null) {
      _json["chartType"] = chartType;
    }
    if (compareMode != null) {
      _json["compareMode"] = compareMode;
    }
    if (domains != null) {
      _json["domains"] = domains.map((value) => (value).toJson()).toList();
    }
    if (headerCount != null) {
      _json["headerCount"] = headerCount;
    }
    if (interpolateNulls != null) {
      _json["interpolateNulls"] = interpolateNulls;
    }
    if (legendPosition != null) {
      _json["legendPosition"] = legendPosition;
    }
    if (lineSmoothing != null) {
      _json["lineSmoothing"] = lineSmoothing;
    }
    if (series != null) {
      _json["series"] = series.map((value) => (value).toJson()).toList();
    }
    if (stackedType != null) {
      _json["stackedType"] = stackedType;
    }
    if (threeDimensional != null) {
      _json["threeDimensional"] = threeDimensional;
    }
    return _json;
  }
}

/// The default filter associated with a sheet.
class BasicFilter {
  /// The criteria for showing/hiding values per column.
  /// The map's key is the column index, and the value is the criteria for
  /// that column.
  core.Map<core.String, FilterCriteria> criteria;

  /// The range the filter covers.
  GridRange range;

  /// The sort order per column. Later specifications are used when values
  /// are equal in the earlier specifications.
  core.List<SortSpec> sortSpecs;

  BasicFilter();

  BasicFilter.fromJson(core.Map _json) {
    if (_json.containsKey("criteria")) {
      criteria = commons.mapMap<core.Map, FilterCriteria>(
          _json["criteria"].cast<core.String, core.Map>(),
          (core.Map item) => new FilterCriteria.fromJson(item));
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("sortSpecs")) {
      sortSpecs = (_json["sortSpecs"] as core.List)
          .map<SortSpec>((value) => new SortSpec.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (criteria != null) {
      _json["criteria"] =
          commons.mapMap<FilterCriteria, core.Map<core.String, core.Object>>(
              criteria, (FilterCriteria item) => (item).toJson());
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (sortSpecs != null) {
      _json["sortSpecs"] = sortSpecs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request for clearing more than one range selected by a
/// DataFilter in a spreadsheet.
class BatchClearValuesByDataFilterRequest {
  /// The DataFilters used to determine which ranges to clear.
  core.List<DataFilter> dataFilters;

  BatchClearValuesByDataFilterRequest();

  BatchClearValuesByDataFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response when clearing a range of values selected with
/// DataFilters in a spreadsheet.
class BatchClearValuesByDataFilterResponse {
  /// The ranges that were cleared, in A1 notation.
  /// (If the requests were for an unbounded range or a ranger larger
  ///  than the bounds of the sheet, this will be the actual ranges
  ///  that were cleared, bounded to the sheet's limits.)
  core.List<core.String> clearedRanges;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  BatchClearValuesByDataFilterResponse();

  BatchClearValuesByDataFilterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clearedRanges")) {
      clearedRanges = (_json["clearedRanges"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clearedRanges != null) {
      _json["clearedRanges"] = clearedRanges;
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    return _json;
  }
}

/// The request for clearing more than one range of values in a spreadsheet.
class BatchClearValuesRequest {
  /// The ranges to clear, in A1 notation.
  core.List<core.String> ranges;

  BatchClearValuesRequest();

  BatchClearValuesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ranges")) {
      ranges = (_json["ranges"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ranges != null) {
      _json["ranges"] = ranges;
    }
    return _json;
  }
}

/// The response when clearing a range of values in a spreadsheet.
class BatchClearValuesResponse {
  /// The ranges that were cleared, in A1 notation.
  /// (If the requests were for an unbounded range or a ranger larger
  ///  than the bounds of the sheet, this will be the actual ranges
  ///  that were cleared, bounded to the sheet's limits.)
  core.List<core.String> clearedRanges;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  BatchClearValuesResponse();

  BatchClearValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clearedRanges")) {
      clearedRanges = (_json["clearedRanges"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clearedRanges != null) {
      _json["clearedRanges"] = clearedRanges;
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    return _json;
  }
}

/// The request for retrieving a range of values in a spreadsheet selected by a
/// set of DataFilters.
class BatchGetValuesByDataFilterRequest {
  /// The data filters used to match the ranges of values to retrieve.  Ranges
  /// that match any of the specified data filters will be included in the
  /// response.
  core.List<DataFilter> dataFilters;

  /// How dates, times, and durations should be represented in the output.
  /// This is ignored if value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// [DateTimeRenderOption.SERIAL_NUMBER].
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output
  /// as doubles in "serial number" format, as popularized by Lotus 1-2-3.
  /// The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of
  /// the decimal) counts the time as a fraction of the day. For example,
  /// January 1st 1900 at noon would be 2.5, 2 because it's 2 days after
  /// December 30st 1899, and .5 because noon is half a day.  February 1st
  /// 1900 at 3pm would be 33.625. This correctly treats the year 1900 as
  /// not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output
  /// as strings in their given number format (which is dependent
  /// on the spreadsheet locale).
  core.String dateTimeRenderOption;

  /// The major dimension that results should use.
  ///
  /// For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`,
  /// then a request that selects that range and sets `majorDimension=ROWS` will
  /// return `[[1,2],[3,4]]`,
  /// whereas a request that sets `majorDimension=COLUMNS` will return
  /// `[[1,3],[2,4]]`.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String majorDimension;

  /// How values should be represented in the output.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the
  /// cell's formatting.  Formatting is based on the spreadsheet's locale,
  /// not the requesting user's locale.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated.  The reply will include the
  /// formulas.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then A2 would return `"=A1"`.
  core.String valueRenderOption;

  BatchGetValuesByDataFilterRequest();

  BatchGetValuesByDataFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("dateTimeRenderOption")) {
      dateTimeRenderOption = _json["dateTimeRenderOption"];
    }
    if (_json.containsKey("majorDimension")) {
      majorDimension = _json["majorDimension"];
    }
    if (_json.containsKey("valueRenderOption")) {
      valueRenderOption = _json["valueRenderOption"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    if (dateTimeRenderOption != null) {
      _json["dateTimeRenderOption"] = dateTimeRenderOption;
    }
    if (majorDimension != null) {
      _json["majorDimension"] = majorDimension;
    }
    if (valueRenderOption != null) {
      _json["valueRenderOption"] = valueRenderOption;
    }
    return _json;
  }
}

/// The response when retrieving more than one range of values in a spreadsheet
/// selected by DataFilters.
class BatchGetValuesByDataFilterResponse {
  /// The ID of the spreadsheet the data was retrieved from.
  core.String spreadsheetId;

  /// The requested values with the list of data filters that matched them.
  core.List<MatchedValueRange> valueRanges;

  BatchGetValuesByDataFilterResponse();

  BatchGetValuesByDataFilterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("valueRanges")) {
      valueRanges = (_json["valueRanges"] as core.List)
          .map<MatchedValueRange>(
              (value) => new MatchedValueRange.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (valueRanges != null) {
      _json["valueRanges"] =
          valueRanges.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response when retrieving more than one range of values in a spreadsheet.
class BatchGetValuesResponse {
  /// The ID of the spreadsheet the data was retrieved from.
  core.String spreadsheetId;

  /// The requested values. The order of the ValueRanges is the same as the
  /// order of the requested ranges.
  core.List<ValueRange> valueRanges;

  BatchGetValuesResponse();

  BatchGetValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("valueRanges")) {
      valueRanges = (_json["valueRanges"] as core.List)
          .map<ValueRange>((value) => new ValueRange.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (valueRanges != null) {
      _json["valueRanges"] =
          valueRanges.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The request for updating any aspect of a spreadsheet.
class BatchUpdateSpreadsheetRequest {
  /// Determines if the update response should include the spreadsheet
  /// resource.
  core.bool includeSpreadsheetInResponse;

  /// A list of updates to apply to the spreadsheet.
  /// Requests will be applied in the order they are specified.
  /// If any request is not valid, no requests will be applied.
  core.List<Request> requests;

  /// True if grid data should be returned. Meaningful only if
  /// if include_spreadsheet_in_response is 'true'.
  /// This parameter is ignored if a field mask was set in the request.
  core.bool responseIncludeGridData;

  /// Limits the ranges included in the response spreadsheet.
  /// Meaningful only if include_spreadsheet_response is 'true'.
  core.List<core.String> responseRanges;

  BatchUpdateSpreadsheetRequest();

  BatchUpdateSpreadsheetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("includeSpreadsheetInResponse")) {
      includeSpreadsheetInResponse = _json["includeSpreadsheetInResponse"];
    }
    if (_json.containsKey("requests")) {
      requests = (_json["requests"] as core.List)
          .map<Request>((value) => new Request.fromJson(value))
          .toList();
    }
    if (_json.containsKey("responseIncludeGridData")) {
      responseIncludeGridData = _json["responseIncludeGridData"];
    }
    if (_json.containsKey("responseRanges")) {
      responseRanges =
          (_json["responseRanges"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (includeSpreadsheetInResponse != null) {
      _json["includeSpreadsheetInResponse"] = includeSpreadsheetInResponse;
    }
    if (requests != null) {
      _json["requests"] = requests.map((value) => (value).toJson()).toList();
    }
    if (responseIncludeGridData != null) {
      _json["responseIncludeGridData"] = responseIncludeGridData;
    }
    if (responseRanges != null) {
      _json["responseRanges"] = responseRanges;
    }
    return _json;
  }
}

/// The reply for batch updating a spreadsheet.
class BatchUpdateSpreadsheetResponse {
  /// The reply of the updates.  This maps 1:1 with the updates, although
  /// replies to some requests may be empty.
  core.List<Response> replies;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  /// The spreadsheet after updates were applied. This is only set if
  /// [BatchUpdateSpreadsheetRequest.include_spreadsheet_in_response] is `true`.
  Spreadsheet updatedSpreadsheet;

  BatchUpdateSpreadsheetResponse();

  BatchUpdateSpreadsheetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("replies")) {
      replies = (_json["replies"] as core.List)
          .map<Response>((value) => new Response.fromJson(value))
          .toList();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("updatedSpreadsheet")) {
      updatedSpreadsheet =
          new Spreadsheet.fromJson(_json["updatedSpreadsheet"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (replies != null) {
      _json["replies"] = replies.map((value) => (value).toJson()).toList();
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (updatedSpreadsheet != null) {
      _json["updatedSpreadsheet"] = (updatedSpreadsheet).toJson();
    }
    return _json;
  }
}

/// The request for updating more than one range of values in a spreadsheet.
class BatchUpdateValuesByDataFilterRequest {
  /// The new values to apply to the spreadsheet.  If more than one range is
  /// matched by the specified DataFilter the specified values will be
  /// applied to all of those ranges.
  core.List<DataFilterValueRange> data;

  /// Determines if the update response should include the values
  /// of the cells that were updated. By default, responses
  /// do not include the updated values. The `updatedData` field within
  /// each of the BatchUpdateValuesResponse.responses will contain
  /// the updated values. If the range to write was larger than than the range
  /// actually written, the response will include all values in the requested
  /// range (excluding trailing empty rows and columns).
  core.bool includeValuesInResponse;

  /// Determines how dates, times, and durations in the response should be
  /// rendered. This is ignored if response_value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// DateTimeRenderOption.SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output
  /// as doubles in "serial number" format, as popularized by Lotus 1-2-3.
  /// The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of
  /// the decimal) counts the time as a fraction of the day. For example,
  /// January 1st 1900 at noon would be 2.5, 2 because it's 2 days after
  /// December 30st 1899, and .5 because noon is half a day.  February 1st
  /// 1900 at 3pm would be 33.625. This correctly treats the year 1900 as
  /// not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output
  /// as strings in their given number format (which is dependent
  /// on the spreadsheet locale).
  core.String responseDateTimeRenderOption;

  /// Determines how values in the response should be rendered.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the
  /// cell's formatting.  Formatting is based on the spreadsheet's locale,
  /// not the requesting user's locale.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated.  The reply will include the
  /// formulas.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then A2 would return `"=A1"`.
  core.String responseValueRenderOption;

  /// How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored
  /// as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI.
  /// Numbers will stay as numbers, but strings may be converted to numbers,
  /// dates, etc. following the same rules that are applied when entering
  /// text into a cell via the Google Sheets UI.
  core.String valueInputOption;

  BatchUpdateValuesByDataFilterRequest();

  BatchUpdateValuesByDataFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<DataFilterValueRange>(
              (value) => new DataFilterValueRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("includeValuesInResponse")) {
      includeValuesInResponse = _json["includeValuesInResponse"];
    }
    if (_json.containsKey("responseDateTimeRenderOption")) {
      responseDateTimeRenderOption = _json["responseDateTimeRenderOption"];
    }
    if (_json.containsKey("responseValueRenderOption")) {
      responseValueRenderOption = _json["responseValueRenderOption"];
    }
    if (_json.containsKey("valueInputOption")) {
      valueInputOption = _json["valueInputOption"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (includeValuesInResponse != null) {
      _json["includeValuesInResponse"] = includeValuesInResponse;
    }
    if (responseDateTimeRenderOption != null) {
      _json["responseDateTimeRenderOption"] = responseDateTimeRenderOption;
    }
    if (responseValueRenderOption != null) {
      _json["responseValueRenderOption"] = responseValueRenderOption;
    }
    if (valueInputOption != null) {
      _json["valueInputOption"] = valueInputOption;
    }
    return _json;
  }
}

/// The response when updating a range of values in a spreadsheet.
class BatchUpdateValuesByDataFilterResponse {
  /// The response for each range updated.
  core.List<UpdateValuesByDataFilterResponse> responses;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  /// The total number of cells updated.
  core.int totalUpdatedCells;

  /// The total number of columns where at least one cell in the column was
  /// updated.
  core.int totalUpdatedColumns;

  /// The total number of rows where at least one cell in the row was updated.
  core.int totalUpdatedRows;

  /// The total number of sheets where at least one cell in the sheet was
  /// updated.
  core.int totalUpdatedSheets;

  BatchUpdateValuesByDataFilterResponse();

  BatchUpdateValuesByDataFilterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<UpdateValuesByDataFilterResponse>(
              (value) => new UpdateValuesByDataFilterResponse.fromJson(value))
          .toList();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("totalUpdatedCells")) {
      totalUpdatedCells = _json["totalUpdatedCells"];
    }
    if (_json.containsKey("totalUpdatedColumns")) {
      totalUpdatedColumns = _json["totalUpdatedColumns"];
    }
    if (_json.containsKey("totalUpdatedRows")) {
      totalUpdatedRows = _json["totalUpdatedRows"];
    }
    if (_json.containsKey("totalUpdatedSheets")) {
      totalUpdatedSheets = _json["totalUpdatedSheets"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (totalUpdatedCells != null) {
      _json["totalUpdatedCells"] = totalUpdatedCells;
    }
    if (totalUpdatedColumns != null) {
      _json["totalUpdatedColumns"] = totalUpdatedColumns;
    }
    if (totalUpdatedRows != null) {
      _json["totalUpdatedRows"] = totalUpdatedRows;
    }
    if (totalUpdatedSheets != null) {
      _json["totalUpdatedSheets"] = totalUpdatedSheets;
    }
    return _json;
  }
}

/// The request for updating more than one range of values in a spreadsheet.
class BatchUpdateValuesRequest {
  /// The new values to apply to the spreadsheet.
  core.List<ValueRange> data;

  /// Determines if the update response should include the values
  /// of the cells that were updated. By default, responses
  /// do not include the updated values. The `updatedData` field within
  /// each of the BatchUpdateValuesResponse.responses will contain
  /// the updated values. If the range to write was larger than than the range
  /// actually written, the response will include all values in the requested
  /// range (excluding trailing empty rows and columns).
  core.bool includeValuesInResponse;

  /// Determines how dates, times, and durations in the response should be
  /// rendered. This is ignored if response_value_render_option is
  /// FORMATTED_VALUE.
  /// The default dateTime render option is
  /// DateTimeRenderOption.SERIAL_NUMBER.
  /// Possible string values are:
  /// - "SERIAL_NUMBER" : Instructs date, time, datetime, and duration fields to
  /// be output
  /// as doubles in "serial number" format, as popularized by Lotus 1-2-3.
  /// The whole number portion of the value (left of the decimal) counts
  /// the days since December 30th 1899. The fractional portion (right of
  /// the decimal) counts the time as a fraction of the day. For example,
  /// January 1st 1900 at noon would be 2.5, 2 because it's 2 days after
  /// December 30st 1899, and .5 because noon is half a day.  February 1st
  /// 1900 at 3pm would be 33.625. This correctly treats the year 1900 as
  /// not a leap year.
  /// - "FORMATTED_STRING" : Instructs date, time, datetime, and duration fields
  /// to be output
  /// as strings in their given number format (which is dependent
  /// on the spreadsheet locale).
  core.String responseDateTimeRenderOption;

  /// Determines how values in the response should be rendered.
  /// The default render option is ValueRenderOption.FORMATTED_VALUE.
  /// Possible string values are:
  /// - "FORMATTED_VALUE" : Values will be calculated & formatted in the reply
  /// according to the
  /// cell's formatting.  Formatting is based on the spreadsheet's locale,
  /// not the requesting user's locale.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return `"$1.23"`.
  /// - "UNFORMATTED_VALUE" : Values will be calculated, but not formatted in
  /// the reply.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then `A2` would return the number `1.23`.
  /// - "FORMULA" : Values will not be calculated.  The reply will include the
  /// formulas.
  /// For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as
  /// currency,
  /// then A2 would return `"=A1"`.
  core.String responseValueRenderOption;

  /// How the input data should be interpreted.
  /// Possible string values are:
  /// - "INPUT_VALUE_OPTION_UNSPECIFIED" : Default input value. This value must
  /// not be used.
  /// - "RAW" : The values the user has entered will not be parsed and will be
  /// stored
  /// as-is.
  /// - "USER_ENTERED" : The values will be parsed as if the user typed them
  /// into the UI.
  /// Numbers will stay as numbers, but strings may be converted to numbers,
  /// dates, etc. following the same rules that are applied when entering
  /// text into a cell via the Google Sheets UI.
  core.String valueInputOption;

  BatchUpdateValuesRequest();

  BatchUpdateValuesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<ValueRange>((value) => new ValueRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("includeValuesInResponse")) {
      includeValuesInResponse = _json["includeValuesInResponse"];
    }
    if (_json.containsKey("responseDateTimeRenderOption")) {
      responseDateTimeRenderOption = _json["responseDateTimeRenderOption"];
    }
    if (_json.containsKey("responseValueRenderOption")) {
      responseValueRenderOption = _json["responseValueRenderOption"];
    }
    if (_json.containsKey("valueInputOption")) {
      valueInputOption = _json["valueInputOption"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (includeValuesInResponse != null) {
      _json["includeValuesInResponse"] = includeValuesInResponse;
    }
    if (responseDateTimeRenderOption != null) {
      _json["responseDateTimeRenderOption"] = responseDateTimeRenderOption;
    }
    if (responseValueRenderOption != null) {
      _json["responseValueRenderOption"] = responseValueRenderOption;
    }
    if (valueInputOption != null) {
      _json["valueInputOption"] = valueInputOption;
    }
    return _json;
  }
}

/// The response when updating a range of values in a spreadsheet.
class BatchUpdateValuesResponse {
  /// One UpdateValuesResponse per requested range, in the same order as
  /// the requests appeared.
  core.List<UpdateValuesResponse> responses;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  /// The total number of cells updated.
  core.int totalUpdatedCells;

  /// The total number of columns where at least one cell in the column was
  /// updated.
  core.int totalUpdatedColumns;

  /// The total number of rows where at least one cell in the row was updated.
  core.int totalUpdatedRows;

  /// The total number of sheets where at least one cell in the sheet was
  /// updated.
  core.int totalUpdatedSheets;

  BatchUpdateValuesResponse();

  BatchUpdateValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responses")) {
      responses = (_json["responses"] as core.List)
          .map<UpdateValuesResponse>(
              (value) => new UpdateValuesResponse.fromJson(value))
          .toList();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("totalUpdatedCells")) {
      totalUpdatedCells = _json["totalUpdatedCells"];
    }
    if (_json.containsKey("totalUpdatedColumns")) {
      totalUpdatedColumns = _json["totalUpdatedColumns"];
    }
    if (_json.containsKey("totalUpdatedRows")) {
      totalUpdatedRows = _json["totalUpdatedRows"];
    }
    if (_json.containsKey("totalUpdatedSheets")) {
      totalUpdatedSheets = _json["totalUpdatedSheets"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responses != null) {
      _json["responses"] = responses.map((value) => (value).toJson()).toList();
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (totalUpdatedCells != null) {
      _json["totalUpdatedCells"] = totalUpdatedCells;
    }
    if (totalUpdatedColumns != null) {
      _json["totalUpdatedColumns"] = totalUpdatedColumns;
    }
    if (totalUpdatedRows != null) {
      _json["totalUpdatedRows"] = totalUpdatedRows;
    }
    if (totalUpdatedSheets != null) {
      _json["totalUpdatedSheets"] = totalUpdatedSheets;
    }
    return _json;
  }
}

/// A condition that can evaluate to true or false.
/// BooleanConditions are used by conditional formatting,
/// data validation, and the criteria in filters.
class BooleanCondition {
  /// The type of condition.
  /// Possible string values are:
  /// - "CONDITION_TYPE_UNSPECIFIED" : The default value, do not use.
  /// - "NUMBER_GREATER" : The cell's value must be greater than the condition's
  /// value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_GREATER_THAN_EQ" : The cell's value must be greater than or
  /// equal to the condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_LESS" : The cell's value must be less than the condition's
  /// value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_LESS_THAN_EQ" : The cell's value must be less than or equal to
  /// the condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_EQ" : The cell's value must be equal to the condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_NOT_EQ" : The cell's value must be not equal to the condition's
  /// value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "NUMBER_BETWEEN" : The cell's value must be between the two condition
  /// values.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires exactly two ConditionValues.
  /// - "NUMBER_NOT_BETWEEN" : The cell's value must not be between the two
  /// condition values.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires exactly two ConditionValues.
  /// - "TEXT_CONTAINS" : The cell's value must contain the condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_NOT_CONTAINS" : The cell's value must not contain the condition's
  /// value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_STARTS_WITH" : The cell's value must start with the condition's
  /// value.
  /// Supported by conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_ENDS_WITH" : The cell's value must end with the condition's value.
  /// Supported by conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_EQ" : The cell's value must be exactly the condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "TEXT_IS_EMAIL" : The cell's value must be a valid email address.
  /// Supported by data validation.
  /// Requires no ConditionValues.
  /// - "TEXT_IS_URL" : The cell's value must be a valid URL.
  /// Supported by data validation.
  /// Requires no ConditionValues.
  /// - "DATE_EQ" : The cell's value must be the same date as the condition's
  /// value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "DATE_BEFORE" : The cell's value must be before the date of the
  /// condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue
  /// that may be a relative date.
  /// - "DATE_AFTER" : The cell's value must be after the date of the
  /// condition's value.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue
  /// that may be a relative date.
  /// - "DATE_ON_OR_BEFORE" : The cell's value must be on or before the date of
  /// the condition's value.
  /// Supported by data validation.
  /// Requires a single ConditionValue
  /// that may be a relative date.
  /// - "DATE_ON_OR_AFTER" : The cell's value must be on or after the date of
  /// the condition's value.
  /// Supported by data validation.
  /// Requires a single ConditionValue
  /// that may be a relative date.
  /// - "DATE_BETWEEN" : The cell's value must be between the dates of the two
  /// condition values.
  /// Supported by data validation.
  /// Requires exactly two ConditionValues.
  /// - "DATE_NOT_BETWEEN" : The cell's value must be outside the dates of the
  /// two condition values.
  /// Supported by data validation.
  /// Requires exactly two ConditionValues.
  /// - "DATE_IS_VALID" : The cell's value must be a date.
  /// Supported by data validation.
  /// Requires no ConditionValues.
  /// - "ONE_OF_RANGE" : The cell's value must be listed in the grid in
  /// condition value's range.
  /// Supported by data validation.
  /// Requires a single ConditionValue,
  /// and the value must be a valid range in A1 notation.
  /// - "ONE_OF_LIST" : The cell's value must be in the list of condition
  /// values.
  /// Supported by data validation.
  /// Supports any number of condition values,
  /// one per item in the list.
  /// Formulas are not supported in the values.
  /// - "BLANK" : The cell's value must be empty.
  /// Supported by conditional formatting and filters.
  /// Requires no ConditionValues.
  /// - "NOT_BLANK" : The cell's value must not be empty.
  /// Supported by conditional formatting and filters.
  /// Requires no ConditionValues.
  /// - "CUSTOM_FORMULA" : The condition's formula must evaluate to true.
  /// Supported by data validation, conditional formatting and filters.
  /// Requires a single ConditionValue.
  /// - "BOOLEAN" : The cell's value must be TRUE/FALSE or in the list of
  /// condition values.
  /// Supported by data validation.
  /// Renders as a cell checkbox.
  /// Supports zero, one or two ConditionValues.  No
  /// values indicates the cell must be TRUE or FALSE, where TRUE renders as
  /// checked and FALSE renders as unchecked.  One value indicates the cell
  /// will render as checked when it contains that value and unchecked when it
  /// is blank.  Two values indicate that the cell will render as checked when
  /// it contains the first value and unchecked when it contains the second
  /// value.  For example, ["Yes","No"] indicates that the cell will render a
  /// checked box when it has the value "Yes" and an unchecked box when it has
  /// the value "No".
  core.String type;

  /// The values of the condition. The number of supported values depends
  /// on the condition type.  Some support zero values,
  /// others one or two values,
  /// and ConditionType.ONE_OF_LIST supports an arbitrary number of values.
  core.List<ConditionValue> values;

  BooleanCondition();

  BooleanCondition.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<ConditionValue>((value) => new ConditionValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A rule that may or may not match, depending on the condition.
class BooleanRule {
  /// The condition of the rule. If the condition evaluates to true,
  /// the format is applied.
  BooleanCondition condition;

  /// The format to apply.
  /// Conditional formatting can only apply a subset of formatting:
  /// bold, italic,
  /// strikethrough,
  /// foreground color &
  /// background color.
  CellFormat format;

  BooleanRule();

  BooleanRule.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new BooleanCondition.fromJson(_json["condition"]);
    }
    if (_json.containsKey("format")) {
      format = new CellFormat.fromJson(_json["format"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (format != null) {
      _json["format"] = (format).toJson();
    }
    return _json;
  }
}

/// A border along a cell.
class Border {
  /// The color of the border.
  Color color;

  /// The style of the border.
  /// Possible string values are:
  /// - "STYLE_UNSPECIFIED" : The style is not specified. Do not use this.
  /// - "DOTTED" : The border is dotted.
  /// - "DASHED" : The border is dashed.
  /// - "SOLID" : The border is a thin solid line.
  /// - "SOLID_MEDIUM" : The border is a medium solid line.
  /// - "SOLID_THICK" : The border is a thick solid line.
  /// - "NONE" : No border.
  /// Used only when updating a border in order to erase it.
  /// - "DOUBLE" : The border is two solid lines.
  core.String style;

  /// The width of the border, in pixels.
  /// Deprecated; the width is determined by the "style" field.
  core.int width;

  Border();

  Border.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("style")) {
      style = _json["style"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (style != null) {
      _json["style"] = style;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// The borders of the cell.
class Borders {
  /// The bottom border of the cell.
  Border bottom;

  /// The left border of the cell.
  Border left;

  /// The right border of the cell.
  Border right;

  /// The top border of the cell.
  Border top;

  Borders();

  Borders.fromJson(core.Map _json) {
    if (_json.containsKey("bottom")) {
      bottom = new Border.fromJson(_json["bottom"]);
    }
    if (_json.containsKey("left")) {
      left = new Border.fromJson(_json["left"]);
    }
    if (_json.containsKey("right")) {
      right = new Border.fromJson(_json["right"]);
    }
    if (_json.containsKey("top")) {
      top = new Border.fromJson(_json["top"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bottom != null) {
      _json["bottom"] = (bottom).toJson();
    }
    if (left != null) {
      _json["left"] = (left).toJson();
    }
    if (right != null) {
      _json["right"] = (right).toJson();
    }
    if (top != null) {
      _json["top"] = (top).toJson();
    }
    return _json;
  }
}

/// A <a href="/chart/interactive/docs/gallery/bubblechart">bubble chart</a>.
class BubbleChartSpec {
  /// The bubble border color.
  Color bubbleBorderColor;

  /// The data containing the bubble labels.  These do not need to be unique.
  ChartData bubbleLabels;

  /// The max radius size of the bubbles, in pixels.
  /// If specified, the field must be a positive value.
  core.int bubbleMaxRadiusSize;

  /// The minimum radius size of the bubbles, in pixels.
  /// If specific, the field must be a positive value.
  core.int bubbleMinRadiusSize;

  /// The opacity of the bubbles between 0 and 1.0.
  /// 0 is fully transparent and 1 is fully opaque.
  core.double bubbleOpacity;

  /// The data contianing the bubble sizes.  Bubble sizes are used to draw
  /// the bubbles at different sizes relative to each other.
  /// If specified, group_ids must also be specified.  This field is
  /// optional.
  ChartData bubbleSizes;

  /// The format of the text inside the bubbles.
  /// Underline and Strikethrough are not supported.
  TextFormat bubbleTextStyle;

  /// The data containing the bubble x-values.  These values locate the bubbles
  /// in the chart horizontally.
  ChartData domain;

  /// The data containing the bubble group IDs. All bubbles with the same group
  /// ID are drawn in the same color. If bubble_sizes is specified then
  /// this field must also be specified but may contain blank values.
  /// This field is optional.
  ChartData groupIds;

  /// Where the legend of the chart should be drawn.
  /// Possible string values are:
  /// - "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  /// - "INSIDE_LEGEND" : The legend is rendered inside the chart area.
  core.String legendPosition;

  /// The data contianing the bubble y-values.  These values locate the bubbles
  /// in the chart vertically.
  ChartData series;

  BubbleChartSpec();

  BubbleChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("bubbleBorderColor")) {
      bubbleBorderColor = new Color.fromJson(_json["bubbleBorderColor"]);
    }
    if (_json.containsKey("bubbleLabels")) {
      bubbleLabels = new ChartData.fromJson(_json["bubbleLabels"]);
    }
    if (_json.containsKey("bubbleMaxRadiusSize")) {
      bubbleMaxRadiusSize = _json["bubbleMaxRadiusSize"];
    }
    if (_json.containsKey("bubbleMinRadiusSize")) {
      bubbleMinRadiusSize = _json["bubbleMinRadiusSize"];
    }
    if (_json.containsKey("bubbleOpacity")) {
      bubbleOpacity = _json["bubbleOpacity"].toDouble();
    }
    if (_json.containsKey("bubbleSizes")) {
      bubbleSizes = new ChartData.fromJson(_json["bubbleSizes"]);
    }
    if (_json.containsKey("bubbleTextStyle")) {
      bubbleTextStyle = new TextFormat.fromJson(_json["bubbleTextStyle"]);
    }
    if (_json.containsKey("domain")) {
      domain = new ChartData.fromJson(_json["domain"]);
    }
    if (_json.containsKey("groupIds")) {
      groupIds = new ChartData.fromJson(_json["groupIds"]);
    }
    if (_json.containsKey("legendPosition")) {
      legendPosition = _json["legendPosition"];
    }
    if (_json.containsKey("series")) {
      series = new ChartData.fromJson(_json["series"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bubbleBorderColor != null) {
      _json["bubbleBorderColor"] = (bubbleBorderColor).toJson();
    }
    if (bubbleLabels != null) {
      _json["bubbleLabels"] = (bubbleLabels).toJson();
    }
    if (bubbleMaxRadiusSize != null) {
      _json["bubbleMaxRadiusSize"] = bubbleMaxRadiusSize;
    }
    if (bubbleMinRadiusSize != null) {
      _json["bubbleMinRadiusSize"] = bubbleMinRadiusSize;
    }
    if (bubbleOpacity != null) {
      _json["bubbleOpacity"] = bubbleOpacity;
    }
    if (bubbleSizes != null) {
      _json["bubbleSizes"] = (bubbleSizes).toJson();
    }
    if (bubbleTextStyle != null) {
      _json["bubbleTextStyle"] = (bubbleTextStyle).toJson();
    }
    if (domain != null) {
      _json["domain"] = (domain).toJson();
    }
    if (groupIds != null) {
      _json["groupIds"] = (groupIds).toJson();
    }
    if (legendPosition != null) {
      _json["legendPosition"] = legendPosition;
    }
    if (series != null) {
      _json["series"] = (series).toJson();
    }
    return _json;
  }
}

/// A <a href="/chart/interactive/docs/gallery/candlestickchart">candlestick
/// chart</a>.
class CandlestickChartSpec {
  /// The Candlestick chart data.
  /// Only one CandlestickData is supported.
  core.List<CandlestickData> data;

  /// The domain data (horizontal axis) for the candlestick chart.  String data
  /// will be treated as discrete labels, other data will be treated as
  /// continuous values.
  CandlestickDomain domain;

  CandlestickChartSpec();

  CandlestickChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<CandlestickData>((value) => new CandlestickData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("domain")) {
      domain = new CandlestickDomain.fromJson(_json["domain"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (domain != null) {
      _json["domain"] = (domain).toJson();
    }
    return _json;
  }
}

/// The Candlestick chart data, each containing the low, open, close, and high
/// values for a series.
class CandlestickData {
  /// The range data (vertical axis) for the close/final value for each candle.
  /// This is the top of the candle body.  If greater than the open value the
  /// candle will be filled.  Otherwise the candle will be hollow.
  CandlestickSeries closeSeries;

  /// The range data (vertical axis) for the high/maximum value for each
  /// candle. This is the top of the candle's center line.
  CandlestickSeries highSeries;

  /// The range data (vertical axis) for the low/minimum value for each candle.
  /// This is the bottom of the candle's center line.
  CandlestickSeries lowSeries;

  /// The range data (vertical axis) for the open/initial value for each
  /// candle. This is the bottom of the candle body.  If less than the close
  /// value the candle will be filled.  Otherwise the candle will be hollow.
  CandlestickSeries openSeries;

  CandlestickData();

  CandlestickData.fromJson(core.Map _json) {
    if (_json.containsKey("closeSeries")) {
      closeSeries = new CandlestickSeries.fromJson(_json["closeSeries"]);
    }
    if (_json.containsKey("highSeries")) {
      highSeries = new CandlestickSeries.fromJson(_json["highSeries"]);
    }
    if (_json.containsKey("lowSeries")) {
      lowSeries = new CandlestickSeries.fromJson(_json["lowSeries"]);
    }
    if (_json.containsKey("openSeries")) {
      openSeries = new CandlestickSeries.fromJson(_json["openSeries"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (closeSeries != null) {
      _json["closeSeries"] = (closeSeries).toJson();
    }
    if (highSeries != null) {
      _json["highSeries"] = (highSeries).toJson();
    }
    if (lowSeries != null) {
      _json["lowSeries"] = (lowSeries).toJson();
    }
    if (openSeries != null) {
      _json["openSeries"] = (openSeries).toJson();
    }
    return _json;
  }
}

/// The domain of a CandlestickChart.
class CandlestickDomain {
  /// The data of the CandlestickDomain.
  ChartData data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool reversed;

  CandlestickDomain();

  CandlestickDomain.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = new ChartData.fromJson(_json["data"]);
    }
    if (_json.containsKey("reversed")) {
      reversed = _json["reversed"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = (data).toJson();
    }
    if (reversed != null) {
      _json["reversed"] = reversed;
    }
    return _json;
  }
}

/// The series of a CandlestickData.
class CandlestickSeries {
  /// The data of the CandlestickSeries.
  ChartData data;

  CandlestickSeries();

  CandlestickSeries.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = new ChartData.fromJson(_json["data"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = (data).toJson();
    }
    return _json;
  }
}

/// Data about a specific cell.
class CellData {
  /// A data validation rule on the cell, if any.
  ///
  /// When writing, the new data validation rule will overwrite any prior rule.
  DataValidationRule dataValidation;

  /// The effective format being used by the cell.
  /// This includes the results of applying any conditional formatting and,
  /// if the cell contains a formula, the computed number format.
  /// If the effective format is the default format, effective format will
  /// not be written.
  /// This field is read-only.
  CellFormat effectiveFormat;

  /// The effective value of the cell. For cells with formulas, this is
  /// the calculated value.  For cells with literals, this is
  /// the same as the user_entered_value.
  /// This field is read-only.
  ExtendedValue effectiveValue;

  /// The formatted value of the cell.
  /// This is the value as it's shown to the user.
  /// This field is read-only.
  core.String formattedValue;

  /// A hyperlink this cell points to, if any.
  /// This field is read-only.  (To set it, use a `=HYPERLINK` formula
  /// in the userEnteredValue.formulaValue
  /// field.)
  core.String hyperlink;

  /// Any note on the cell.
  core.String note;

  /// A pivot table anchored at this cell. The size of pivot table itself
  /// is computed dynamically based on its data, grouping, filters, values,
  /// etc. Only the top-left cell of the pivot table contains the pivot table
  /// definition. The other cells will contain the calculated values of the
  /// results of the pivot in their effective_value fields.
  PivotTable pivotTable;

  /// Runs of rich text applied to subsections of the cell.  Runs are only valid
  /// on user entered strings, not formulas, bools, or numbers.
  /// Runs start at specific indexes in the text and continue until the next
  /// run. Properties of a run will continue unless explicitly changed
  /// in a subsequent run (and properties of the first run will continue
  /// the properties of the cell unless explicitly changed).
  ///
  /// When writing, the new runs will overwrite any prior runs.  When writing a
  /// new user_entered_value, previous runs are erased.
  core.List<TextFormatRun> textFormatRuns;

  /// The format the user entered for the cell.
  ///
  /// When writing, the new format will be merged with the existing format.
  CellFormat userEnteredFormat;

  /// The value the user entered in the cell. e.g, `1234`, `'Hello'`, or
  /// `=NOW()`
  /// Note: Dates, Times and DateTimes are represented as doubles in
  /// serial number format.
  ExtendedValue userEnteredValue;

  CellData();

  CellData.fromJson(core.Map _json) {
    if (_json.containsKey("dataValidation")) {
      dataValidation = new DataValidationRule.fromJson(_json["dataValidation"]);
    }
    if (_json.containsKey("effectiveFormat")) {
      effectiveFormat = new CellFormat.fromJson(_json["effectiveFormat"]);
    }
    if (_json.containsKey("effectiveValue")) {
      effectiveValue = new ExtendedValue.fromJson(_json["effectiveValue"]);
    }
    if (_json.containsKey("formattedValue")) {
      formattedValue = _json["formattedValue"];
    }
    if (_json.containsKey("hyperlink")) {
      hyperlink = _json["hyperlink"];
    }
    if (_json.containsKey("note")) {
      note = _json["note"];
    }
    if (_json.containsKey("pivotTable")) {
      pivotTable = new PivotTable.fromJson(_json["pivotTable"]);
    }
    if (_json.containsKey("textFormatRuns")) {
      textFormatRuns = (_json["textFormatRuns"] as core.List)
          .map<TextFormatRun>((value) => new TextFormatRun.fromJson(value))
          .toList();
    }
    if (_json.containsKey("userEnteredFormat")) {
      userEnteredFormat = new CellFormat.fromJson(_json["userEnteredFormat"]);
    }
    if (_json.containsKey("userEnteredValue")) {
      userEnteredValue = new ExtendedValue.fromJson(_json["userEnteredValue"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataValidation != null) {
      _json["dataValidation"] = (dataValidation).toJson();
    }
    if (effectiveFormat != null) {
      _json["effectiveFormat"] = (effectiveFormat).toJson();
    }
    if (effectiveValue != null) {
      _json["effectiveValue"] = (effectiveValue).toJson();
    }
    if (formattedValue != null) {
      _json["formattedValue"] = formattedValue;
    }
    if (hyperlink != null) {
      _json["hyperlink"] = hyperlink;
    }
    if (note != null) {
      _json["note"] = note;
    }
    if (pivotTable != null) {
      _json["pivotTable"] = (pivotTable).toJson();
    }
    if (textFormatRuns != null) {
      _json["textFormatRuns"] =
          textFormatRuns.map((value) => (value).toJson()).toList();
    }
    if (userEnteredFormat != null) {
      _json["userEnteredFormat"] = (userEnteredFormat).toJson();
    }
    if (userEnteredValue != null) {
      _json["userEnteredValue"] = (userEnteredValue).toJson();
    }
    return _json;
  }
}

/// The format of a cell.
class CellFormat {
  /// The background color of the cell.
  Color backgroundColor;

  /// The borders of the cell.
  Borders borders;

  /// The horizontal alignment of the value in the cell.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGN_UNSPECIFIED" : The horizontal alignment is not
  /// specified. Do not use this.
  /// - "LEFT" : The text is explicitly aligned to the left of the cell.
  /// - "CENTER" : The text is explicitly aligned to the center of the cell.
  /// - "RIGHT" : The text is explicitly aligned to the right of the cell.
  core.String horizontalAlignment;

  /// How a hyperlink, if it exists, should be displayed in the cell.
  /// Possible string values are:
  /// - "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED" : The default value: the hyperlink
  /// is rendered. Do not use this.
  /// - "LINKED" : A hyperlink should be explicitly rendered.
  /// - "PLAIN_TEXT" : A hyperlink should not be rendered.
  core.String hyperlinkDisplayType;

  /// A format describing how number values should be represented to the user.
  NumberFormat numberFormat;

  /// The padding of the cell.
  Padding padding;

  /// The direction of the text in the cell.
  /// Possible string values are:
  /// - "TEXT_DIRECTION_UNSPECIFIED" : The text direction is not specified. Do
  /// not use this.
  /// - "LEFT_TO_RIGHT" : The text direction of left-to-right was set by the
  /// user.
  /// - "RIGHT_TO_LEFT" : The text direction of right-to-left was set by the
  /// user.
  core.String textDirection;

  /// The format of the text in the cell (unless overridden by a format run).
  TextFormat textFormat;

  /// The rotation applied to text in a cell
  TextRotation textRotation;

  /// The vertical alignment of the value in the cell.
  /// Possible string values are:
  /// - "VERTICAL_ALIGN_UNSPECIFIED" : The vertical alignment is not specified.
  /// Do not use this.
  /// - "TOP" : The text is explicitly aligned to the top of the cell.
  /// - "MIDDLE" : The text is explicitly aligned to the middle of the cell.
  /// - "BOTTOM" : The text is explicitly aligned to the bottom of the cell.
  core.String verticalAlignment;

  /// The wrap strategy for the value in the cell.
  /// Possible string values are:
  /// - "WRAP_STRATEGY_UNSPECIFIED" : The default value, do not use.
  /// - "OVERFLOW_CELL" : Lines that are longer than the cell width will be
  /// written in the next
  /// cell over, so long as that cell is empty. If the next cell over is
  /// non-empty, this behaves the same as CLIP. The text will never wrap
  /// to the next line unless the user manually inserts a new line.
  /// Example:
  ///
  ///     | First sentence. |
  ///     | Manual newline that is very long. <- Text continues into next cell
  ///     | Next newline.   |
  /// - "LEGACY_WRAP" : This wrap strategy represents the old Google Sheets wrap
  /// strategy where
  /// words that are longer than a line are clipped rather than broken. This
  /// strategy is not supported on all platforms and is being phased out.
  /// Example:
  ///
  ///     | Cell has a |
  ///     | loooooooooo| <- Word is clipped.
  ///     | word.      |
  /// - "CLIP" : Lines that are longer than the cell width will be clipped.
  /// The text will never wrap to the next line unless the user manually
  /// inserts a new line.
  /// Example:
  ///
  ///     | First sentence. |
  ///     | Manual newline t| <- Text is clipped
  ///     | Next newline.   |
  /// - "WRAP" : Words that are longer than a line are wrapped at the character
  /// level
  /// rather than clipped.
  /// Example:
  ///
  ///     | Cell has a |
  ///     | loooooooooo| <- Word is broken.
  ///     | ong word.  |
  core.String wrapStrategy;

  CellFormat();

  CellFormat.fromJson(core.Map _json) {
    if (_json.containsKey("backgroundColor")) {
      backgroundColor = new Color.fromJson(_json["backgroundColor"]);
    }
    if (_json.containsKey("borders")) {
      borders = new Borders.fromJson(_json["borders"]);
    }
    if (_json.containsKey("horizontalAlignment")) {
      horizontalAlignment = _json["horizontalAlignment"];
    }
    if (_json.containsKey("hyperlinkDisplayType")) {
      hyperlinkDisplayType = _json["hyperlinkDisplayType"];
    }
    if (_json.containsKey("numberFormat")) {
      numberFormat = new NumberFormat.fromJson(_json["numberFormat"]);
    }
    if (_json.containsKey("padding")) {
      padding = new Padding.fromJson(_json["padding"]);
    }
    if (_json.containsKey("textDirection")) {
      textDirection = _json["textDirection"];
    }
    if (_json.containsKey("textFormat")) {
      textFormat = new TextFormat.fromJson(_json["textFormat"]);
    }
    if (_json.containsKey("textRotation")) {
      textRotation = new TextRotation.fromJson(_json["textRotation"]);
    }
    if (_json.containsKey("verticalAlignment")) {
      verticalAlignment = _json["verticalAlignment"];
    }
    if (_json.containsKey("wrapStrategy")) {
      wrapStrategy = _json["wrapStrategy"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backgroundColor != null) {
      _json["backgroundColor"] = (backgroundColor).toJson();
    }
    if (borders != null) {
      _json["borders"] = (borders).toJson();
    }
    if (horizontalAlignment != null) {
      _json["horizontalAlignment"] = horizontalAlignment;
    }
    if (hyperlinkDisplayType != null) {
      _json["hyperlinkDisplayType"] = hyperlinkDisplayType;
    }
    if (numberFormat != null) {
      _json["numberFormat"] = (numberFormat).toJson();
    }
    if (padding != null) {
      _json["padding"] = (padding).toJson();
    }
    if (textDirection != null) {
      _json["textDirection"] = textDirection;
    }
    if (textFormat != null) {
      _json["textFormat"] = (textFormat).toJson();
    }
    if (textRotation != null) {
      _json["textRotation"] = (textRotation).toJson();
    }
    if (verticalAlignment != null) {
      _json["verticalAlignment"] = verticalAlignment;
    }
    if (wrapStrategy != null) {
      _json["wrapStrategy"] = wrapStrategy;
    }
    return _json;
  }
}

/// The data included in a domain or series.
class ChartData {
  /// The source ranges of the data.
  ChartSourceRange sourceRange;

  ChartData();

  ChartData.fromJson(core.Map _json) {
    if (_json.containsKey("sourceRange")) {
      sourceRange = new ChartSourceRange.fromJson(_json["sourceRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourceRange != null) {
      _json["sourceRange"] = (sourceRange).toJson();
    }
    return _json;
  }
}

/// Source ranges for a chart.
class ChartSourceRange {
  /// The ranges of data for a series or domain.
  /// Exactly one dimension must have a length of 1,
  /// and all sources in the list must have the same dimension
  /// with length 1.
  /// The domain (if it exists) & all series must have the same number
  /// of source ranges. If using more than one source range, then the source
  /// range at a given offset must be in order and contiguous across the domain
  /// and series.
  ///
  /// For example, these are valid configurations:
  ///
  ///     domain sources: A1:A5
  ///     series1 sources: B1:B5
  ///     series2 sources: D6:D10
  ///
  ///     domain sources: A1:A5, C10:C12
  ///     series1 sources: B1:B5, D10:D12
  ///     series2 sources: C1:C5, E10:E12
  core.List<GridRange> sources;

  ChartSourceRange();

  ChartSourceRange.fromJson(core.Map _json) {
    if (_json.containsKey("sources")) {
      sources = (_json["sources"] as core.List)
          .map<GridRange>((value) => new GridRange.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The specifications of a chart.
class ChartSpec {
  /// The alternative text that describes the chart.  This is often used
  /// for accessibility.
  core.String altText;

  /// The background color of the entire chart.
  /// Not applicable to Org charts.
  Color backgroundColor;

  /// A basic chart specification, can be one of many kinds of charts.
  /// See BasicChartType for the list of all
  /// charts this supports.
  BasicChartSpec basicChart;

  /// A bubble chart specification.
  BubbleChartSpec bubbleChart;

  /// A candlestick chart specification.
  CandlestickChartSpec candlestickChart;

  /// The name of the font to use by default for all chart text (e.g. title,
  /// axis labels, legend).  If a font is specified for a specific part of the
  /// chart it will override this font name.
  core.String fontName;

  /// Determines how the charts will use hidden rows or columns.
  /// Possible string values are:
  /// - "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED" : Default value, do not
  /// use.
  /// - "SKIP_HIDDEN_ROWS_AND_COLUMNS" : Charts will skip hidden rows and
  /// columns.
  /// - "SKIP_HIDDEN_ROWS" : Charts will skip hidden rows only.
  /// - "SKIP_HIDDEN_COLUMNS" : Charts will skip hidden columns only.
  /// - "SHOW_ALL" : Charts will not skip any hidden rows or columns.
  core.String hiddenDimensionStrategy;

  /// A histogram chart specification.
  HistogramChartSpec histogramChart;

  /// True to make a chart fill the entire space in which it's rendered with
  /// minimum padding.  False to use the default padding.
  /// (Not applicable to Geo and Org charts.)
  core.bool maximized;

  /// An org chart specification.
  OrgChartSpec orgChart;

  /// A pie chart specification.
  PieChartSpec pieChart;

  /// The subtitle of the chart.
  core.String subtitle;

  /// The subtitle text format.
  /// Strikethrough and underline are not supported.
  TextFormat subtitleTextFormat;

  /// The subtitle text position.
  /// This field is optional.
  TextPosition subtitleTextPosition;

  /// The title of the chart.
  core.String title;

  /// The title text format.
  /// Strikethrough and underline are not supported.
  TextFormat titleTextFormat;

  /// The title text position.
  /// This field is optional.
  TextPosition titleTextPosition;

  /// A treemap chart specification.
  TreemapChartSpec treemapChart;

  /// A waterfall chart specification.
  WaterfallChartSpec waterfallChart;

  ChartSpec();

  ChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("altText")) {
      altText = _json["altText"];
    }
    if (_json.containsKey("backgroundColor")) {
      backgroundColor = new Color.fromJson(_json["backgroundColor"]);
    }
    if (_json.containsKey("basicChart")) {
      basicChart = new BasicChartSpec.fromJson(_json["basicChart"]);
    }
    if (_json.containsKey("bubbleChart")) {
      bubbleChart = new BubbleChartSpec.fromJson(_json["bubbleChart"]);
    }
    if (_json.containsKey("candlestickChart")) {
      candlestickChart =
          new CandlestickChartSpec.fromJson(_json["candlestickChart"]);
    }
    if (_json.containsKey("fontName")) {
      fontName = _json["fontName"];
    }
    if (_json.containsKey("hiddenDimensionStrategy")) {
      hiddenDimensionStrategy = _json["hiddenDimensionStrategy"];
    }
    if (_json.containsKey("histogramChart")) {
      histogramChart = new HistogramChartSpec.fromJson(_json["histogramChart"]);
    }
    if (_json.containsKey("maximized")) {
      maximized = _json["maximized"];
    }
    if (_json.containsKey("orgChart")) {
      orgChart = new OrgChartSpec.fromJson(_json["orgChart"]);
    }
    if (_json.containsKey("pieChart")) {
      pieChart = new PieChartSpec.fromJson(_json["pieChart"]);
    }
    if (_json.containsKey("subtitle")) {
      subtitle = _json["subtitle"];
    }
    if (_json.containsKey("subtitleTextFormat")) {
      subtitleTextFormat = new TextFormat.fromJson(_json["subtitleTextFormat"]);
    }
    if (_json.containsKey("subtitleTextPosition")) {
      subtitleTextPosition =
          new TextPosition.fromJson(_json["subtitleTextPosition"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("titleTextFormat")) {
      titleTextFormat = new TextFormat.fromJson(_json["titleTextFormat"]);
    }
    if (_json.containsKey("titleTextPosition")) {
      titleTextPosition = new TextPosition.fromJson(_json["titleTextPosition"]);
    }
    if (_json.containsKey("treemapChart")) {
      treemapChart = new TreemapChartSpec.fromJson(_json["treemapChart"]);
    }
    if (_json.containsKey("waterfallChart")) {
      waterfallChart = new WaterfallChartSpec.fromJson(_json["waterfallChart"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (altText != null) {
      _json["altText"] = altText;
    }
    if (backgroundColor != null) {
      _json["backgroundColor"] = (backgroundColor).toJson();
    }
    if (basicChart != null) {
      _json["basicChart"] = (basicChart).toJson();
    }
    if (bubbleChart != null) {
      _json["bubbleChart"] = (bubbleChart).toJson();
    }
    if (candlestickChart != null) {
      _json["candlestickChart"] = (candlestickChart).toJson();
    }
    if (fontName != null) {
      _json["fontName"] = fontName;
    }
    if (hiddenDimensionStrategy != null) {
      _json["hiddenDimensionStrategy"] = hiddenDimensionStrategy;
    }
    if (histogramChart != null) {
      _json["histogramChart"] = (histogramChart).toJson();
    }
    if (maximized != null) {
      _json["maximized"] = maximized;
    }
    if (orgChart != null) {
      _json["orgChart"] = (orgChart).toJson();
    }
    if (pieChart != null) {
      _json["pieChart"] = (pieChart).toJson();
    }
    if (subtitle != null) {
      _json["subtitle"] = subtitle;
    }
    if (subtitleTextFormat != null) {
      _json["subtitleTextFormat"] = (subtitleTextFormat).toJson();
    }
    if (subtitleTextPosition != null) {
      _json["subtitleTextPosition"] = (subtitleTextPosition).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (titleTextFormat != null) {
      _json["titleTextFormat"] = (titleTextFormat).toJson();
    }
    if (titleTextPosition != null) {
      _json["titleTextPosition"] = (titleTextPosition).toJson();
    }
    if (treemapChart != null) {
      _json["treemapChart"] = (treemapChart).toJson();
    }
    if (waterfallChart != null) {
      _json["waterfallChart"] = (waterfallChart).toJson();
    }
    return _json;
  }
}

/// Clears the basic filter, if any exists on the sheet.
class ClearBasicFilterRequest {
  /// The sheet ID on which the basic filter should be cleared.
  core.int sheetId;

  ClearBasicFilterRequest();

  ClearBasicFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// The request for clearing a range of values in a spreadsheet.
class ClearValuesRequest {
  ClearValuesRequest();

  ClearValuesRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response when clearing a range of values in a spreadsheet.
class ClearValuesResponse {
  /// The range (in A1 notation) that was cleared.
  /// (If the request was for an unbounded range or a ranger larger
  ///  than the bounds of the sheet, this will be the actual range
  ///  that was cleared, bounded to the sheet's limits.)
  core.String clearedRange;

  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  ClearValuesResponse();

  ClearValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clearedRange")) {
      clearedRange = _json["clearedRange"];
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clearedRange != null) {
      _json["clearedRange"] = clearedRange;
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    return _json;
  }
}

/// Represents a color in the RGBA color space. This representation is designed
/// for simplicity of conversion to/from color representations in various
/// languages over compactness; for example, the fields of this representation
/// can be trivially provided to the constructor of "java.awt.Color" in Java; it
/// can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
/// method in iOS; and, with just a little work, it can be easily formatted into
/// a CSS "rgba()" string in JavaScript, as well.
///
/// Note: this proto does not carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB
/// color
/// space.
///
/// Example (Java):
///
///      import com.google.type.Color;
///
///      // ...
///      public static java.awt.Color fromProto(Color protocolor) {
///        float alpha = protocolor.hasAlpha()
///            ? protocolor.getAlpha().getValue()
///            : 1.0;
///
///        return new java.awt.Color(
///            protocolor.getRed(),
///            protocolor.getGreen(),
///            protocolor.getBlue(),
///            alpha);
///      }
///
///      public static Color toProto(java.awt.Color color) {
///        float red = (float) color.getRed();
///        float green = (float) color.getGreen();
///        float blue = (float) color.getBlue();
///        float denominator = 255.0;
///        Color.Builder resultBuilder =
///            Color
///                .newBuilder()
///                .setRed(red / denominator)
///                .setGreen(green / denominator)
///                .setBlue(blue / denominator);
///        int alpha = color.getAlpha();
///        if (alpha != 255) {
///          result.setAlpha(
///              FloatValue
///                  .newBuilder()
///                  .setValue(((float) alpha) / denominator)
///                  .build());
///        }
///        return resultBuilder.build();
///      }
///      // ...
///
/// Example (iOS / Obj-C):
///
///      // ...
///      static UIColor* fromProto(Color* protocolor) {
///         float red = [protocolor red];
///         float green = [protocolor green];
///         float blue = [protocolor blue];
///         FloatValue* alpha_wrapper = [protocolor alpha];
///         float alpha = 1.0;
///         if (alpha_wrapper != nil) {
///           alpha = [alpha_wrapper value];
///         }
/// return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
///      }
///
///      static Color* toProto(UIColor* color) {
///          CGFloat red, green, blue, alpha;
///          if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) {
///            return nil;
///          }
///          Color* result = [[Color alloc] init];
///          [result setRed:red];
///          [result setGreen:green];
///          [result setBlue:blue];
///          if (alpha <= 0.9999) {
///            [result setAlpha:floatWrapperWithValue(alpha)];
///          }
///          [result autorelease];
///          return result;
///     }
///     // ...
///
///  Example (JavaScript):
///
///     // ...
///
///     var protoToCssColor = function(rgb_color) {
///        var redFrac = rgb_color.red || 0.0;
///        var greenFrac = rgb_color.green || 0.0;
///        var blueFrac = rgb_color.blue || 0.0;
///        var red = Math.floor(redFrac * 255);
///        var green = Math.floor(greenFrac * 255);
///        var blue = Math.floor(blueFrac * 255);
///
///        if (!('alpha' in rgb_color)) {
///           return rgbToCssColor_(red, green, blue);
///        }
///
///        var alphaFrac = rgb_color.alpha.value || 0.0;
///        var rgbParams = [red, green, blue].join(',');
///        return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
///     };
///
///     var rgbToCssColor_ = function(red, green, blue) {
///       var rgbNumber = new Number((red << 16) | (green << 8) | blue);
///       var hexString = rgbNumber.toString(16);
///       var missingZeros = 6 - hexString.length;
///       var resultBuilder = ['#'];
///       for (var i = 0; i < missingZeros; i++) {
///          resultBuilder.push('0');
///       }
///       resultBuilder.push(hexString);
///       return resultBuilder.join('');
///     };
///
///     // ...
class Color {
  /// The fraction of this color that should be applied to the pixel. That is,
  /// the final pixel color is defined by the equation:
  ///
  ///   pixel color = alpha * (this color) + (1.0 - alpha) * (background color)
  ///
  /// This means that a value of 1.0 corresponds to a solid color, whereas
  /// a value of 0.0 corresponds to a completely transparent color. This
  /// uses a wrapper message rather than a simple float scalar so that it is
  /// possible to distinguish between a default value and the value being unset.
  /// If omitted, this color object is to be rendered as a solid color
  /// (as if the alpha value had been explicitly given with a value of 1.0).
  core.double alpha;

  /// The amount of blue in the color as a value in the interval [0, 1].
  core.double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  core.double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  core.double red;

  Color();

  Color.fromJson(core.Map _json) {
    if (_json.containsKey("alpha")) {
      alpha = _json["alpha"].toDouble();
    }
    if (_json.containsKey("blue")) {
      blue = _json["blue"].toDouble();
    }
    if (_json.containsKey("green")) {
      green = _json["green"].toDouble();
    }
    if (_json.containsKey("red")) {
      red = _json["red"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alpha != null) {
      _json["alpha"] = alpha;
    }
    if (blue != null) {
      _json["blue"] = blue;
    }
    if (green != null) {
      _json["green"] = green;
    }
    if (red != null) {
      _json["red"] = red;
    }
    return _json;
  }
}

/// The value of the condition.
class ConditionValue {
  /// A relative date (based on the current date).
  /// Valid only if the type is
  /// DATE_BEFORE,
  /// DATE_AFTER,
  /// DATE_ON_OR_BEFORE or
  /// DATE_ON_OR_AFTER.
  ///
  /// Relative dates are not supported in data validation.
  /// They are supported only in conditional formatting and
  /// conditional filters.
  /// Possible string values are:
  /// - "RELATIVE_DATE_UNSPECIFIED" : Default value, do not use.
  /// - "PAST_YEAR" : The value is one year before today.
  /// - "PAST_MONTH" : The value is one month before today.
  /// - "PAST_WEEK" : The value is one week before today.
  /// - "YESTERDAY" : The value is yesterday.
  /// - "TODAY" : The value is today.
  /// - "TOMORROW" : The value is tomorrow.
  core.String relativeDate;

  /// A value the condition is based on.
  /// The value is parsed as if the user typed into a cell.
  /// Formulas are supported (and must begin with an `=` or a '+').
  core.String userEnteredValue;

  ConditionValue();

  ConditionValue.fromJson(core.Map _json) {
    if (_json.containsKey("relativeDate")) {
      relativeDate = _json["relativeDate"];
    }
    if (_json.containsKey("userEnteredValue")) {
      userEnteredValue = _json["userEnteredValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (relativeDate != null) {
      _json["relativeDate"] = relativeDate;
    }
    if (userEnteredValue != null) {
      _json["userEnteredValue"] = userEnteredValue;
    }
    return _json;
  }
}

/// A rule describing a conditional format.
class ConditionalFormatRule {
  /// The formatting is either "on" or "off" according to the rule.
  BooleanRule booleanRule;

  /// The formatting will vary based on the gradients in the rule.
  GradientRule gradientRule;

  /// The ranges that are formatted if the condition is true.
  /// All the ranges must be on the same grid.
  core.List<GridRange> ranges;

  ConditionalFormatRule();

  ConditionalFormatRule.fromJson(core.Map _json) {
    if (_json.containsKey("booleanRule")) {
      booleanRule = new BooleanRule.fromJson(_json["booleanRule"]);
    }
    if (_json.containsKey("gradientRule")) {
      gradientRule = new GradientRule.fromJson(_json["gradientRule"]);
    }
    if (_json.containsKey("ranges")) {
      ranges = (_json["ranges"] as core.List)
          .map<GridRange>((value) => new GridRange.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanRule != null) {
      _json["booleanRule"] = (booleanRule).toJson();
    }
    if (gradientRule != null) {
      _json["gradientRule"] = (gradientRule).toJson();
    }
    if (ranges != null) {
      _json["ranges"] = ranges.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Copies data from the source to the destination.
class CopyPasteRequest {
  /// The location to paste to. If the range covers a span that's
  /// a multiple of the source's height or width, then the
  /// data will be repeated to fill in the destination range.
  /// If the range is smaller than the source range, the entire
  /// source data will still be copied (beyond the end of the destination
  /// range).
  GridRange destination;

  /// How that data should be oriented when pasting.
  /// Possible string values are:
  /// - "NORMAL" : Paste normally.
  /// - "TRANSPOSE" : Paste transposed, where all rows become columns and vice
  /// versa.
  core.String pasteOrientation;

  /// What kind of data to paste.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like PASTE_NORMAL but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String pasteType;

  /// The source range to copy.
  GridRange source;

  CopyPasteRequest();

  CopyPasteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = new GridRange.fromJson(_json["destination"]);
    }
    if (_json.containsKey("pasteOrientation")) {
      pasteOrientation = _json["pasteOrientation"];
    }
    if (_json.containsKey("pasteType")) {
      pasteType = _json["pasteType"];
    }
    if (_json.containsKey("source")) {
      source = new GridRange.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destination != null) {
      _json["destination"] = (destination).toJson();
    }
    if (pasteOrientation != null) {
      _json["pasteOrientation"] = pasteOrientation;
    }
    if (pasteType != null) {
      _json["pasteType"] = pasteType;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// The request to copy a sheet across spreadsheets.
class CopySheetToAnotherSpreadsheetRequest {
  /// The ID of the spreadsheet to copy the sheet to.
  core.String destinationSpreadsheetId;

  CopySheetToAnotherSpreadsheetRequest();

  CopySheetToAnotherSpreadsheetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destinationSpreadsheetId")) {
      destinationSpreadsheetId = _json["destinationSpreadsheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationSpreadsheetId != null) {
      _json["destinationSpreadsheetId"] = destinationSpreadsheetId;
    }
    return _json;
  }
}

/// A request to create developer metadata.
class CreateDeveloperMetadataRequest {
  /// The developer metadata to create.
  DeveloperMetadata developerMetadata;

  CreateDeveloperMetadataRequest();

  CreateDeveloperMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("developerMetadata")) {
      developerMetadata =
          new DeveloperMetadata.fromJson(_json["developerMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (developerMetadata != null) {
      _json["developerMetadata"] = (developerMetadata).toJson();
    }
    return _json;
  }
}

/// The response from creating developer metadata.
class CreateDeveloperMetadataResponse {
  /// The developer metadata that was created.
  DeveloperMetadata developerMetadata;

  CreateDeveloperMetadataResponse();

  CreateDeveloperMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey("developerMetadata")) {
      developerMetadata =
          new DeveloperMetadata.fromJson(_json["developerMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (developerMetadata != null) {
      _json["developerMetadata"] = (developerMetadata).toJson();
    }
    return _json;
  }
}

/// Moves data from the source to the destination.
class CutPasteRequest {
  /// The top-left coordinate where the data should be pasted.
  GridCoordinate destination;

  /// What kind of data to paste.  All the source data will be cut, regardless
  /// of what is pasted.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like PASTE_NORMAL but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String pasteType;

  /// The source data to cut.
  GridRange source;

  CutPasteRequest();

  CutPasteRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = new GridCoordinate.fromJson(_json["destination"]);
    }
    if (_json.containsKey("pasteType")) {
      pasteType = _json["pasteType"];
    }
    if (_json.containsKey("source")) {
      source = new GridRange.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destination != null) {
      _json["destination"] = (destination).toJson();
    }
    if (pasteType != null) {
      _json["pasteType"] = pasteType;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// Filter that describes what data should be selected or returned from a
/// request.
class DataFilter {
  /// Selects data that matches the specified A1 range.
  core.String a1Range;

  /// Selects data associated with the developer metadata matching the criteria
  /// described by this DeveloperMetadataLookup.
  DeveloperMetadataLookup developerMetadataLookup;

  /// Selects data that matches the range described by the GridRange.
  GridRange gridRange;

  DataFilter();

  DataFilter.fromJson(core.Map _json) {
    if (_json.containsKey("a1Range")) {
      a1Range = _json["a1Range"];
    }
    if (_json.containsKey("developerMetadataLookup")) {
      developerMetadataLookup = new DeveloperMetadataLookup.fromJson(
          _json["developerMetadataLookup"]);
    }
    if (_json.containsKey("gridRange")) {
      gridRange = new GridRange.fromJson(_json["gridRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (a1Range != null) {
      _json["a1Range"] = a1Range;
    }
    if (developerMetadataLookup != null) {
      _json["developerMetadataLookup"] = (developerMetadataLookup).toJson();
    }
    if (gridRange != null) {
      _json["gridRange"] = (gridRange).toJson();
    }
    return _json;
  }
}

/// A range of values whose location is specified by a DataFilter.
class DataFilterValueRange {
  /// The data filter describing the location of the values in the spreadsheet.
  DataFilter dataFilter;

  /// The major dimension of the values.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String majorDimension;

  /// The data to be written.  If the provided values exceed any of the ranges
  /// matched by the data filter then the request will fail.  If the provided
  /// values are less than the matched ranges only the specified values will be
  /// written, existing values in the matched ranges will remain unaffected.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> values;

  DataFilterValueRange();

  DataFilterValueRange.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilter")) {
      dataFilter = new DataFilter.fromJson(_json["dataFilter"]);
    }
    if (_json.containsKey("majorDimension")) {
      majorDimension = _json["majorDimension"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilter != null) {
      _json["dataFilter"] = (dataFilter).toJson();
    }
    if (majorDimension != null) {
      _json["majorDimension"] = majorDimension;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// A data validation rule.
class DataValidationRule {
  /// The condition that data in the cell must match.
  BooleanCondition condition;

  /// A message to show the user when adding data to the cell.
  core.String inputMessage;

  /// True if the UI should be customized based on the kind of condition.
  /// If true, "List" conditions will show a dropdown.
  core.bool showCustomUi;

  /// True if invalid data should be rejected.
  core.bool strict;

  DataValidationRule();

  DataValidationRule.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new BooleanCondition.fromJson(_json["condition"]);
    }
    if (_json.containsKey("inputMessage")) {
      inputMessage = _json["inputMessage"];
    }
    if (_json.containsKey("showCustomUi")) {
      showCustomUi = _json["showCustomUi"];
    }
    if (_json.containsKey("strict")) {
      strict = _json["strict"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (inputMessage != null) {
      _json["inputMessage"] = inputMessage;
    }
    if (showCustomUi != null) {
      _json["showCustomUi"] = showCustomUi;
    }
    if (strict != null) {
      _json["strict"] = strict;
    }
    return _json;
  }
}

/// Allows you to organize the date-time values in a source data column into
/// buckets based on selected parts of their date or time values. For example,
/// consider a pivot table showing sales transactions by date:
///
///     +----------+--------------+
///     | Date     | SUM of Sales |
///     +----------+--------------+
///     | 1/1/2017 |      $621.14 |
///     | 2/3/2017 |      $708.84 |
///     | 5/8/2017 |      $326.84 |
///     ...
///     +----------+--------------+
/// Applying a date-time group rule with a DateTimeRuleType of YEAR_MONTH
/// results in the following pivot table.
///
///     +--------------+--------------+
///     | Grouped Date | SUM of Sales |
///     +--------------+--------------+
///     | 2017-Jan     |   $53,731.78 |
///     | 2017-Feb     |   $83,475.32 |
///     | 2017-Mar     |   $94,385.05 |
///     ...
///     +--------------+--------------+
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
  /// system, for example 7:45
  /// PM. The AM/PM designation is translated based on the spreadsheet
  /// locale.
  /// - "DAY_OF_WEEK" : Group dates by day of week, for example Sunday. The days
  /// of the week will
  /// be translated based on the spreadsheet locale.
  /// - "DAY_OF_YEAR" : Group dates by day of year, from 1 to 366. Note that
  /// dates after Feb. 29
  /// fall in different buckets in leap years than in non-leap years.
  /// - "DAY_OF_MONTH" : Group dates by day of month, from 1 to 31.
  /// - "DAY_MONTH" : Group dates by day and month, for example 22-Nov. The
  /// month is
  /// translated based on the spreadsheet locale.
  /// - "MONTH" : Group dates by month, for example Nov. The month is translated
  /// based
  /// on the spreadsheet locale.
  /// - "QUARTER" : Group dates by quarter, for example Q1 (which represents
  /// Jan-Mar).
  /// - "YEAR" : Group dates by year, for example 2008.
  /// - "YEAR_MONTH" : Group dates by year and month, for example 2008-Nov. The
  /// month is
  /// translated based on the spreadsheet locale.
  /// - "YEAR_QUARTER" : Group dates by year and quarter, for example 2008 Q4.
  /// - "YEAR_MONTH_DAY" : Group dates by year, month, and day, for example
  /// 2008-11-22.
  core.String type;

  DateTimeRule();

  DateTimeRule.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Removes the banded range with the given ID from the spreadsheet.
class DeleteBandingRequest {
  /// The ID of the banded range to delete.
  core.int bandedRangeId;

  DeleteBandingRequest();

  DeleteBandingRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRangeId")) {
      bandedRangeId = _json["bandedRangeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRangeId != null) {
      _json["bandedRangeId"] = bandedRangeId;
    }
    return _json;
  }
}

/// Deletes a conditional format rule at the given index.
/// All subsequent rules' indexes are decremented.
class DeleteConditionalFormatRuleRequest {
  /// The zero-based index of the rule to be deleted.
  core.int index;

  /// The sheet the rule is being deleted from.
  core.int sheetId;

  DeleteConditionalFormatRuleRequest();

  DeleteConditionalFormatRuleRequest.fromJson(core.Map _json) {
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (index != null) {
      _json["index"] = index;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// The result of deleting a conditional format rule.
class DeleteConditionalFormatRuleResponse {
  /// The rule that was deleted.
  ConditionalFormatRule rule;

  DeleteConditionalFormatRuleResponse();

  DeleteConditionalFormatRuleResponse.fromJson(core.Map _json) {
    if (_json.containsKey("rule")) {
      rule = new ConditionalFormatRule.fromJson(_json["rule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rule != null) {
      _json["rule"] = (rule).toJson();
    }
    return _json;
  }
}

/// A request to delete developer metadata.
class DeleteDeveloperMetadataRequest {
  /// The data filter describing the criteria used to select which developer
  /// metadata entry to delete.
  DataFilter dataFilter;

  DeleteDeveloperMetadataRequest();

  DeleteDeveloperMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilter")) {
      dataFilter = new DataFilter.fromJson(_json["dataFilter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilter != null) {
      _json["dataFilter"] = (dataFilter).toJson();
    }
    return _json;
  }
}

/// The response from deleting developer metadata.
class DeleteDeveloperMetadataResponse {
  /// The metadata that was deleted.
  core.List<DeveloperMetadata> deletedDeveloperMetadata;

  DeleteDeveloperMetadataResponse();

  DeleteDeveloperMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deletedDeveloperMetadata")) {
      deletedDeveloperMetadata =
          (_json["deletedDeveloperMetadata"] as core.List)
              .map<DeveloperMetadata>(
                  (value) => new DeveloperMetadata.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deletedDeveloperMetadata != null) {
      _json["deletedDeveloperMetadata"] =
          deletedDeveloperMetadata.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Deletes a group over the specified range by decrementing the depth of the
/// dimensions in the range.
///
/// For example, assume the sheet has a depth-1 group over B:E and a depth-2
/// group over C:D. Deleting a group over D:E leaves the sheet with a
/// depth-1 group over B:D and a depth-2 group over C:C.
class DeleteDimensionGroupRequest {
  /// The range of the group to be deleted.
  DimensionRange range;

  DeleteDimensionGroupRequest();

  DeleteDimensionGroupRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// The result of deleting a group.
class DeleteDimensionGroupResponse {
  /// All groups of a dimension after deleting a group from that dimension.
  core.List<DimensionGroup> dimensionGroups;

  DeleteDimensionGroupResponse();

  DeleteDimensionGroupResponse.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionGroups")) {
      dimensionGroups = (_json["dimensionGroups"] as core.List)
          .map<DimensionGroup>((value) => new DimensionGroup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensionGroups != null) {
      _json["dimensionGroups"] =
          dimensionGroups.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Deletes the dimensions from the sheet.
class DeleteDimensionRequest {
  /// The dimensions to delete from the sheet.
  DimensionRange range;

  DeleteDimensionRequest();

  DeleteDimensionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Deletes the embedded object with the given ID.
class DeleteEmbeddedObjectRequest {
  /// The ID of the embedded object to delete.
  core.int objectId;

  DeleteEmbeddedObjectRequest();

  DeleteEmbeddedObjectRequest.fromJson(core.Map _json) {
    if (_json.containsKey("objectId")) {
      objectId = _json["objectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (objectId != null) {
      _json["objectId"] = objectId;
    }
    return _json;
  }
}

/// Deletes a particular filter view.
class DeleteFilterViewRequest {
  /// The ID of the filter to delete.
  core.int filterId;

  DeleteFilterViewRequest();

  DeleteFilterViewRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filterId")) {
      filterId = _json["filterId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterId != null) {
      _json["filterId"] = filterId;
    }
    return _json;
  }
}

/// Removes the named range with the given ID from the spreadsheet.
class DeleteNamedRangeRequest {
  /// The ID of the named range to delete.
  core.String namedRangeId;

  DeleteNamedRangeRequest();

  DeleteNamedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("namedRangeId")) {
      namedRangeId = _json["namedRangeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (namedRangeId != null) {
      _json["namedRangeId"] = namedRangeId;
    }
    return _json;
  }
}

/// Deletes the protected range with the given ID.
class DeleteProtectedRangeRequest {
  /// The ID of the protected range to delete.
  core.int protectedRangeId;

  DeleteProtectedRangeRequest();

  DeleteProtectedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("protectedRangeId")) {
      protectedRangeId = _json["protectedRangeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (protectedRangeId != null) {
      _json["protectedRangeId"] = protectedRangeId;
    }
    return _json;
  }
}

/// Deletes a range of cells, shifting other cells into the deleted area.
class DeleteRangeRequest {
  /// The range of cells to delete.
  GridRange range;

  /// The dimension from which deleted cells will be replaced with.
  /// If ROWS, existing cells will be shifted upward to
  /// replace the deleted cells. If COLUMNS, existing cells
  /// will be shifted left to replace the deleted cells.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String shiftDimension;

  DeleteRangeRequest();

  DeleteRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("shiftDimension")) {
      shiftDimension = _json["shiftDimension"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (shiftDimension != null) {
      _json["shiftDimension"] = shiftDimension;
    }
    return _json;
  }
}

/// Deletes the requested sheet.
class DeleteSheetRequest {
  /// The ID of the sheet to delete.
  core.int sheetId;

  DeleteSheetRequest();

  DeleteSheetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// Developer metadata associated with a location or object in a spreadsheet.
/// Developer metadata may be used to associate arbitrary data with various
/// parts of a spreadsheet and will remain associated at those locations as they
/// move around and the spreadsheet is edited.  For example, if developer
/// metadata is associated with row 5 and another row is then subsequently
/// inserted above row 5, that original metadata will still be associated with
/// the row it was first associated with (what is now row 6). If the associated
/// object is deleted its metadata is deleted too.
class DeveloperMetadata {
  /// The location where the metadata is associated.
  DeveloperMetadataLocation location;

  /// The spreadsheet-scoped unique ID that identifies the metadata. IDs may be
  /// specified when metadata is created, otherwise one will be randomly
  /// generated and assigned. Must be positive.
  core.int metadataId;

  /// The metadata key. There may be multiple metadata in a spreadsheet with the
  /// same key.  Developer metadata must always have a key specified.
  core.String metadataKey;

  /// Data associated with the metadata's key.
  core.String metadataValue;

  /// The metadata visibility.  Developer metadata must always have a visibility
  /// specified.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" : Default value.
  /// - "DOCUMENT" : Document-visible metadata is accessible from any developer
  /// project with
  /// access to the document.
  /// - "PROJECT" : Project-visible metadata is only visible to and accessible
  /// by the developer
  /// project that created the metadata.
  core.String visibility;

  DeveloperMetadata();

  DeveloperMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = new DeveloperMetadataLocation.fromJson(_json["location"]);
    }
    if (_json.containsKey("metadataId")) {
      metadataId = _json["metadataId"];
    }
    if (_json.containsKey("metadataKey")) {
      metadataKey = _json["metadataKey"];
    }
    if (_json.containsKey("metadataValue")) {
      metadataValue = _json["metadataValue"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (metadataId != null) {
      _json["metadataId"] = metadataId;
    }
    if (metadataKey != null) {
      _json["metadataKey"] = metadataKey;
    }
    if (metadataValue != null) {
      _json["metadataValue"] = metadataValue;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// A location where metadata may be associated in a spreadsheet.
class DeveloperMetadataLocation {
  /// Represents the row or column when metadata is associated with
  /// a dimension. The specified DimensionRange must represent a single row
  /// or column; it cannot be unbounded or span multiple rows or columns.
  DimensionRange dimensionRange;

  /// The type of location this object represents.  This field is read-only.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" : Default value.
  /// - "ROW" : Developer metadata associated on an entire row dimension.
  /// - "COLUMN" : Developer metadata associated on an entire column dimension.
  /// - "SHEET" : Developer metadata associated on an entire sheet.
  /// - "SPREADSHEET" : Developer metadata associated on the entire spreadsheet.
  core.String locationType;

  /// The ID of the sheet when metadata is associated with an entire sheet.
  core.int sheetId;

  /// True when metadata is associated with an entire spreadsheet.
  core.bool spreadsheet;

  DeveloperMetadataLocation();

  DeveloperMetadataLocation.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionRange")) {
      dimensionRange = new DimensionRange.fromJson(_json["dimensionRange"]);
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
    if (_json.containsKey("spreadsheet")) {
      spreadsheet = _json["spreadsheet"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensionRange != null) {
      _json["dimensionRange"] = (dimensionRange).toJson();
    }
    if (locationType != null) {
      _json["locationType"] = locationType;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    if (spreadsheet != null) {
      _json["spreadsheet"] = spreadsheet;
    }
    return _json;
  }
}

/// Selects DeveloperMetadata that matches all of the specified fields.  For
/// example, if only a metadata ID is specified this considers the
/// DeveloperMetadata with that particular unique ID. If a metadata key is
/// specified, this considers all developer metadata with that key.  If a
/// key, visibility, and location type are all specified, this considers all
/// developer metadata with that key and visibility that are associated with a
/// location of that type.  In general, this
/// selects all DeveloperMetadata that matches the intersection of all the
/// specified fields; any field or combination of fields may be specified.
class DeveloperMetadataLookup {
  /// Determines how this lookup matches the location.  If this field is
  /// specified as EXACT, only developer metadata associated on the exact
  /// location specified is matched.  If this field is specified to
  /// INTERSECTING,
  /// developer metadata associated on intersecting locations is also
  /// matched.  If left unspecified, this field assumes a default value of
  /// INTERSECTING.
  /// If this field is specified, a metadataLocation
  /// must also be specified.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED" : Default
  /// value. This value must not be used.
  /// - "EXACT_LOCATION" : Indicates that a specified location should be matched
  /// exactly.  For
  /// example, if row three were specified as a location this matching strategy
  /// would only match developer metadata also associated on row three.
  /// Metadata
  /// associated on other locations would not be considered.
  /// - "INTERSECTING_LOCATION" : Indicates that a specified location should
  /// match that exact location as
  /// well as any intersecting locations.  For example, if row three were
  /// specified as a location this matching strategy would match developer
  /// metadata associated on row three as well as metadata associated on
  /// locations that intersect row three.  If, for instance, there was developer
  /// metadata associated on column B, this matching strategy would also match
  /// that location because column B intersects row three.
  core.String locationMatchingStrategy;

  /// Limits the selected developer metadata to those entries which are
  /// associated with locations of the specified type.  For example, when this
  /// field is specified as ROW this lookup
  /// only considers developer metadata associated on rows.  If the field is
  /// left
  /// unspecified, all location types are considered.  This field cannot be
  /// specified as SPREADSHEET when
  /// the locationMatchingStrategy
  /// is specified as INTERSECTING or when the
  /// metadataLocation is specified as a
  /// non-spreadsheet location: spreadsheet metadata cannot intersect any other
  /// developer metadata location.  This field also must be left unspecified
  /// when
  /// the locationMatchingStrategy
  /// is specified as EXACT.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" : Default value.
  /// - "ROW" : Developer metadata associated on an entire row dimension.
  /// - "COLUMN" : Developer metadata associated on an entire column dimension.
  /// - "SHEET" : Developer metadata associated on an entire sheet.
  /// - "SPREADSHEET" : Developer metadata associated on the entire spreadsheet.
  core.String locationType;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_id.
  core.int metadataId;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_key.
  core.String metadataKey;

  /// Limits the selected developer metadata to those entries associated with
  /// the specified location.  This field either matches exact locations or all
  /// intersecting locations according the specified
  /// locationMatchingStrategy.
  DeveloperMetadataLocation metadataLocation;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.metadata_value.
  core.String metadataValue;

  /// Limits the selected developer metadata to that which has a matching
  /// DeveloperMetadata.visibility.  If left unspecified, all developer
  /// metadata visibile to the requesting project is considered.
  /// Possible string values are:
  /// - "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" : Default value.
  /// - "DOCUMENT" : Document-visible metadata is accessible from any developer
  /// project with
  /// access to the document.
  /// - "PROJECT" : Project-visible metadata is only visible to and accessible
  /// by the developer
  /// project that created the metadata.
  core.String visibility;

  DeveloperMetadataLookup();

  DeveloperMetadataLookup.fromJson(core.Map _json) {
    if (_json.containsKey("locationMatchingStrategy")) {
      locationMatchingStrategy = _json["locationMatchingStrategy"];
    }
    if (_json.containsKey("locationType")) {
      locationType = _json["locationType"];
    }
    if (_json.containsKey("metadataId")) {
      metadataId = _json["metadataId"];
    }
    if (_json.containsKey("metadataKey")) {
      metadataKey = _json["metadataKey"];
    }
    if (_json.containsKey("metadataLocation")) {
      metadataLocation =
          new DeveloperMetadataLocation.fromJson(_json["metadataLocation"]);
    }
    if (_json.containsKey("metadataValue")) {
      metadataValue = _json["metadataValue"];
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locationMatchingStrategy != null) {
      _json["locationMatchingStrategy"] = locationMatchingStrategy;
    }
    if (locationType != null) {
      _json["locationType"] = locationType;
    }
    if (metadataId != null) {
      _json["metadataId"] = metadataId;
    }
    if (metadataKey != null) {
      _json["metadataKey"] = metadataKey;
    }
    if (metadataLocation != null) {
      _json["metadataLocation"] = (metadataLocation).toJson();
    }
    if (metadataValue != null) {
      _json["metadataValue"] = metadataValue;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// A group over an interval of rows or columns on a sheet, which can contain or
/// be contained within other groups. A group can be collapsed or expanded as a
/// unit on the sheet.
class DimensionGroup {
  /// This field is true if this group is collapsed. A collapsed group remains
  /// collapsed if an overlapping group at a shallower depth is expanded.
  ///
  /// A true value does not imply that all dimensions within the group are
  /// hidden, since a dimension's visibility can change independently from this
  /// group property. However, when this property is updated, all dimensions
  /// within it are set to hidden if this field is true, or set to visible if
  /// this field is false.
  core.bool collapsed;

  /// The depth of the group, representing how many groups have a range that
  /// wholly contains the range of this group.
  core.int depth;

  /// The range over which this group exists.
  DimensionRange range;

  DimensionGroup();

  DimensionGroup.fromJson(core.Map _json) {
    if (_json.containsKey("collapsed")) {
      collapsed = _json["collapsed"];
    }
    if (_json.containsKey("depth")) {
      depth = _json["depth"];
    }
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collapsed != null) {
      _json["collapsed"] = collapsed;
    }
    if (depth != null) {
      _json["depth"] = depth;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Properties about a dimension.
class DimensionProperties {
  /// The developer metadata associated with a single row or column.
  core.List<DeveloperMetadata> developerMetadata;

  /// True if this dimension is being filtered.
  /// This field is read-only.
  core.bool hiddenByFilter;

  /// True if this dimension is explicitly hidden.
  core.bool hiddenByUser;

  /// The height (if a row) or width (if a column) of the dimension in pixels.
  core.int pixelSize;

  DimensionProperties();

  DimensionProperties.fromJson(core.Map _json) {
    if (_json.containsKey("developerMetadata")) {
      developerMetadata = (_json["developerMetadata"] as core.List)
          .map<DeveloperMetadata>(
              (value) => new DeveloperMetadata.fromJson(value))
          .toList();
    }
    if (_json.containsKey("hiddenByFilter")) {
      hiddenByFilter = _json["hiddenByFilter"];
    }
    if (_json.containsKey("hiddenByUser")) {
      hiddenByUser = _json["hiddenByUser"];
    }
    if (_json.containsKey("pixelSize")) {
      pixelSize = _json["pixelSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (developerMetadata != null) {
      _json["developerMetadata"] =
          developerMetadata.map((value) => (value).toJson()).toList();
    }
    if (hiddenByFilter != null) {
      _json["hiddenByFilter"] = hiddenByFilter;
    }
    if (hiddenByUser != null) {
      _json["hiddenByUser"] = hiddenByUser;
    }
    if (pixelSize != null) {
      _json["pixelSize"] = pixelSize;
    }
    return _json;
  }
}

/// A range along a single dimension on a sheet.
/// All indexes are zero-based.
/// Indexes are half open: the start index is inclusive
/// and the end index is exclusive.
/// Missing indexes indicate the range is unbounded on that side.
class DimensionRange {
  /// The dimension of the span.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String dimension;

  /// The end (exclusive) of the span, or not set if unbounded.
  core.int endIndex;

  /// The sheet this span is on.
  core.int sheetId;

  /// The start (inclusive) of the span, or not set if unbounded.
  core.int startIndex;

  DimensionRange();

  DimensionRange.fromJson(core.Map _json) {
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("endIndex")) {
      endIndex = _json["endIndex"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (endIndex != null) {
      _json["endIndex"] = endIndex;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    return _json;
  }
}

/// Duplicates a particular filter view.
class DuplicateFilterViewRequest {
  /// The ID of the filter being duplicated.
  core.int filterId;

  DuplicateFilterViewRequest();

  DuplicateFilterViewRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filterId")) {
      filterId = _json["filterId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterId != null) {
      _json["filterId"] = filterId;
    }
    return _json;
  }
}

/// The result of a filter view being duplicated.
class DuplicateFilterViewResponse {
  /// The newly created filter.
  FilterView filter;

  DuplicateFilterViewResponse();

  DuplicateFilterViewResponse.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = new FilterView.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// Duplicates the contents of a sheet.
class DuplicateSheetRequest {
  /// The zero-based index where the new sheet should be inserted.
  /// The index of all sheets after this are incremented.
  core.int insertSheetIndex;

  /// If set, the ID of the new sheet. If not set, an ID is chosen.
  /// If set, the ID must not conflict with any existing sheet ID.
  /// If set, it must be non-negative.
  core.int newSheetId;

  /// The name of the new sheet.  If empty, a new name is chosen for you.
  core.String newSheetName;

  /// The sheet to duplicate.
  core.int sourceSheetId;

  DuplicateSheetRequest();

  DuplicateSheetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("insertSheetIndex")) {
      insertSheetIndex = _json["insertSheetIndex"];
    }
    if (_json.containsKey("newSheetId")) {
      newSheetId = _json["newSheetId"];
    }
    if (_json.containsKey("newSheetName")) {
      newSheetName = _json["newSheetName"];
    }
    if (_json.containsKey("sourceSheetId")) {
      sourceSheetId = _json["sourceSheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (insertSheetIndex != null) {
      _json["insertSheetIndex"] = insertSheetIndex;
    }
    if (newSheetId != null) {
      _json["newSheetId"] = newSheetId;
    }
    if (newSheetName != null) {
      _json["newSheetName"] = newSheetName;
    }
    if (sourceSheetId != null) {
      _json["sourceSheetId"] = sourceSheetId;
    }
    return _json;
  }
}

/// The result of duplicating a sheet.
class DuplicateSheetResponse {
  /// The properties of the duplicate sheet.
  SheetProperties properties;

  DuplicateSheetResponse();

  DuplicateSheetResponse.fromJson(core.Map _json) {
    if (_json.containsKey("properties")) {
      properties = new SheetProperties.fromJson(_json["properties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    return _json;
  }
}

/// The editors of a protected range.
class Editors {
  /// True if anyone in the document's domain has edit access to the protected
  /// range.  Domain protection is only supported on documents within a domain.
  core.bool domainUsersCanEdit;

  /// The email addresses of groups with edit access to the protected range.
  core.List<core.String> groups;

  /// The email addresses of users with edit access to the protected range.
  core.List<core.String> users;

  Editors();

  Editors.fromJson(core.Map _json) {
    if (_json.containsKey("domainUsersCanEdit")) {
      domainUsersCanEdit = _json["domainUsersCanEdit"];
    }
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("users")) {
      users = (_json["users"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainUsersCanEdit != null) {
      _json["domainUsersCanEdit"] = domainUsersCanEdit;
    }
    if (groups != null) {
      _json["groups"] = groups;
    }
    if (users != null) {
      _json["users"] = users;
    }
    return _json;
  }
}

/// A chart embedded in a sheet.
class EmbeddedChart {
  /// The ID of the chart.
  core.int chartId;

  /// The position of the chart.
  EmbeddedObjectPosition position;

  /// The specification of the chart.
  ChartSpec spec;

  EmbeddedChart();

  EmbeddedChart.fromJson(core.Map _json) {
    if (_json.containsKey("chartId")) {
      chartId = _json["chartId"];
    }
    if (_json.containsKey("position")) {
      position = new EmbeddedObjectPosition.fromJson(_json["position"]);
    }
    if (_json.containsKey("spec")) {
      spec = new ChartSpec.fromJson(_json["spec"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chartId != null) {
      _json["chartId"] = chartId;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (spec != null) {
      _json["spec"] = (spec).toJson();
    }
    return _json;
  }
}

/// The position of an embedded object such as a chart.
class EmbeddedObjectPosition {
  /// If true, the embedded object is put on a new sheet whose ID
  /// is chosen for you. Used only when writing.
  core.bool newSheet;

  /// The position at which the object is overlaid on top of a grid.
  OverlayPosition overlayPosition;

  /// The sheet this is on. Set only if the embedded object
  /// is on its own sheet. Must be non-negative.
  core.int sheetId;

  EmbeddedObjectPosition();

  EmbeddedObjectPosition.fromJson(core.Map _json) {
    if (_json.containsKey("newSheet")) {
      newSheet = _json["newSheet"];
    }
    if (_json.containsKey("overlayPosition")) {
      overlayPosition = new OverlayPosition.fromJson(_json["overlayPosition"]);
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newSheet != null) {
      _json["newSheet"] = newSheet;
    }
    if (overlayPosition != null) {
      _json["overlayPosition"] = (overlayPosition).toJson();
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// An error in a cell.
class ErrorValue {
  /// A message with more information about the error
  /// (in the spreadsheet's locale).
  core.String message;

  /// The type of error.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : The default error type, do not use this.
  /// - "ERROR" : Corresponds to the `#ERROR!` error.
  /// - "NULL_VALUE" : Corresponds to the `#NULL!` error.
  /// - "DIVIDE_BY_ZERO" : Corresponds to the `#DIV/0` error.
  /// - "VALUE" : Corresponds to the `#VALUE!` error.
  /// - "REF" : Corresponds to the `#REF!` error.
  /// - "NAME" : Corresponds to the `#NAME?` error.
  /// - "NUM" : Corresponds to the `#NUM`! error.
  /// - "N_A" : Corresponds to the `#N/A` error.
  /// - "LOADING" : Corresponds to the `Loading...` state.
  core.String type;

  ErrorValue();

  ErrorValue.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = message;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The kinds of value that a cell in a spreadsheet can have.
class ExtendedValue {
  /// Represents a boolean value.
  core.bool boolValue;

  /// Represents an error.
  /// This field is read-only.
  ErrorValue errorValue;

  /// Represents a formula.
  core.String formulaValue;

  /// Represents a double value.
  /// Note: Dates, Times and DateTimes are represented as doubles in
  /// "serial number" format.
  core.double numberValue;

  /// Represents a string value.
  /// Leading single quotes are not included. For example, if the user typed
  /// `'123` into the UI, this would be represented as a `stringValue` of
  /// `"123"`.
  core.String stringValue;

  ExtendedValue();

  ExtendedValue.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("errorValue")) {
      errorValue = new ErrorValue.fromJson(_json["errorValue"]);
    }
    if (_json.containsKey("formulaValue")) {
      formulaValue = _json["formulaValue"];
    }
    if (_json.containsKey("numberValue")) {
      numberValue = _json["numberValue"].toDouble();
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (errorValue != null) {
      _json["errorValue"] = (errorValue).toJson();
    }
    if (formulaValue != null) {
      _json["formulaValue"] = formulaValue;
    }
    if (numberValue != null) {
      _json["numberValue"] = numberValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// Criteria for showing/hiding rows in a filter or filter view.
class FilterCriteria {
  /// A condition that must be true for values to be shown.
  /// (This does not override hiddenValues -- if a value is listed there,
  ///  it will still be hidden.)
  BooleanCondition condition;

  /// Values that should be hidden.
  core.List<core.String> hiddenValues;

  FilterCriteria();

  FilterCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new BooleanCondition.fromJson(_json["condition"]);
    }
    if (_json.containsKey("hiddenValues")) {
      hiddenValues = (_json["hiddenValues"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (hiddenValues != null) {
      _json["hiddenValues"] = hiddenValues;
    }
    return _json;
  }
}

/// A filter view.
class FilterView {
  /// The criteria for showing/hiding values per column.
  /// The map's key is the column index, and the value is the criteria for
  /// that column.
  core.Map<core.String, FilterCriteria> criteria;

  /// The ID of the filter view.
  core.int filterViewId;

  /// The named range this filter view is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id
  /// may be set.
  core.String namedRangeId;

  /// The range this filter view covers.
  ///
  /// When writing, only one of range or named_range_id
  /// may be set.
  GridRange range;

  /// The sort order per column. Later specifications are used when values
  /// are equal in the earlier specifications.
  core.List<SortSpec> sortSpecs;

  /// The name of the filter view.
  core.String title;

  FilterView();

  FilterView.fromJson(core.Map _json) {
    if (_json.containsKey("criteria")) {
      criteria = commons.mapMap<core.Map, FilterCriteria>(
          _json["criteria"].cast<core.String, core.Map>(),
          (core.Map item) => new FilterCriteria.fromJson(item));
    }
    if (_json.containsKey("filterViewId")) {
      filterViewId = _json["filterViewId"];
    }
    if (_json.containsKey("namedRangeId")) {
      namedRangeId = _json["namedRangeId"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("sortSpecs")) {
      sortSpecs = (_json["sortSpecs"] as core.List)
          .map<SortSpec>((value) => new SortSpec.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (criteria != null) {
      _json["criteria"] =
          commons.mapMap<FilterCriteria, core.Map<core.String, core.Object>>(
              criteria, (FilterCriteria item) => (item).toJson());
    }
    if (filterViewId != null) {
      _json["filterViewId"] = filterViewId;
    }
    if (namedRangeId != null) {
      _json["namedRangeId"] = namedRangeId;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (sortSpecs != null) {
      _json["sortSpecs"] = sortSpecs.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Finds and replaces data in cells over a range, sheet, or all sheets.
class FindReplaceRequest {
  /// True to find/replace over all sheets.
  core.bool allSheets;

  /// The value to search.
  core.String find;

  /// True if the search should include cells with formulas.
  /// False to skip cells with formulas.
  core.bool includeFormulas;

  /// True if the search is case sensitive.
  core.bool matchCase;

  /// True if the find value should match the entire cell.
  core.bool matchEntireCell;

  /// The range to find/replace over.
  GridRange range;

  /// The value to use as the replacement.
  core.String replacement;

  /// True if the find value is a regex.
  /// The regular expression and replacement should follow Java regex rules
  /// at https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html.
  /// The replacement string is allowed to refer to capturing groups.
  /// For example, if one cell has the contents `"Google Sheets"` and another
  /// has `"Google Docs"`, then searching for `"o.* (.*)"` with a replacement of
  /// `"$1 Rocks"` would change the contents of the cells to
  /// `"GSheets Rocks"` and `"GDocs Rocks"` respectively.
  core.bool searchByRegex;

  /// The sheet to find/replace over.
  core.int sheetId;

  FindReplaceRequest();

  FindReplaceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("allSheets")) {
      allSheets = _json["allSheets"];
    }
    if (_json.containsKey("find")) {
      find = _json["find"];
    }
    if (_json.containsKey("includeFormulas")) {
      includeFormulas = _json["includeFormulas"];
    }
    if (_json.containsKey("matchCase")) {
      matchCase = _json["matchCase"];
    }
    if (_json.containsKey("matchEntireCell")) {
      matchEntireCell = _json["matchEntireCell"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("replacement")) {
      replacement = _json["replacement"];
    }
    if (_json.containsKey("searchByRegex")) {
      searchByRegex = _json["searchByRegex"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allSheets != null) {
      _json["allSheets"] = allSheets;
    }
    if (find != null) {
      _json["find"] = find;
    }
    if (includeFormulas != null) {
      _json["includeFormulas"] = includeFormulas;
    }
    if (matchCase != null) {
      _json["matchCase"] = matchCase;
    }
    if (matchEntireCell != null) {
      _json["matchEntireCell"] = matchEntireCell;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (replacement != null) {
      _json["replacement"] = replacement;
    }
    if (searchByRegex != null) {
      _json["searchByRegex"] = searchByRegex;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// The result of the find/replace.
class FindReplaceResponse {
  /// The number of formula cells changed.
  core.int formulasChanged;

  /// The number of occurrences (possibly multiple within a cell) changed.
  /// For example, if replacing `"e"` with `"o"` in `"Google Sheets"`, this
  /// would
  /// be `"3"` because `"Google Sheets"` -> `"Googlo Shoots"`.
  core.int occurrencesChanged;

  /// The number of rows changed.
  core.int rowsChanged;

  /// The number of sheets changed.
  core.int sheetsChanged;

  /// The number of non-formula cells changed.
  core.int valuesChanged;

  FindReplaceResponse();

  FindReplaceResponse.fromJson(core.Map _json) {
    if (_json.containsKey("formulasChanged")) {
      formulasChanged = _json["formulasChanged"];
    }
    if (_json.containsKey("occurrencesChanged")) {
      occurrencesChanged = _json["occurrencesChanged"];
    }
    if (_json.containsKey("rowsChanged")) {
      rowsChanged = _json["rowsChanged"];
    }
    if (_json.containsKey("sheetsChanged")) {
      sheetsChanged = _json["sheetsChanged"];
    }
    if (_json.containsKey("valuesChanged")) {
      valuesChanged = _json["valuesChanged"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (formulasChanged != null) {
      _json["formulasChanged"] = formulasChanged;
    }
    if (occurrencesChanged != null) {
      _json["occurrencesChanged"] = occurrencesChanged;
    }
    if (rowsChanged != null) {
      _json["rowsChanged"] = rowsChanged;
    }
    if (sheetsChanged != null) {
      _json["sheetsChanged"] = sheetsChanged;
    }
    if (valuesChanged != null) {
      _json["valuesChanged"] = valuesChanged;
    }
    return _json;
  }
}

/// The request for retrieving a Spreadsheet.
class GetSpreadsheetByDataFilterRequest {
  /// The DataFilters used to select which ranges to retrieve from
  /// the spreadsheet.
  core.List<DataFilter> dataFilters;

  /// True if grid data should be returned.
  /// This parameter is ignored if a field mask was set in the request.
  core.bool includeGridData;

  GetSpreadsheetByDataFilterRequest();

  GetSpreadsheetByDataFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("includeGridData")) {
      includeGridData = _json["includeGridData"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    if (includeGridData != null) {
      _json["includeGridData"] = includeGridData;
    }
    return _json;
  }
}

/// A rule that applies a gradient color scale format, based on
/// the interpolation points listed. The format of a cell will vary
/// based on its contents as compared to the values of the interpolation
/// points.
class GradientRule {
  /// The final interpolation point.
  InterpolationPoint maxpoint;

  /// An optional midway interpolation point.
  InterpolationPoint midpoint;

  /// The starting interpolation point.
  InterpolationPoint minpoint;

  GradientRule();

  GradientRule.fromJson(core.Map _json) {
    if (_json.containsKey("maxpoint")) {
      maxpoint = new InterpolationPoint.fromJson(_json["maxpoint"]);
    }
    if (_json.containsKey("midpoint")) {
      midpoint = new InterpolationPoint.fromJson(_json["midpoint"]);
    }
    if (_json.containsKey("minpoint")) {
      minpoint = new InterpolationPoint.fromJson(_json["minpoint"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxpoint != null) {
      _json["maxpoint"] = (maxpoint).toJson();
    }
    if (midpoint != null) {
      _json["midpoint"] = (midpoint).toJson();
    }
    if (minpoint != null) {
      _json["minpoint"] = (minpoint).toJson();
    }
    return _json;
  }
}

/// A coordinate in a sheet.
/// All indexes are zero-based.
class GridCoordinate {
  /// The column index of the coordinate.
  core.int columnIndex;

  /// The row index of the coordinate.
  core.int rowIndex;

  /// The sheet this coordinate is on.
  core.int sheetId;

  GridCoordinate();

  GridCoordinate.fromJson(core.Map _json) {
    if (_json.containsKey("columnIndex")) {
      columnIndex = _json["columnIndex"];
    }
    if (_json.containsKey("rowIndex")) {
      rowIndex = _json["rowIndex"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnIndex != null) {
      _json["columnIndex"] = columnIndex;
    }
    if (rowIndex != null) {
      _json["rowIndex"] = rowIndex;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// Data in the grid, as well as metadata about the dimensions.
class GridData {
  /// Metadata about the requested columns in the grid, starting with the column
  /// in start_column.
  core.List<DimensionProperties> columnMetadata;

  /// The data in the grid, one entry per row,
  /// starting with the row in startRow.
  /// The values in RowData will correspond to columns starting
  /// at start_column.
  core.List<RowData> rowData;

  /// Metadata about the requested rows in the grid, starting with the row
  /// in start_row.
  core.List<DimensionProperties> rowMetadata;

  /// The first column this GridData refers to, zero-based.
  core.int startColumn;

  /// The first row this GridData refers to, zero-based.
  core.int startRow;

  GridData();

  GridData.fromJson(core.Map _json) {
    if (_json.containsKey("columnMetadata")) {
      columnMetadata = (_json["columnMetadata"] as core.List)
          .map<DimensionProperties>(
              (value) => new DimensionProperties.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rowData")) {
      rowData = (_json["rowData"] as core.List)
          .map<RowData>((value) => new RowData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rowMetadata")) {
      rowMetadata = (_json["rowMetadata"] as core.List)
          .map<DimensionProperties>(
              (value) => new DimensionProperties.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startColumn")) {
      startColumn = _json["startColumn"];
    }
    if (_json.containsKey("startRow")) {
      startRow = _json["startRow"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnMetadata != null) {
      _json["columnMetadata"] =
          columnMetadata.map((value) => (value).toJson()).toList();
    }
    if (rowData != null) {
      _json["rowData"] = rowData.map((value) => (value).toJson()).toList();
    }
    if (rowMetadata != null) {
      _json["rowMetadata"] =
          rowMetadata.map((value) => (value).toJson()).toList();
    }
    if (startColumn != null) {
      _json["startColumn"] = startColumn;
    }
    if (startRow != null) {
      _json["startRow"] = startRow;
    }
    return _json;
  }
}

/// Properties of a grid.
class GridProperties {
  /// The number of columns in the grid.
  core.int columnCount;

  /// True if the column grouping control toggle is shown after the group.
  core.bool columnGroupControlAfter;

  /// The number of columns that are frozen in the grid.
  core.int frozenColumnCount;

  /// The number of rows that are frozen in the grid.
  core.int frozenRowCount;

  /// True if the grid isn't showing gridlines in the UI.
  core.bool hideGridlines;

  /// The number of rows in the grid.
  core.int rowCount;

  /// True if the row grouping control toggle is shown after the group.
  core.bool rowGroupControlAfter;

  GridProperties();

  GridProperties.fromJson(core.Map _json) {
    if (_json.containsKey("columnCount")) {
      columnCount = _json["columnCount"];
    }
    if (_json.containsKey("columnGroupControlAfter")) {
      columnGroupControlAfter = _json["columnGroupControlAfter"];
    }
    if (_json.containsKey("frozenColumnCount")) {
      frozenColumnCount = _json["frozenColumnCount"];
    }
    if (_json.containsKey("frozenRowCount")) {
      frozenRowCount = _json["frozenRowCount"];
    }
    if (_json.containsKey("hideGridlines")) {
      hideGridlines = _json["hideGridlines"];
    }
    if (_json.containsKey("rowCount")) {
      rowCount = _json["rowCount"];
    }
    if (_json.containsKey("rowGroupControlAfter")) {
      rowGroupControlAfter = _json["rowGroupControlAfter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columnCount != null) {
      _json["columnCount"] = columnCount;
    }
    if (columnGroupControlAfter != null) {
      _json["columnGroupControlAfter"] = columnGroupControlAfter;
    }
    if (frozenColumnCount != null) {
      _json["frozenColumnCount"] = frozenColumnCount;
    }
    if (frozenRowCount != null) {
      _json["frozenRowCount"] = frozenRowCount;
    }
    if (hideGridlines != null) {
      _json["hideGridlines"] = hideGridlines;
    }
    if (rowCount != null) {
      _json["rowCount"] = rowCount;
    }
    if (rowGroupControlAfter != null) {
      _json["rowGroupControlAfter"] = rowGroupControlAfter;
    }
    return _json;
  }
}

/// A range on a sheet.
/// All indexes are zero-based.
/// Indexes are half open, e.g the start index is inclusive
/// and the end index is exclusive -- [start_index, end_index).
/// Missing indexes indicate the range is unbounded on that side.
///
/// For example, if `"Sheet1"` is sheet ID 0, then:
///
///   `Sheet1!A1:A1 == sheet_id: 0,
///                   start_row_index: 0, end_row_index: 1,
///                   start_column_index: 0, end_column_index: 1`
///
///   `Sheet1!A3:B4 == sheet_id: 0,
///                   start_row_index: 2, end_row_index: 4,
///                   start_column_index: 0, end_column_index: 2`
///
///   `Sheet1!A:B == sheet_id: 0,
///                 start_column_index: 0, end_column_index: 2`
///
///   `Sheet1!A5:B == sheet_id: 0,
///                  start_row_index: 4,
///                  start_column_index: 0, end_column_index: 2`
///
///   `Sheet1 == sheet_id:0`
///
/// The start index must always be less than or equal to the end index.
/// If the start index equals the end index, then the range is empty.
/// Empty ranges are typically not meaningful and are usually rendered in the
/// UI as `#REF!`.
class GridRange {
  /// The end column (exclusive) of the range, or not set if unbounded.
  core.int endColumnIndex;

  /// The end row (exclusive) of the range, or not set if unbounded.
  core.int endRowIndex;

  /// The sheet this range is on.
  core.int sheetId;

  /// The start column (inclusive) of the range, or not set if unbounded.
  core.int startColumnIndex;

  /// The start row (inclusive) of the range, or not set if unbounded.
  core.int startRowIndex;

  GridRange();

  GridRange.fromJson(core.Map _json) {
    if (_json.containsKey("endColumnIndex")) {
      endColumnIndex = _json["endColumnIndex"];
    }
    if (_json.containsKey("endRowIndex")) {
      endRowIndex = _json["endRowIndex"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
    if (_json.containsKey("startColumnIndex")) {
      startColumnIndex = _json["startColumnIndex"];
    }
    if (_json.containsKey("startRowIndex")) {
      startRowIndex = _json["startRowIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endColumnIndex != null) {
      _json["endColumnIndex"] = endColumnIndex;
    }
    if (endRowIndex != null) {
      _json["endRowIndex"] = endRowIndex;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    if (startColumnIndex != null) {
      _json["startColumnIndex"] = startColumnIndex;
    }
    if (startRowIndex != null) {
      _json["startRowIndex"] = startRowIndex;
    }
    return _json;
  }
}

/// A <a href="/chart/interactive/docs/gallery/histogram">histogram chart</a>.
/// A histogram chart groups data items into bins, displaying each bin as a
/// column of stacked items.  Histograms are used to display the distribution
/// of a dataset.  Each column of items represents a range into which those
/// items fall.  The number of bins can be chosen automatically or specified
/// explicitly.
class HistogramChartSpec {
  /// By default the bucket size (the range of values stacked in a single
  /// column) is chosen automatically, but it may be overridden here.
  /// E.g., A bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0,
  /// etc.
  /// Cannot be negative.
  /// This field is optional.
  core.double bucketSize;

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
  core.String legendPosition;

  /// The outlier percentile is used to ensure that outliers do not adversely
  /// affect the calculation of bucket sizes.  For example, setting an outlier
  /// percentile of 0.05 indicates that the top and bottom 5% of values when
  /// calculating buckets.  The values are still included in the chart, they
  /// will
  /// be added to the first or last buckets instead of their own buckets.
  /// Must be between 0.0 and 0.5.
  core.double outlierPercentile;

  /// The series for a histogram may be either a single series of values to be
  /// bucketed or multiple series, each of the same length, containing the name
  /// of the series followed by the values to be bucketed for that series.
  core.List<HistogramSeries> series;

  /// Whether horizontal divider lines should be displayed between items in each
  /// column.
  core.bool showItemDividers;

  HistogramChartSpec();

  HistogramChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("bucketSize")) {
      bucketSize = _json["bucketSize"].toDouble();
    }
    if (_json.containsKey("legendPosition")) {
      legendPosition = _json["legendPosition"];
    }
    if (_json.containsKey("outlierPercentile")) {
      outlierPercentile = _json["outlierPercentile"].toDouble();
    }
    if (_json.containsKey("series")) {
      series = (_json["series"] as core.List)
          .map<HistogramSeries>((value) => new HistogramSeries.fromJson(value))
          .toList();
    }
    if (_json.containsKey("showItemDividers")) {
      showItemDividers = _json["showItemDividers"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketSize != null) {
      _json["bucketSize"] = bucketSize;
    }
    if (legendPosition != null) {
      _json["legendPosition"] = legendPosition;
    }
    if (outlierPercentile != null) {
      _json["outlierPercentile"] = outlierPercentile;
    }
    if (series != null) {
      _json["series"] = series.map((value) => (value).toJson()).toList();
    }
    if (showItemDividers != null) {
      _json["showItemDividers"] = showItemDividers;
    }
    return _json;
  }
}

/// Allows you to organize the numeric values in a source data column into
/// buckets of a constant size. All values from HistogramRule.start to
/// HistogramRule.end are placed into groups of size
/// HistogramRule.interval. In addition, all values below
/// HistogramRule.start are placed in one group, and all values above
/// HistogramRule.end are placed in another. Only
/// HistogramRule.interval is required, though if HistogramRule.start
/// and HistogramRule.end are both provided, HistogramRule.start must
/// be less than HistogramRule.end. For example, a pivot table showing
/// average purchase amount by age that has 50+ rows:
///
///     +-----+-------------------+
///     | Age | AVERAGE of Amount |
///     +-----+-------------------+
///     | 16  |            $27.13 |
///     | 17  |             $5.24 |
///     | 18  |            $20.15 |
///     ...
///     +-----+-------------------+
/// could be turned into a pivot table that looks like the one below by
/// applying a histogram group rule with a HistogramRule.start of 25,
/// an HistogramRule.interval of 20, and an HistogramRule.end
/// of 65.
///
///     +-------------+-------------------+
///     | Grouped Age | AVERAGE of Amount |
///     +-------------+-------------------+
///     | < 25        |            $19.34 |
///     | 25-45       |            $31.43 |
///     | 45-65       |            $35.87 |
///     | > 65        |            $27.55 |
///     +-------------+-------------------+
///     | Grand Total |            $29.12 |
///     +-------------+-------------------+
class HistogramRule {
  /// The maximum value at which items are placed into buckets
  /// of constant size. Values above end are lumped into a single bucket.
  /// This field is optional.
  core.double end;

  /// The size of the buckets that are created. Must be positive.
  core.double interval;

  /// The minimum value at which items are placed into buckets
  /// of constant size. Values below start are lumped into a single bucket.
  /// This field is optional.
  core.double start;

  HistogramRule();

  HistogramRule.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"].toDouble();
    }
    if (_json.containsKey("interval")) {
      interval = _json["interval"].toDouble();
    }
    if (_json.containsKey("start")) {
      start = _json["start"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (end != null) {
      _json["end"] = end;
    }
    if (interval != null) {
      _json["interval"] = interval;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/// A histogram series containing the series color and data.
class HistogramSeries {
  /// The color of the column representing this series in each bucket.
  /// This field is optional.
  Color barColor;

  /// The data for this histogram series.
  ChartData data;

  HistogramSeries();

  HistogramSeries.fromJson(core.Map _json) {
    if (_json.containsKey("barColor")) {
      barColor = new Color.fromJson(_json["barColor"]);
    }
    if (_json.containsKey("data")) {
      data = new ChartData.fromJson(_json["data"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (barColor != null) {
      _json["barColor"] = (barColor).toJson();
    }
    if (data != null) {
      _json["data"] = (data).toJson();
    }
    return _json;
  }
}

/// Inserts rows or columns in a sheet at a particular index.
class InsertDimensionRequest {
  /// Whether dimension properties should be extended from the dimensions
  /// before or after the newly inserted dimensions.
  /// True to inherit from the dimensions before (in which case the start
  /// index must be greater than 0), and false to inherit from the dimensions
  /// after.
  ///
  /// For example, if row index 0 has red background and row index 1
  /// has a green background, then inserting 2 rows at index 1 can inherit
  /// either the green or red background.  If `inheritFromBefore` is true,
  /// the two new rows will be red (because the row before the insertion point
  /// was red), whereas if `inheritFromBefore` is false, the two new rows will
  /// be green (because the row after the insertion point was green).
  core.bool inheritFromBefore;

  /// The dimensions to insert.  Both the start and end indexes must be bounded.
  DimensionRange range;

  InsertDimensionRequest();

  InsertDimensionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inheritFromBefore")) {
      inheritFromBefore = _json["inheritFromBefore"];
    }
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inheritFromBefore != null) {
      _json["inheritFromBefore"] = inheritFromBefore;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Inserts cells into a range, shifting the existing cells over or down.
class InsertRangeRequest {
  /// The range to insert new cells into.
  GridRange range;

  /// The dimension which will be shifted when inserting cells.
  /// If ROWS, existing cells will be shifted down.
  /// If COLUMNS, existing cells will be shifted right.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String shiftDimension;

  InsertRangeRequest();

  InsertRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("shiftDimension")) {
      shiftDimension = _json["shiftDimension"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (shiftDimension != null) {
      _json["shiftDimension"] = shiftDimension;
    }
    return _json;
  }
}

/// A single interpolation point on a gradient conditional format.
/// These pin the gradient color scale according to the color,
/// type and value chosen.
class InterpolationPoint {
  /// The color this interpolation point should use.
  Color color;

  /// How the value should be interpreted.
  /// Possible string values are:
  /// - "INTERPOLATION_POINT_TYPE_UNSPECIFIED" : The default value, do not use.
  /// - "MIN" : The interpolation point uses the minimum value in the
  /// cells over the range of the conditional format.
  /// - "MAX" : The interpolation point uses the maximum value in the
  /// cells over the range of the conditional format.
  /// - "NUMBER" : The interpolation point uses exactly the value in
  /// InterpolationPoint.value.
  /// - "PERCENT" : The interpolation point is the given percentage over
  /// all the cells in the range of the conditional format.
  /// This is equivalent to NUMBER if the value was:
  /// `=(MAX(FLATTEN(range)) * (value / 100))
  ///   + (MIN(FLATTEN(range)) * (1 - (value / 100)))`
  /// (where errors in the range are ignored when flattening).
  /// - "PERCENTILE" : The interpolation point is the given percentile
  /// over all the cells in the range of the conditional format.
  /// This is equivalent to NUMBER if the value was:
  /// `=PERCENTILE(FLATTEN(range), value / 100)`
  /// (where errors in the range are ignored when flattening).
  core.String type;

  /// The value this interpolation point uses.  May be a formula.
  /// Unused if type is MIN or
  /// MAX.
  core.String value;

  InterpolationPoint();

  InterpolationPoint.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Settings to control how circular dependencies are resolved with iterative
/// calculation.
class IterativeCalculationSettings {
  /// When iterative calculation is enabled and successive results differ by
  /// less than this threshold value, the calculation rounds stop.
  core.double convergenceThreshold;

  /// When iterative calculation is enabled, the maximum number of calculation
  /// rounds to perform.
  core.int maxIterations;

  IterativeCalculationSettings();

  IterativeCalculationSettings.fromJson(core.Map _json) {
    if (_json.containsKey("convergenceThreshold")) {
      convergenceThreshold = _json["convergenceThreshold"].toDouble();
    }
    if (_json.containsKey("maxIterations")) {
      maxIterations = _json["maxIterations"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (convergenceThreshold != null) {
      _json["convergenceThreshold"] = convergenceThreshold;
    }
    if (maxIterations != null) {
      _json["maxIterations"] = maxIterations;
    }
    return _json;
  }
}

/// Properties that describe the style of a line.
class LineStyle {
  /// The dash type of the line.
  /// Possible string values are:
  /// - "LINE_DASH_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "INVISIBLE" : No dash type, which is equivalent to a non-visible line.
  /// - "CUSTOM" : A custom dash for a line. Modifying the exact custom dash
  /// style is
  /// currently unsupported.
  /// - "SOLID" : A solid line.
  /// - "DOTTED" : A dotted line.
  /// - "MEDIUM_DASHED" : A dashed line where the dashes have "medium" length.
  /// - "MEDIUM_DASHED_DOTTED" : A line that alternates between a "medium" dash
  /// and a dot.
  /// - "LONG_DASHED" : A dashed line where the dashes have "long" length.
  /// - "LONG_DASHED_DOTTED" : A line that alternates between a "long" dash and
  /// a dot.
  core.String type;

  /// The thickness of the line, in px.
  core.int width;

  LineStyle();

  LineStyle.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// Allows you to manually organize the values in a source data column into
/// buckets with names of your choosing. For example, a pivot table that
/// aggregates population by state:
///
///     +-------+-------------------+
///     | State | SUM of Population |
///     +-------+-------------------+
///     | AK    |               0.7 |
///     | AL    |               4.8 |
///     | AR    |               2.9 |
///     ...
///     +-------+-------------------+
/// could be turned into a pivot table that aggregates population by time zone
/// by providing a list of groups (for example, groupName = 'Central',
/// items = ['AL', 'AR', 'IA', ...]) to a manual group rule.
/// Note that a similar effect could be achieved by adding a time zone column
/// to the source data and adjusting the pivot table.
///
///     +-----------+-------------------+
///     | Time Zone | SUM of Population |
///     +-----------+-------------------+
///     | Central   |             106.3 |
///     | Eastern   |             151.9 |
///     | Mountain  |              17.4 |
///     ...
///     +-----------+-------------------+
class ManualRule {
  /// The list of group names and the corresponding items from the source data
  /// that map to each group name.
  core.List<ManualRuleGroup> groups;

  ManualRule();

  ManualRule.fromJson(core.Map _json) {
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List)
          .map<ManualRuleGroup>((value) => new ManualRuleGroup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groups != null) {
      _json["groups"] = groups.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A group name and a list of items from the source data that should be placed
/// in the group with this name.
class ManualRuleGroup {
  /// The group name, which must be a string. Each group in a given
  /// ManualRule must have a unique group name.
  ExtendedValue groupName;

  /// The items in the source data that should be placed into this group. Each
  /// item may be a string, number, or boolean. Items may appear in at most one
  /// group within a given ManualRule. Items that do not appear in any
  /// group will appear on their own.
  core.List<ExtendedValue> items;

  ManualRuleGroup();

  ManualRuleGroup.fromJson(core.Map _json) {
    if (_json.containsKey("groupName")) {
      groupName = new ExtendedValue.fromJson(_json["groupName"]);
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ExtendedValue>((value) => new ExtendedValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupName != null) {
      _json["groupName"] = (groupName).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A developer metadata entry and the data filters specified in the original
/// request that matched it.
class MatchedDeveloperMetadata {
  /// All filters matching the returned developer metadata.
  core.List<DataFilter> dataFilters;

  /// The developer metadata matching the specified filters.
  DeveloperMetadata developerMetadata;

  MatchedDeveloperMetadata();

  MatchedDeveloperMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("developerMetadata")) {
      developerMetadata =
          new DeveloperMetadata.fromJson(_json["developerMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    if (developerMetadata != null) {
      _json["developerMetadata"] = (developerMetadata).toJson();
    }
    return _json;
  }
}

/// A value range that was matched by one or more data filers.
class MatchedValueRange {
  /// The DataFilters from the request that matched the range of
  /// values.
  core.List<DataFilter> dataFilters;

  /// The values matched by the DataFilter.
  ValueRange valueRange;

  MatchedValueRange();

  MatchedValueRange.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("valueRange")) {
      valueRange = new ValueRange.fromJson(_json["valueRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    if (valueRange != null) {
      _json["valueRange"] = (valueRange).toJson();
    }
    return _json;
  }
}

/// Merges all cells in the range.
class MergeCellsRequest {
  /// How the cells should be merged.
  /// Possible string values are:
  /// - "MERGE_ALL" : Create a single merge from the range
  /// - "MERGE_COLUMNS" : Create a merge for each column in the range
  /// - "MERGE_ROWS" : Create a merge for each row in the range
  core.String mergeType;

  /// The range of cells to merge.
  GridRange range;

  MergeCellsRequest();

  MergeCellsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("mergeType")) {
      mergeType = _json["mergeType"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mergeType != null) {
      _json["mergeType"] = mergeType;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Moves one or more rows or columns.
class MoveDimensionRequest {
  /// The zero-based start index of where to move the source data to,
  /// based on the coordinates *before* the source data is removed
  /// from the grid.  Existing data will be shifted down or right
  /// (depending on the dimension) to make room for the moved dimensions.
  /// The source dimensions are removed from the grid, so the
  /// the data may end up in a different index than specified.
  ///
  /// For example, given `A1..A5` of `0, 1, 2, 3, 4` and wanting to move
  /// `"1"` and `"2"` to between `"3"` and `"4"`, the source would be
  /// `ROWS [1..3)`,and the destination index would be `"4"`
  /// (the zero-based index of row 5).
  /// The end result would be `A1..A5` of `0, 3, 1, 2, 4`.
  core.int destinationIndex;

  /// The source dimensions to move.
  DimensionRange source;

  MoveDimensionRequest();

  MoveDimensionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destinationIndex")) {
      destinationIndex = _json["destinationIndex"];
    }
    if (_json.containsKey("source")) {
      source = new DimensionRange.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (destinationIndex != null) {
      _json["destinationIndex"] = destinationIndex;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// A named range.
class NamedRange {
  /// The name of the named range.
  core.String name;

  /// The ID of the named range.
  core.String namedRangeId;

  /// The range this represents.
  GridRange range;

  NamedRange();

  NamedRange.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("namedRangeId")) {
      namedRangeId = _json["namedRangeId"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (namedRangeId != null) {
      _json["namedRangeId"] = namedRangeId;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// The number format of a cell.
class NumberFormat {
  /// Pattern string used for formatting.  If not set, a default pattern based
  /// on
  /// the user's locale will be used if necessary for the given type.
  /// See the [Date and Number Formats guide](/sheets/api/guides/formats) for
  /// more information about the supported patterns.
  core.String pattern;

  /// The type of the number format.
  /// When writing, this field must be set.
  /// Possible string values are:
  /// - "NUMBER_FORMAT_TYPE_UNSPECIFIED" : The number format is not specified
  /// and is based on the contents of the cell.
  /// Do not explicitly use this.
  /// - "TEXT" : Text formatting, e.g `1000.12`
  /// - "NUMBER" : Number formatting, e.g, `1,000.12`
  /// - "PERCENT" : Percent formatting, e.g `10.12%`
  /// - "CURRENCY" : Currency formatting, e.g `$1,000.12`
  /// - "DATE" : Date formatting, e.g `9/26/2008`
  /// - "TIME" : Time formatting, e.g `3:59:00 PM`
  /// - "DATE_TIME" : Date+Time formatting, e.g `9/26/08 15:59:00`
  /// - "SCIENTIFIC" : Scientific number formatting, e.g `1.01E+03`
  core.String type;

  NumberFormat();

  NumberFormat.fromJson(core.Map _json) {
    if (_json.containsKey("pattern")) {
      pattern = _json["pattern"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pattern != null) {
      _json["pattern"] = pattern;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// An <a href="/chart/interactive/docs/gallery/orgchart">org chart</a>.
/// Org charts require a unique set of labels in labels and may
/// optionally include parent_labels and tooltips.
/// parent_labels contain, for each node, the label identifying the parent
/// node.  tooltips contain, for each node, an optional tooltip.
///
/// For example, to describe an OrgChart with Alice as the CEO, Bob as the
/// President (reporting to Alice) and Cathy as VP of Sales (also reporting to
/// Alice), have labels contain "Alice", "Bob", "Cathy",
/// parent_labels contain "", "Alice", "Alice" and tooltips contain
/// "CEO", "President", "VP Sales".
class OrgChartSpec {
  /// The data containing the labels for all the nodes in the chart.  Labels
  /// must be unique.
  ChartData labels;

  /// The color of the org chart nodes.
  Color nodeColor;

  /// The size of the org chart nodes.
  /// Possible string values are:
  /// - "ORG_CHART_LABEL_SIZE_UNSPECIFIED" : Default value, do not use.
  /// - "SMALL" : The small org chart node size.
  /// - "MEDIUM" : The medium org chart node size.
  /// - "LARGE" : The large org chart node size.
  core.String nodeSize;

  /// The data containing the label of the parent for the corresponding node.
  /// A blank value indicates that the node has no parent and is a top-level
  /// node.
  /// This field is optional.
  ChartData parentLabels;

  /// The color of the selected org chart nodes.
  Color selectedNodeColor;

  /// The data containing the tooltip for the corresponding node.  A blank value
  /// results in no tooltip being displayed for the node.
  /// This field is optional.
  ChartData tooltips;

  OrgChartSpec();

  OrgChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = new ChartData.fromJson(_json["labels"]);
    }
    if (_json.containsKey("nodeColor")) {
      nodeColor = new Color.fromJson(_json["nodeColor"]);
    }
    if (_json.containsKey("nodeSize")) {
      nodeSize = _json["nodeSize"];
    }
    if (_json.containsKey("parentLabels")) {
      parentLabels = new ChartData.fromJson(_json["parentLabels"]);
    }
    if (_json.containsKey("selectedNodeColor")) {
      selectedNodeColor = new Color.fromJson(_json["selectedNodeColor"]);
    }
    if (_json.containsKey("tooltips")) {
      tooltips = new ChartData.fromJson(_json["tooltips"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = (labels).toJson();
    }
    if (nodeColor != null) {
      _json["nodeColor"] = (nodeColor).toJson();
    }
    if (nodeSize != null) {
      _json["nodeSize"] = nodeSize;
    }
    if (parentLabels != null) {
      _json["parentLabels"] = (parentLabels).toJson();
    }
    if (selectedNodeColor != null) {
      _json["selectedNodeColor"] = (selectedNodeColor).toJson();
    }
    if (tooltips != null) {
      _json["tooltips"] = (tooltips).toJson();
    }
    return _json;
  }
}

/// The location an object is overlaid on top of a grid.
class OverlayPosition {
  /// The cell the object is anchored to.
  GridCoordinate anchorCell;

  /// The height of the object, in pixels. Defaults to 371.
  core.int heightPixels;

  /// The horizontal offset, in pixels, that the object is offset
  /// from the anchor cell.
  core.int offsetXPixels;

  /// The vertical offset, in pixels, that the object is offset
  /// from the anchor cell.
  core.int offsetYPixels;

  /// The width of the object, in pixels. Defaults to 600.
  core.int widthPixels;

  OverlayPosition();

  OverlayPosition.fromJson(core.Map _json) {
    if (_json.containsKey("anchorCell")) {
      anchorCell = new GridCoordinate.fromJson(_json["anchorCell"]);
    }
    if (_json.containsKey("heightPixels")) {
      heightPixels = _json["heightPixels"];
    }
    if (_json.containsKey("offsetXPixels")) {
      offsetXPixels = _json["offsetXPixels"];
    }
    if (_json.containsKey("offsetYPixels")) {
      offsetYPixels = _json["offsetYPixels"];
    }
    if (_json.containsKey("widthPixels")) {
      widthPixels = _json["widthPixels"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (anchorCell != null) {
      _json["anchorCell"] = (anchorCell).toJson();
    }
    if (heightPixels != null) {
      _json["heightPixels"] = heightPixels;
    }
    if (offsetXPixels != null) {
      _json["offsetXPixels"] = offsetXPixels;
    }
    if (offsetYPixels != null) {
      _json["offsetYPixels"] = offsetYPixels;
    }
    if (widthPixels != null) {
      _json["widthPixels"] = widthPixels;
    }
    return _json;
  }
}

/// The amount of padding around the cell, in pixels.
/// When updating padding, every field must be specified.
class Padding {
  /// The bottom padding of the cell.
  core.int bottom;

  /// The left padding of the cell.
  core.int left;

  /// The right padding of the cell.
  core.int right;

  /// The top padding of the cell.
  core.int top;

  Padding();

  Padding.fromJson(core.Map _json) {
    if (_json.containsKey("bottom")) {
      bottom = _json["bottom"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("right")) {
      right = _json["right"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bottom != null) {
      _json["bottom"] = bottom;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (right != null) {
      _json["right"] = right;
    }
    if (top != null) {
      _json["top"] = top;
    }
    return _json;
  }
}

/// Inserts data into the spreadsheet starting at the specified coordinate.
class PasteDataRequest {
  /// The coordinate at which the data should start being inserted.
  GridCoordinate coordinate;

  /// The data to insert.
  core.String data;

  /// The delimiter in the data.
  core.String delimiter;

  /// True if the data is HTML.
  core.bool html;

  /// How the data should be pasted.
  /// Possible string values are:
  /// - "PASTE_NORMAL" : Paste values, formulas, formats, and merges.
  /// - "PASTE_VALUES" : Paste the values ONLY without formats, formulas, or
  /// merges.
  /// - "PASTE_FORMAT" : Paste the format and data validation only.
  /// - "PASTE_NO_BORDERS" : Like PASTE_NORMAL but without borders.
  /// - "PASTE_FORMULA" : Paste the formulas only.
  /// - "PASTE_DATA_VALIDATION" : Paste the data validation only.
  /// - "PASTE_CONDITIONAL_FORMATTING" : Paste the conditional formatting rules
  /// only.
  core.String type;

  PasteDataRequest();

  PasteDataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("coordinate")) {
      coordinate = new GridCoordinate.fromJson(_json["coordinate"]);
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("delimiter")) {
      delimiter = _json["delimiter"];
    }
    if (_json.containsKey("html")) {
      html = _json["html"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (coordinate != null) {
      _json["coordinate"] = (coordinate).toJson();
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (delimiter != null) {
      _json["delimiter"] = delimiter;
    }
    if (html != null) {
      _json["html"] = html;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A <a href="/chart/interactive/docs/gallery/piechart">pie chart</a>.
class PieChartSpec {
  /// The data that covers the domain of the pie chart.
  ChartData domain;

  /// Where the legend of the pie chart should be drawn.
  /// Possible string values are:
  /// - "PIE_CHART_LEGEND_POSITION_UNSPECIFIED" : Default value, do not use.
  /// - "BOTTOM_LEGEND" : The legend is rendered on the bottom of the chart.
  /// - "LEFT_LEGEND" : The legend is rendered on the left of the chart.
  /// - "RIGHT_LEGEND" : The legend is rendered on the right of the chart.
  /// - "TOP_LEGEND" : The legend is rendered on the top of the chart.
  /// - "NO_LEGEND" : No legend is rendered.
  /// - "LABELED_LEGEND" : Each pie slice has a label attached to it.
  core.String legendPosition;

  /// The size of the hole in the pie chart.
  core.double pieHole;

  /// The data that covers the one and only series of the pie chart.
  ChartData series;

  /// True if the pie is three dimensional.
  core.bool threeDimensional;

  PieChartSpec();

  PieChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("domain")) {
      domain = new ChartData.fromJson(_json["domain"]);
    }
    if (_json.containsKey("legendPosition")) {
      legendPosition = _json["legendPosition"];
    }
    if (_json.containsKey("pieHole")) {
      pieHole = _json["pieHole"].toDouble();
    }
    if (_json.containsKey("series")) {
      series = new ChartData.fromJson(_json["series"]);
    }
    if (_json.containsKey("threeDimensional")) {
      threeDimensional = _json["threeDimensional"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domain != null) {
      _json["domain"] = (domain).toJson();
    }
    if (legendPosition != null) {
      _json["legendPosition"] = legendPosition;
    }
    if (pieHole != null) {
      _json["pieHole"] = pieHole;
    }
    if (series != null) {
      _json["series"] = (series).toJson();
    }
    if (threeDimensional != null) {
      _json["threeDimensional"] = threeDimensional;
    }
    return _json;
  }
}

/// Criteria for showing/hiding rows in a pivot table.
class PivotFilterCriteria {
  /// Values that should be included.  Values not listed here are excluded.
  core.List<core.String> visibleValues;

  PivotFilterCriteria();

  PivotFilterCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("visibleValues")) {
      visibleValues = (_json["visibleValues"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (visibleValues != null) {
      _json["visibleValues"] = visibleValues;
    }
    return _json;
  }
}

/// A single grouping (either row or column) in a pivot table.
class PivotGroup {
  /// The group rule to apply to this row/column group.
  PivotGroupRule groupRule;

  /// The labels to use for the row/column groups which can be customized. For
  /// example, in the following pivot table, the row label is `Region` (which
  /// could be renamed to `State`) and the column label is `Product` (which
  /// could be renamed `Item`). Pivot tables created before December 2017 do
  /// not have header labels. If you'd like to add header labels to an existing
  /// pivot table, please delete the existing pivot table and then create a new
  /// pivot table with same parameters.
  ///
  ///     +--------------+---------+-------+
  ///     | SUM of Units | Product |       |
  ///     | Region       | Pen     | Paper |
  ///     +--------------+---------+-------+
  ///     | New York     |     345 |    98 |
  ///     | Oregon       |     234 |   123 |
  ///     | Tennessee    |     531 |   415 |
  ///     +--------------+---------+-------+
  ///     | Grand Total  |    1110 |   636 |
  ///     +--------------+---------+-------+
  core.String label;

  /// True if the headings in this pivot group should be repeated.
  /// This is only valid for row groupings and is ignored by columns.
  ///
  /// By default, we minimize repitition of headings by not showing higher
  /// level headings where they are the same. For example, even though the
  /// third row below corresponds to "Q1 Mar", "Q1" is not shown because
  /// it is redundant with previous rows. Setting repeat_headings to true
  /// would cause "Q1" to be repeated for "Feb" and "Mar".
  ///
  ///     +--------------+
  ///     | Q1     | Jan |
  ///     |        | Feb |
  ///     |        | Mar |
  ///     +--------+-----+
  ///     | Q1 Total     |
  ///     +--------------+
  core.bool repeatHeadings;

  /// True if the pivot table should include the totals for this grouping.
  core.bool showTotals;

  /// The order the values in this group should be sorted.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value, do not use this.
  /// - "ASCENDING" : Sort ascending.
  /// - "DESCENDING" : Sort descending.
  core.String sortOrder;

  /// The column offset of the source range that this grouping is based on.
  ///
  /// For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
  /// means this group refers to column `C`, whereas the offset `1` would refer
  /// to column `D`.
  core.int sourceColumnOffset;

  /// The bucket of the opposite pivot group to sort by.
  /// If not specified, sorting is alphabetical by this group's values.
  PivotGroupSortValueBucket valueBucket;

  /// Metadata about values in the grouping.
  core.List<PivotGroupValueMetadata> valueMetadata;

  PivotGroup();

  PivotGroup.fromJson(core.Map _json) {
    if (_json.containsKey("groupRule")) {
      groupRule = new PivotGroupRule.fromJson(_json["groupRule"]);
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("repeatHeadings")) {
      repeatHeadings = _json["repeatHeadings"];
    }
    if (_json.containsKey("showTotals")) {
      showTotals = _json["showTotals"];
    }
    if (_json.containsKey("sortOrder")) {
      sortOrder = _json["sortOrder"];
    }
    if (_json.containsKey("sourceColumnOffset")) {
      sourceColumnOffset = _json["sourceColumnOffset"];
    }
    if (_json.containsKey("valueBucket")) {
      valueBucket =
          new PivotGroupSortValueBucket.fromJson(_json["valueBucket"]);
    }
    if (_json.containsKey("valueMetadata")) {
      valueMetadata = (_json["valueMetadata"] as core.List)
          .map<PivotGroupValueMetadata>(
              (value) => new PivotGroupValueMetadata.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupRule != null) {
      _json["groupRule"] = (groupRule).toJson();
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (repeatHeadings != null) {
      _json["repeatHeadings"] = repeatHeadings;
    }
    if (showTotals != null) {
      _json["showTotals"] = showTotals;
    }
    if (sortOrder != null) {
      _json["sortOrder"] = sortOrder;
    }
    if (sourceColumnOffset != null) {
      _json["sourceColumnOffset"] = sourceColumnOffset;
    }
    if (valueBucket != null) {
      _json["valueBucket"] = (valueBucket).toJson();
    }
    if (valueMetadata != null) {
      _json["valueMetadata"] =
          valueMetadata.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// An optional setting on a PivotGroup that defines buckets for the values
/// in the source data column rather than breaking out each individual value.
/// Only one PivotGroup with a group rule may be added for each column in
/// the source data, though on any given column you may add both a
/// PivotGroup that has a rule and a PivotGroup that does not.
class PivotGroupRule {
  /// A DateTimeRule.
  DateTimeRule dateTimeRule;

  /// A HistogramRule.
  HistogramRule histogramRule;

  /// A ManualRule.
  ManualRule manualRule;

  PivotGroupRule();

  PivotGroupRule.fromJson(core.Map _json) {
    if (_json.containsKey("dateTimeRule")) {
      dateTimeRule = new DateTimeRule.fromJson(_json["dateTimeRule"]);
    }
    if (_json.containsKey("histogramRule")) {
      histogramRule = new HistogramRule.fromJson(_json["histogramRule"]);
    }
    if (_json.containsKey("manualRule")) {
      manualRule = new ManualRule.fromJson(_json["manualRule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dateTimeRule != null) {
      _json["dateTimeRule"] = (dateTimeRule).toJson();
    }
    if (histogramRule != null) {
      _json["histogramRule"] = (histogramRule).toJson();
    }
    if (manualRule != null) {
      _json["manualRule"] = (manualRule).toJson();
    }
    return _json;
  }
}

/// Information about which values in a pivot group should be used for sorting.
class PivotGroupSortValueBucket {
  /// Determines the bucket from which values are chosen to sort.
  ///
  /// For example, in a pivot table with one row group & two column groups,
  /// the row group can list up to two values. The first value corresponds
  /// to a value within the first column group, and the second value
  /// corresponds to a value in the second column group.  If no values
  /// are listed, this would indicate that the row should be sorted according
  /// to the "Grand Total" over the column groups. If a single value is listed,
  /// this would correspond to using the "Total" of that bucket.
  core.List<ExtendedValue> buckets;

  /// The offset in the PivotTable.values list which the values in this
  /// grouping should be sorted by.
  core.int valuesIndex;

  PivotGroupSortValueBucket();

  PivotGroupSortValueBucket.fromJson(core.Map _json) {
    if (_json.containsKey("buckets")) {
      buckets = (_json["buckets"] as core.List)
          .map<ExtendedValue>((value) => new ExtendedValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("valuesIndex")) {
      valuesIndex = _json["valuesIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buckets != null) {
      _json["buckets"] = buckets.map((value) => (value).toJson()).toList();
    }
    if (valuesIndex != null) {
      _json["valuesIndex"] = valuesIndex;
    }
    return _json;
  }
}

/// Metadata about a value in a pivot grouping.
class PivotGroupValueMetadata {
  /// True if the data corresponding to the value is collapsed.
  core.bool collapsed;

  /// The calculated value the metadata corresponds to.
  /// (Note that formulaValue is not valid,
  ///  because the values will be calculated.)
  ExtendedValue value;

  PivotGroupValueMetadata();

  PivotGroupValueMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("collapsed")) {
      collapsed = _json["collapsed"];
    }
    if (_json.containsKey("value")) {
      value = new ExtendedValue.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collapsed != null) {
      _json["collapsed"] = collapsed;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// A pivot table.
class PivotTable {
  /// Each column grouping in the pivot table.
  core.List<PivotGroup> columns;

  /// An optional mapping of filters per source column offset.
  ///
  /// The filters are applied before aggregating data into the pivot table.
  /// The map's key is the column offset of the source range that you want to
  /// filter, and the value is the criteria for that column.
  ///
  /// For example, if the source was `C10:E15`, a key of `0` will have the
  /// filter
  /// for column `C`, whereas the key `1` is for column `D`.
  core.Map<core.String, PivotFilterCriteria> criteria;

  /// Each row grouping in the pivot table.
  core.List<PivotGroup> rows;

  /// The range the pivot table is reading data from.
  GridRange source;

  /// Whether values should be listed horizontally (as columns)
  /// or vertically (as rows).
  /// Possible string values are:
  /// - "HORIZONTAL" : Values are laid out horizontally (as columns).
  /// - "VERTICAL" : Values are laid out vertically (as rows).
  core.String valueLayout;

  /// A list of values to include in the pivot table.
  core.List<PivotValue> values;

  PivotTable();

  PivotTable.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List)
          .map<PivotGroup>((value) => new PivotGroup.fromJson(value))
          .toList();
    }
    if (_json.containsKey("criteria")) {
      criteria = commons.mapMap<core.Map, PivotFilterCriteria>(
          _json["criteria"].cast<core.String, core.Map>(),
          (core.Map item) => new PivotFilterCriteria.fromJson(item));
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<PivotGroup>((value) => new PivotGroup.fromJson(value))
          .toList();
    }
    if (_json.containsKey("source")) {
      source = new GridRange.fromJson(_json["source"]);
    }
    if (_json.containsKey("valueLayout")) {
      valueLayout = _json["valueLayout"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<PivotValue>((value) => new PivotValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns.map((value) => (value).toJson()).toList();
    }
    if (criteria != null) {
      _json["criteria"] = commons
          .mapMap<PivotFilterCriteria, core.Map<core.String, core.Object>>(
              criteria, (PivotFilterCriteria item) => (item).toJson());
    }
    if (rows != null) {
      _json["rows"] = rows.map((value) => (value).toJson()).toList();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (valueLayout != null) {
      _json["valueLayout"] = valueLayout;
    }
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The definition of how a value in a pivot table should be calculated.
class PivotValue {
  /// If specified, indicates that pivot values should be displayed as
  /// the result of a calculation with another pivot value. For example, if
  /// calculated_display_type is specified as PERCENT_OF_GRAND_TOTAL, all the
  /// pivot values are displayed as the percentage of the grand total. In
  /// the Sheets UI, this is referred to as "Show As" in the value section of a
  /// pivot table.
  /// Possible string values are:
  /// - "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED" : Default value, do
  /// not use.
  /// - "PERCENT_OF_ROW_TOTAL" : Shows the pivot values as percentage of the row
  /// total values.
  /// - "PERCENT_OF_COLUMN_TOTAL" : Shows the pivot values as percentage of the
  /// column total values.
  /// - "PERCENT_OF_GRAND_TOTAL" : Shows the pivot values as percentage of the
  /// grand total values.
  core.String calculatedDisplayType;

  /// A custom formula to calculate the value.  The formula must start
  /// with an `=` character.
  core.String formula;

  /// A name to use for the value.
  core.String name;

  /// The column offset of the source range that this value reads from.
  ///
  /// For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
  /// means this value refers to column `C`, whereas the offset `1` would
  /// refer to column `D`.
  core.int sourceColumnOffset;

  /// A function to summarize the value.
  /// If formula is set, the only supported values are
  /// SUM and
  /// CUSTOM.
  /// If sourceColumnOffset is set, then `CUSTOM`
  /// is not supported.
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
  /// - "CUSTOM" : Indicates the formula should be used as-is.
  /// Only valid if PivotValue.formula was set.
  core.String summarizeFunction;

  PivotValue();

  PivotValue.fromJson(core.Map _json) {
    if (_json.containsKey("calculatedDisplayType")) {
      calculatedDisplayType = _json["calculatedDisplayType"];
    }
    if (_json.containsKey("formula")) {
      formula = _json["formula"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sourceColumnOffset")) {
      sourceColumnOffset = _json["sourceColumnOffset"];
    }
    if (_json.containsKey("summarizeFunction")) {
      summarizeFunction = _json["summarizeFunction"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (calculatedDisplayType != null) {
      _json["calculatedDisplayType"] = calculatedDisplayType;
    }
    if (formula != null) {
      _json["formula"] = formula;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sourceColumnOffset != null) {
      _json["sourceColumnOffset"] = sourceColumnOffset;
    }
    if (summarizeFunction != null) {
      _json["summarizeFunction"] = summarizeFunction;
    }
    return _json;
  }
}

/// A protected range.
class ProtectedRange {
  /// The description of this protected range.
  core.String description;

  /// The users and groups with edit access to the protected range.
  /// This field is only visible to users with edit access to the protected
  /// range and the document.
  /// Editors are not supported with warning_only protection.
  Editors editors;

  /// The named range this protected range is backed by, if any.
  ///
  /// When writing, only one of range or named_range_id
  /// may be set.
  core.String namedRangeId;

  /// The ID of the protected range.
  /// This field is read-only.
  core.int protectedRangeId;

  /// The range that is being protected.
  /// The range may be fully unbounded, in which case this is considered
  /// a protected sheet.
  ///
  /// When writing, only one of range or named_range_id
  /// may be set.
  GridRange range;

  /// True if the user who requested this protected range can edit the
  /// protected area.
  /// This field is read-only.
  core.bool requestingUserCanEdit;

  /// The list of unprotected ranges within a protected sheet.
  /// Unprotected ranges are only supported on protected sheets.
  core.List<GridRange> unprotectedRanges;

  /// True if this protected range will show a warning when editing.
  /// Warning-based protection means that every user can edit data in the
  /// protected range, except editing will prompt a warning asking the user
  /// to confirm the edit.
  ///
  /// When writing: if this field is true, then editors is ignored.
  /// Additionally, if this field is changed from true to false and the
  /// `editors` field is not set (nor included in the field mask), then
  /// the editors will be set to all the editors in the document.
  core.bool warningOnly;

  ProtectedRange();

  ProtectedRange.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("editors")) {
      editors = new Editors.fromJson(_json["editors"]);
    }
    if (_json.containsKey("namedRangeId")) {
      namedRangeId = _json["namedRangeId"];
    }
    if (_json.containsKey("protectedRangeId")) {
      protectedRangeId = _json["protectedRangeId"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("requestingUserCanEdit")) {
      requestingUserCanEdit = _json["requestingUserCanEdit"];
    }
    if (_json.containsKey("unprotectedRanges")) {
      unprotectedRanges = (_json["unprotectedRanges"] as core.List)
          .map<GridRange>((value) => new GridRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("warningOnly")) {
      warningOnly = _json["warningOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (editors != null) {
      _json["editors"] = (editors).toJson();
    }
    if (namedRangeId != null) {
      _json["namedRangeId"] = namedRangeId;
    }
    if (protectedRangeId != null) {
      _json["protectedRangeId"] = protectedRangeId;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (requestingUserCanEdit != null) {
      _json["requestingUserCanEdit"] = requestingUserCanEdit;
    }
    if (unprotectedRanges != null) {
      _json["unprotectedRanges"] =
          unprotectedRanges.map((value) => (value).toJson()).toList();
    }
    if (warningOnly != null) {
      _json["warningOnly"] = warningOnly;
    }
    return _json;
  }
}

/// Randomizes the order of the rows in a range.
class RandomizeRangeRequest {
  /// The range to randomize.
  GridRange range;

  RandomizeRangeRequest();

  RandomizeRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Updates all cells in the range to the values in the given Cell object.
/// Only the fields listed in the fields field are updated; others are
/// unchanged.
///
/// If writing a cell with a formula, the formula's ranges will automatically
/// increment for each field in the range.
/// For example, if writing a cell with formula `=A1` into range B2:C4,
/// B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`,
/// C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`.
///
/// To keep the formula's ranges static, use the `$` indicator.
/// For example, use the formula `=$A$1` to prevent both the row and the
/// column from incrementing.
class RepeatCellRequest {
  /// The data to write.
  CellData cell;

  /// The fields that should be updated.  At least one field must be specified.
  /// The root `cell` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The range to repeat the cell in.
  GridRange range;

  RepeatCellRequest();

  RepeatCellRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cell")) {
      cell = new CellData.fromJson(_json["cell"]);
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cell != null) {
      _json["cell"] = (cell).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// A single kind of update to apply to a spreadsheet.
class Request {
  /// Adds a new banded range
  AddBandingRequest addBanding;

  /// Adds a chart.
  AddChartRequest addChart;

  /// Adds a new conditional format rule.
  AddConditionalFormatRuleRequest addConditionalFormatRule;

  /// Creates a group over the specified range.
  AddDimensionGroupRequest addDimensionGroup;

  /// Adds a filter view.
  AddFilterViewRequest addFilterView;

  /// Adds a named range.
  AddNamedRangeRequest addNamedRange;

  /// Adds a protected range.
  AddProtectedRangeRequest addProtectedRange;

  /// Adds a sheet.
  AddSheetRequest addSheet;

  /// Appends cells after the last row with data in a sheet.
  AppendCellsRequest appendCells;

  /// Appends dimensions to the end of a sheet.
  AppendDimensionRequest appendDimension;

  /// Automatically fills in more data based on existing data.
  AutoFillRequest autoFill;

  /// Automatically resizes one or more dimensions based on the contents
  /// of the cells in that dimension.
  AutoResizeDimensionsRequest autoResizeDimensions;

  /// Clears the basic filter on a sheet.
  ClearBasicFilterRequest clearBasicFilter;

  /// Copies data from one area and pastes it to another.
  CopyPasteRequest copyPaste;

  /// Creates new developer metadata
  CreateDeveloperMetadataRequest createDeveloperMetadata;

  /// Cuts data from one area and pastes it to another.
  CutPasteRequest cutPaste;

  /// Removes a banded range
  DeleteBandingRequest deleteBanding;

  /// Deletes an existing conditional format rule.
  DeleteConditionalFormatRuleRequest deleteConditionalFormatRule;

  /// Deletes developer metadata
  DeleteDeveloperMetadataRequest deleteDeveloperMetadata;

  /// Deletes rows or columns in a sheet.
  DeleteDimensionRequest deleteDimension;

  /// Deletes a group over the specified range.
  DeleteDimensionGroupRequest deleteDimensionGroup;

  /// Deletes an embedded object (e.g, chart, image) in a sheet.
  DeleteEmbeddedObjectRequest deleteEmbeddedObject;

  /// Deletes a filter view from a sheet.
  DeleteFilterViewRequest deleteFilterView;

  /// Deletes a named range.
  DeleteNamedRangeRequest deleteNamedRange;

  /// Deletes a protected range.
  DeleteProtectedRangeRequest deleteProtectedRange;

  /// Deletes a range of cells from a sheet, shifting the remaining cells.
  DeleteRangeRequest deleteRange;

  /// Deletes a sheet.
  DeleteSheetRequest deleteSheet;

  /// Duplicates a filter view.
  DuplicateFilterViewRequest duplicateFilterView;

  /// Duplicates a sheet.
  DuplicateSheetRequest duplicateSheet;

  /// Finds and replaces occurrences of some text with other text.
  FindReplaceRequest findReplace;

  /// Inserts new rows or columns in a sheet.
  InsertDimensionRequest insertDimension;

  /// Inserts new cells in a sheet, shifting the existing cells.
  InsertRangeRequest insertRange;

  /// Merges cells together.
  MergeCellsRequest mergeCells;

  /// Moves rows or columns to another location in a sheet.
  MoveDimensionRequest moveDimension;

  /// Pastes data (HTML or delimited) into a sheet.
  PasteDataRequest pasteData;

  /// Randomizes the order of the rows in a range.
  RandomizeRangeRequest randomizeRange;

  /// Repeats a single cell across a range.
  RepeatCellRequest repeatCell;

  /// Sets the basic filter on a sheet.
  SetBasicFilterRequest setBasicFilter;

  /// Sets data validation for one or more cells.
  SetDataValidationRequest setDataValidation;

  /// Sorts data in a range.
  SortRangeRequest sortRange;

  /// Converts a column of text into many columns of text.
  TextToColumnsRequest textToColumns;

  /// Unmerges merged cells.
  UnmergeCellsRequest unmergeCells;

  /// Updates a banded range
  UpdateBandingRequest updateBanding;

  /// Updates the borders in a range of cells.
  UpdateBordersRequest updateBorders;

  /// Updates many cells at once.
  UpdateCellsRequest updateCells;

  /// Updates a chart's specifications.
  UpdateChartSpecRequest updateChartSpec;

  /// Updates an existing conditional format rule.
  UpdateConditionalFormatRuleRequest updateConditionalFormatRule;

  /// Updates an existing developer metadata entry
  UpdateDeveloperMetadataRequest updateDeveloperMetadata;

  /// Updates the state of the specified group.
  UpdateDimensionGroupRequest updateDimensionGroup;

  /// Updates dimensions' properties.
  UpdateDimensionPropertiesRequest updateDimensionProperties;

  /// Updates an embedded object's (e.g. chart, image) position.
  UpdateEmbeddedObjectPositionRequest updateEmbeddedObjectPosition;

  /// Updates the properties of a filter view.
  UpdateFilterViewRequest updateFilterView;

  /// Updates a named range.
  UpdateNamedRangeRequest updateNamedRange;

  /// Updates a protected range.
  UpdateProtectedRangeRequest updateProtectedRange;

  /// Updates a sheet's properties.
  UpdateSheetPropertiesRequest updateSheetProperties;

  /// Updates the spreadsheet's properties.
  UpdateSpreadsheetPropertiesRequest updateSpreadsheetProperties;

  Request();

  Request.fromJson(core.Map _json) {
    if (_json.containsKey("addBanding")) {
      addBanding = new AddBandingRequest.fromJson(_json["addBanding"]);
    }
    if (_json.containsKey("addChart")) {
      addChart = new AddChartRequest.fromJson(_json["addChart"]);
    }
    if (_json.containsKey("addConditionalFormatRule")) {
      addConditionalFormatRule = new AddConditionalFormatRuleRequest.fromJson(
          _json["addConditionalFormatRule"]);
    }
    if (_json.containsKey("addDimensionGroup")) {
      addDimensionGroup =
          new AddDimensionGroupRequest.fromJson(_json["addDimensionGroup"]);
    }
    if (_json.containsKey("addFilterView")) {
      addFilterView = new AddFilterViewRequest.fromJson(_json["addFilterView"]);
    }
    if (_json.containsKey("addNamedRange")) {
      addNamedRange = new AddNamedRangeRequest.fromJson(_json["addNamedRange"]);
    }
    if (_json.containsKey("addProtectedRange")) {
      addProtectedRange =
          new AddProtectedRangeRequest.fromJson(_json["addProtectedRange"]);
    }
    if (_json.containsKey("addSheet")) {
      addSheet = new AddSheetRequest.fromJson(_json["addSheet"]);
    }
    if (_json.containsKey("appendCells")) {
      appendCells = new AppendCellsRequest.fromJson(_json["appendCells"]);
    }
    if (_json.containsKey("appendDimension")) {
      appendDimension =
          new AppendDimensionRequest.fromJson(_json["appendDimension"]);
    }
    if (_json.containsKey("autoFill")) {
      autoFill = new AutoFillRequest.fromJson(_json["autoFill"]);
    }
    if (_json.containsKey("autoResizeDimensions")) {
      autoResizeDimensions = new AutoResizeDimensionsRequest.fromJson(
          _json["autoResizeDimensions"]);
    }
    if (_json.containsKey("clearBasicFilter")) {
      clearBasicFilter =
          new ClearBasicFilterRequest.fromJson(_json["clearBasicFilter"]);
    }
    if (_json.containsKey("copyPaste")) {
      copyPaste = new CopyPasteRequest.fromJson(_json["copyPaste"]);
    }
    if (_json.containsKey("createDeveloperMetadata")) {
      createDeveloperMetadata = new CreateDeveloperMetadataRequest.fromJson(
          _json["createDeveloperMetadata"]);
    }
    if (_json.containsKey("cutPaste")) {
      cutPaste = new CutPasteRequest.fromJson(_json["cutPaste"]);
    }
    if (_json.containsKey("deleteBanding")) {
      deleteBanding = new DeleteBandingRequest.fromJson(_json["deleteBanding"]);
    }
    if (_json.containsKey("deleteConditionalFormatRule")) {
      deleteConditionalFormatRule =
          new DeleteConditionalFormatRuleRequest.fromJson(
              _json["deleteConditionalFormatRule"]);
    }
    if (_json.containsKey("deleteDeveloperMetadata")) {
      deleteDeveloperMetadata = new DeleteDeveloperMetadataRequest.fromJson(
          _json["deleteDeveloperMetadata"]);
    }
    if (_json.containsKey("deleteDimension")) {
      deleteDimension =
          new DeleteDimensionRequest.fromJson(_json["deleteDimension"]);
    }
    if (_json.containsKey("deleteDimensionGroup")) {
      deleteDimensionGroup = new DeleteDimensionGroupRequest.fromJson(
          _json["deleteDimensionGroup"]);
    }
    if (_json.containsKey("deleteEmbeddedObject")) {
      deleteEmbeddedObject = new DeleteEmbeddedObjectRequest.fromJson(
          _json["deleteEmbeddedObject"]);
    }
    if (_json.containsKey("deleteFilterView")) {
      deleteFilterView =
          new DeleteFilterViewRequest.fromJson(_json["deleteFilterView"]);
    }
    if (_json.containsKey("deleteNamedRange")) {
      deleteNamedRange =
          new DeleteNamedRangeRequest.fromJson(_json["deleteNamedRange"]);
    }
    if (_json.containsKey("deleteProtectedRange")) {
      deleteProtectedRange = new DeleteProtectedRangeRequest.fromJson(
          _json["deleteProtectedRange"]);
    }
    if (_json.containsKey("deleteRange")) {
      deleteRange = new DeleteRangeRequest.fromJson(_json["deleteRange"]);
    }
    if (_json.containsKey("deleteSheet")) {
      deleteSheet = new DeleteSheetRequest.fromJson(_json["deleteSheet"]);
    }
    if (_json.containsKey("duplicateFilterView")) {
      duplicateFilterView =
          new DuplicateFilterViewRequest.fromJson(_json["duplicateFilterView"]);
    }
    if (_json.containsKey("duplicateSheet")) {
      duplicateSheet =
          new DuplicateSheetRequest.fromJson(_json["duplicateSheet"]);
    }
    if (_json.containsKey("findReplace")) {
      findReplace = new FindReplaceRequest.fromJson(_json["findReplace"]);
    }
    if (_json.containsKey("insertDimension")) {
      insertDimension =
          new InsertDimensionRequest.fromJson(_json["insertDimension"]);
    }
    if (_json.containsKey("insertRange")) {
      insertRange = new InsertRangeRequest.fromJson(_json["insertRange"]);
    }
    if (_json.containsKey("mergeCells")) {
      mergeCells = new MergeCellsRequest.fromJson(_json["mergeCells"]);
    }
    if (_json.containsKey("moveDimension")) {
      moveDimension = new MoveDimensionRequest.fromJson(_json["moveDimension"]);
    }
    if (_json.containsKey("pasteData")) {
      pasteData = new PasteDataRequest.fromJson(_json["pasteData"]);
    }
    if (_json.containsKey("randomizeRange")) {
      randomizeRange =
          new RandomizeRangeRequest.fromJson(_json["randomizeRange"]);
    }
    if (_json.containsKey("repeatCell")) {
      repeatCell = new RepeatCellRequest.fromJson(_json["repeatCell"]);
    }
    if (_json.containsKey("setBasicFilter")) {
      setBasicFilter =
          new SetBasicFilterRequest.fromJson(_json["setBasicFilter"]);
    }
    if (_json.containsKey("setDataValidation")) {
      setDataValidation =
          new SetDataValidationRequest.fromJson(_json["setDataValidation"]);
    }
    if (_json.containsKey("sortRange")) {
      sortRange = new SortRangeRequest.fromJson(_json["sortRange"]);
    }
    if (_json.containsKey("textToColumns")) {
      textToColumns = new TextToColumnsRequest.fromJson(_json["textToColumns"]);
    }
    if (_json.containsKey("unmergeCells")) {
      unmergeCells = new UnmergeCellsRequest.fromJson(_json["unmergeCells"]);
    }
    if (_json.containsKey("updateBanding")) {
      updateBanding = new UpdateBandingRequest.fromJson(_json["updateBanding"]);
    }
    if (_json.containsKey("updateBorders")) {
      updateBorders = new UpdateBordersRequest.fromJson(_json["updateBorders"]);
    }
    if (_json.containsKey("updateCells")) {
      updateCells = new UpdateCellsRequest.fromJson(_json["updateCells"]);
    }
    if (_json.containsKey("updateChartSpec")) {
      updateChartSpec =
          new UpdateChartSpecRequest.fromJson(_json["updateChartSpec"]);
    }
    if (_json.containsKey("updateConditionalFormatRule")) {
      updateConditionalFormatRule =
          new UpdateConditionalFormatRuleRequest.fromJson(
              _json["updateConditionalFormatRule"]);
    }
    if (_json.containsKey("updateDeveloperMetadata")) {
      updateDeveloperMetadata = new UpdateDeveloperMetadataRequest.fromJson(
          _json["updateDeveloperMetadata"]);
    }
    if (_json.containsKey("updateDimensionGroup")) {
      updateDimensionGroup = new UpdateDimensionGroupRequest.fromJson(
          _json["updateDimensionGroup"]);
    }
    if (_json.containsKey("updateDimensionProperties")) {
      updateDimensionProperties = new UpdateDimensionPropertiesRequest.fromJson(
          _json["updateDimensionProperties"]);
    }
    if (_json.containsKey("updateEmbeddedObjectPosition")) {
      updateEmbeddedObjectPosition =
          new UpdateEmbeddedObjectPositionRequest.fromJson(
              _json["updateEmbeddedObjectPosition"]);
    }
    if (_json.containsKey("updateFilterView")) {
      updateFilterView =
          new UpdateFilterViewRequest.fromJson(_json["updateFilterView"]);
    }
    if (_json.containsKey("updateNamedRange")) {
      updateNamedRange =
          new UpdateNamedRangeRequest.fromJson(_json["updateNamedRange"]);
    }
    if (_json.containsKey("updateProtectedRange")) {
      updateProtectedRange = new UpdateProtectedRangeRequest.fromJson(
          _json["updateProtectedRange"]);
    }
    if (_json.containsKey("updateSheetProperties")) {
      updateSheetProperties = new UpdateSheetPropertiesRequest.fromJson(
          _json["updateSheetProperties"]);
    }
    if (_json.containsKey("updateSpreadsheetProperties")) {
      updateSpreadsheetProperties =
          new UpdateSpreadsheetPropertiesRequest.fromJson(
              _json["updateSpreadsheetProperties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addBanding != null) {
      _json["addBanding"] = (addBanding).toJson();
    }
    if (addChart != null) {
      _json["addChart"] = (addChart).toJson();
    }
    if (addConditionalFormatRule != null) {
      _json["addConditionalFormatRule"] = (addConditionalFormatRule).toJson();
    }
    if (addDimensionGroup != null) {
      _json["addDimensionGroup"] = (addDimensionGroup).toJson();
    }
    if (addFilterView != null) {
      _json["addFilterView"] = (addFilterView).toJson();
    }
    if (addNamedRange != null) {
      _json["addNamedRange"] = (addNamedRange).toJson();
    }
    if (addProtectedRange != null) {
      _json["addProtectedRange"] = (addProtectedRange).toJson();
    }
    if (addSheet != null) {
      _json["addSheet"] = (addSheet).toJson();
    }
    if (appendCells != null) {
      _json["appendCells"] = (appendCells).toJson();
    }
    if (appendDimension != null) {
      _json["appendDimension"] = (appendDimension).toJson();
    }
    if (autoFill != null) {
      _json["autoFill"] = (autoFill).toJson();
    }
    if (autoResizeDimensions != null) {
      _json["autoResizeDimensions"] = (autoResizeDimensions).toJson();
    }
    if (clearBasicFilter != null) {
      _json["clearBasicFilter"] = (clearBasicFilter).toJson();
    }
    if (copyPaste != null) {
      _json["copyPaste"] = (copyPaste).toJson();
    }
    if (createDeveloperMetadata != null) {
      _json["createDeveloperMetadata"] = (createDeveloperMetadata).toJson();
    }
    if (cutPaste != null) {
      _json["cutPaste"] = (cutPaste).toJson();
    }
    if (deleteBanding != null) {
      _json["deleteBanding"] = (deleteBanding).toJson();
    }
    if (deleteConditionalFormatRule != null) {
      _json["deleteConditionalFormatRule"] =
          (deleteConditionalFormatRule).toJson();
    }
    if (deleteDeveloperMetadata != null) {
      _json["deleteDeveloperMetadata"] = (deleteDeveloperMetadata).toJson();
    }
    if (deleteDimension != null) {
      _json["deleteDimension"] = (deleteDimension).toJson();
    }
    if (deleteDimensionGroup != null) {
      _json["deleteDimensionGroup"] = (deleteDimensionGroup).toJson();
    }
    if (deleteEmbeddedObject != null) {
      _json["deleteEmbeddedObject"] = (deleteEmbeddedObject).toJson();
    }
    if (deleteFilterView != null) {
      _json["deleteFilterView"] = (deleteFilterView).toJson();
    }
    if (deleteNamedRange != null) {
      _json["deleteNamedRange"] = (deleteNamedRange).toJson();
    }
    if (deleteProtectedRange != null) {
      _json["deleteProtectedRange"] = (deleteProtectedRange).toJson();
    }
    if (deleteRange != null) {
      _json["deleteRange"] = (deleteRange).toJson();
    }
    if (deleteSheet != null) {
      _json["deleteSheet"] = (deleteSheet).toJson();
    }
    if (duplicateFilterView != null) {
      _json["duplicateFilterView"] = (duplicateFilterView).toJson();
    }
    if (duplicateSheet != null) {
      _json["duplicateSheet"] = (duplicateSheet).toJson();
    }
    if (findReplace != null) {
      _json["findReplace"] = (findReplace).toJson();
    }
    if (insertDimension != null) {
      _json["insertDimension"] = (insertDimension).toJson();
    }
    if (insertRange != null) {
      _json["insertRange"] = (insertRange).toJson();
    }
    if (mergeCells != null) {
      _json["mergeCells"] = (mergeCells).toJson();
    }
    if (moveDimension != null) {
      _json["moveDimension"] = (moveDimension).toJson();
    }
    if (pasteData != null) {
      _json["pasteData"] = (pasteData).toJson();
    }
    if (randomizeRange != null) {
      _json["randomizeRange"] = (randomizeRange).toJson();
    }
    if (repeatCell != null) {
      _json["repeatCell"] = (repeatCell).toJson();
    }
    if (setBasicFilter != null) {
      _json["setBasicFilter"] = (setBasicFilter).toJson();
    }
    if (setDataValidation != null) {
      _json["setDataValidation"] = (setDataValidation).toJson();
    }
    if (sortRange != null) {
      _json["sortRange"] = (sortRange).toJson();
    }
    if (textToColumns != null) {
      _json["textToColumns"] = (textToColumns).toJson();
    }
    if (unmergeCells != null) {
      _json["unmergeCells"] = (unmergeCells).toJson();
    }
    if (updateBanding != null) {
      _json["updateBanding"] = (updateBanding).toJson();
    }
    if (updateBorders != null) {
      _json["updateBorders"] = (updateBorders).toJson();
    }
    if (updateCells != null) {
      _json["updateCells"] = (updateCells).toJson();
    }
    if (updateChartSpec != null) {
      _json["updateChartSpec"] = (updateChartSpec).toJson();
    }
    if (updateConditionalFormatRule != null) {
      _json["updateConditionalFormatRule"] =
          (updateConditionalFormatRule).toJson();
    }
    if (updateDeveloperMetadata != null) {
      _json["updateDeveloperMetadata"] = (updateDeveloperMetadata).toJson();
    }
    if (updateDimensionGroup != null) {
      _json["updateDimensionGroup"] = (updateDimensionGroup).toJson();
    }
    if (updateDimensionProperties != null) {
      _json["updateDimensionProperties"] = (updateDimensionProperties).toJson();
    }
    if (updateEmbeddedObjectPosition != null) {
      _json["updateEmbeddedObjectPosition"] =
          (updateEmbeddedObjectPosition).toJson();
    }
    if (updateFilterView != null) {
      _json["updateFilterView"] = (updateFilterView).toJson();
    }
    if (updateNamedRange != null) {
      _json["updateNamedRange"] = (updateNamedRange).toJson();
    }
    if (updateProtectedRange != null) {
      _json["updateProtectedRange"] = (updateProtectedRange).toJson();
    }
    if (updateSheetProperties != null) {
      _json["updateSheetProperties"] = (updateSheetProperties).toJson();
    }
    if (updateSpreadsheetProperties != null) {
      _json["updateSpreadsheetProperties"] =
          (updateSpreadsheetProperties).toJson();
    }
    return _json;
  }
}

/// A single response from an update.
class Response {
  /// A reply from adding a banded range.
  AddBandingResponse addBanding;

  /// A reply from adding a chart.
  AddChartResponse addChart;

  /// A reply from adding a dimension group.
  AddDimensionGroupResponse addDimensionGroup;

  /// A reply from adding a filter view.
  AddFilterViewResponse addFilterView;

  /// A reply from adding a named range.
  AddNamedRangeResponse addNamedRange;

  /// A reply from adding a protected range.
  AddProtectedRangeResponse addProtectedRange;

  /// A reply from adding a sheet.
  AddSheetResponse addSheet;

  /// A reply from creating a developer metadata entry.
  CreateDeveloperMetadataResponse createDeveloperMetadata;

  /// A reply from deleting a conditional format rule.
  DeleteConditionalFormatRuleResponse deleteConditionalFormatRule;

  /// A reply from deleting a developer metadata entry.
  DeleteDeveloperMetadataResponse deleteDeveloperMetadata;

  /// A reply from deleting a dimension group.
  DeleteDimensionGroupResponse deleteDimensionGroup;

  /// A reply from duplicating a filter view.
  DuplicateFilterViewResponse duplicateFilterView;

  /// A reply from duplicating a sheet.
  DuplicateSheetResponse duplicateSheet;

  /// A reply from doing a find/replace.
  FindReplaceResponse findReplace;

  /// A reply from updating a conditional format rule.
  UpdateConditionalFormatRuleResponse updateConditionalFormatRule;

  /// A reply from updating a developer metadata entry.
  UpdateDeveloperMetadataResponse updateDeveloperMetadata;

  /// A reply from updating an embedded object's position.
  UpdateEmbeddedObjectPositionResponse updateEmbeddedObjectPosition;

  Response();

  Response.fromJson(core.Map _json) {
    if (_json.containsKey("addBanding")) {
      addBanding = new AddBandingResponse.fromJson(_json["addBanding"]);
    }
    if (_json.containsKey("addChart")) {
      addChart = new AddChartResponse.fromJson(_json["addChart"]);
    }
    if (_json.containsKey("addDimensionGroup")) {
      addDimensionGroup =
          new AddDimensionGroupResponse.fromJson(_json["addDimensionGroup"]);
    }
    if (_json.containsKey("addFilterView")) {
      addFilterView =
          new AddFilterViewResponse.fromJson(_json["addFilterView"]);
    }
    if (_json.containsKey("addNamedRange")) {
      addNamedRange =
          new AddNamedRangeResponse.fromJson(_json["addNamedRange"]);
    }
    if (_json.containsKey("addProtectedRange")) {
      addProtectedRange =
          new AddProtectedRangeResponse.fromJson(_json["addProtectedRange"]);
    }
    if (_json.containsKey("addSheet")) {
      addSheet = new AddSheetResponse.fromJson(_json["addSheet"]);
    }
    if (_json.containsKey("createDeveloperMetadata")) {
      createDeveloperMetadata = new CreateDeveloperMetadataResponse.fromJson(
          _json["createDeveloperMetadata"]);
    }
    if (_json.containsKey("deleteConditionalFormatRule")) {
      deleteConditionalFormatRule =
          new DeleteConditionalFormatRuleResponse.fromJson(
              _json["deleteConditionalFormatRule"]);
    }
    if (_json.containsKey("deleteDeveloperMetadata")) {
      deleteDeveloperMetadata = new DeleteDeveloperMetadataResponse.fromJson(
          _json["deleteDeveloperMetadata"]);
    }
    if (_json.containsKey("deleteDimensionGroup")) {
      deleteDimensionGroup = new DeleteDimensionGroupResponse.fromJson(
          _json["deleteDimensionGroup"]);
    }
    if (_json.containsKey("duplicateFilterView")) {
      duplicateFilterView = new DuplicateFilterViewResponse.fromJson(
          _json["duplicateFilterView"]);
    }
    if (_json.containsKey("duplicateSheet")) {
      duplicateSheet =
          new DuplicateSheetResponse.fromJson(_json["duplicateSheet"]);
    }
    if (_json.containsKey("findReplace")) {
      findReplace = new FindReplaceResponse.fromJson(_json["findReplace"]);
    }
    if (_json.containsKey("updateConditionalFormatRule")) {
      updateConditionalFormatRule =
          new UpdateConditionalFormatRuleResponse.fromJson(
              _json["updateConditionalFormatRule"]);
    }
    if (_json.containsKey("updateDeveloperMetadata")) {
      updateDeveloperMetadata = new UpdateDeveloperMetadataResponse.fromJson(
          _json["updateDeveloperMetadata"]);
    }
    if (_json.containsKey("updateEmbeddedObjectPosition")) {
      updateEmbeddedObjectPosition =
          new UpdateEmbeddedObjectPositionResponse.fromJson(
              _json["updateEmbeddedObjectPosition"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addBanding != null) {
      _json["addBanding"] = (addBanding).toJson();
    }
    if (addChart != null) {
      _json["addChart"] = (addChart).toJson();
    }
    if (addDimensionGroup != null) {
      _json["addDimensionGroup"] = (addDimensionGroup).toJson();
    }
    if (addFilterView != null) {
      _json["addFilterView"] = (addFilterView).toJson();
    }
    if (addNamedRange != null) {
      _json["addNamedRange"] = (addNamedRange).toJson();
    }
    if (addProtectedRange != null) {
      _json["addProtectedRange"] = (addProtectedRange).toJson();
    }
    if (addSheet != null) {
      _json["addSheet"] = (addSheet).toJson();
    }
    if (createDeveloperMetadata != null) {
      _json["createDeveloperMetadata"] = (createDeveloperMetadata).toJson();
    }
    if (deleteConditionalFormatRule != null) {
      _json["deleteConditionalFormatRule"] =
          (deleteConditionalFormatRule).toJson();
    }
    if (deleteDeveloperMetadata != null) {
      _json["deleteDeveloperMetadata"] = (deleteDeveloperMetadata).toJson();
    }
    if (deleteDimensionGroup != null) {
      _json["deleteDimensionGroup"] = (deleteDimensionGroup).toJson();
    }
    if (duplicateFilterView != null) {
      _json["duplicateFilterView"] = (duplicateFilterView).toJson();
    }
    if (duplicateSheet != null) {
      _json["duplicateSheet"] = (duplicateSheet).toJson();
    }
    if (findReplace != null) {
      _json["findReplace"] = (findReplace).toJson();
    }
    if (updateConditionalFormatRule != null) {
      _json["updateConditionalFormatRule"] =
          (updateConditionalFormatRule).toJson();
    }
    if (updateDeveloperMetadata != null) {
      _json["updateDeveloperMetadata"] = (updateDeveloperMetadata).toJson();
    }
    if (updateEmbeddedObjectPosition != null) {
      _json["updateEmbeddedObjectPosition"] =
          (updateEmbeddedObjectPosition).toJson();
    }
    return _json;
  }
}

/// Data about each cell in a row.
class RowData {
  /// The values in the row, one per column.
  core.List<CellData> values;

  RowData();

  RowData.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<CellData>((value) => new CellData.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A request to retrieve all developer metadata matching the set of specified
/// criteria.
class SearchDeveloperMetadataRequest {
  /// The data filters describing the criteria used to determine which
  /// DeveloperMetadata entries to return.  DeveloperMetadata matching any of
  /// the
  /// specified filters will be included in the response.
  core.List<DataFilter> dataFilters;

  SearchDeveloperMetadataRequest();

  SearchDeveloperMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A reply to a developer metadata search request.
class SearchDeveloperMetadataResponse {
  /// The metadata matching the criteria of the search request.
  core.List<MatchedDeveloperMetadata> matchedDeveloperMetadata;

  SearchDeveloperMetadataResponse();

  SearchDeveloperMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matchedDeveloperMetadata")) {
      matchedDeveloperMetadata =
          (_json["matchedDeveloperMetadata"] as core.List)
              .map<MatchedDeveloperMetadata>(
                  (value) => new MatchedDeveloperMetadata.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matchedDeveloperMetadata != null) {
      _json["matchedDeveloperMetadata"] =
          matchedDeveloperMetadata.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Sets the basic filter associated with a sheet.
class SetBasicFilterRequest {
  /// The filter to set.
  BasicFilter filter;

  SetBasicFilterRequest();

  SetBasicFilterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = new BasicFilter.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// Sets a data validation rule to every cell in the range.
/// To clear validation in a range, call this with no rule specified.
class SetDataValidationRequest {
  /// The range the data validation rule should apply to.
  GridRange range;

  /// The data validation rule to set on each cell in the range,
  /// or empty to clear the data validation in the range.
  DataValidationRule rule;

  SetDataValidationRequest();

  SetDataValidationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("rule")) {
      rule = new DataValidationRule.fromJson(_json["rule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (rule != null) {
      _json["rule"] = (rule).toJson();
    }
    return _json;
  }
}

/// A sheet in a spreadsheet.
class Sheet {
  /// The banded (alternating colors) ranges on this sheet.
  core.List<BandedRange> bandedRanges;

  /// The filter on this sheet, if any.
  BasicFilter basicFilter;

  /// The specifications of every chart on this sheet.
  core.List<EmbeddedChart> charts;

  /// All column groups on this sheet, ordered by increasing range start index,
  /// then by group depth.
  core.List<DimensionGroup> columnGroups;

  /// The conditional format rules in this sheet.
  core.List<ConditionalFormatRule> conditionalFormats;

  /// Data in the grid, if this is a grid sheet.
  /// The number of GridData objects returned is dependent on the number of
  /// ranges requested on this sheet. For example, if this is representing
  /// `Sheet1`, and the spreadsheet was requested with ranges
  /// `Sheet1!A1:C10` and `Sheet1!D15:E20`, then the first GridData will have a
  /// startRow/startColumn of `0`,
  /// while the second one will have `startRow 14` (zero-based row 15),
  /// and `startColumn 3` (zero-based column D).
  core.List<GridData> data;

  /// The developer metadata associated with a sheet.
  core.List<DeveloperMetadata> developerMetadata;

  /// The filter views in this sheet.
  core.List<FilterView> filterViews;

  /// The ranges that are merged together.
  core.List<GridRange> merges;

  /// The properties of the sheet.
  SheetProperties properties;

  /// The protected ranges in this sheet.
  core.List<ProtectedRange> protectedRanges;

  /// All row groups on this sheet, ordered by increasing range start index,
  /// then
  /// by group depth.
  core.List<DimensionGroup> rowGroups;

  Sheet();

  Sheet.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRanges")) {
      bandedRanges = (_json["bandedRanges"] as core.List)
          .map<BandedRange>((value) => new BandedRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("basicFilter")) {
      basicFilter = new BasicFilter.fromJson(_json["basicFilter"]);
    }
    if (_json.containsKey("charts")) {
      charts = (_json["charts"] as core.List)
          .map<EmbeddedChart>((value) => new EmbeddedChart.fromJson(value))
          .toList();
    }
    if (_json.containsKey("columnGroups")) {
      columnGroups = (_json["columnGroups"] as core.List)
          .map<DimensionGroup>((value) => new DimensionGroup.fromJson(value))
          .toList();
    }
    if (_json.containsKey("conditionalFormats")) {
      conditionalFormats = (_json["conditionalFormats"] as core.List)
          .map<ConditionalFormatRule>(
              (value) => new ConditionalFormatRule.fromJson(value))
          .toList();
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<GridData>((value) => new GridData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("developerMetadata")) {
      developerMetadata = (_json["developerMetadata"] as core.List)
          .map<DeveloperMetadata>(
              (value) => new DeveloperMetadata.fromJson(value))
          .toList();
    }
    if (_json.containsKey("filterViews")) {
      filterViews = (_json["filterViews"] as core.List)
          .map<FilterView>((value) => new FilterView.fromJson(value))
          .toList();
    }
    if (_json.containsKey("merges")) {
      merges = (_json["merges"] as core.List)
          .map<GridRange>((value) => new GridRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("properties")) {
      properties = new SheetProperties.fromJson(_json["properties"]);
    }
    if (_json.containsKey("protectedRanges")) {
      protectedRanges = (_json["protectedRanges"] as core.List)
          .map<ProtectedRange>((value) => new ProtectedRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("rowGroups")) {
      rowGroups = (_json["rowGroups"] as core.List)
          .map<DimensionGroup>((value) => new DimensionGroup.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRanges != null) {
      _json["bandedRanges"] =
          bandedRanges.map((value) => (value).toJson()).toList();
    }
    if (basicFilter != null) {
      _json["basicFilter"] = (basicFilter).toJson();
    }
    if (charts != null) {
      _json["charts"] = charts.map((value) => (value).toJson()).toList();
    }
    if (columnGroups != null) {
      _json["columnGroups"] =
          columnGroups.map((value) => (value).toJson()).toList();
    }
    if (conditionalFormats != null) {
      _json["conditionalFormats"] =
          conditionalFormats.map((value) => (value).toJson()).toList();
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (developerMetadata != null) {
      _json["developerMetadata"] =
          developerMetadata.map((value) => (value).toJson()).toList();
    }
    if (filterViews != null) {
      _json["filterViews"] =
          filterViews.map((value) => (value).toJson()).toList();
    }
    if (merges != null) {
      _json["merges"] = merges.map((value) => (value).toJson()).toList();
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    if (protectedRanges != null) {
      _json["protectedRanges"] =
          protectedRanges.map((value) => (value).toJson()).toList();
    }
    if (rowGroups != null) {
      _json["rowGroups"] = rowGroups.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Properties of a sheet.
class SheetProperties {
  /// Additional properties of the sheet if this sheet is a grid.
  /// (If the sheet is an object sheet, containing a chart or image, then
  /// this field will be absent.)
  /// When writing it is an error to set any grid properties on non-grid sheets.
  GridProperties gridProperties;

  /// True if the sheet is hidden in the UI, false if it's visible.
  core.bool hidden;

  /// The index of the sheet within the spreadsheet.
  /// When adding or updating sheet properties, if this field
  /// is excluded then the sheet is added or moved to the end
  /// of the sheet list. When updating sheet indices or inserting
  /// sheets, movement is considered in "before the move" indexes.
  /// For example, if there were 3 sheets (S1, S2, S3) in order to
  /// move S1 ahead of S2 the index would have to be set to 2. A sheet
  /// index update request is ignored if the requested index is
  /// identical to the sheets current index or if the requested new
  /// index is equal to the current sheet index + 1.
  core.int index;

  /// True if the sheet is an RTL sheet instead of an LTR sheet.
  core.bool rightToLeft;

  /// The ID of the sheet. Must be non-negative.
  /// This field cannot be changed once set.
  core.int sheetId;

  /// The type of sheet. Defaults to GRID.
  /// This field cannot be changed once set.
  /// Possible string values are:
  /// - "SHEET_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "GRID" : The sheet is a grid.
  /// - "OBJECT" : The sheet has no grid and instead has an object like a chart
  /// or image.
  core.String sheetType;

  /// The color of the tab in the UI.
  Color tabColor;

  /// The name of the sheet.
  core.String title;

  SheetProperties();

  SheetProperties.fromJson(core.Map _json) {
    if (_json.containsKey("gridProperties")) {
      gridProperties = new GridProperties.fromJson(_json["gridProperties"]);
    }
    if (_json.containsKey("hidden")) {
      hidden = _json["hidden"];
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("rightToLeft")) {
      rightToLeft = _json["rightToLeft"];
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
    if (_json.containsKey("sheetType")) {
      sheetType = _json["sheetType"];
    }
    if (_json.containsKey("tabColor")) {
      tabColor = new Color.fromJson(_json["tabColor"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gridProperties != null) {
      _json["gridProperties"] = (gridProperties).toJson();
    }
    if (hidden != null) {
      _json["hidden"] = hidden;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (rightToLeft != null) {
      _json["rightToLeft"] = rightToLeft;
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    if (sheetType != null) {
      _json["sheetType"] = sheetType;
    }
    if (tabColor != null) {
      _json["tabColor"] = (tabColor).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Sorts data in rows based on a sort order per column.
class SortRangeRequest {
  /// The range to sort.
  GridRange range;

  /// The sort order per column. Later specifications are used when values
  /// are equal in the earlier specifications.
  core.List<SortSpec> sortSpecs;

  SortRangeRequest();

  SortRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("sortSpecs")) {
      sortSpecs = (_json["sortSpecs"] as core.List)
          .map<SortSpec>((value) => new SortSpec.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (sortSpecs != null) {
      _json["sortSpecs"] = sortSpecs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A sort order associated with a specific column or row.
class SortSpec {
  /// The dimension the sort should be applied to.
  core.int dimensionIndex;

  /// The order data should be sorted.
  /// Possible string values are:
  /// - "SORT_ORDER_UNSPECIFIED" : Default value, do not use this.
  /// - "ASCENDING" : Sort ascending.
  /// - "DESCENDING" : Sort descending.
  core.String sortOrder;

  SortSpec();

  SortSpec.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionIndex")) {
      dimensionIndex = _json["dimensionIndex"];
    }
    if (_json.containsKey("sortOrder")) {
      sortOrder = _json["sortOrder"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensionIndex != null) {
      _json["dimensionIndex"] = dimensionIndex;
    }
    if (sortOrder != null) {
      _json["sortOrder"] = sortOrder;
    }
    return _json;
  }
}

/// A combination of a source range and how to extend that source.
class SourceAndDestination {
  /// The dimension that data should be filled into.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String dimension;

  /// The number of rows or columns that data should be filled into.
  /// Positive numbers expand beyond the last row or last column
  /// of the source.  Negative numbers expand before the first row
  /// or first column of the source.
  core.int fillLength;

  /// The location of the data to use as the source of the autofill.
  GridRange source;

  SourceAndDestination();

  SourceAndDestination.fromJson(core.Map _json) {
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("fillLength")) {
      fillLength = _json["fillLength"];
    }
    if (_json.containsKey("source")) {
      source = new GridRange.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (fillLength != null) {
      _json["fillLength"] = fillLength;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// Resource that represents a spreadsheet.
class Spreadsheet {
  /// The developer metadata associated with a spreadsheet.
  core.List<DeveloperMetadata> developerMetadata;

  /// The named ranges defined in a spreadsheet.
  core.List<NamedRange> namedRanges;

  /// Overall properties of a spreadsheet.
  SpreadsheetProperties properties;

  /// The sheets that are part of a spreadsheet.
  core.List<Sheet> sheets;

  /// The ID of the spreadsheet.
  /// This field is read-only.
  core.String spreadsheetId;

  /// The url of the spreadsheet.
  /// This field is read-only.
  core.String spreadsheetUrl;

  Spreadsheet();

  Spreadsheet.fromJson(core.Map _json) {
    if (_json.containsKey("developerMetadata")) {
      developerMetadata = (_json["developerMetadata"] as core.List)
          .map<DeveloperMetadata>(
              (value) => new DeveloperMetadata.fromJson(value))
          .toList();
    }
    if (_json.containsKey("namedRanges")) {
      namedRanges = (_json["namedRanges"] as core.List)
          .map<NamedRange>((value) => new NamedRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("properties")) {
      properties = new SpreadsheetProperties.fromJson(_json["properties"]);
    }
    if (_json.containsKey("sheets")) {
      sheets = (_json["sheets"] as core.List)
          .map<Sheet>((value) => new Sheet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("spreadsheetUrl")) {
      spreadsheetUrl = _json["spreadsheetUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (developerMetadata != null) {
      _json["developerMetadata"] =
          developerMetadata.map((value) => (value).toJson()).toList();
    }
    if (namedRanges != null) {
      _json["namedRanges"] =
          namedRanges.map((value) => (value).toJson()).toList();
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    if (sheets != null) {
      _json["sheets"] = sheets.map((value) => (value).toJson()).toList();
    }
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (spreadsheetUrl != null) {
      _json["spreadsheetUrl"] = spreadsheetUrl;
    }
    return _json;
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
  core.String autoRecalc;

  /// The default format of all cells in the spreadsheet.
  /// CellData.effectiveFormat will not be set if
  /// the cell's format is equal to this default format. This field is
  /// read-only.
  CellFormat defaultFormat;

  /// Determines whether and how circular references are resolved with iterative
  /// calculation.  Absence of this field means that circular references will
  /// result in calculation errors.
  IterativeCalculationSettings iterativeCalculationSettings;

  /// The locale of the spreadsheet in one of the following formats:
  ///
  /// * an ISO 639-1 language code such as `en`
  ///
  /// * an ISO 639-2 language code such as `fil`, if no 639-1 code exists
  ///
  /// * a combination of the ISO language code and country code, such as `en_US`
  ///
  /// Note: when updating this field, not all locales/languages are supported.
  core.String locale;

  /// The time zone of the spreadsheet, in CLDR format such as
  /// `America/New_York`. If the time zone isn't recognized, this may
  /// be a custom time zone such as `GMT-07:00`.
  core.String timeZone;

  /// The title of the spreadsheet.
  core.String title;

  SpreadsheetProperties();

  SpreadsheetProperties.fromJson(core.Map _json) {
    if (_json.containsKey("autoRecalc")) {
      autoRecalc = _json["autoRecalc"];
    }
    if (_json.containsKey("defaultFormat")) {
      defaultFormat = new CellFormat.fromJson(_json["defaultFormat"]);
    }
    if (_json.containsKey("iterativeCalculationSettings")) {
      iterativeCalculationSettings = new IterativeCalculationSettings.fromJson(
          _json["iterativeCalculationSettings"]);
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (autoRecalc != null) {
      _json["autoRecalc"] = autoRecalc;
    }
    if (defaultFormat != null) {
      _json["defaultFormat"] = (defaultFormat).toJson();
    }
    if (iterativeCalculationSettings != null) {
      _json["iterativeCalculationSettings"] =
          (iterativeCalculationSettings).toJson();
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// The format of a run of text in a cell.
/// Absent values indicate that the field isn't specified.
class TextFormat {
  /// True if the text is bold.
  core.bool bold;

  /// The font family.
  core.String fontFamily;

  /// The size of the font.
  core.int fontSize;

  /// The foreground color of the text.
  Color foregroundColor;

  /// True if the text is italicized.
  core.bool italic;

  /// True if the text has a strikethrough.
  core.bool strikethrough;

  /// True if the text is underlined.
  core.bool underline;

  TextFormat();

  TextFormat.fromJson(core.Map _json) {
    if (_json.containsKey("bold")) {
      bold = _json["bold"];
    }
    if (_json.containsKey("fontFamily")) {
      fontFamily = _json["fontFamily"];
    }
    if (_json.containsKey("fontSize")) {
      fontSize = _json["fontSize"];
    }
    if (_json.containsKey("foregroundColor")) {
      foregroundColor = new Color.fromJson(_json["foregroundColor"]);
    }
    if (_json.containsKey("italic")) {
      italic = _json["italic"];
    }
    if (_json.containsKey("strikethrough")) {
      strikethrough = _json["strikethrough"];
    }
    if (_json.containsKey("underline")) {
      underline = _json["underline"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bold != null) {
      _json["bold"] = bold;
    }
    if (fontFamily != null) {
      _json["fontFamily"] = fontFamily;
    }
    if (fontSize != null) {
      _json["fontSize"] = fontSize;
    }
    if (foregroundColor != null) {
      _json["foregroundColor"] = (foregroundColor).toJson();
    }
    if (italic != null) {
      _json["italic"] = italic;
    }
    if (strikethrough != null) {
      _json["strikethrough"] = strikethrough;
    }
    if (underline != null) {
      _json["underline"] = underline;
    }
    return _json;
  }
}

/// A run of a text format. The format of this run continues until the start
/// index of the next run.
/// When updating, all fields must be set.
class TextFormatRun {
  /// The format of this run.  Absent values inherit the cell's format.
  TextFormat format;

  /// The character index where this run starts.
  core.int startIndex;

  TextFormatRun();

  TextFormatRun.fromJson(core.Map _json) {
    if (_json.containsKey("format")) {
      format = new TextFormat.fromJson(_json["format"]);
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (format != null) {
      _json["format"] = (format).toJson();
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    return _json;
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
  core.String horizontalAlignment;

  TextPosition();

  TextPosition.fromJson(core.Map _json) {
    if (_json.containsKey("horizontalAlignment")) {
      horizontalAlignment = _json["horizontalAlignment"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (horizontalAlignment != null) {
      _json["horizontalAlignment"] = horizontalAlignment;
    }
    return _json;
  }
}

/// The rotation applied to text in a cell.
class TextRotation {
  /// The angle between the standard orientation and the desired orientation.
  /// Measured in degrees. Valid values are between -90 and 90. Positive
  /// angles are angled upwards, negative are angled downwards.
  ///
  /// Note: For LTR text direction positive angles are in the
  /// counterclockwise direction, whereas for RTL they are in the clockwise
  /// direction
  core.int angle;

  /// If true, text reads top to bottom, but the orientation of individual
  /// characters is unchanged.
  /// For example:
  ///
  ///     | V |
  ///     | e |
  ///     | r |
  ///     | t |
  ///     | i |
  ///     | c |
  ///     | a |
  ///     | l |
  core.bool vertical;

  TextRotation();

  TextRotation.fromJson(core.Map _json) {
    if (_json.containsKey("angle")) {
      angle = _json["angle"];
    }
    if (_json.containsKey("vertical")) {
      vertical = _json["vertical"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (angle != null) {
      _json["angle"] = angle;
    }
    if (vertical != null) {
      _json["vertical"] = vertical;
    }
    return _json;
  }
}

/// Splits a column of text into multiple columns,
/// based on a delimiter in each cell.
class TextToColumnsRequest {
  /// The delimiter to use. Used only if delimiterType is
  /// CUSTOM.
  core.String delimiter;

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
  core.String delimiterType;

  /// The source data range.  This must span exactly one column.
  GridRange source;

  TextToColumnsRequest();

  TextToColumnsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("delimiter")) {
      delimiter = _json["delimiter"];
    }
    if (_json.containsKey("delimiterType")) {
      delimiterType = _json["delimiterType"];
    }
    if (_json.containsKey("source")) {
      source = new GridRange.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delimiter != null) {
      _json["delimiter"] = delimiter;
    }
    if (delimiterType != null) {
      _json["delimiterType"] = delimiterType;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// A color scale for a treemap chart.
class TreemapChartColorScale {
  /// The background color for cells with a color value greater than or equal
  /// to maxValue. Defaults to #109618 if not
  /// specified.
  Color maxValueColor;

  /// The background color for cells with a color value at the midpoint between
  /// minValue and
  /// maxValue. Defaults to #efe6dc if not
  /// specified.
  Color midValueColor;

  /// The background color for cells with a color value less than or equal to
  /// minValue. Defaults to #dc3912 if not
  /// specified.
  Color minValueColor;

  /// The background color for cells that have no color data associated with
  /// them. Defaults to #000000 if not specified.
  Color noDataColor;

  TreemapChartColorScale();

  TreemapChartColorScale.fromJson(core.Map _json) {
    if (_json.containsKey("maxValueColor")) {
      maxValueColor = new Color.fromJson(_json["maxValueColor"]);
    }
    if (_json.containsKey("midValueColor")) {
      midValueColor = new Color.fromJson(_json["midValueColor"]);
    }
    if (_json.containsKey("minValueColor")) {
      minValueColor = new Color.fromJson(_json["minValueColor"]);
    }
    if (_json.containsKey("noDataColor")) {
      noDataColor = new Color.fromJson(_json["noDataColor"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxValueColor != null) {
      _json["maxValueColor"] = (maxValueColor).toJson();
    }
    if (midValueColor != null) {
      _json["midValueColor"] = (midValueColor).toJson();
    }
    if (minValueColor != null) {
      _json["minValueColor"] = (minValueColor).toJson();
    }
    if (noDataColor != null) {
      _json["noDataColor"] = (noDataColor).toJson();
    }
    return _json;
  }
}

/// A <a href="/chart/interactive/docs/gallery/treemap">Treemap chart</a>.
class TreemapChartSpec {
  /// The data that determines the background color of each treemap data cell.
  /// This field is optional. If not specified, size_data is used to
  /// determine background colors. If specified, the data is expected to be
  /// numeric. color_scale will determine how the values in this data map to
  /// data cell background colors.
  ChartData colorData;

  /// The color scale for data cells in the treemap chart. Data cells are
  /// assigned colors based on their color values. These color values come from
  /// color_data, or from size_data if color_data is not specified.
  /// Cells with color values less than or equal to min_value will
  /// have minValueColor as their
  /// background color. Cells with color values greater than or equal to
  /// max_value will have
  /// maxValueColor as their background
  /// color. Cells with color values between min_value and max_value will
  /// have background colors on a gradient between
  /// minValueColor and
  /// maxValueColor, the midpoint of
  /// the gradient being midValueColor.
  /// Cells with missing or non-numeric color values will have
  /// noDataColor as their background
  /// color.
  TreemapChartColorScale colorScale;

  /// The background color for header cells.
  Color headerColor;

  /// True to hide tooltips.
  core.bool hideTooltips;

  /// The number of additional data levels beyond the labeled levels to be shown
  /// on the treemap chart. These levels are not interactive and are shown
  /// without their labels. Defaults to 0 if not specified.
  core.int hintedLevels;

  /// The data that contains the treemap cell labels.
  ChartData labels;

  /// The number of data levels to show on the treemap chart. These levels are
  /// interactive and are shown with their labels. Defaults to 2 if not
  /// specified.
  core.int levels;

  /// The maximum possible data value. Cells with values greater than this will
  /// have the same color as cells with this value. If not specified, defaults
  /// to the actual maximum value from color_data, or the maximum value from
  /// size_data if color_data is not specified.
  core.double maxValue;

  /// The minimum possible data value. Cells with values less than this will
  /// have the same color as cells with this value. If not specified, defaults
  /// to the actual minimum value from color_data, or the minimum value from
  /// size_data if color_data is not specified.
  core.double minValue;

  /// The data the contains the treemap cells' parent labels.
  ChartData parentLabels;

  /// The data that determines the size of each treemap data cell. This data is
  /// expected to be numeric. The cells corresponding to non-numeric or missing
  /// data will not be rendered. If color_data is not specified, this data
  /// is used to determine data cell background colors as well.
  ChartData sizeData;

  /// The text format for all labels on the chart.
  TextFormat textFormat;

  TreemapChartSpec();

  TreemapChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("colorData")) {
      colorData = new ChartData.fromJson(_json["colorData"]);
    }
    if (_json.containsKey("colorScale")) {
      colorScale = new TreemapChartColorScale.fromJson(_json["colorScale"]);
    }
    if (_json.containsKey("headerColor")) {
      headerColor = new Color.fromJson(_json["headerColor"]);
    }
    if (_json.containsKey("hideTooltips")) {
      hideTooltips = _json["hideTooltips"];
    }
    if (_json.containsKey("hintedLevels")) {
      hintedLevels = _json["hintedLevels"];
    }
    if (_json.containsKey("labels")) {
      labels = new ChartData.fromJson(_json["labels"]);
    }
    if (_json.containsKey("levels")) {
      levels = _json["levels"];
    }
    if (_json.containsKey("maxValue")) {
      maxValue = _json["maxValue"].toDouble();
    }
    if (_json.containsKey("minValue")) {
      minValue = _json["minValue"].toDouble();
    }
    if (_json.containsKey("parentLabels")) {
      parentLabels = new ChartData.fromJson(_json["parentLabels"]);
    }
    if (_json.containsKey("sizeData")) {
      sizeData = new ChartData.fromJson(_json["sizeData"]);
    }
    if (_json.containsKey("textFormat")) {
      textFormat = new TextFormat.fromJson(_json["textFormat"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (colorData != null) {
      _json["colorData"] = (colorData).toJson();
    }
    if (colorScale != null) {
      _json["colorScale"] = (colorScale).toJson();
    }
    if (headerColor != null) {
      _json["headerColor"] = (headerColor).toJson();
    }
    if (hideTooltips != null) {
      _json["hideTooltips"] = hideTooltips;
    }
    if (hintedLevels != null) {
      _json["hintedLevels"] = hintedLevels;
    }
    if (labels != null) {
      _json["labels"] = (labels).toJson();
    }
    if (levels != null) {
      _json["levels"] = levels;
    }
    if (maxValue != null) {
      _json["maxValue"] = maxValue;
    }
    if (minValue != null) {
      _json["minValue"] = minValue;
    }
    if (parentLabels != null) {
      _json["parentLabels"] = (parentLabels).toJson();
    }
    if (sizeData != null) {
      _json["sizeData"] = (sizeData).toJson();
    }
    if (textFormat != null) {
      _json["textFormat"] = (textFormat).toJson();
    }
    return _json;
  }
}

/// Unmerges cells in the given range.
class UnmergeCellsRequest {
  /// The range within which all cells should be unmerged.
  /// If the range spans multiple merges, all will be unmerged.
  /// The range must not partially span any merge.
  GridRange range;

  UnmergeCellsRequest();

  UnmergeCellsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Updates properties of the supplied banded range.
class UpdateBandingRequest {
  /// The banded range to update with the new properties.
  BandedRange bandedRange;

  /// The fields that should be updated.  At least one field must be specified.
  /// The root `bandedRange` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  UpdateBandingRequest();

  UpdateBandingRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bandedRange")) {
      bandedRange = new BandedRange.fromJson(_json["bandedRange"]);
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bandedRange != null) {
      _json["bandedRange"] = (bandedRange).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    return _json;
  }
}

/// Updates the borders of a range.
/// If a field is not set in the request, that means the border remains as-is.
/// For example, with two subsequent UpdateBordersRequest:
///
///  1. range: A1:A5 `{ top: RED, bottom: WHITE }`
///  2. range: A1:A5 `{ left: BLUE }`
///
/// That would result in A1:A5 having a borders of
/// `{ top: RED, bottom: WHITE, left: BLUE }`.
/// If you want to clear a border, explicitly set the style to
/// NONE.
class UpdateBordersRequest {
  /// The border to put at the bottom of the range.
  Border bottom;

  /// The horizontal border to put within the range.
  Border innerHorizontal;

  /// The vertical border to put within the range.
  Border innerVertical;

  /// The border to put at the left of the range.
  Border left;

  /// The range whose borders should be updated.
  GridRange range;

  /// The border to put at the right of the range.
  Border right;

  /// The border to put at the top of the range.
  Border top;

  UpdateBordersRequest();

  UpdateBordersRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bottom")) {
      bottom = new Border.fromJson(_json["bottom"]);
    }
    if (_json.containsKey("innerHorizontal")) {
      innerHorizontal = new Border.fromJson(_json["innerHorizontal"]);
    }
    if (_json.containsKey("innerVertical")) {
      innerVertical = new Border.fromJson(_json["innerVertical"]);
    }
    if (_json.containsKey("left")) {
      left = new Border.fromJson(_json["left"]);
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("right")) {
      right = new Border.fromJson(_json["right"]);
    }
    if (_json.containsKey("top")) {
      top = new Border.fromJson(_json["top"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bottom != null) {
      _json["bottom"] = (bottom).toJson();
    }
    if (innerHorizontal != null) {
      _json["innerHorizontal"] = (innerHorizontal).toJson();
    }
    if (innerVertical != null) {
      _json["innerVertical"] = (innerVertical).toJson();
    }
    if (left != null) {
      _json["left"] = (left).toJson();
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (right != null) {
      _json["right"] = (right).toJson();
    }
    if (top != null) {
      _json["top"] = (top).toJson();
    }
    return _json;
  }
}

/// Updates all cells in a range with new data.
class UpdateCellsRequest {
  /// The fields of CellData that should be updated.
  /// At least one field must be specified.
  /// The root is the CellData; 'row.values.' should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The range to write data to.
  ///
  /// If the data in rows does not cover the entire requested range,
  /// the fields matching those set in fields will be cleared.
  GridRange range;

  /// The data to write.
  core.List<RowData> rows;

  /// The coordinate to start writing data at.
  /// Any number of rows and columns (including a different number of
  /// columns per row) may be written.
  GridCoordinate start;

  UpdateCellsRequest();

  UpdateCellsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("range")) {
      range = new GridRange.fromJson(_json["range"]);
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<RowData>((value) => new RowData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("start")) {
      start = new GridCoordinate.fromJson(_json["start"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (rows != null) {
      _json["rows"] = rows.map((value) => (value).toJson()).toList();
    }
    if (start != null) {
      _json["start"] = (start).toJson();
    }
    return _json;
  }
}

/// Updates a chart's specifications.
/// (This does not move or resize a chart. To move or resize a chart, use
///  UpdateEmbeddedObjectPositionRequest.)
class UpdateChartSpecRequest {
  /// The ID of the chart to update.
  core.int chartId;

  /// The specification to apply to the chart.
  ChartSpec spec;

  UpdateChartSpecRequest();

  UpdateChartSpecRequest.fromJson(core.Map _json) {
    if (_json.containsKey("chartId")) {
      chartId = _json["chartId"];
    }
    if (_json.containsKey("spec")) {
      spec = new ChartSpec.fromJson(_json["spec"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chartId != null) {
      _json["chartId"] = chartId;
    }
    if (spec != null) {
      _json["spec"] = (spec).toJson();
    }
    return _json;
  }
}

/// Updates a conditional format rule at the given index,
/// or moves a conditional format rule to another index.
class UpdateConditionalFormatRuleRequest {
  /// The zero-based index of the rule that should be replaced or moved.
  core.int index;

  /// The zero-based new index the rule should end up at.
  core.int newIndex;

  /// The rule that should replace the rule at the given index.
  ConditionalFormatRule rule;

  /// The sheet of the rule to move.  Required if new_index is set,
  /// unused otherwise.
  core.int sheetId;

  UpdateConditionalFormatRuleRequest();

  UpdateConditionalFormatRuleRequest.fromJson(core.Map _json) {
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("newIndex")) {
      newIndex = _json["newIndex"];
    }
    if (_json.containsKey("rule")) {
      rule = new ConditionalFormatRule.fromJson(_json["rule"]);
    }
    if (_json.containsKey("sheetId")) {
      sheetId = _json["sheetId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (index != null) {
      _json["index"] = index;
    }
    if (newIndex != null) {
      _json["newIndex"] = newIndex;
    }
    if (rule != null) {
      _json["rule"] = (rule).toJson();
    }
    if (sheetId != null) {
      _json["sheetId"] = sheetId;
    }
    return _json;
  }
}

/// The result of updating a conditional format rule.
class UpdateConditionalFormatRuleResponse {
  /// The index of the new rule.
  core.int newIndex;

  /// The new rule that replaced the old rule (if replacing),
  /// or the rule that was moved (if moved)
  ConditionalFormatRule newRule;

  /// The old index of the rule. Not set if a rule was replaced
  /// (because it is the same as new_index).
  core.int oldIndex;

  /// The old (deleted) rule. Not set if a rule was moved
  /// (because it is the same as new_rule).
  ConditionalFormatRule oldRule;

  UpdateConditionalFormatRuleResponse();

  UpdateConditionalFormatRuleResponse.fromJson(core.Map _json) {
    if (_json.containsKey("newIndex")) {
      newIndex = _json["newIndex"];
    }
    if (_json.containsKey("newRule")) {
      newRule = new ConditionalFormatRule.fromJson(_json["newRule"]);
    }
    if (_json.containsKey("oldIndex")) {
      oldIndex = _json["oldIndex"];
    }
    if (_json.containsKey("oldRule")) {
      oldRule = new ConditionalFormatRule.fromJson(_json["oldRule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (newIndex != null) {
      _json["newIndex"] = newIndex;
    }
    if (newRule != null) {
      _json["newRule"] = (newRule).toJson();
    }
    if (oldIndex != null) {
      _json["oldIndex"] = oldIndex;
    }
    if (oldRule != null) {
      _json["oldRule"] = (oldRule).toJson();
    }
    return _json;
  }
}

/// A request to update properties of developer metadata.
/// Updates the properties of the developer metadata selected by the filters to
/// the values provided in the DeveloperMetadata resource.  Callers must
/// specify the properties they wish to update in the fields parameter, as well
/// as specify at least one DataFilter matching the metadata they wish to
/// update.
class UpdateDeveloperMetadataRequest {
  /// The filters matching the developer metadata entries to update.
  core.List<DataFilter> dataFilters;

  /// The value that all metadata matched by the data filters will be updated
  /// to.
  DeveloperMetadata developerMetadata;

  /// The fields that should be updated.  At least one field must be specified.
  /// The root `developerMetadata` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  UpdateDeveloperMetadataRequest();

  UpdateDeveloperMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilters")) {
      dataFilters = (_json["dataFilters"] as core.List)
          .map<DataFilter>((value) => new DataFilter.fromJson(value))
          .toList();
    }
    if (_json.containsKey("developerMetadata")) {
      developerMetadata =
          new DeveloperMetadata.fromJson(_json["developerMetadata"]);
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilters != null) {
      _json["dataFilters"] =
          dataFilters.map((value) => (value).toJson()).toList();
    }
    if (developerMetadata != null) {
      _json["developerMetadata"] = (developerMetadata).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    return _json;
  }
}

/// The response from updating developer metadata.
class UpdateDeveloperMetadataResponse {
  /// The updated developer metadata.
  core.List<DeveloperMetadata> developerMetadata;

  UpdateDeveloperMetadataResponse();

  UpdateDeveloperMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey("developerMetadata")) {
      developerMetadata = (_json["developerMetadata"] as core.List)
          .map<DeveloperMetadata>(
              (value) => new DeveloperMetadata.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (developerMetadata != null) {
      _json["developerMetadata"] =
          developerMetadata.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Updates the state of the specified group.
class UpdateDimensionGroupRequest {
  /// The group whose state should be updated. The range and depth of the group
  /// should specify a valid group on the sheet, and all other fields updated.
  DimensionGroup dimensionGroup;

  /// The fields that should be updated.  At least one field must be specified.
  /// The root `dimensionGroup` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  UpdateDimensionGroupRequest();

  UpdateDimensionGroupRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionGroup")) {
      dimensionGroup = new DimensionGroup.fromJson(_json["dimensionGroup"]);
    }
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dimensionGroup != null) {
      _json["dimensionGroup"] = (dimensionGroup).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields;
    }
    return _json;
  }
}

/// Updates properties of dimensions within the specified range.
class UpdateDimensionPropertiesRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root `properties` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// Properties to update.
  DimensionProperties properties;

  /// The rows or columns to update.
  DimensionRange range;

  UpdateDimensionPropertiesRequest();

  UpdateDimensionPropertiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("properties")) {
      properties = new DimensionProperties.fromJson(_json["properties"]);
    }
    if (_json.containsKey("range")) {
      range = new DimensionRange.fromJson(_json["range"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    return _json;
  }
}

/// Update an embedded object's position (such as a moving or resizing a
/// chart or image).
class UpdateEmbeddedObjectPositionRequest {
  /// The fields of OverlayPosition
  /// that should be updated when setting a new position. Used only if
  /// newPosition.overlayPosition
  /// is set, in which case at least one field must
  /// be specified.  The root `newPosition.overlayPosition` is implied and
  /// should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// An explicit position to move the embedded object to.
  /// If newPosition.sheetId is set,
  /// a new sheet with that ID will be created.
  /// If newPosition.newSheet is set to true,
  /// a new sheet will be created with an ID that will be chosen for you.
  EmbeddedObjectPosition newPosition;

  /// The ID of the object to moved.
  core.int objectId;

  UpdateEmbeddedObjectPositionRequest();

  UpdateEmbeddedObjectPositionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("newPosition")) {
      newPosition = new EmbeddedObjectPosition.fromJson(_json["newPosition"]);
    }
    if (_json.containsKey("objectId")) {
      objectId = _json["objectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (newPosition != null) {
      _json["newPosition"] = (newPosition).toJson();
    }
    if (objectId != null) {
      _json["objectId"] = objectId;
    }
    return _json;
  }
}

/// The result of updating an embedded object's position.
class UpdateEmbeddedObjectPositionResponse {
  /// The new position of the embedded object.
  EmbeddedObjectPosition position;

  UpdateEmbeddedObjectPositionResponse();

  UpdateEmbeddedObjectPositionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("position")) {
      position = new EmbeddedObjectPosition.fromJson(_json["position"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    return _json;
  }
}

/// Updates properties of the filter view.
class UpdateFilterViewRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root `filter` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The new properties of the filter view.
  FilterView filter;

  UpdateFilterViewRequest();

  UpdateFilterViewRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("filter")) {
      filter = new FilterView.fromJson(_json["filter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    return _json;
  }
}

/// Updates properties of the named range with the specified
/// namedRangeId.
class UpdateNamedRangeRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root `namedRange` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The named range to update with the new properties.
  NamedRange namedRange;

  UpdateNamedRangeRequest();

  UpdateNamedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("namedRange")) {
      namedRange = new NamedRange.fromJson(_json["namedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (namedRange != null) {
      _json["namedRange"] = (namedRange).toJson();
    }
    return _json;
  }
}

/// Updates an existing protected range with the specified
/// protectedRangeId.
class UpdateProtectedRangeRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root `protectedRange` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The protected range to update with the new properties.
  ProtectedRange protectedRange;

  UpdateProtectedRangeRequest();

  UpdateProtectedRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("protectedRange")) {
      protectedRange = new ProtectedRange.fromJson(_json["protectedRange"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (protectedRange != null) {
      _json["protectedRange"] = (protectedRange).toJson();
    }
    return _json;
  }
}

/// Updates properties of the sheet with the specified
/// sheetId.
class UpdateSheetPropertiesRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root `properties` is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The properties to update.
  SheetProperties properties;

  UpdateSheetPropertiesRequest();

  UpdateSheetPropertiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("properties")) {
      properties = new SheetProperties.fromJson(_json["properties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    return _json;
  }
}

/// Updates properties of a spreadsheet.
class UpdateSpreadsheetPropertiesRequest {
  /// The fields that should be updated.  At least one field must be specified.
  /// The root 'properties' is implied and should not be specified.
  /// A single `"*"` can be used as short-hand for listing every field.
  core.String fields;

  /// The properties to update.
  SpreadsheetProperties properties;

  UpdateSpreadsheetPropertiesRequest();

  UpdateSpreadsheetPropertiesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"];
    }
    if (_json.containsKey("properties")) {
      properties = new SpreadsheetProperties.fromJson(_json["properties"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    return _json;
  }
}

/// The response when updating a range of values by a data filter in a
/// spreadsheet.
class UpdateValuesByDataFilterResponse {
  /// The data filter that selected the range that was updated.
  DataFilter dataFilter;

  /// The number of cells updated.
  core.int updatedCells;

  /// The number of columns where at least one cell in the column was updated.
  core.int updatedColumns;

  /// The values of the cells in the range matched by the dataFilter after all
  /// updates were applied. This is only included if the request's
  /// `includeValuesInResponse` field was `true`.
  ValueRange updatedData;

  /// The range (in A1 notation) that updates were applied to.
  core.String updatedRange;

  /// The number of rows where at least one cell in the row was updated.
  core.int updatedRows;

  UpdateValuesByDataFilterResponse();

  UpdateValuesByDataFilterResponse.fromJson(core.Map _json) {
    if (_json.containsKey("dataFilter")) {
      dataFilter = new DataFilter.fromJson(_json["dataFilter"]);
    }
    if (_json.containsKey("updatedCells")) {
      updatedCells = _json["updatedCells"];
    }
    if (_json.containsKey("updatedColumns")) {
      updatedColumns = _json["updatedColumns"];
    }
    if (_json.containsKey("updatedData")) {
      updatedData = new ValueRange.fromJson(_json["updatedData"]);
    }
    if (_json.containsKey("updatedRange")) {
      updatedRange = _json["updatedRange"];
    }
    if (_json.containsKey("updatedRows")) {
      updatedRows = _json["updatedRows"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataFilter != null) {
      _json["dataFilter"] = (dataFilter).toJson();
    }
    if (updatedCells != null) {
      _json["updatedCells"] = updatedCells;
    }
    if (updatedColumns != null) {
      _json["updatedColumns"] = updatedColumns;
    }
    if (updatedData != null) {
      _json["updatedData"] = (updatedData).toJson();
    }
    if (updatedRange != null) {
      _json["updatedRange"] = updatedRange;
    }
    if (updatedRows != null) {
      _json["updatedRows"] = updatedRows;
    }
    return _json;
  }
}

/// The response when updating a range of values in a spreadsheet.
class UpdateValuesResponse {
  /// The spreadsheet the updates were applied to.
  core.String spreadsheetId;

  /// The number of cells updated.
  core.int updatedCells;

  /// The number of columns where at least one cell in the column was updated.
  core.int updatedColumns;

  /// The values of the cells after updates were applied.
  /// This is only included if the request's `includeValuesInResponse` field
  /// was `true`.
  ValueRange updatedData;

  /// The range (in A1 notation) that updates were applied to.
  core.String updatedRange;

  /// The number of rows where at least one cell in the row was updated.
  core.int updatedRows;

  UpdateValuesResponse();

  UpdateValuesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("spreadsheetId")) {
      spreadsheetId = _json["spreadsheetId"];
    }
    if (_json.containsKey("updatedCells")) {
      updatedCells = _json["updatedCells"];
    }
    if (_json.containsKey("updatedColumns")) {
      updatedColumns = _json["updatedColumns"];
    }
    if (_json.containsKey("updatedData")) {
      updatedData = new ValueRange.fromJson(_json["updatedData"]);
    }
    if (_json.containsKey("updatedRange")) {
      updatedRange = _json["updatedRange"];
    }
    if (_json.containsKey("updatedRows")) {
      updatedRows = _json["updatedRows"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spreadsheetId != null) {
      _json["spreadsheetId"] = spreadsheetId;
    }
    if (updatedCells != null) {
      _json["updatedCells"] = updatedCells;
    }
    if (updatedColumns != null) {
      _json["updatedColumns"] = updatedColumns;
    }
    if (updatedData != null) {
      _json["updatedData"] = (updatedData).toJson();
    }
    if (updatedRange != null) {
      _json["updatedRange"] = updatedRange;
    }
    if (updatedRows != null) {
      _json["updatedRows"] = updatedRows;
    }
    return _json;
  }
}

/// Data within a range of the spreadsheet.
class ValueRange {
  /// The major dimension of the values.
  ///
  /// For output, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`,
  /// then requesting `range=A1:B2,majorDimension=ROWS` will return
  /// `[[1,2],[3,4]]`,
  /// whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return
  /// `[[1,3],[2,4]]`.
  ///
  /// For input, with `range=A1:B2,majorDimension=ROWS` then `[[1,2],[3,4]]`
  /// will set `A1=1,B1=2,A2=3,B2=4`. With `range=A1:B2,majorDimension=COLUMNS`
  /// then `[[1,2],[3,4]]` will set `A1=1,B1=3,A2=2,B2=4`.
  ///
  /// When writing, if this field is not set, it defaults to ROWS.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : The default value, do not use.
  /// - "ROWS" : Operates on the rows of a sheet.
  /// - "COLUMNS" : Operates on the columns of a sheet.
  core.String majorDimension;

  /// The range the values cover, in A1 notation.
  /// For output, this range indicates the entire requested range,
  /// even though the values will exclude trailing rows and columns.
  /// When appending values, this field represents the range to search for a
  /// table, after which values will be appended.
  core.String range;

  /// The data that was read or to be written.  This is an array of arrays,
  /// the outer array representing all the data and each inner array
  /// representing a major dimension. Each item in the inner array
  /// corresponds with one cell.
  ///
  /// For output, empty trailing rows and columns will not be included.
  ///
  /// For input, supported value types are: bool, string, and double.
  /// Null values will be skipped.
  /// To set a cell to an empty value, set the string value to an empty string.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> values;

  ValueRange();

  ValueRange.fromJson(core.Map _json) {
    if (_json.containsKey("majorDimension")) {
      majorDimension = _json["majorDimension"];
    }
    if (_json.containsKey("range")) {
      range = _json["range"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (majorDimension != null) {
      _json["majorDimension"] = majorDimension;
    }
    if (range != null) {
      _json["range"] = range;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Styles for a waterfall chart column.
class WaterfallChartColumnStyle {
  /// The color of the column.
  Color color;

  /// The label of the column's legend.
  core.String label;

  WaterfallChartColumnStyle();

  WaterfallChartColumnStyle.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (label != null) {
      _json["label"] = label;
    }
    return _json;
  }
}

/// A custom subtotal column for a waterfall chart series.
class WaterfallChartCustomSubtotal {
  /// True if the data point at subtotal_index is the subtotal. If false,
  /// the subtotal will be computed and appear after the data point.
  core.bool dataIsSubtotal;

  /// A label for the subtotal column.
  core.String label;

  /// The 0-based index of a data point within the series. If
  /// data_is_subtotal is true, the data point at this index is the
  /// subtotal. Otherwise, the subtotal appears after the data point with
  /// this index. A series can have multiple subtotals at arbitrary indices,
  /// but subtotals do not affect the indices of the data points. For
  /// example, if a series has three data points, their indices will always
  /// be 0, 1, and 2, regardless of how many subtotals exist on the series or
  /// what data points they are associated with.
  core.int subtotalIndex;

  WaterfallChartCustomSubtotal();

  WaterfallChartCustomSubtotal.fromJson(core.Map _json) {
    if (_json.containsKey("dataIsSubtotal")) {
      dataIsSubtotal = _json["dataIsSubtotal"];
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("subtotalIndex")) {
      subtotalIndex = _json["subtotalIndex"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataIsSubtotal != null) {
      _json["dataIsSubtotal"] = dataIsSubtotal;
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (subtotalIndex != null) {
      _json["subtotalIndex"] = subtotalIndex;
    }
    return _json;
  }
}

/// The domain of a waterfall chart.
class WaterfallChartDomain {
  /// The data of the WaterfallChartDomain.
  ChartData data;

  /// True to reverse the order of the domain values (horizontal axis).
  core.bool reversed;

  WaterfallChartDomain();

  WaterfallChartDomain.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = new ChartData.fromJson(_json["data"]);
    }
    if (_json.containsKey("reversed")) {
      reversed = _json["reversed"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = (data).toJson();
    }
    if (reversed != null) {
      _json["reversed"] = reversed;
    }
    return _json;
  }
}

/// A single series of data for a waterfall chart.
class WaterfallChartSeries {
  /// Custom subtotal columns appearing in this series. The order in which
  /// subtotals are defined is not significant. Only one subtotal may be
  /// defined for each data point.
  core.List<WaterfallChartCustomSubtotal> customSubtotals;

  /// The data being visualized in this series.
  ChartData data;

  /// True to hide the subtotal column from the end of the series. By default,
  /// a subtotal column will appear at the end of each series. Setting this
  /// field to true will hide that subtotal column for this series.
  core.bool hideTrailingSubtotal;

  /// Styles for all columns in this series with negative values.
  WaterfallChartColumnStyle negativeColumnsStyle;

  /// Styles for all columns in this series with positive values.
  WaterfallChartColumnStyle positiveColumnsStyle;

  /// Styles for all subtotal columns in this series.
  WaterfallChartColumnStyle subtotalColumnsStyle;

  WaterfallChartSeries();

  WaterfallChartSeries.fromJson(core.Map _json) {
    if (_json.containsKey("customSubtotals")) {
      customSubtotals = (_json["customSubtotals"] as core.List)
          .map<WaterfallChartCustomSubtotal>(
              (value) => new WaterfallChartCustomSubtotal.fromJson(value))
          .toList();
    }
    if (_json.containsKey("data")) {
      data = new ChartData.fromJson(_json["data"]);
    }
    if (_json.containsKey("hideTrailingSubtotal")) {
      hideTrailingSubtotal = _json["hideTrailingSubtotal"];
    }
    if (_json.containsKey("negativeColumnsStyle")) {
      negativeColumnsStyle =
          new WaterfallChartColumnStyle.fromJson(_json["negativeColumnsStyle"]);
    }
    if (_json.containsKey("positiveColumnsStyle")) {
      positiveColumnsStyle =
          new WaterfallChartColumnStyle.fromJson(_json["positiveColumnsStyle"]);
    }
    if (_json.containsKey("subtotalColumnsStyle")) {
      subtotalColumnsStyle =
          new WaterfallChartColumnStyle.fromJson(_json["subtotalColumnsStyle"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customSubtotals != null) {
      _json["customSubtotals"] =
          customSubtotals.map((value) => (value).toJson()).toList();
    }
    if (data != null) {
      _json["data"] = (data).toJson();
    }
    if (hideTrailingSubtotal != null) {
      _json["hideTrailingSubtotal"] = hideTrailingSubtotal;
    }
    if (negativeColumnsStyle != null) {
      _json["negativeColumnsStyle"] = (negativeColumnsStyle).toJson();
    }
    if (positiveColumnsStyle != null) {
      _json["positiveColumnsStyle"] = (positiveColumnsStyle).toJson();
    }
    if (subtotalColumnsStyle != null) {
      _json["subtotalColumnsStyle"] = (subtotalColumnsStyle).toJson();
    }
    return _json;
  }
}

/// A waterfall chart.
class WaterfallChartSpec {
  /// The line style for the connector lines.
  LineStyle connectorLineStyle;

  /// The domain data (horizontal axis) for the waterfall chart.
  WaterfallChartDomain domain;

  /// True to interpret the first value as a total.
  core.bool firstValueIsTotal;

  /// True to hide connector lines between columns.
  core.bool hideConnectorLines;

  /// The data this waterfall chart is visualizing.
  core.List<WaterfallChartSeries> series;

  /// The stacked type.
  /// Possible string values are:
  /// - "WATERFALL_STACKED_TYPE_UNSPECIFIED" : Default value, do not use.
  /// - "STACKED" : Values corresponding to the same domain (horizontal axis)
  /// value will be
  /// stacked vertically.
  /// - "SEQUENTIAL" : Series will spread out along the horizontal axis.
  core.String stackedType;

  WaterfallChartSpec();

  WaterfallChartSpec.fromJson(core.Map _json) {
    if (_json.containsKey("connectorLineStyle")) {
      connectorLineStyle = new LineStyle.fromJson(_json["connectorLineStyle"]);
    }
    if (_json.containsKey("domain")) {
      domain = new WaterfallChartDomain.fromJson(_json["domain"]);
    }
    if (_json.containsKey("firstValueIsTotal")) {
      firstValueIsTotal = _json["firstValueIsTotal"];
    }
    if (_json.containsKey("hideConnectorLines")) {
      hideConnectorLines = _json["hideConnectorLines"];
    }
    if (_json.containsKey("series")) {
      series = (_json["series"] as core.List)
          .map<WaterfallChartSeries>(
              (value) => new WaterfallChartSeries.fromJson(value))
          .toList();
    }
    if (_json.containsKey("stackedType")) {
      stackedType = _json["stackedType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorLineStyle != null) {
      _json["connectorLineStyle"] = (connectorLineStyle).toJson();
    }
    if (domain != null) {
      _json["domain"] = (domain).toJson();
    }
    if (firstValueIsTotal != null) {
      _json["firstValueIsTotal"] = firstValueIsTotal;
    }
    if (hideConnectorLines != null) {
      _json["hideConnectorLines"] = hideConnectorLines;
    }
    if (series != null) {
      _json["series"] = series.map((value) => (value).toJson()).toList();
    }
    if (stackedType != null) {
      _json["stackedType"] = stackedType;
    }
    return _json;
  }
}
