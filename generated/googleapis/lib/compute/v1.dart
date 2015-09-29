// This is a generated file (see the discoveryapis_generator project).

library googleapis.compute.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client compute/v1';

/** API for the Google Compute Engine service. */
class ComputeApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage your Google Compute Engine resources */
  static const ComputeScope = "https://www.googleapis.com/auth/compute";

  /** View your Google Compute Engine resources */
  static const ComputeReadonlyScope = "https://www.googleapis.com/auth/compute.readonly";

  /** Manage your data and permissions in Google Cloud Storage */
  static const DevstorageFullControlScope = "https://www.googleapis.com/auth/devstorage.full_control";

  /** View your data in Google Cloud Storage */
  static const DevstorageReadOnlyScope = "https://www.googleapis.com/auth/devstorage.read_only";

  /** Manage your data in Google Cloud Storage */
  static const DevstorageReadWriteScope = "https://www.googleapis.com/auth/devstorage.read_write";


  final commons.ApiRequester _requester;

  AddressesResourceApi get addresses => new AddressesResourceApi(_requester);
  AutoscalersResourceApi get autoscalers => new AutoscalersResourceApi(_requester);
  BackendServicesResourceApi get backendServices => new BackendServicesResourceApi(_requester);
  DiskTypesResourceApi get diskTypes => new DiskTypesResourceApi(_requester);
  DisksResourceApi get disks => new DisksResourceApi(_requester);
  FirewallsResourceApi get firewalls => new FirewallsResourceApi(_requester);
  ForwardingRulesResourceApi get forwardingRules => new ForwardingRulesResourceApi(_requester);
  GlobalAddressesResourceApi get globalAddresses => new GlobalAddressesResourceApi(_requester);
  GlobalForwardingRulesResourceApi get globalForwardingRules => new GlobalForwardingRulesResourceApi(_requester);
  GlobalOperationsResourceApi get globalOperations => new GlobalOperationsResourceApi(_requester);
  HttpHealthChecksResourceApi get httpHealthChecks => new HttpHealthChecksResourceApi(_requester);
  ImagesResourceApi get images => new ImagesResourceApi(_requester);
  InstanceGroupManagersResourceApi get instanceGroupManagers => new InstanceGroupManagersResourceApi(_requester);
  InstanceGroupsResourceApi get instanceGroups => new InstanceGroupsResourceApi(_requester);
  InstanceTemplatesResourceApi get instanceTemplates => new InstanceTemplatesResourceApi(_requester);
  InstancesResourceApi get instances => new InstancesResourceApi(_requester);
  LicensesResourceApi get licenses => new LicensesResourceApi(_requester);
  MachineTypesResourceApi get machineTypes => new MachineTypesResourceApi(_requester);
  NetworksResourceApi get networks => new NetworksResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  RegionOperationsResourceApi get regionOperations => new RegionOperationsResourceApi(_requester);
  RegionsResourceApi get regions => new RegionsResourceApi(_requester);
  RoutesResourceApi get routes => new RoutesResourceApi(_requester);
  SnapshotsResourceApi get snapshots => new SnapshotsResourceApi(_requester);
  TargetHttpProxiesResourceApi get targetHttpProxies => new TargetHttpProxiesResourceApi(_requester);
  TargetInstancesResourceApi get targetInstances => new TargetInstancesResourceApi(_requester);
  TargetPoolsResourceApi get targetPools => new TargetPoolsResourceApi(_requester);
  TargetVpnGatewaysResourceApi get targetVpnGateways => new TargetVpnGatewaysResourceApi(_requester);
  UrlMapsResourceApi get urlMaps => new UrlMapsResourceApi(_requester);
  VpnTunnelsResourceApi get vpnTunnels => new VpnTunnelsResourceApi(_requester);
  ZoneOperationsResourceApi get zoneOperations => new ZoneOperationsResourceApi(_requester);
  ZonesResourceApi get zones => new ZonesResourceApi(_requester);

  ComputeApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "compute/v1/projects/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class AddressesResourceApi {
  final commons.ApiRequester _requester;

  AddressesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of addresses grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [AddressAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AddressAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [address] - Name of the address resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/addresses/' + commons.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [address] - Name of the address resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Address].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Address> get(core.String project, core.String region, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/addresses/' + commons.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Address.fromJson(data));
  }

  /**
   * Creates an address resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Address request, core.String project, core.String region) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/addresses';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of address resources contained within the specified
   * region.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [AddressList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AddressList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressList.fromJson(data));
  }

}


class AutoscalersResourceApi {
  final commons.ApiRequester _requester;

  AutoscalersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of autoscalers grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [AutoscalerAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AutoscalerAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/autoscalers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AutoscalerAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified autoscaler resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoscaler] - Name of the persistent autoscaler resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers/' + commons.Escaper.ecapeVariable('$autoscaler');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified autoscaler resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoscaler] - Name of the persistent autoscaler resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Autoscaler].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Autoscaler> get(core.String project, core.String zone, core.String autoscaler) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers/' + commons.Escaper.ecapeVariable('$autoscaler');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Autoscaler.fromJson(data));
  }

  /**
   * Creates an autoscaler resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Autoscaler request, core.String project, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of autoscaler resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [AutoscalerList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AutoscalerList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AutoscalerList.fromJson(data));
  }

  /**
   * Updates an autoscaler resource in the specified project using the data
   * included in the request. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoscaler] - Name of the autoscaler resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(Autoscaler request, core.String project, core.String zone, core.String autoscaler) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler == null) {
      throw new core.ArgumentError("Parameter autoscaler is required.");
    }
    _queryParams["autoscaler"] = [autoscaler];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers';

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates an autoscaler resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoscaler] - Name of the autoscaler resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(Autoscaler request, core.String project, core.String zone, {core.String autoscaler}) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (autoscaler != null) {
      _queryParams["autoscaler"] = [autoscaler];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/autoscalers';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class BackendServicesResourceApi {
  final commons.ApiRequester _requester;

  BackendServicesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified BackendService resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices/' + commons.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified BackendService resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [BackendService].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BackendService> get(core.String project, core.String backendService) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices/' + commons.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendService.fromJson(data));
  }

  /**
   * Gets the most recent health check results for this BackendService.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to which the queried
   * instance belongs.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [BackendServiceGroupHealth].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BackendServiceGroupHealth> getHealth(ResourceGroupReference request, core.String project, core.String backendService) {
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
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices/' + commons.Escaper.ecapeVariable('$backendService') + '/getHealth';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendServiceGroupHealth.fromJson(data));
  }

  /**
   * Creates a BackendService resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(BackendService request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of BackendService resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [BackendServiceList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BackendServiceList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BackendServiceList.fromJson(data));
  }

  /**
   * Update the entire content of the BackendService resource. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(BackendService request, core.String project, core.String backendService) {
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
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices/' + commons.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the BackendService resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [backendService] - Name of the BackendService resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(BackendService request, core.String project, core.String backendService) {
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
    if (backendService == null) {
      throw new core.ArgumentError("Parameter backendService is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/backendServices/' + commons.Escaper.ecapeVariable('$backendService');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class DiskTypesResourceApi {
  final commons.ApiRequester _requester;

  DiskTypesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of disk type resources grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [DiskTypeAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DiskTypeAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/diskTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskTypeAggregatedList.fromJson(data));
  }

  /**
   * Returns the specified disk type resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [diskType] - Name of the disk type resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [DiskType].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DiskType> get(core.String project, core.String zone, core.String diskType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (diskType == null) {
      throw new core.ArgumentError("Parameter diskType is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/diskTypes/' + commons.Escaper.ecapeVariable('$diskType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskType.fromJson(data));
  }

  /**
   * Retrieves the list of disk type resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [DiskTypeList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DiskTypeList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/diskTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskTypeList.fromJson(data));
  }

}


class DisksResourceApi {
  final commons.ApiRequester _requester;

  DisksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of disks grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [DiskAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DiskAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/disks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskAggregatedList.fromJson(data));
  }

  /**
   * Creates a snapshot of this disk.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk to snapshot.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> createSnapshot(Snapshot request, core.String project, core.String zone, core.String disk) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/disks/' + commons.Escaper.ecapeVariable('$disk') + '/createSnapshot';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the specified persistent disk. Deleting a disk removes its data
   * permanently and is irreversible. However, deleting a disk does not delete
   * any snapshots previously made from the disk. You must separately delete
   * snapshots.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String disk) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/disks/' + commons.Escaper.ecapeVariable('$disk');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns a specified persistent disk.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [disk] - Name of the persistent disk to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Disk].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Disk> get(core.String project, core.String zone, core.String disk) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (disk == null) {
      throw new core.ArgumentError("Parameter disk is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/disks/' + commons.Escaper.ecapeVariable('$disk');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Disk.fromJson(data));
  }

  /**
   * Creates a persistent disk in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [sourceImage] - Optional. Source image to restore onto a disk.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Disk request, core.String project, core.String zone, {core.String sourceImage}) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (sourceImage != null) {
      _queryParams["sourceImage"] = [sourceImage];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/disks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of persistent disks contained within the specified zone.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [DiskList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DiskList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/disks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DiskList.fromJson(data));
  }

}


class FirewallsResourceApi {
  final commons.ApiRequester _requester;

  FirewallsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified firewall resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls/' + commons.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified firewall resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Firewall].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Firewall> get(core.String project, core.String firewall) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls/' + commons.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Firewall.fromJson(data));
  }

  /**
   * Creates a firewall resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Firewall request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of firewall resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [FirewallList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<FirewallList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FirewallList.fromJson(data));
  }

  /**
   * Updates the specified firewall resource with the data included in the
   * request. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(Firewall request, core.String project, core.String firewall) {
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
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls/' + commons.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates the specified firewall resource with the data included in the
   * request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [firewall] - Name of the firewall resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(Firewall request, core.String project, core.String firewall) {
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
    if (firewall == null) {
      throw new core.ArgumentError("Parameter firewall is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/firewalls/' + commons.Escaper.ecapeVariable('$firewall');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ForwardingRulesResourceApi {
  final commons.ApiRequester _requester;

  ForwardingRulesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of forwarding rules grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [ForwardingRuleAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ForwardingRuleAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [ForwardingRule].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ForwardingRule> get(core.String project, core.String region, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRule.fromJson(data));
  }

  /**
   * Creates a ForwardingRule resource in the specified project and region using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(ForwardingRule request, core.String project, core.String region) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/forwardingRules';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of ForwardingRule resources available to the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [ForwardingRuleList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ForwardingRuleList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleList.fromJson(data));
  }

  /**
   * Changes target url for forwarding rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [forwardingRule] - Name of the ForwardingRule resource in which target is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setTarget(TargetReference request, core.String project, core.String region, core.String forwardingRule) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule') + '/setTarget';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class GlobalAddressesResourceApi {
  final commons.ApiRequester _requester;

  GlobalAddressesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [address] - Name of the address resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/addresses/' + commons.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified address resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [address] - Name of the address resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Address].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Address> get(core.String project, core.String address) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/addresses/' + commons.Escaper.ecapeVariable('$address');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Address.fromJson(data));
  }

  /**
   * Creates an address resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Address request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/addresses';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of global address resources.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [AddressList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AddressList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/addresses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AddressList.fromJson(data));
  }

}


class GlobalForwardingRulesResourceApi {
  final commons.ApiRequester _requester;

  GlobalForwardingRulesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified ForwardingRule resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [ForwardingRule].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ForwardingRule> get(core.String project, core.String forwardingRule) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRule.fromJson(data));
  }

  /**
   * Creates a ForwardingRule resource in the specified project and region using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(ForwardingRule request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/forwardingRules';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of ForwardingRule resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [ForwardingRuleList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ForwardingRuleList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/forwardingRules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ForwardingRuleList.fromJson(data));
  }

  /**
   * Changes target url for forwarding rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [forwardingRule] - Name of the ForwardingRule resource in which target is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setTarget(TargetReference request, core.String project, core.String forwardingRule) {
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
    if (forwardingRule == null) {
      throw new core.ArgumentError("Parameter forwardingRule is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/forwardingRules/' + commons.Escaper.ecapeVariable('$forwardingRule') + '/setTarget';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class GlobalOperationsResourceApi {
  final commons.ApiRequester _requester;

  GlobalOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of all operations grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [OperationAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OperationAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [operation] - Name of the Operations resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String project, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves the specified Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [operation] - Name of the Operations resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of Operation resources contained within the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


class HttpHealthChecksResourceApi {
  final commons.ApiRequester _requester;

  HttpHealthChecksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified HttpHealthCheck resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + commons.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified HttpHealthCheck resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [HttpHealthCheck].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<HttpHealthCheck> get(core.String project, core.String httpHealthCheck) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + commons.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpHealthCheck.fromJson(data));
  }

  /**
   * Creates a HttpHealthCheck resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(HttpHealthCheck request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of HttpHealthCheck resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [HttpHealthCheckList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<HttpHealthCheckList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpHealthCheckList.fromJson(data));
  }

  /**
   * Updates a HttpHealthCheck resource in the specified project using the data
   * included in the request. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(HttpHealthCheck request, core.String project, core.String httpHealthCheck) {
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
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + commons.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Updates a HttpHealthCheck resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [httpHealthCheck] - Name of the HttpHealthCheck resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(HttpHealthCheck request, core.String project, core.String httpHealthCheck) {
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
    if (httpHealthCheck == null) {
      throw new core.ArgumentError("Parameter httpHealthCheck is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/httpHealthChecks/' + commons.Escaper.ecapeVariable('$httpHealthCheck');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class ImagesResourceApi {
  final commons.ApiRequester _requester;

  ImagesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified image resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Name of the image resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String image) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/images/' + commons.Escaper.ecapeVariable('$image');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the deprecation status of an image.
   *
   * If an empty request body is given, clears the deprecation status instead.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Image name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> deprecate(DeprecationStatus request, core.String project, core.String image) {
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
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/images/' + commons.Escaper.ecapeVariable('$image') + '/deprecate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified image resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [image] - Name of the image resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Image].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Image> get(core.String project, core.String image) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (image == null) {
      throw new core.ArgumentError("Parameter image is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/images/' + commons.Escaper.ecapeVariable('$image');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Image.fromJson(data));
  }

  /**
   * Creates an image resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Image request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/images';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of private images available to the specified project.
   * Private images are images you create that belong to your project. This
   * method does not get any images that belong to other projects, including
   * publicly-available images, like Debian 7. If you want to get a list of
   * publicly-available images, use this method to make a request to the
   * respective image project, such as debian-cloud or windows-cloud.
   *
   * See Accessing images for more information.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [ImageList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ImageList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/images';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImageList.fromJson(data));
  }

}


class InstanceGroupManagersResourceApi {
  final commons.ApiRequester _requester;

  InstanceGroupManagersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Schedules a group action to remove the specified instances from the managed
   * instance group. Abandoning an instance does not delete the instance, but it
   * does remove the instance from any target pools that are applied by the
   * managed instance group. This method reduces the targetSize of the managed
   * instance group by the number of instances that you abandon. This operation
   * is marked as DONE when the action is scheduled even if the instances have
   * not yet been removed from the group. You must separately verify the status
   * of the abandoning action with the listmanagedinstances method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> abandonInstances(InstanceGroupManagersAbandonInstancesRequest request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/abandonInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of managed instance groups and groups them by zone.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceGroupManagerAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupManagerAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/instanceGroupManagers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupManagerAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified managed instance group and all of the instances in
   * that group.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String instanceGroupManager) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Schedules a group action to delete the specified instances in the managed
   * instance group. The instances are also removed from any target pools of
   * which they were a member. This method reduces the targetSize of the managed
   * instance group by the number of instances that you delete. This operation
   * is marked as DONE when the action is scheduled even if the instances are
   * still being deleted. You must separately verify the status of the deleting
   * action with the listmanagedinstances method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> deleteInstances(InstanceGroupManagersDeleteInstancesRequest request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/deleteInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns all of the details about the specified managed instance group.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [InstanceGroupManager].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupManager> get(core.String project, core.String zone, core.String instanceGroupManager) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupManager.fromJson(data));
  }

  /**
   * Creates a managed instance group using the information that you specify in
   * the request. After the group is created, it schedules an action to create
   * instances in the group using the specified instance template. This
   * operation is marked as DONE when the group is created even if the instances
   * in the group have not yet been created. You must separately verify the
   * status of the individual instances with the listmanagedinstances method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where you want to create the managed instance
   * group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(InstanceGroupManager request, core.String project, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves a list of managed instance groups that are contained within the
   * specified project and zone.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceGroupManagerList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupManagerList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupManagerList.fromJson(data));
  }

  /**
   * Lists all of the instances in the managed instance group. Each instance in
   * the list has a currentAction, which indicates the action that the managed
   * instance group is performing on the instance. For example, if the group is
   * still creating an instance, the currentAction is CREATING. If a previous
   * action failed, the list displays the errors for that failed action.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [InstanceGroupManagersListManagedInstancesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupManagersListManagedInstancesResponse> listManagedInstances(core.String project, core.String zone, core.String instanceGroupManager) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/listManagedInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupManagersListManagedInstancesResponse.fromJson(data));
  }

  /**
   * Schedules a group action to recreate the specified instances in the managed
   * instance group. The instances are deleted and recreated using the current
   * instance template for the managed instance group. This operation is marked
   * as DONE when the action is scheduled even if the instances have not yet
   * been recreated. You must separately verify the status of the recreating
   * action with the listmanagedinstances method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> recreateInstances(InstanceGroupManagersRecreateInstancesRequest request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/recreateInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Resizes the managed instance group. If you increase the size, the group
   * creates new instances using the current instance template. If you decrease
   * the size, the group deletes instances. The resize operation is marked DONE
   * when the resize actions are scheduled even if the group has not yet added
   * or deleted any instances. You must separately verify the status of the
   * creating or deleting actions with the listmanagedinstances method.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * [size] - The number of running instances that the managed instance group
   * should maintain at any given time. The group automatically adds or removes
   * instances to maintain the number of instances specified by this parameter.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> resize(core.String project, core.String zone, core.String instanceGroupManager, core.int size) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }
    if (size == null) {
      throw new core.ArgumentError("Parameter size is required.");
    }
    _queryParams["size"] = ["${size}"];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/resize';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Specifies the instance template to use when creating new instances in this
   * group. The templates for existing instances in the group do not change
   * unless you recreate them.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setInstanceTemplate(InstanceGroupManagersSetInstanceTemplateRequest request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/setInstanceTemplate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Modifies the target pools to which all instances in this managed instance
   * group are assigned. The target pools automatically apply to all of the
   * instances in the managed instance group. This operation is marked DONE when
   * you make the request even if the instances have not yet been added to their
   * target pools. The change might take some time to apply to all of the
   * instances in the group depending on the size of the group.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the managed instance group is located.
   *
   * [instanceGroupManager] - The name of the managed instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setTargetPools(InstanceGroupManagersSetTargetPoolsRequest request, core.String project, core.String zone, core.String instanceGroupManager) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroupManager == null) {
      throw new core.ArgumentError("Parameter instanceGroupManager is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroupManagers/' + commons.Escaper.ecapeVariable('$instanceGroupManager') + '/setTargetPools';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class InstanceGroupsResourceApi {
  final commons.ApiRequester _requester;

  InstanceGroupsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds a list of instances to the specified instance group. All of the
   * instances in the instance group must be in the same network/subnetwork.
   * TODO: Change to comment to state "if IG is load balanced."
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group where you are adding
   * instances.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> addInstances(InstanceGroupsAddInstancesRequest request, core.String project, core.String zone, core.String instanceGroup) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup') + '/addInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of instance groups and sorts them by zone.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceGroupAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/instanceGroups';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified instance group. The instances in the group are not
   * deleted.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group to delete.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String instanceGroup) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified instance group resource.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group.
   *
   * Completes with a [InstanceGroup].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroup> get(core.String project, core.String zone, core.String instanceGroup) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroup.fromJson(data));
  }

  /**
   * Creates an instance group in the specified project using the parameters
   * that are included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where you want to create the instance group.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(InstanceGroup request, core.String project, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of instance groups that are located in the specified
   * project and zone.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceGroupList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupList.fromJson(data));
  }

  /**
   * Lists the instances in the specified instance group.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group from which you want to
   * generate a list of included instances.
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceGroupsListInstances].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceGroupsListInstances> listInstances(InstanceGroupsListInstancesRequest request, core.String project, core.String zone, core.String instanceGroup, {core.String filter, core.int maxResults, core.String pageToken}) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup') + '/listInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceGroupsListInstances.fromJson(data));
  }

  /**
   * Removes one or more instances from the specified instance group, but does
   * not delete those instances.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group where the specified
   * instances will be removed.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> removeInstances(InstanceGroupsRemoveInstancesRequest request, core.String project, core.String zone, core.String instanceGroup) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup') + '/removeInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the named ports for the specified instance group.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone where the instance group is located.
   *
   * [instanceGroup] - The name of the instance group where the named ports are
   * updated.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setNamedPorts(InstanceGroupsSetNamedPortsRequest request, core.String project, core.String zone, core.String instanceGroup) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instanceGroup == null) {
      throw new core.ArgumentError("Parameter instanceGroup is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instanceGroups/' + commons.Escaper.ecapeVariable('$instanceGroup') + '/setNamedPorts';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class InstanceTemplatesResourceApi {
  final commons.ApiRequester _requester;

  InstanceTemplatesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified instance template.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [instanceTemplate] - The name of the instance template to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String instanceTemplate) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instanceTemplate == null) {
      throw new core.ArgumentError("Parameter instanceTemplate is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/instanceTemplates/' + commons.Escaper.ecapeVariable('$instanceTemplate');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified instance template resource.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [instanceTemplate] - The name of the instance template.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [InstanceTemplate].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceTemplate> get(core.String project, core.String instanceTemplate) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instanceTemplate == null) {
      throw new core.ArgumentError("Parameter instanceTemplate is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/instanceTemplates/' + commons.Escaper.ecapeVariable('$instanceTemplate');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceTemplate.fromJson(data));
  }

  /**
   * Creates an instance template in the specified project using the data that
   * is included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(InstanceTemplate request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/instanceTemplates';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves a list of instance templates that are contained within the
   * specified project and zone.
   *
   * Request parameters:
   *
   * [project] - The project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceTemplateList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceTemplateList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/instanceTemplates';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceTemplateList.fromJson(data));
  }

}


class InstancesResourceApi {
  final commons.ApiRequester _requester;

  InstancesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds an access config to an instance's network interface.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - The instance name for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [networkInterface] - The name of the network interface to add to this
   * instance.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> addAccessConfig(AccessConfig request, core.String project, core.String zone, core.String instance, core.String networkInterface) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (networkInterface == null) {
      throw new core.ArgumentError("Parameter networkInterface is required.");
    }
    _queryParams["networkInterface"] = [networkInterface];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/addAccessConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/instances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceAggregatedList.fromJson(data));
  }

  /**
   * Attaches a Disk resource to an instance.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> attachDisk(AttachedDisk request, core.String project, core.String zone, core.String instance) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/attachDisk';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes the specified Instance resource. For more information, see Shutting
   * down an instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Deletes an access config from an instance's network interface.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - The instance name for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [accessConfig] - The name of the access config to delete.
   *
   * [networkInterface] - The name of the network interface.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> deleteAccessConfig(core.String project, core.String zone, core.String instance, core.String accessConfig, core.String networkInterface) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (accessConfig == null) {
      throw new core.ArgumentError("Parameter accessConfig is required.");
    }
    _queryParams["accessConfig"] = [accessConfig];
    if (networkInterface == null) {
      throw new core.ArgumentError("Parameter networkInterface is required.");
    }
    _queryParams["networkInterface"] = [networkInterface];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/deleteAccessConfig';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Detaches a disk from an instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [deviceName] - Disk device name to detach.
   * Value must have pattern "\w[\w.-]{0,254}".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> detachDisk(core.String project, core.String zone, core.String instance, core.String deviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (deviceName == null) {
      throw new core.ArgumentError("Parameter deviceName is required.");
    }
    _queryParams["deviceName"] = [deviceName];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/detachDisk';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified instance resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Instance].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Instance> get(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Instance.fromJson(data));
  }

  /**
   * Returns the specified instance's serial port output.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [port] - Specifies which COM or serial port to retrieve data from.
   * Value must be between "1" and "4".
   *
   * Completes with a [SerialPortOutput].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SerialPortOutput> getSerialPortOutput(core.String project, core.String zone, core.String instance, {core.int port}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (port != null) {
      _queryParams["port"] = ["${port}"];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/serialPort';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SerialPortOutput.fromJson(data));
  }

  /**
   * Creates an instance resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Instance request, core.String project, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of instance resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [InstanceList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InstanceList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InstanceList.fromJson(data));
  }

  /**
   * Performs a hard reset on the instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> reset(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/reset';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets the auto-delete flag for a disk attached to an instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - The instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [autoDelete] - Whether to auto-delete the disk when the instance is
   * deleted.
   *
   * [deviceName] - The device name of the disk to modify.
   * Value must have pattern "\w[\w.-]{0,254}".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setDiskAutoDelete(core.String project, core.String zone, core.String instance, core.bool autoDelete, core.String deviceName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (autoDelete == null) {
      throw new core.ArgumentError("Parameter autoDelete is required.");
    }
    _queryParams["autoDelete"] = ["${autoDelete}"];
    if (deviceName == null) {
      throw new core.ArgumentError("Parameter deviceName is required.");
    }
    _queryParams["deviceName"] = [deviceName];

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/setDiskAutoDelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets metadata for the specified instance to the data included in the
   * request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setMetadata(Metadata request, core.String project, core.String zone, core.String instance) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/setMetadata';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets an instance's scheduling options.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Instance name.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setScheduling(Scheduling request, core.String project, core.String zone, core.String instance) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/setScheduling';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets tags for the specified instance to the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setTags(Tags request, core.String project, core.String zone, core.String instance) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/setTags';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * This method starts an instance that was stopped using the using the
   * instances().stop method. For more information, see Restart an instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to start.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> start(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/start';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * This method stops a running instance, shutting it down cleanly, and allows
   * you to restart the instance at a later time. Stopped instances do not incur
   * per-minute, virtual machine usage charges while they are stopped, but any
   * resources that the virtual machine is using, such as persistent disks and
   * static IP addresses,will continue to be charged until they are deleted. For
   * more information, see Stopping an instance.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [instance] - Name of the instance resource to stop.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> stop(core.String project, core.String zone, core.String instance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/instances/' + commons.Escaper.ecapeVariable('$instance') + '/stop';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class LicensesResourceApi {
  final commons.ApiRequester _requester;

  LicensesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified license resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [license] - Name of the license resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [License].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<License> get(core.String project, core.String license) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (license == null) {
      throw new core.ArgumentError("Parameter license is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/licenses/' + commons.Escaper.ecapeVariable('$license');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new License.fromJson(data));
  }

}


class MachineTypesResourceApi {
  final commons.ApiRequester _requester;

  MachineTypesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of machine type resources grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [MachineTypeAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MachineTypeAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/machineTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineTypeAggregatedList.fromJson(data));
  }

  /**
   * Returns the specified machine type resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [machineType] - Name of the machine type resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [MachineType].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MachineType> get(core.String project, core.String zone, core.String machineType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (machineType == null) {
      throw new core.ArgumentError("Parameter machineType is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/machineTypes/' + commons.Escaper.ecapeVariable('$machineType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineType.fromJson(data));
  }

  /**
   * Retrieves the list of machine type resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - The name of the zone for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [MachineTypeList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<MachineTypeList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/machineTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new MachineTypeList.fromJson(data));
  }

}


class NetworksResourceApi {
  final commons.ApiRequester _requester;

  NetworksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified network resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [network] - Name of the network resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String network) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (network == null) {
      throw new core.ArgumentError("Parameter network is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/networks/' + commons.Escaper.ecapeVariable('$network');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified network resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [network] - Name of the network resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Network].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Network> get(core.String project, core.String network) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (network == null) {
      throw new core.ArgumentError("Parameter network is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/networks/' + commons.Escaper.ecapeVariable('$network');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Network.fromJson(data));
  }

  /**
   * Creates a network resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Network request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/networks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of network resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [NetworkList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<NetworkList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/networks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new NetworkList.fromJson(data));
  }

}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified project resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Project].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Project> get(core.String project) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }

  /**
   * Moves a persistent disk from one zone to another.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> moveDisk(DiskMoveRequest request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/moveDisk';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Moves an instance and its attached persistent disks from one zone to
   * another.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> moveInstance(InstanceMoveRequest request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/moveInstance';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Sets metadata common to all instances within the specified project using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setCommonInstanceMetadata(Metadata request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/setCommonInstanceMetadata';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Enables the usage export feature and sets the usage export bucket where
   * reports are stored. If you provide an empty request body using this method,
   * the usage export feature will be disabled.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setUsageExportBucket(UsageExportLocation request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/setUsageExportBucket';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class RegionOperationsResourceApi {
  final commons.ApiRequester _requester;

  RegionOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified region-specific Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the Operations resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String project, core.String region, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves the specified region-specific Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the Operations resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String region, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of Operation resources contained within the specified
   * region.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


class RegionsResourceApi {
  final commons.ApiRequester _requester;

  RegionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified region resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Region].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Region> get(core.String project, core.String region) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Region.fromJson(data));
  }

  /**
   * Retrieves the list of region resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [RegionList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RegionList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RegionList.fromJson(data));
  }

}


class RoutesResourceApi {
  final commons.ApiRequester _requester;

  RoutesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified route resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [route] - Name of the route resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String route) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (route == null) {
      throw new core.ArgumentError("Parameter route is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/routes/' + commons.Escaper.ecapeVariable('$route');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified route resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [route] - Name of the route resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Route].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Route> get(core.String project, core.String route) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (route == null) {
      throw new core.ArgumentError("Parameter route is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/routes/' + commons.Escaper.ecapeVariable('$route');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Route.fromJson(data));
  }

  /**
   * Creates a route resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(Route request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/routes';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of route resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [RouteList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RouteList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/routes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RouteList.fromJson(data));
  }

}


class SnapshotsResourceApi {
  final commons.ApiRequester _requester;

  SnapshotsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified Snapshot resource. Keep in mind that deleting a
   * single snapshot might not necessarily delete all the data on that snapshot.
   * If any data on the snapshot that is marked for deletion is needed for
   * subsequent snapshots, the data will be moved to the next corresponding
   * snapshot.
   *
   * For more information, see Deleting snaphots.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [snapshot] - Name of the Snapshot resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String snapshot) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (snapshot == null) {
      throw new core.ArgumentError("Parameter snapshot is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/snapshots/' + commons.Escaper.ecapeVariable('$snapshot');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified Snapshot resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [snapshot] - Name of the Snapshot resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Snapshot].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Snapshot> get(core.String project, core.String snapshot) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (snapshot == null) {
      throw new core.ArgumentError("Parameter snapshot is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/snapshots/' + commons.Escaper.ecapeVariable('$snapshot');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Snapshot.fromJson(data));
  }

  /**
   * Retrieves the list of Snapshot resources contained within the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [SnapshotList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SnapshotList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/snapshots';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SnapshotList.fromJson(data));
  }

}


class TargetHttpProxiesResourceApi {
  final commons.ApiRequester _requester;

  TargetHttpProxiesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified TargetHttpProxy resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String targetHttpProxy) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies/' + commons.Escaper.ecapeVariable('$targetHttpProxy');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetHttpProxy resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetHttpProxy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetHttpProxy> get(core.String project, core.String targetHttpProxy) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies/' + commons.Escaper.ecapeVariable('$targetHttpProxy');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetHttpProxy.fromJson(data));
  }

  /**
   * Creates a TargetHttpProxy resource in the specified project using the data
   * included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(TargetHttpProxy request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetHttpProxy resources available to the specified
   * project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetHttpProxyList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetHttpProxyList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/targetHttpProxies';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetHttpProxyList.fromJson(data));
  }

  /**
   * Changes the URL map for TargetHttpProxy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [targetHttpProxy] - Name of the TargetHttpProxy resource whose URL map is
   * to be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setUrlMap(UrlMapReference request, core.String project, core.String targetHttpProxy) {
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
    if (targetHttpProxy == null) {
      throw new core.ArgumentError("Parameter targetHttpProxy is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/targetHttpProxies/' + commons.Escaper.ecapeVariable('$targetHttpProxy') + '/setUrlMap';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class TargetInstancesResourceApi {
  final commons.ApiRequester _requester;

  TargetInstancesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of target instances grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetInstanceAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetInstanceAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/targetInstances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstanceAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified TargetInstance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetInstance] - Name of the TargetInstance resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String zone, core.String targetInstance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (targetInstance == null) {
      throw new core.ArgumentError("Parameter targetInstance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/targetInstances/' + commons.Escaper.ecapeVariable('$targetInstance');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetInstance resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetInstance] - Name of the TargetInstance resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetInstance].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetInstance> get(core.String project, core.String zone, core.String targetInstance) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (targetInstance == null) {
      throw new core.ArgumentError("Parameter targetInstance is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/targetInstances/' + commons.Escaper.ecapeVariable('$targetInstance');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstance.fromJson(data));
  }

  /**
   * Creates a TargetInstance resource in the specified project and zone using
   * the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(TargetInstance request, core.String project, core.String zone) {
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
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/targetInstances';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetInstance resources available to the specified
   * project and zone.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetInstanceList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetInstanceList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/targetInstances';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetInstanceList.fromJson(data));
  }

}


class TargetPoolsResourceApi {
  final commons.ApiRequester _requester;

  TargetPoolsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds health check URL to targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which health_check_url is
   * to be added.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> addHealthCheck(TargetPoolsAddHealthCheckRequest request, core.String project, core.String region, core.String targetPool) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/addHealthCheck';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Adds instance url to targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which instance_url is to
   * be added.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> addInstance(TargetPoolsAddInstanceRequest request, core.String project, core.String region, core.String targetPool) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/addInstance';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of target pools grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetPoolAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetPoolAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/targetPools';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified TargetPool resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetPool resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetPool].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetPool> get(core.String project, core.String region, core.String targetPool) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPool.fromJson(data));
  }

  /**
   * Gets the most recent health check results for each IP for the given
   * instance that is referenced by given TargetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which the queried
   * instance belongs.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetPoolInstanceHealth].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetPoolInstanceHealth> getHealth(InstanceReference request, core.String project, core.String region, core.String targetPool) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/getHealth';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolInstanceHealth.fromJson(data));
  }

  /**
   * Creates a TargetPool resource in the specified project and region using the
   * data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(TargetPool request, core.String project, core.String region) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetPool resources available to the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetPoolList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetPoolList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetPoolList.fromJson(data));
  }

  /**
   * Removes health check URL from targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which health_check_url is
   * to be removed.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> removeHealthCheck(TargetPoolsRemoveHealthCheckRequest request, core.String project, core.String region, core.String targetPool) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/removeHealthCheck';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Removes instance URL from targetPool.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - null
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource to which instance_url is to
   * be removed.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> removeInstance(TargetPoolsRemoveInstanceRequest request, core.String project, core.String region, core.String targetPool) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/removeInstance';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Changes backup pool configurations.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - Name of the region scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetPool] - Name of the TargetPool resource for which the backup is to
   * be set.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [failoverRatio] - New failoverRatio value for the containing target pool.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> setBackup(TargetReference request, core.String project, core.String region, core.String targetPool, {core.double failoverRatio}) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetPool == null) {
      throw new core.ArgumentError("Parameter targetPool is required.");
    }
    if (failoverRatio != null) {
      _queryParams["failoverRatio"] = ["${failoverRatio}"];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetPools/' + commons.Escaper.ecapeVariable('$targetPool') + '/setBackup';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class TargetVpnGatewaysResourceApi {
  final commons.ApiRequester _requester;

  TargetVpnGatewaysResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of target VPN gateways grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetVpnGatewayAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetVpnGatewayAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/targetVpnGateways';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetVpnGatewayAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified TargetVpnGateway resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetVpnGateway] - Name of the TargetVpnGateway resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String targetVpnGateway) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetVpnGateway == null) {
      throw new core.ArgumentError("Parameter targetVpnGateway is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetVpnGateways/' + commons.Escaper.ecapeVariable('$targetVpnGateway');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified TargetVpnGateway resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [targetVpnGateway] - Name of the TargetVpnGateway resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [TargetVpnGateway].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetVpnGateway> get(core.String project, core.String region, core.String targetVpnGateway) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (targetVpnGateway == null) {
      throw new core.ArgumentError("Parameter targetVpnGateway is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetVpnGateways/' + commons.Escaper.ecapeVariable('$targetVpnGateway');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetVpnGateway.fromJson(data));
  }

  /**
   * Creates a TargetVpnGateway resource in the specified project and region
   * using the data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(TargetVpnGateway request, core.String project, core.String region) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetVpnGateways';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of TargetVpnGateway resources available to the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [TargetVpnGatewayList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TargetVpnGatewayList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/targetVpnGateways';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TargetVpnGatewayList.fromJson(data));
  }

}


class UrlMapsResourceApi {
  final commons.ApiRequester _requester;

  UrlMapsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified UrlMap resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + commons.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified UrlMap resource.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [UrlMap].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlMap> get(core.String project, core.String urlMap) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + commons.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMap.fromJson(data));
  }

  /**
   * Creates a UrlMap resource in the specified project using the data included
   * in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(UrlMap request, core.String project) {
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

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of UrlMap resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [UrlMapList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlMapList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMapList.fromJson(data));
  }

  /**
   * Update the entire content of the UrlMap resource. This method supports
   * patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> patch(UrlMap request, core.String project, core.String urlMap) {
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
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + commons.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Update the entire content of the UrlMap resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to update.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> update(UrlMap request, core.String project, core.String urlMap) {
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
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + commons.Escaper.ecapeVariable('$urlMap');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Run static validation for the UrlMap. In particular, the tests of the
   * provided UrlMap will be run. Calling this method does NOT create the
   * UrlMap.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Name of the project scoping this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [urlMap] - Name of the UrlMap resource to be validated as.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [UrlMapsValidateResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UrlMapsValidateResponse> validate(UrlMapsValidateRequest request, core.String project, core.String urlMap) {
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
    if (urlMap == null) {
      throw new core.ArgumentError("Parameter urlMap is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/global/urlMaps/' + commons.Escaper.ecapeVariable('$urlMap') + '/validate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UrlMapsValidateResponse.fromJson(data));
  }

}


class VpnTunnelsResourceApi {
  final commons.ApiRequester _requester;

  VpnTunnelsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the list of VPN tunnels grouped by scope.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [VpnTunnelAggregatedList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VpnTunnelAggregatedList> aggregatedList(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/aggregated/vpnTunnels';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VpnTunnelAggregatedList.fromJson(data));
  }

  /**
   * Deletes the specified VpnTunnel resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [vpnTunnel] - Name of the VpnTunnel resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> delete(core.String project, core.String region, core.String vpnTunnel) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (vpnTunnel == null) {
      throw new core.ArgumentError("Parameter vpnTunnel is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/vpnTunnels/' + commons.Escaper.ecapeVariable('$vpnTunnel');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns the specified VpnTunnel resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [vpnTunnel] - Name of the VpnTunnel resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [VpnTunnel].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VpnTunnel> get(core.String project, core.String region, core.String vpnTunnel) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (vpnTunnel == null) {
      throw new core.ArgumentError("Parameter vpnTunnel is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/vpnTunnels/' + commons.Escaper.ecapeVariable('$vpnTunnel');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VpnTunnel.fromJson(data));
  }

  /**
   * Creates a VpnTunnel resource in the specified project and region using the
   * data included in the request.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> insert(VpnTunnel request, core.String project, core.String region) {
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
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/vpnTunnels';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of VpnTunnel resources contained in the specified
   * project and region.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [region] - The name of the region for this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [VpnTunnelList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<VpnTunnelList> list(core.String project, core.String region, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (region == null) {
      throw new core.ArgumentError("Parameter region is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/regions/' + commons.Escaper.ecapeVariable('$region') + '/vpnTunnels';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new VpnTunnelList.fromJson(data));
  }

}


class ZoneOperationsResourceApi {
  final commons.ApiRequester _requester;

  ZoneOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified zone-specific Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the Operations resource to delete.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future delete(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Retrieves the specified zone-specific Operations resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [operation] - Name of the Operations resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String project, core.String zone, core.String operation) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations/' + commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Retrieves the list of Operation resources contained within the specified
   * zone.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone scoping this request.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [OperationList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<OperationList> list(core.String project, core.String zone, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone') + '/operations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationList.fromJson(data));
  }

}


class ZonesResourceApi {
  final commons.ApiRequester _requester;

  ZonesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the specified zone resource.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [zone] - Name of the zone resource to return.
   * Value must have pattern "[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?".
   *
   * Completes with a [Zone].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Zone> get(core.String project, core.String zone) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (zone == null) {
      throw new core.ArgumentError("Parameter zone is required.");
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones/' + commons.Escaper.ecapeVariable('$zone');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Zone.fromJson(data));
  }

  /**
   * Retrieves the list of zone resources available to the specified project.
   *
   * Request parameters:
   *
   * [project] - Project ID for this request.
   * Value must have pattern
   * "(?:(?:[-a-z0-9]{1,63}\.)*(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?):)?(?:[0-9]{1,19}|(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?))".
   *
   * [filter] - Sets a filter expression for filtering listed resources, in the
   * form filter={expression}. Your {expression} must be in the format:
   * FIELD_NAME COMPARISON_STRING LITERAL_STRING.
   *
   * The FIELD_NAME is the name of the field you want to compare. Only atomic
   * field types are supported (string, number, boolean). The COMPARISON_STRING
   * must be either eq (equals) or ne (not equals). The LITERAL_STRING is the
   * string value to filter to. The literal value must be valid for the type of
   * field (string, number, boolean). For string fields, the literal value is
   * interpreted as a regular expression using RE2 syntax. The literal value
   * must match the entire field.
   *
   * For example, filter=name ne example-instance.
   *
   * [maxResults] - Maximum count of results to be returned.
   * Value must be between "0" and "500".
   *
   * [pageToken] - Specifies a page token to use. Use this parameter if you want
   * to list the next page of results. Set pageToken to the nextPageToken
   * returned by a previous list request.
   *
   * Completes with a [ZoneList].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ZoneList> list(core.String project, {core.String filter, core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = commons.Escaper.ecapeVariable('$project') + '/zones';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ZoneList.fromJson(data));
  }

}



/** An access configuration attached to an instance's network interface. */
class AccessConfig {
  /**
   * [Output Only] Type of the resource. Always compute#accessConfig for access
   * configs.
   */
  core.String kind;
  /** Name of this access configuration. */
  core.String name;
  /**
   * An external IP address associated with this instance. Specify an unused
   * static external IP address available to the project or leave this field
   * undefined to use an IP from a shared ephemeral IP address pool. If you
   * specify a static external IP address, it must live in the same region as
   * the zone of the instance.
   */
  core.String natIP;
  /**
   * The type of configuration. The default and only option is ONE_TO_ONE_NAT.
   * Possible string values are:
   * - "ONE_TO_ONE_NAT"
   */
  core.String type;

  AccessConfig();

  AccessConfig.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("natIP")) {
      natIP = _json["natIP"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (natIP != null) {
      _json["natIP"] = natIP;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** A reserved address resource. */
class Address {
  /** The static external IP address represented by this resource. */
  core.String address;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#address for addresses.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * [Output Only] URL of the region where the regional address resides. This
   * field is not applicable to global addresses.
   */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] The status of the address, which can be either IN_USE or
   * RESERVED. An address that is RESERVED is currently reserved and available
   * to use. An IN_USE address is currently being used by another resource and
   * is not available.
   * Possible string values are:
   * - "IN_USE"
   * - "RESERVED"
   */
  core.String status;
  /** [Output Only] The URLs of the resources that are using this address. */
  core.List<core.String> users;

  Address();

  Address.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (address != null) {
      _json["address"] = address;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (users != null) {
      _json["users"] = users;
    }
    return _json;
  }
}

class AddressAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped address lists. */
  core.Map<core.String, AddressesScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#addressAggregatedList for
   * aggregated lists of addresses.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  AddressAggregatedList();

  AddressAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new AddressesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of address resources. */
class AddressList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Address resources. */
  core.List<Address> items;
  /**
   * [Output Only] Type of resource. Always compute#addressList for lists of
   * addresses.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  AddressList();

  AddressList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Address.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class AddressesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  AddressesScopedListWarningData();

  AddressesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of addresses when
 * the list is empty.
 */
class AddressesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<AddressesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  AddressesScopedListWarning();

  AddressesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new AddressesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class AddressesScopedList {
  /** [Output Only] List of addresses contained in this scope. */
  core.List<Address> addresses;
  /**
   * [Output Only] Informational warning which replaces the list of addresses
   * when the list is empty.
   */
  AddressesScopedListWarning warning;

  AddressesScopedList();

  AddressesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("addresses")) {
      addresses = _json["addresses"].map((value) => new Address.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new AddressesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addresses != null) {
      _json["addresses"] = addresses.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

/** An instance-attached disk resource. */
class AttachedDisk {
  /**
   * Specifies whether the disk will be auto-deleted when the instance is
   * deleted (but not when the disk is detached from the instance).
   */
  core.bool autoDelete;
  /**
   * Indicates that this is a boot disk. The virtual machine will use the first
   * partition of the disk for its root filesystem.
   */
  core.bool boot;
  /**
   * Specifies a unique device name of your choice that is reflected into the
   * /dev/disk/by-id/google-* tree of a Linux operating system running within
   * the instance. This name can be used to reference the device for mounting,
   * resizing, and so on, from within the instance.
   *
   * If not specified, the server chooses a default device name to apply to this
   * disk, in the form persistent-disks-x, where x is a number assigned by
   * Google Compute Engine. This field is only applicable for persistent disks.
   */
  core.String deviceName;
  /**
   * Assigns a zero-based index to this disk, where 0 is reserved for the boot
   * disk. For example, if you have many disks attached to an instance, each
   * disk would have a unique index number. If not specified, the server will
   * choose an appropriate value.
   */
  core.int index;
  /**
   * [Input Only] Specifies the parameters for a new disk that will be created
   * alongside the new instance. Use initialization parameters to create boot
   * disks or local SSDs attached to the new instance.
   *
   * This property is mutually exclusive with the source property; you can only
   * define one or the other, but not both.
   */
  AttachedDiskInitializeParams initializeParams;
  /**
   * Specifies the disk interface to use for attaching this disk, either SCSI or
   * NVME. The default is SCSI. For performance characteristics of SCSI over
   * NVMe, see Local SSD performance.
   * Possible string values are:
   * - "NVME"
   * - "SCSI"
   */
  core.String interface;
  /**
   * [Output Only] Type of the resource. Always compute#attachedDisk for
   * attached disks.
   */
  core.String kind;
  /** [Output Only] Any valid publicly visible licenses. */
  core.List<core.String> licenses;
  /**
   * The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If
   * not specified, the default is to attach the disk in READ_WRITE mode.
   * Possible string values are:
   * - "READ_ONLY"
   * - "READ_WRITE"
   */
  core.String mode;
  /**
   * Specifies a valid partial or full URL to an existing Persistent Disk
   * resource. This field is only applicable for persistent disks.
   */
  core.String source;
  /**
   * Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
   * specified, the default is PERSISTENT.
   * Possible string values are:
   * - "PERSISTENT"
   * - "SCRATCH"
   */
  core.String type;

  AttachedDisk();

  AttachedDisk.fromJson(core.Map _json) {
    if (_json.containsKey("autoDelete")) {
      autoDelete = _json["autoDelete"];
    }
    if (_json.containsKey("boot")) {
      boot = _json["boot"];
    }
    if (_json.containsKey("deviceName")) {
      deviceName = _json["deviceName"];
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("initializeParams")) {
      initializeParams = new AttachedDiskInitializeParams.fromJson(_json["initializeParams"]);
    }
    if (_json.containsKey("interface")) {
      interface = _json["interface"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoDelete != null) {
      _json["autoDelete"] = autoDelete;
    }
    if (boot != null) {
      _json["boot"] = boot;
    }
    if (deviceName != null) {
      _json["deviceName"] = deviceName;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (initializeParams != null) {
      _json["initializeParams"] = (initializeParams).toJson();
    }
    if (interface != null) {
      _json["interface"] = interface;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (mode != null) {
      _json["mode"] = mode;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/**
 * [Input Only] Specifies the parameters for a new disk that will be created
 * alongside the new instance. Use initialization parameters to create boot
 * disks or local SSDs attached to the new instance.
 *
 * This property is mutually exclusive with the source property; you can only
 * define one or the other, but not both.
 */
class AttachedDiskInitializeParams {
  /**
   * Specifies the disk name. If not specified, the default is to use the name
   * of the instance.
   */
  core.String diskName;
  /** Specifies the size of the disk in base-2 GB. */
  core.String diskSizeGb;
  /**
   * Specifies the disk type to use to create the instance. If not specified,
   * the default is pd-standard, specified using the full URL. For example:
   *
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/pd-standard
   *
   * Other values include pd-ssd and local-ssd. If you define this field, you
   * can provide either the full or partial URL. For example, the following are
   * valid values:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/diskType
   * - projects/project/zones/zone/diskTypes/diskType
   * - zones/zone/diskTypes/diskType
   */
  core.String diskType;
  /**
   * A source image used to create the disk. You can provide a private (custom)
   * image, and Compute Engine will use the corresponding image from your
   * project. For example:
   *
   * global/images/my-private-image
   *
   * Or you can provide an image from a publicly-available project. For example,
   * to use a Debian image from the debian-cloud project, make sure to include
   * the project in the URL:
   *
   * projects/debian-cloud/global/images/debian-7-wheezy-vYYYYMMDD
   *
   * where vYYYYMMDD is the image version. The fully-qualified URL will also
   * work in both cases.
   */
  core.String sourceImage;

  AttachedDiskInitializeParams();

  AttachedDiskInitializeParams.fromJson(core.Map _json) {
    if (_json.containsKey("diskName")) {
      diskName = _json["diskName"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskName != null) {
      _json["diskName"] = diskName;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (diskType != null) {
      _json["diskType"] = diskType;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    return _json;
  }
}

class Autoscaler {
  /** Autoscaling configuration. */
  AutoscalingPolicy autoscalingPolicy;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** Type of the resource. */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * URL of Instance Group Manager or Replica Pool which will be controlled by
   * Autoscaler.
   */
  core.String target;
  /** [Output Only] URL of the zone where the instance group resides. */
  core.String zone;

  Autoscaler();

  Autoscaler.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingPolicy")) {
      autoscalingPolicy = new AutoscalingPolicy.fromJson(_json["autoscalingPolicy"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingPolicy != null) {
      _json["autoscalingPolicy"] = (autoscalingPolicy).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class AutoscalerAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A map of scoped autoscaler lists. */
  core.Map<core.String, AutoscalersScopedList> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  AutoscalerAggregatedList();

  AutoscalerAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new AutoscalersScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of persistent autoscaler resources. */
class AutoscalerList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A list of Autoscaler resources. */
  core.List<Autoscaler> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  AutoscalerList();

  AutoscalerList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Autoscaler.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class AutoscalersScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  AutoscalersScopedListWarningData();

  AutoscalersScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Informational warning which replaces the list of autoscalers when the list is
 * empty.
 */
class AutoscalersScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<AutoscalersScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  AutoscalersScopedListWarning();

  AutoscalersScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new AutoscalersScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class AutoscalersScopedList {
  /** List of autoscalers contained in this scope. */
  core.List<Autoscaler> autoscalers;
  /**
   * Informational warning which replaces the list of autoscalers when the list
   * is empty.
   */
  AutoscalersScopedListWarning warning;

  AutoscalersScopedList();

  AutoscalersScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalers")) {
      autoscalers = _json["autoscalers"].map((value) => new Autoscaler.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new AutoscalersScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalers != null) {
      _json["autoscalers"] = autoscalers.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

/** Cloud Autoscaler policy. */
class AutoscalingPolicy {
  /**
   * The number of seconds that the Autoscaler should wait between two
   * succeeding changes to the number of virtual machines. You should define an
   * interval that is at least as long as the initialization time of a virtual
   * machine and the time it may take for replica pool to create the virtual
   * machine. The default is 60 seconds.
   */
  core.int coolDownPeriodSec;
  /**
   * TODO(jbartosik): Add support for scaling based on muliple utilization
   * metrics (take max recommendation). Exactly one utilization policy should be
   * provided. Configuration parameters of CPU based autoscaling policy.
   */
  AutoscalingPolicyCpuUtilization cpuUtilization;
  /** Configuration parameters of autoscaling based on custom metric. */
  core.List<AutoscalingPolicyCustomMetricUtilization> customMetricUtilizations;
  /** Configuration parameters of autoscaling based on load balancer. */
  AutoscalingPolicyLoadBalancingUtilization loadBalancingUtilization;
  /**
   * The maximum number of replicas that the Autoscaler can scale up to. This
   * field is required for config to be effective. Maximum number of replicas
   * should be not lower than minimal number of replicas. Absolute limit for
   * this value is defined in Autoscaler backend.
   */
  core.int maxNumReplicas;
  /**
   * The minimum number of replicas that the Autoscaler can scale down to. Can't
   * be less than 0. If not provided Autoscaler will choose default value
   * depending on maximal number of replicas.
   */
  core.int minNumReplicas;

  AutoscalingPolicy();

  AutoscalingPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("coolDownPeriodSec")) {
      coolDownPeriodSec = _json["coolDownPeriodSec"];
    }
    if (_json.containsKey("cpuUtilization")) {
      cpuUtilization = new AutoscalingPolicyCpuUtilization.fromJson(_json["cpuUtilization"]);
    }
    if (_json.containsKey("customMetricUtilizations")) {
      customMetricUtilizations = _json["customMetricUtilizations"].map((value) => new AutoscalingPolicyCustomMetricUtilization.fromJson(value)).toList();
    }
    if (_json.containsKey("loadBalancingUtilization")) {
      loadBalancingUtilization = new AutoscalingPolicyLoadBalancingUtilization.fromJson(_json["loadBalancingUtilization"]);
    }
    if (_json.containsKey("maxNumReplicas")) {
      maxNumReplicas = _json["maxNumReplicas"];
    }
    if (_json.containsKey("minNumReplicas")) {
      minNumReplicas = _json["minNumReplicas"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (coolDownPeriodSec != null) {
      _json["coolDownPeriodSec"] = coolDownPeriodSec;
    }
    if (cpuUtilization != null) {
      _json["cpuUtilization"] = (cpuUtilization).toJson();
    }
    if (customMetricUtilizations != null) {
      _json["customMetricUtilizations"] = customMetricUtilizations.map((value) => (value).toJson()).toList();
    }
    if (loadBalancingUtilization != null) {
      _json["loadBalancingUtilization"] = (loadBalancingUtilization).toJson();
    }
    if (maxNumReplicas != null) {
      _json["maxNumReplicas"] = maxNumReplicas;
    }
    if (minNumReplicas != null) {
      _json["minNumReplicas"] = minNumReplicas;
    }
    return _json;
  }
}

/** CPU utilization policy. */
class AutoscalingPolicyCpuUtilization {
  /**
   * The target utilization that the Autoscaler should maintain. It is
   * represented as a fraction of used cores. For example: 6 cores used in
   * 8-core VM are represented here as 0.75. Must be a float value between (0,
   * 1]. If not defined, the default is 0.8.
   */
  core.double utilizationTarget;

  AutoscalingPolicyCpuUtilization();

  AutoscalingPolicyCpuUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    return _json;
  }
}

/** Custom utilization metric policy. */
class AutoscalingPolicyCustomMetricUtilization {
  /**
   * Identifier of the metric. It should be a Cloud Monitoring metric. The
   * metric can not have negative values. The metric should be an utilization
   * metric (increasing number of VMs handling requests x times should reduce
   * average value of the metric roughly x times). For example you could use:
   * compute.googleapis.com/instance/network/received_bytes_count.
   */
  core.String metric;
  /**
   * Target value of the metric which Autoscaler should maintain. Must be a
   * positive value.
   */
  core.double utilizationTarget;
  /**
   * Defines type in which utilization_target is expressed.
   * Possible string values are:
   * - "DELTA_PER_MINUTE"
   * - "DELTA_PER_SECOND"
   * - "GAUGE"
   */
  core.String utilizationTargetType;

  AutoscalingPolicyCustomMetricUtilization();

  AutoscalingPolicyCustomMetricUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
    if (_json.containsKey("utilizationTargetType")) {
      utilizationTargetType = _json["utilizationTargetType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    if (utilizationTargetType != null) {
      _json["utilizationTargetType"] = utilizationTargetType;
    }
    return _json;
  }
}

/** Load balancing utilization policy. */
class AutoscalingPolicyLoadBalancingUtilization {
  /**
   * Fraction of backend capacity utilization (set in HTTP load balancing
   * configuration) that Autoscaler should maintain. Must be a positive float
   * value. If not defined, the default is 0.8. For example if your
   * maxRatePerInstance capacity (in HTTP Load Balancing configuration) is set
   * at 10 and you would like to keep number of instances such that each
   * instance receives 7 QPS on average, set this to 0.7.
   */
  core.double utilizationTarget;

  AutoscalingPolicyLoadBalancingUtilization();

  AutoscalingPolicyLoadBalancingUtilization.fromJson(core.Map _json) {
    if (_json.containsKey("utilizationTarget")) {
      utilizationTarget = _json["utilizationTarget"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (utilizationTarget != null) {
      _json["utilizationTarget"] = utilizationTarget;
    }
    return _json;
  }
}

/** Message containing information of one individual backend. */
class Backend {
  /**
   * Specifies the balancing mode for this backend. The default is UTILIZATION
   * but available values are UTILIZATION and RATE.
   * Possible string values are:
   * - "RATE"
   * - "UTILIZATION"
   */
  core.String balancingMode;
  /**
   * A multiplier applied to the group's maximum servicing capacity (either
   * UTILIZATION or RATE). Default value is 1, which means the group will serve
   * up to 100% of its configured CPU or RPS (depending on balancingMode). A
   * setting of 0 means the group is completely drained, offering 0% of its
   * available CPU or RPS. Valid range is [0.0,1.0].
   */
  core.double capacityScaler;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * The fully-qualified URL of a zonal Instance Group resource. This instance
   * group defines the list of instances that serve traffic. Member virtual
   * machine instances from each instance group must live in the same zone as
   * the instance group itself. No two backends in a backend service are allowed
   * to use same Instance Group resource.
   *
   * Note that you must specify an Instance Group resource using the
   * fully-qualified URL, rather than a partial URL.
   */
  core.String group;
  /**
   * The max RPS of the group. Can be used with either balancing mode, but
   * required if RATE mode. For RATE mode, either maxRate or maxRatePerInstance
   * must be set.
   */
  core.int maxRate;
  /**
   * The max RPS that a single backed instance can handle. This is used to
   * calculate the capacity of the group. Can be used in either balancing mode.
   * For RATE mode, either maxRate or maxRatePerInstance must be set.
   */
  core.double maxRatePerInstance;
  /**
   * Used when balancingMode is UTILIZATION. This ratio defines the CPU
   * utilization target for the group. The default is 0.8. Valid range is [0.0,
   * 1.0].
   */
  core.double maxUtilization;

  Backend();

  Backend.fromJson(core.Map _json) {
    if (_json.containsKey("balancingMode")) {
      balancingMode = _json["balancingMode"];
    }
    if (_json.containsKey("capacityScaler")) {
      capacityScaler = _json["capacityScaler"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("group")) {
      group = _json["group"];
    }
    if (_json.containsKey("maxRate")) {
      maxRate = _json["maxRate"];
    }
    if (_json.containsKey("maxRatePerInstance")) {
      maxRatePerInstance = _json["maxRatePerInstance"];
    }
    if (_json.containsKey("maxUtilization")) {
      maxUtilization = _json["maxUtilization"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (balancingMode != null) {
      _json["balancingMode"] = balancingMode;
    }
    if (capacityScaler != null) {
      _json["capacityScaler"] = capacityScaler;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (group != null) {
      _json["group"] = group;
    }
    if (maxRate != null) {
      _json["maxRate"] = maxRate;
    }
    if (maxRatePerInstance != null) {
      _json["maxRatePerInstance"] = maxRatePerInstance;
    }
    if (maxUtilization != null) {
      _json["maxUtilization"] = maxUtilization;
    }
    return _json;
  }
}

/**
 * A BackendService resource. This resource defines a group of backend virtual
 * machines together with their serving capacity.
 */
class BackendService {
  /** The list of backends that serve this BackendService. */
  core.List<Backend> backends;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * Fingerprint of this resource. A hash of the contents stored in this object.
   * This field is used in optimistic locking. This field will be ignored when
   * inserting a BackendService. An up-to-date fingerprint must be provided in
   * order to update the BackendService.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * The list of URLs to the HttpHealthCheck resource for health checking this
   * BackendService. Currently at most one health check can be specified, and a
   * health check is required.
   */
  core.List<core.String> healthChecks;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of resource. Always compute#backendService for backend
   * services.
   */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * Deprecated in favor of port name. The TCP port to connect on the backend.
   * The default value is 80.
   */
  core.int port;
  /**
   * Name of backend port. The same name should appear in the resource views
   * referenced by this service. Required.
   */
  core.String portName;
  /**
   *
   * Possible string values are:
   * - "HTTP"
   */
  core.String protocol;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * How many seconds to wait for the backend before considering it a failed
   * request. Default is 30 seconds.
   */
  core.int timeoutSec;

  BackendService();

  BackendService.fromJson(core.Map _json) {
    if (_json.containsKey("backends")) {
      backends = _json["backends"].map((value) => new Backend.fromJson(value)).toList();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("portName")) {
      portName = _json["portName"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("timeoutSec")) {
      timeoutSec = _json["timeoutSec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backends != null) {
      _json["backends"] = backends.map((value) => (value).toJson()).toList();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (portName != null) {
      _json["portName"] = portName;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (timeoutSec != null) {
      _json["timeoutSec"] = timeoutSec;
    }
    return _json;
  }
}

class BackendServiceGroupHealth {
  core.List<HealthStatus> healthStatus;
  /**
   * [Output Only] Type of resource. Always compute#backendServiceGroupHealth
   * for the health of backend services.
   */
  core.String kind;

  BackendServiceGroupHealth();

  BackendServiceGroupHealth.fromJson(core.Map _json) {
    if (_json.containsKey("healthStatus")) {
      healthStatus = _json["healthStatus"].map((value) => new HealthStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthStatus != null) {
      _json["healthStatus"] = healthStatus.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Contains a list of BackendService resources. */
class BackendServiceList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A list of BackendService resources. */
  core.List<BackendService> items;
  /**
   * [Output Only] Type of resource. Always compute#backendServiceList for lists
   * of backend services.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  BackendServiceList();

  BackendServiceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new BackendService.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Deprecation status for a public resource. */
class DeprecationStatus {
  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to DELETED.
   */
  core.String deleted;
  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to DEPRECATED.
   */
  core.String deprecated;
  /**
   * An optional RFC3339 timestamp on or after which the deprecation state of
   * this resource will be changed to OBSOLETE.
   */
  core.String obsolete;
  /**
   * The URL of the suggested replacement for a deprecated resource. The
   * suggested replacement resource must be the same kind of resource as the
   * deprecated resource.
   */
  core.String replacement;
  /**
   * The deprecation state of this resource. This can be DEPRECATED, OBSOLETE,
   * or DELETED. Operations which create a new resource using a DEPRECATED
   * resource will return successfully, but with a warning indicating the
   * deprecated resource and recommending its replacement. Operations which use
   * OBSOLETE or DELETED resources will be rejected and result in an error.
   * Possible string values are:
   * - "DELETED"
   * - "DEPRECATED"
   * - "OBSOLETE"
   */
  core.String state;

  DeprecationStatus();

  DeprecationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = _json["deprecated"];
    }
    if (_json.containsKey("obsolete")) {
      obsolete = _json["obsolete"];
    }
    if (_json.containsKey("replacement")) {
      replacement = _json["replacement"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (deprecated != null) {
      _json["deprecated"] = deprecated;
    }
    if (obsolete != null) {
      _json["obsolete"] = obsolete;
    }
    if (replacement != null) {
      _json["replacement"] = replacement;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/** A Disk resource. */
class Disk {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] Type of the resource. Always compute#disk for disks. */
  core.String kind;
  /** [Output Only] Last attach timestamp in RFC3339 text format. */
  core.String lastAttachTimestamp;
  /** [Output Only] Last detach timestamp in RFC3339 text format. */
  core.String lastDetachTimestamp;
  /** Any applicable publicly visible licenses. */
  core.List<core.String> licenses;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** Internal use only. */
  core.String options;
  /** [Output Only] Server-defined fully-qualified URL for this resource. */
  core.String selfLink;
  /**
   * Size of the persistent disk, specified in GB. You can specify this field
   * when creating a persistent disk using the sourceImage or sourceSnapshot
   * parameter, or specify it alone to create an empty persistent disk.
   *
   * If you specify this field along with sourceImage or sourceSnapshot, the
   * value of sizeGb must not be less than the size of the sourceImage or the
   * size of the snapshot.
   */
  core.String sizeGb;
  /**
   * The source image used to create this disk. If the source image is deleted
   * from the system, this field will not be set, even if an image with the same
   * name has been re-created.
   *
   * When creating a disk, you can provide a private (custom) image using the
   * following input, and Compute Engine will use the corresponding image from
   * your project. For example:
   *
   * global/images/my-private-image
   *
   * Or you can provide an image from a publicly-available project. For example,
   * to use a Debian image from the debian-cloud project, make sure to include
   * the project in the URL:
   *
   * projects/debian-cloud/global/images/debian-7-wheezy-vYYYYMMDD
   *
   * where vYYYYMMDD is the image version. The fully-qualified URL will also
   * work in both cases.
   */
  core.String sourceImage;
  /**
   * The ID value of the image used to create this disk. This value identifies
   * the exact image that was used to create this persistent disk. For example,
   * if you created the persistent disk from an image that was later deleted and
   * recreated under the same name, the source image ID would identify the exact
   * version of the image that was used.
   */
  core.String sourceImageId;
  /**
   * The source snapshot used to create this disk. You can provide this as a
   * partial or full URL to the resource. For example, the following are valid
   * values:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot
   * - projects/project/global/snapshots/snapshot
   * - global/snapshots/snapshot
   */
  core.String sourceSnapshot;
  /**
   * [Output Only] The unique ID of the snapshot used to create this disk. This
   * value identifies the exact snapshot that was used to create this persistent
   * disk. For example, if you created the persistent disk from a snapshot that
   * was later deleted and recreated under the same name, the source snapshot ID
   * would identify the exact version of the snapshot that was used.
   */
  core.String sourceSnapshotId;
  /**
   * [Output Only] The status of disk creation. Applicable statuses includes:
   * CREATING, FAILED, READY, RESTORING.
   * Possible string values are:
   * - "CREATING"
   * - "FAILED"
   * - "READY"
   * - "RESTORING"
   */
  core.String status;
  /**
   * URL of the disk type resource describing which disk type to use to create
   * the disk; provided by the client when the disk is created.
   */
  core.String type;
  /**
   * Links to the users of the disk (attached instances) in form:
   * project/zones/zone/instances/instance
   */
  core.List<core.String> users;
  /** [Output Only] URL of the zone where the disk resides. */
  core.String zone;

  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastAttachTimestamp")) {
      lastAttachTimestamp = _json["lastAttachTimestamp"];
    }
    if (_json.containsKey("lastDetachTimestamp")) {
      lastDetachTimestamp = _json["lastDetachTimestamp"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = _json["options"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sizeGb")) {
      sizeGb = _json["sizeGb"];
    }
    if (_json.containsKey("sourceImage")) {
      sourceImage = _json["sourceImage"];
    }
    if (_json.containsKey("sourceImageId")) {
      sourceImageId = _json["sourceImageId"];
    }
    if (_json.containsKey("sourceSnapshot")) {
      sourceSnapshot = _json["sourceSnapshot"];
    }
    if (_json.containsKey("sourceSnapshotId")) {
      sourceSnapshotId = _json["sourceSnapshotId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("users")) {
      users = _json["users"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastAttachTimestamp != null) {
      _json["lastAttachTimestamp"] = lastAttachTimestamp;
    }
    if (lastDetachTimestamp != null) {
      _json["lastDetachTimestamp"] = lastDetachTimestamp;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = options;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sizeGb != null) {
      _json["sizeGb"] = sizeGb;
    }
    if (sourceImage != null) {
      _json["sourceImage"] = sourceImage;
    }
    if (sourceImageId != null) {
      _json["sourceImageId"] = sourceImageId;
    }
    if (sourceSnapshot != null) {
      _json["sourceSnapshot"] = sourceSnapshot;
    }
    if (sourceSnapshotId != null) {
      _json["sourceSnapshotId"] = sourceSnapshotId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (users != null) {
      _json["users"] = users;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class DiskAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped disk lists. */
  core.Map<core.String, DisksScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#diskAggregatedList for
   * aggregated lists of persistent disks.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  DiskAggregatedList();

  DiskAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new DisksScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A list of Disk resources. */
class DiskList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of persistent disks. */
  core.List<Disk> items;
  /**
   * [Output Only] Type of resource. Always compute#diskList for lists of disks.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  DiskList();

  DiskList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Disk.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class DiskMoveRequest {
  /**
   * The URL of the destination zone to move the disk to. This can be a full or
   * partial URL. For example, the following are all valid URLs to a zone:
   * - https://www.googleapis.com/compute/v1/projects/project/zones/zone
   * - projects/project/zones/zone
   * - zones/zone
   */
  core.String destinationZone;
  /**
   * The URL of the target disk to move. This can be a full or partial URL. For
   * example, the following are all valid URLs to a disk:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk
   * - projects/project/zones/zone/disks/disk
   * - zones/zone/disks/disk
   */
  core.String targetDisk;

  DiskMoveRequest();

  DiskMoveRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destinationZone")) {
      destinationZone = _json["destinationZone"];
    }
    if (_json.containsKey("targetDisk")) {
      targetDisk = _json["targetDisk"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destinationZone != null) {
      _json["destinationZone"] = destinationZone;
    }
    if (targetDisk != null) {
      _json["targetDisk"] = targetDisk;
    }
    return _json;
  }
}

/** A disk type resource. */
class DiskType {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** [Output Only] Server-defined default disk size in GB. */
  core.String defaultDiskSizeGb;
  /** [Output Only] The deprecation status associated with this disk type. */
  DeprecationStatus deprecated;
  /** [Output Only] An optional textual description of the resource. */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#diskType for disk types.
   */
  core.String kind;
  /** [Output Only] Name of the resource. */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] An optional textual description of the valid disk size, such
   * as "10GB-10TB".
   */
  core.String validDiskSize;
  /** [Output Only] URL of the zone where the disk type resides. */
  core.String zone;

  DiskType();

  DiskType.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("defaultDiskSizeGb")) {
      defaultDiskSizeGb = _json["defaultDiskSizeGb"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("validDiskSize")) {
      validDiskSize = _json["validDiskSize"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (defaultDiskSizeGb != null) {
      _json["defaultDiskSizeGb"] = defaultDiskSizeGb;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (validDiskSize != null) {
      _json["validDiskSize"] = validDiskSize;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class DiskTypeAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped disk type lists. */
  core.Map<core.String, DiskTypesScopedList> items;
  /** [Output Only] Type of resource. Always compute#diskTypeAggregatedList. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  DiskTypeAggregatedList();

  DiskTypeAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new DiskTypesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of disk type resources. */
class DiskTypeList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Disk Type resources. */
  core.List<DiskType> items;
  /**
   * [Output Only] Type of resource. Always compute#diskTypeList for disk types.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  DiskTypeList();

  DiskTypeList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new DiskType.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class DiskTypesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  DiskTypesScopedListWarningData();

  DiskTypesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of disk types
 * when the list is empty.
 */
class DiskTypesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<DiskTypesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  DiskTypesScopedListWarning();

  DiskTypesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new DiskTypesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class DiskTypesScopedList {
  /** [Output Only] List of disk types contained in this scope. */
  core.List<DiskType> diskTypes;
  /**
   * [Output Only] Informational warning which replaces the list of disk types
   * when the list is empty.
   */
  DiskTypesScopedListWarning warning;

  DiskTypesScopedList();

  DiskTypesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("diskTypes")) {
      diskTypes = _json["diskTypes"].map((value) => new DiskType.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new DiskTypesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskTypes != null) {
      _json["diskTypes"] = diskTypes.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class DisksScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  DisksScopedListWarningData();

  DisksScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of disks when the
 * list is empty.
 */
class DisksScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<DisksScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  DisksScopedListWarning();

  DisksScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new DisksScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class DisksScopedList {
  /** [Output Only] List of disks contained in this scope. */
  core.List<Disk> disks;
  /**
   * [Output Only] Informational warning which replaces the list of disks when
   * the list is empty.
   */
  DisksScopedListWarning warning;

  DisksScopedList();

  DisksScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("disks")) {
      disks = _json["disks"].map((value) => new Disk.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new DisksScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (disks != null) {
      _json["disks"] = disks.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class FirewallAllowed {
  /**
   * The IP protocol that is allowed for this rule. The protocol type is
   * required when creating a firewall. This value can either be one of the
   * following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or
   * the IP protocol number.
   */
  core.String IPProtocol;
  /**
   * An optional list of ports which are allowed. This field is only applicable
   * for UDP or TCP protocol. Each entry must be either an integer or a range.
   * If not specified, connections through any port are allowed
   *
   * Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
   */
  core.List<core.String> ports;

  FirewallAllowed();

  FirewallAllowed.fromJson(core.Map _json) {
    if (_json.containsKey("IPProtocol")) {
      IPProtocol = _json["IPProtocol"];
    }
    if (_json.containsKey("ports")) {
      ports = _json["ports"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPProtocol != null) {
      _json["IPProtocol"] = IPProtocol;
    }
    if (ports != null) {
      _json["ports"] = ports;
    }
    return _json;
  }
}

/** A Firewall resource. */
class Firewall {
  /**
   * The list of rules specified by this firewall. Each rule specifies a
   * protocol and port-range tuple that describes a permitted connection.
   */
  core.List<FirewallAllowed> allowed;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Ony] Type of the resource. Always compute#firewall for firewall
   * rules.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * URL of the network resource for this firewall rule. This field is required
   * for creating an instance but optional when creating a firewall rule. If not
   * specified when creating a firewall rule, the default network is used:
   * global/networks/default
   * If you choose to specify this property, you can specify the network as a
   * full or partial URL. For example, the following are all valid URLs:
   * -
   * https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network
   * - projects/myproject/global/networks/my-network
   * - global/networks/default
   */
  core.String network;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * The IP address blocks that this rule applies to, expressed in CIDR format.
   * One or both of sourceRanges and sourceTags may be set.
   *
   * If both properties are set, an inbound connection is allowed if the range
   * matches the sourceRanges OR the tag of the source matches the sourceTags
   * property. The connection does not need to match both properties.
   */
  core.List<core.String> sourceRanges;
  /**
   * A list of instance tags which this rule applies to. One or both of
   * sourceRanges and sourceTags may be set.
   *
   * If both properties are set, an inbound connection is allowed if the range
   * matches the sourceRanges OR the tag of the source matches the sourceTags
   * property. The connection does not need to match both properties.
   */
  core.List<core.String> sourceTags;
  /**
   * A list of instance tags indicating sets of instances located in the network
   * that may make network connections as specified in allowed[]. If no
   * targetTags are specified, the firewall rule applies to all instances on the
   * specified network.
   */
  core.List<core.String> targetTags;

  Firewall();

  Firewall.fromJson(core.Map _json) {
    if (_json.containsKey("allowed")) {
      allowed = _json["allowed"].map((value) => new FirewallAllowed.fromJson(value)).toList();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceRanges")) {
      sourceRanges = _json["sourceRanges"];
    }
    if (_json.containsKey("sourceTags")) {
      sourceTags = _json["sourceTags"];
    }
    if (_json.containsKey("targetTags")) {
      targetTags = _json["targetTags"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowed != null) {
      _json["allowed"] = allowed.map((value) => (value).toJson()).toList();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceRanges != null) {
      _json["sourceRanges"] = sourceRanges;
    }
    if (sourceTags != null) {
      _json["sourceTags"] = sourceTags;
    }
    if (targetTags != null) {
      _json["targetTags"] = targetTags;
    }
    return _json;
  }
}

/** Contains a list of Firewall resources. */
class FirewallList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Firewall resources. */
  core.List<Firewall> items;
  /**
   * [Output Only] Type of resource. Always compute#firewallList for lists of
   * firewalls.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  FirewallList();

  FirewallList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Firewall.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/**
 * A ForwardingRule resource. A ForwardingRule resource specifies which pool of
 * target virtual machines to forward a packet to if it matches the given
 * [IPAddress, IPProtocol, portRange] tuple.
 */
class ForwardingRule {
  /**
   * Value of the reserved IP address that this forwarding rule is serving on
   * behalf of. For global forwarding rules, the address must be a global IP;
   * for regional forwarding rules, the address must live in the same region as
   * the forwarding rule. If left empty (default value), an ephemeral IP from
   * the same scope (global or regional) will be assigned.
   */
  core.String IPAddress;
  /**
   * The IP protocol to which this rule applies. Valid options are TCP, UDP,
   * ESP, AH or SCTP.
   * Possible string values are:
   * - "AH"
   * - "ESP"
   * - "SCTP"
   * - "TCP"
   * - "UDP"
   */
  core.String IPProtocol;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] Type of the resource. Always compute#forwardingRule. */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets
   * addressed to ports in the specified range will be forwarded to target.
   * Forwarding rules with the same `[IPAddress, IPProtocol]` pair must have
   * disjoint port ranges.
   */
  core.String portRange;
  /**
   * [Output Only] URL of the region where the regional forwarding rule resides.
   * This field is not applicable to global forwarding rules.
   */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * The URL of the target resource to receive the matched traffic. For regional
   * forwarding rules, this target must live in the same region as the
   * forwarding rule. For global forwarding rules, this target must be a global
   * TargetHttpProxy or TargetHttpsProxy resource.
   */
  core.String target;

  ForwardingRule();

  ForwardingRule.fromJson(core.Map _json) {
    if (_json.containsKey("IPAddress")) {
      IPAddress = _json["IPAddress"];
    }
    if (_json.containsKey("IPProtocol")) {
      IPProtocol = _json["IPProtocol"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("portRange")) {
      portRange = _json["portRange"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPAddress != null) {
      _json["IPAddress"] = IPAddress;
    }
    if (IPProtocol != null) {
      _json["IPProtocol"] = IPProtocol;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (portRange != null) {
      _json["portRange"] = portRange;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

class ForwardingRuleAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A map of scoped forwarding rule lists. */
  core.Map<core.String, ForwardingRulesScopedList> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  ForwardingRuleAggregatedList();

  ForwardingRuleAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new ForwardingRulesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of ForwardingRule resources. */
class ForwardingRuleList {
  /** [Output Only] Unique identifier for the resource. Set by the server. */
  core.String id;
  /** A list of ForwardingRule resources. */
  core.List<ForwardingRule> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  ForwardingRuleList();

  ForwardingRuleList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ForwardingRule.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class ForwardingRulesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  ForwardingRulesScopedListWarningData();

  ForwardingRulesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Informational warning which replaces the list of forwarding rules when the
 * list is empty.
 */
class ForwardingRulesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<ForwardingRulesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  ForwardingRulesScopedListWarning();

  ForwardingRulesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new ForwardingRulesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class ForwardingRulesScopedList {
  /** List of forwarding rules contained in this scope. */
  core.List<ForwardingRule> forwardingRules;
  /**
   * Informational warning which replaces the list of forwarding rules when the
   * list is empty.
   */
  ForwardingRulesScopedListWarning warning;

  ForwardingRulesScopedList();

  ForwardingRulesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("forwardingRules")) {
      forwardingRules = _json["forwardingRules"].map((value) => new ForwardingRule.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new ForwardingRulesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (forwardingRules != null) {
      _json["forwardingRules"] = forwardingRules.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class HealthCheckReference {
  core.String healthCheck;

  HealthCheckReference();

  HealthCheckReference.fromJson(core.Map _json) {
    if (_json.containsKey("healthCheck")) {
      healthCheck = _json["healthCheck"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthCheck != null) {
      _json["healthCheck"] = healthCheck;
    }
    return _json;
  }
}

class HealthStatus {
  /**
   * Health state of the instance.
   * Possible string values are:
   * - "HEALTHY"
   * - "UNHEALTHY"
   */
  core.String healthState;
  /** URL of the instance resource. */
  core.String instance;
  /** The IP address represented by this resource. */
  core.String ipAddress;
  /** The port on the instance. */
  core.int port;

  HealthStatus();

  HealthStatus.fromJson(core.Map _json) {
    if (_json.containsKey("healthState")) {
      healthState = _json["healthState"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthState != null) {
      _json["healthState"] = healthState;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (port != null) {
      _json["port"] = port;
    }
    return _json;
  }
}

/**
 * UrlMaps A host-matching rule for a URL. If matched, will use the named
 * PathMatcher to select the BackendService.
 */
class HostRule {
  /** An optional textual description. */
  core.String description;
  /**
   * The list of host patterns to match. They must be valid hostnames, except *
   * will match any string of ([a-z0-9-.]*). In that case, * must be the first
   * character and must be followed in the pattern by either - or ..
   */
  core.List<core.String> hosts;
  /**
   * The name of the PathMatcher to use to match the path portion of the URL if
   * the hostRule matches the URL's host portion.
   */
  core.String pathMatcher;

  HostRule();

  HostRule.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("hosts")) {
      hosts = _json["hosts"];
    }
    if (_json.containsKey("pathMatcher")) {
      pathMatcher = _json["pathMatcher"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (hosts != null) {
      _json["hosts"] = hosts;
    }
    if (pathMatcher != null) {
      _json["pathMatcher"] = pathMatcher;
    }
    return _json;
  }
}

/**
 * An HttpHealthCheck resource. This resource defines a template for how
 * individual instances should be checked for health, via HTTP.
 */
class HttpHealthCheck {
  /**
   * How often (in seconds) to send a health check. The default value is 5
   * seconds.
   */
  core.int checkIntervalSec;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * A so-far unhealthy instance will be marked healthy after this many
   * consecutive successes. The default value is 2.
   */
  core.int healthyThreshold;
  /**
   * The value of the host header in the HTTP health check request. If left
   * empty (default value), the public IP on behalf of which this health check
   * is performed will be used.
   */
  core.String host;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** Type of the resource. */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * The TCP port number for the HTTP health check request. The default value is
   * 80.
   */
  core.int port;
  /**
   * The request path of the HTTP health check request. The default value is
   * "/".
   */
  core.String requestPath;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * How long (in seconds) to wait before claiming failure. The default value is
   * 5 seconds. It is invalid for timeoutSec to have greater value than
   * checkIntervalSec.
   */
  core.int timeoutSec;
  /**
   * A so-far healthy instance will be marked unhealthy after this many
   * consecutive failures. The default value is 2.
   */
  core.int unhealthyThreshold;

  HttpHealthCheck();

  HttpHealthCheck.fromJson(core.Map _json) {
    if (_json.containsKey("checkIntervalSec")) {
      checkIntervalSec = _json["checkIntervalSec"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("healthyThreshold")) {
      healthyThreshold = _json["healthyThreshold"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("requestPath")) {
      requestPath = _json["requestPath"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("timeoutSec")) {
      timeoutSec = _json["timeoutSec"];
    }
    if (_json.containsKey("unhealthyThreshold")) {
      unhealthyThreshold = _json["unhealthyThreshold"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (checkIntervalSec != null) {
      _json["checkIntervalSec"] = checkIntervalSec;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (healthyThreshold != null) {
      _json["healthyThreshold"] = healthyThreshold;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (requestPath != null) {
      _json["requestPath"] = requestPath;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (timeoutSec != null) {
      _json["timeoutSec"] = timeoutSec;
    }
    if (unhealthyThreshold != null) {
      _json["unhealthyThreshold"] = unhealthyThreshold;
    }
    return _json;
  }
}

/** Contains a list of HttpHealthCheck resources. */
class HttpHealthCheckList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A list of HttpHealthCheck resources. */
  core.List<HttpHealthCheck> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  HttpHealthCheckList();

  HttpHealthCheckList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new HttpHealthCheck.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** The parameters of the raw disk image. */
class ImageRawDisk {
  /**
   * The format used to encode and transmit the block device, which should be
   * TAR. This is just a container and transmission format and not a runtime
   * format. Provided by the client when the disk image is created.
   * Possible string values are:
   * - "TAR"
   */
  core.String containerType;
  /**
   * An optional SHA1 checksum of the disk image before unpackaging; provided by
   * the client when the disk image is created.
   */
  core.String sha1Checksum;
  /**
   * The full Google Cloud Storage URL where the disk image is stored. You must
   * provide either this property or the sourceDisk property but not both.
   */
  core.String source;

  ImageRawDisk();

  ImageRawDisk.fromJson(core.Map _json) {
    if (_json.containsKey("containerType")) {
      containerType = _json["containerType"];
    }
    if (_json.containsKey("sha1Checksum")) {
      sha1Checksum = _json["sha1Checksum"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containerType != null) {
      _json["containerType"] = containerType;
    }
    if (sha1Checksum != null) {
      _json["sha1Checksum"] = sha1Checksum;
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}

/** An Image resource. */
class Image {
  /**
   * Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
   */
  core.String archiveSizeBytes;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** The deprecation status associated with this image. */
  DeprecationStatus deprecated;
  /**
   * Textual description of the resource; provided by the client when the
   * resource is created.
   */
  core.String description;
  /** Size of the image when restored onto a persistent disk (in GB). */
  core.String diskSizeGb;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] Type of the resource. Always compute#image for images. */
  core.String kind;
  /** Any applicable publicly visible licenses. */
  core.List<core.String> licenses;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** The parameters of the raw disk image. */
  ImageRawDisk rawDisk;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * URL of the The source disk used to create this image. This can be a full or
   * valid partial URL. You must provide either this property or the
   * rawDisk.source property but not both to create an image. For example, the
   * following are valid values:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/disk/disk
   * - projects/project/zones/zone/disk/disk
   * - zones/zone/disks/disk
   */
  core.String sourceDisk;
  /**
   * The ID value of the disk used to create this image. This value may be used
   * to determine whether the image was taken from the current or a previous
   * instance of a given disk name.
   */
  core.String sourceDiskId;
  /**
   * The type of the image used to create this disk. The default and only value
   * is RAW
   * Possible string values are:
   * - "RAW"
   */
  core.String sourceType;
  /**
   * [Output Only] The status of the image. An image can be used to create other
   * resources, such as instances, only after the image has been successfully
   * created and the status is set to READY. Possible values are FAILED,
   * PENDING, or READY.
   * Possible string values are:
   * - "FAILED"
   * - "PENDING"
   * - "READY"
   */
  core.String status;

  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("archiveSizeBytes")) {
      archiveSizeBytes = _json["archiveSizeBytes"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("rawDisk")) {
      rawDisk = new ImageRawDisk.fromJson(_json["rawDisk"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceDisk")) {
      sourceDisk = _json["sourceDisk"];
    }
    if (_json.containsKey("sourceDiskId")) {
      sourceDiskId = _json["sourceDiskId"];
    }
    if (_json.containsKey("sourceType")) {
      sourceType = _json["sourceType"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (archiveSizeBytes != null) {
      _json["archiveSizeBytes"] = archiveSizeBytes;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (rawDisk != null) {
      _json["rawDisk"] = (rawDisk).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      _json["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      _json["sourceDiskId"] = sourceDiskId;
    }
    if (sourceType != null) {
      _json["sourceType"] = sourceType;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/** Contains a list of Image resources. */
class ImageList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Image resources. */
  core.List<Image> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  ImageList();

  ImageList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Image.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** An Instance resource. */
class Instance {
  /**
   * Allows this instance to send and receive packets with non-matching
   * destination or source IPs. This is required if you plan to use this
   * instance to forward routes. For more information, see Enabling IP
   * Forwarding.
   */
  core.bool canIpForward;
  /** [Output Only] The CPU platform used by this instance. */
  core.String cpuPlatform;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * Array of disks associated with this instance. Persistent disks must be
   * created before you can assign them.
   */
  core.List<AttachedDisk> disks;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#instance for instances.
   */
  core.String kind;
  /**
   * Full or partial URL of the machine type resource to use for this instance.
   * This is provided by the client when the instance is created. For example,
   * the following is a valid partial url:
   *
   * zones/zone/machineTypes/machine-type
   */
  core.String machineType;
  /**
   * The metadata key/value pairs assigned to this instance. This includes
   * custom metadata and predefined keys.
   */
  Metadata metadata;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * An array of configurations for this interface. This specifies how this
   * interface is configured to interact with other network services, such as
   * connecting to the internet.
   */
  core.List<NetworkInterface> networkInterfaces;
  /** Scheduling options for this instance. */
  Scheduling scheduling;
  /** [Output Only] Server defined URL for this resource. */
  core.String selfLink;
  /**
   * A list of service accounts, with their specified scopes, authorized for
   * this instance. Service accounts generate access tokens that can be accessed
   * through the metadata server and used to authenticate applications on the
   * instance. See Authenticating from Google Compute Engine for more
   * information.
   */
  core.List<ServiceAccount> serviceAccounts;
  /**
   * [Output Only] The status of the instance. One of the following values:
   * PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
   * Possible string values are:
   * - "PROVISIONING"
   * - "RUNNING"
   * - "STAGING"
   * - "STOPPED"
   * - "STOPPING"
   * - "SUSPENDED"
   * - "SUSPENDING"
   * - "TERMINATED"
   */
  core.String status;
  /** [Output Only] An optional, human-readable explanation of the status. */
  core.String statusMessage;
  /**
   * A list of tags to appy to this instance. Tags are used to identify valid
   * sources or targets for network firewalls and are specified by the client
   * during instance creation. The tags can be later modified by the setTags
   * method. Each tag within the list must comply with RFC1035.
   */
  Tags tags;
  /** [Output Only] URL of the zone where the instance resides. */
  core.String zone;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("canIpForward")) {
      canIpForward = _json["canIpForward"];
    }
    if (_json.containsKey("cpuPlatform")) {
      cpuPlatform = _json["cpuPlatform"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("disks")) {
      disks = _json["disks"].map((value) => new AttachedDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networkInterfaces")) {
      networkInterfaces = _json["networkInterfaces"].map((value) => new NetworkInterface.fromJson(value)).toList();
    }
    if (_json.containsKey("scheduling")) {
      scheduling = new Scheduling.fromJson(_json["scheduling"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("serviceAccounts")) {
      serviceAccounts = _json["serviceAccounts"].map((value) => new ServiceAccount.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (canIpForward != null) {
      _json["canIpForward"] = canIpForward;
    }
    if (cpuPlatform != null) {
      _json["cpuPlatform"] = cpuPlatform;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (disks != null) {
      _json["disks"] = disks.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networkInterfaces != null) {
      _json["networkInterfaces"] = networkInterfaces.map((value) => (value).toJson()).toList();
    }
    if (scheduling != null) {
      _json["scheduling"] = (scheduling).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (serviceAccounts != null) {
      _json["serviceAccounts"] = serviceAccounts.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (tags != null) {
      _json["tags"] = (tags).toJson();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class InstanceAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped instance lists. */
  core.Map<core.String, InstancesScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#instanceAggregatedList for
   * aggregated lists of Instance resources.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server defined URL for this resource. */
  core.String selfLink;

  InstanceAggregatedList();

  InstanceAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new InstancesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class InstanceGroup {
  /**
   * [Output Only] The creation timestamp for this instance group in RFC3339
   * text format.
   */
  core.String creationTimestamp;
  /** An optional text description for the instance group. */
  core.String description;
  /**
   * [Output Only] The fingerprint of the named ports. The system uses this
   * fingerprint to detect conflicts when multiple users change the named ports
   * concurrently.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * [Output Only] A unique identifier for this resource type. The server
   * generates this identifier.
   */
  core.String id;
  /**
   * [Output Only] The resource type, which is always compute#instanceGroup for
   * instance groups.
   */
  core.String kind;
  /**
   * The name of the instance group. The name must be 1-63 characters long, and
   * comply with RFC1035.
   */
  core.String name;
  /**
   * Assigns a name to a port number. For example: {name: "http", port: 80}
   *
   * This allows the system to reference ports by the assigned name instead of a
   * port number. Named ports can also contain multiple ports. For example:
   * [{name: "http", port: 80},{name: "http", port: 8080}]
   *
   * Named ports apply to all instances in this instance group.
   */
  core.List<NamedPort> namedPorts;
  /**
   * [Output Only] The URL of the network to which all instances in the instance
   * group belong.
   */
  core.String network;
  /**
   * [Output Only] The URL for this instance group. The server generates this
   * URL.
   */
  core.String selfLink;
  /** [Output Only] The total number of instances in the instance group. */
  core.int size;
  /** [Output Only] The URL of the zone where the instance group is located. */
  core.String zone;

  InstanceGroup();

  InstanceGroup.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("namedPorts")) {
      namedPorts = _json["namedPorts"].map((value) => new NamedPort.fromJson(value)).toList();
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (namedPorts != null) {
      _json["namedPorts"] = namedPorts.map((value) => (value).toJson()).toList();
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class InstanceGroupAggregatedList {
  /**
   * [Output Only] A unique identifier for this aggregated list of instance
   * groups. The server generates this identifier.
   */
  core.String id;
  /** A map of scoped instance group lists. */
  core.Map<core.String, InstanceGroupsScopedList> items;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceGroupAggregatedList for aggregated lists of instance
   * groups.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this resource type. The server generates this
   * URL.
   */
  core.String selfLink;

  InstanceGroupAggregatedList();

  InstanceGroupAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new InstanceGroupsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A list of InstanceGroup resources. */
class InstanceGroupList {
  /**
   * [Output Only] A unique identifier for this list of instance groups. The
   * server generates this identifier.
   */
  core.String id;
  /** A list of instance groups. */
  core.List<InstanceGroup> items;
  /**
   * [Output Only] The resource type, which is always compute#instanceGroupList
   * for instance group lists.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this resource type. The server generates this
   * URL.
   */
  core.String selfLink;

  InstanceGroupList();

  InstanceGroupList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new InstanceGroup.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/**
 * InstanceGroupManagers
 *
 * Next available tag: 19
 */
class InstanceGroupManager {
  /**
   * The base instance name to use for instances in this group. The value must
   * be 1-58 characters long. Instances are named by appending a hyphen and a
   * random four-character string to the base instance name. The base instance
   * name must comply with RFC1035.
   */
  core.String baseInstanceName;
  /**
   * [Output Only] The creation timestamp for this managed instance group in
   * RFC3339 text format.
   */
  core.String creationTimestamp;
  /**
   * [Output Only] The list of instance actions and the number of instances in
   * this managed instance group that are scheduled for each of those actions.
   */
  InstanceGroupManagerActionsSummary currentActions;
  /** An optional text description for the managed instance group. */
  core.String description;
  /**
   * [Output Only] The fingerprint of the target pools information. You can use
   * this optional field for optimistic locking when you update the target pool
   * entries.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * [Output Only] A unique identifier for this resource type. The server
   * generates this identifier.
   */
  core.String id;
  /** [Output Only] The URL of the Instance Group resource. */
  core.String instanceGroup;
  /**
   * The URL of the instance template that is specified for this managed
   * instance group. The group uses this template to create all new instances in
   * the managed instance group.
   */
  core.String instanceTemplate;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceGroupManager for managed instance groups.
   */
  core.String kind;
  /**
   * The name of the managed instance group. The name must be 1-63 characters
   * long, and comply with RFC1035.
   */
  core.String name;
  /**
   * [Output Only] The URL for this managed instance group. The server defines
   * this URL.
   */
  core.String selfLink;
  /**
   * The URLs for all TargetPool resources to which instances in the
   * instanceGroup field are added. The target pools automatically apply to all
   * of the instances in the managed instance group.
   */
  core.List<core.String> targetPools;
  /**
   * The target number of running instances for this managed instance group.
   * Deleting or abandoning instances reduces this number. Resizing the group
   * changes this number.
   */
  core.int targetSize;
  /** The name of the zone where the managed instance group is located. */
  core.String zone;

  InstanceGroupManager();

  InstanceGroupManager.fromJson(core.Map _json) {
    if (_json.containsKey("baseInstanceName")) {
      baseInstanceName = _json["baseInstanceName"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("currentActions")) {
      currentActions = new InstanceGroupManagerActionsSummary.fromJson(_json["currentActions"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instanceGroup")) {
      instanceGroup = _json["instanceGroup"];
    }
    if (_json.containsKey("instanceTemplate")) {
      instanceTemplate = _json["instanceTemplate"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("targetPools")) {
      targetPools = _json["targetPools"];
    }
    if (_json.containsKey("targetSize")) {
      targetSize = _json["targetSize"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (baseInstanceName != null) {
      _json["baseInstanceName"] = baseInstanceName;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (currentActions != null) {
      _json["currentActions"] = (currentActions).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instanceGroup != null) {
      _json["instanceGroup"] = instanceGroup;
    }
    if (instanceTemplate != null) {
      _json["instanceTemplate"] = instanceTemplate;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (targetPools != null) {
      _json["targetPools"] = targetPools;
    }
    if (targetSize != null) {
      _json["targetSize"] = targetSize;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class InstanceGroupManagerActionsSummary {
  /**
   * [Output Only] The total number of instances in the managed instance group
   * that are scheduled to be abandoned. Abandoning an instance removes it from
   * the managed instance group without deleting it.
   */
  core.int abandoning;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are scheduled to be created or are currently being created.
   */
  core.int creating;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are scheduled to be deleted or are currently being deleted.
   */
  core.int deleting;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are running and have no scheduled actions.
   */
  core.int none;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are scheduled to be recreated or are currently being being recreated.
   * Recreating an instance deletes the existing root persistent disk and
   * creates a new disk from the image that is defined in the instance template.
   */
  core.int recreating;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are being reconfigured with properties that do not require a restart or a
   * recreate action. For example, setting or removing target pools for the
   * instance.
   */
  core.int refreshing;
  /**
   * [Output Only] The number of instances in the managed instance group that
   * are scheduled to be restarted or are currently being restarted.
   */
  core.int restarting;

  InstanceGroupManagerActionsSummary();

  InstanceGroupManagerActionsSummary.fromJson(core.Map _json) {
    if (_json.containsKey("abandoning")) {
      abandoning = _json["abandoning"];
    }
    if (_json.containsKey("creating")) {
      creating = _json["creating"];
    }
    if (_json.containsKey("deleting")) {
      deleting = _json["deleting"];
    }
    if (_json.containsKey("none")) {
      none = _json["none"];
    }
    if (_json.containsKey("recreating")) {
      recreating = _json["recreating"];
    }
    if (_json.containsKey("refreshing")) {
      refreshing = _json["refreshing"];
    }
    if (_json.containsKey("restarting")) {
      restarting = _json["restarting"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (abandoning != null) {
      _json["abandoning"] = abandoning;
    }
    if (creating != null) {
      _json["creating"] = creating;
    }
    if (deleting != null) {
      _json["deleting"] = deleting;
    }
    if (none != null) {
      _json["none"] = none;
    }
    if (recreating != null) {
      _json["recreating"] = recreating;
    }
    if (refreshing != null) {
      _json["refreshing"] = refreshing;
    }
    if (restarting != null) {
      _json["restarting"] = restarting;
    }
    return _json;
  }
}

class InstanceGroupManagerAggregatedList {
  /**
   * [Output Only] A unique identifier for this aggregated list of managed
   * instance groups. The server generates this identifier.
   */
  core.String id;
  /** [Output Only] A map of filtered managed instance group lists. */
  core.Map<core.String, InstanceGroupManagersScopedList> items;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceGroupManagerAggregatedList for an aggregated list of
   * managed instance groups.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this resource type. The server generates this
   * URL.
   */
  core.String selfLink;

  InstanceGroupManagerAggregatedList();

  InstanceGroupManagerAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new InstanceGroupManagersScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** [Output Only] A list of managed instance groups. */
class InstanceGroupManagerList {
  /**
   * [Output Only] A unique identifier for this resource type. The server
   * generates this identifier.
   */
  core.String id;
  /** [Output Only] A list of managed instance groups. */
  core.List<InstanceGroupManager> items;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceGroupManagerList for a list of managed instance groups.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this resource type. The server generates this
   * URL.
   */
  core.String selfLink;

  InstanceGroupManagerList();

  InstanceGroupManagerList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new InstanceGroupManager.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class InstanceGroupManagersAbandonInstancesRequest {
  /**
   * The URL for one or more instances to abandon from the managed instance
   * group.
   */
  core.List<core.String> instances;

  InstanceGroupManagersAbandonInstancesRequest();

  InstanceGroupManagersAbandonInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances;
    }
    return _json;
  }
}

class InstanceGroupManagersDeleteInstancesRequest {
  /**
   * The list of instances to delete from this managed instance group. Specify
   * one or more instance URLs.
   */
  core.List<core.String> instances;

  InstanceGroupManagersDeleteInstancesRequest();

  InstanceGroupManagersDeleteInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances;
    }
    return _json;
  }
}

class InstanceGroupManagersListManagedInstancesResponse {
  /** [Output Only] The list of instances in the managed instance group. */
  core.List<ManagedInstance> managedInstances;

  InstanceGroupManagersListManagedInstancesResponse();

  InstanceGroupManagersListManagedInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("managedInstances")) {
      managedInstances = _json["managedInstances"].map((value) => new ManagedInstance.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (managedInstances != null) {
      _json["managedInstances"] = managedInstances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class InstanceGroupManagersRecreateInstancesRequest {
  /** The URL for one or more instances to recreate. */
  core.List<core.String> instances;

  InstanceGroupManagersRecreateInstancesRequest();

  InstanceGroupManagersRecreateInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances;
    }
    return _json;
  }
}

class InstanceGroupManagersScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  InstanceGroupManagersScopedListWarningData();

  InstanceGroupManagersScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] The warning that replaces the list of managed instance groups
 * when the list is empty.
 */
class InstanceGroupManagersScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<InstanceGroupManagersScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  InstanceGroupManagersScopedListWarning();

  InstanceGroupManagersScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new InstanceGroupManagersScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class InstanceGroupManagersScopedList {
  /**
   * [Output Only] The list of managed instance groups that are contained in the
   * specified project and zone.
   */
  core.List<InstanceGroupManager> instanceGroupManagers;
  /**
   * [Output Only] The warning that replaces the list of managed instance groups
   * when the list is empty.
   */
  InstanceGroupManagersScopedListWarning warning;

  InstanceGroupManagersScopedList();

  InstanceGroupManagersScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("instanceGroupManagers")) {
      instanceGroupManagers = _json["instanceGroupManagers"].map((value) => new InstanceGroupManager.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new InstanceGroupManagersScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceGroupManagers != null) {
      _json["instanceGroupManagers"] = instanceGroupManagers.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class InstanceGroupManagersSetInstanceTemplateRequest {
  /**
   * The URL of the instance template that is specified for this managed
   * instance group. The group uses this template to create all new instances in
   * the managed instance group.
   */
  core.String instanceTemplate;

  InstanceGroupManagersSetInstanceTemplateRequest();

  InstanceGroupManagersSetInstanceTemplateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instanceTemplate")) {
      instanceTemplate = _json["instanceTemplate"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceTemplate != null) {
      _json["instanceTemplate"] = instanceTemplate;
    }
    return _json;
  }
}

class InstanceGroupManagersSetTargetPoolsRequest {
  /**
   * The fingerprint of the target pools information. Use this optional property
   * to prevent conflicts when multiple users change the target pools settings
   * concurrently. Obtain the fingerprint with the instanceGroupManagers.get
   * method. Then, include the fingerprint in your request to ensure that you do
   * not overwrite changes that were applied from another concurrent request.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * The list of target pool URLs that instances in this managed instance group
   * belong to. The managed instance group applies these target pools to all of
   * the instances in the group. Existing instances and new instances in the
   * group all receive these target pool settings.
   */
  core.List<core.String> targetPools;

  InstanceGroupManagersSetTargetPoolsRequest();

  InstanceGroupManagersSetTargetPoolsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("targetPools")) {
      targetPools = _json["targetPools"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (targetPools != null) {
      _json["targetPools"] = targetPools;
    }
    return _json;
  }
}

class InstanceGroupsAddInstancesRequest {
  /** The list of instances to add to the instance group. */
  core.List<InstanceReference> instances;

  InstanceGroupsAddInstancesRequest();

  InstanceGroupsAddInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class InstanceGroupsListInstances {
  /**
   * [Output Only] A unique identifier for this list of instance groups. The
   * server generates this identifier.
   */
  core.String id;
  /**
   * [Output Only] A list of instances and any named ports that are assigned to
   * those instances.
   */
  core.List<InstanceWithNamedPorts> items;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceGroupsListInstances for lists of instance groups.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this list of instance groups. The server
   * generates this URL.
   */
  core.String selfLink;

  InstanceGroupsListInstances();

  InstanceGroupsListInstances.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new InstanceWithNamedPorts.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class InstanceGroupsListInstancesRequest {
  /**
   * A filter for the state of the instances in the instance group. Valid
   * options are ALL or RUNNING. If you do not specify this parameter the list
   * includes all instances regardless of their state.
   * Possible string values are:
   * - "ALL"
   * - "RUNNING"
   */
  core.String instanceState;

  InstanceGroupsListInstancesRequest();

  InstanceGroupsListInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instanceState")) {
      instanceState = _json["instanceState"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceState != null) {
      _json["instanceState"] = instanceState;
    }
    return _json;
  }
}

class InstanceGroupsRemoveInstancesRequest {
  /** The list of instances to remove from the instance group. */
  core.List<InstanceReference> instances;

  InstanceGroupsRemoveInstancesRequest();

  InstanceGroupsRemoveInstancesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class InstanceGroupsScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  InstanceGroupsScopedListWarningData();

  InstanceGroupsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] An informational warning that replaces the list of instance
 * groups when the list is empty.
 */
class InstanceGroupsScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<InstanceGroupsScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  InstanceGroupsScopedListWarning();

  InstanceGroupsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new InstanceGroupsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class InstanceGroupsScopedList {
  /**
   * [Output Only] The list of instance groups that are contained in this scope.
   */
  core.List<InstanceGroup> instanceGroups;
  /**
   * [Output Only] An informational warning that replaces the list of instance
   * groups when the list is empty.
   */
  InstanceGroupsScopedListWarning warning;

  InstanceGroupsScopedList();

  InstanceGroupsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("instanceGroups")) {
      instanceGroups = _json["instanceGroups"].map((value) => new InstanceGroup.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new InstanceGroupsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instanceGroups != null) {
      _json["instanceGroups"] = instanceGroups.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class InstanceGroupsSetNamedPortsRequest {
  /**
   * The fingerprint of the named ports information for this instance group. Use
   * this optional property to prevent conflicts when multiple users change the
   * named ports settings concurrently. Obtain the fingerprint with the
   * instanceGroups.get method. Then, include the fingerprint in your request to
   * ensure that you do not overwrite changes that were applied from another
   * concurrent request.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /** The list of named ports to set for this instance group. */
  core.List<NamedPort> namedPorts;

  InstanceGroupsSetNamedPortsRequest();

  InstanceGroupsSetNamedPortsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("namedPorts")) {
      namedPorts = _json["namedPorts"].map((value) => new NamedPort.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (namedPorts != null) {
      _json["namedPorts"] = namedPorts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Contains a list of instance resources. */
class InstanceList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Instance resources. */
  core.List<Instance> items;
  /**
   * [Output Only] Type of resource. Always compute#instanceList for lists of
   * Instance resources.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server defined URL for this resource. */
  core.String selfLink;

  InstanceList();

  InstanceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Instance.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class InstanceMoveRequest {
  /**
   * The URL of the destination zone to move the instance to. This can be a full
   * or partial URL. For example, the following are all valid URLs to a zone:
   * - https://www.googleapis.com/compute/v1/projects/project/zones/zone
   * - projects/project/zones/zone
   * - zones/zone
   */
  core.String destinationZone;
  /**
   * The URL of the target instance to move. This can be a full or partial URL.
   * For example, the following are all valid URLs to an instance:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance
   * - projects/project/zones/zone/instances/instance
   * - zones/zone/instances/instance
   */
  core.String targetInstance;

  InstanceMoveRequest();

  InstanceMoveRequest.fromJson(core.Map _json) {
    if (_json.containsKey("destinationZone")) {
      destinationZone = _json["destinationZone"];
    }
    if (_json.containsKey("targetInstance")) {
      targetInstance = _json["targetInstance"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destinationZone != null) {
      _json["destinationZone"] = destinationZone;
    }
    if (targetInstance != null) {
      _json["targetInstance"] = targetInstance;
    }
    return _json;
  }
}

class InstanceProperties {
  /**
   * Enables instances created based on this template to send packets with
   * source IP addresses other than their own and receive packets with
   * destination IP addresses other than their own. If these instances will be
   * used as an IP gateway or it will be set as the next-hop in a Route
   * resource, specify true. If unsure, leave this set to false. See the
   * canIpForward documentation for more information.
   */
  core.bool canIpForward;
  /**
   * An optional text description for the instances that are created from this
   * instance template.
   */
  core.String description;
  /**
   * An array of disks that are associated with the instances that are created
   * from this template.
   */
  core.List<AttachedDisk> disks;
  /**
   * The machine type to use for instances that are created from this template.
   */
  core.String machineType;
  /**
   * The metadata key/value pairs to assign to instances that are created from
   * this template. These pairs can consist of custom metadata or predefined
   * keys. See Project and instance metadata for more information.
   */
  Metadata metadata;
  /** An array of network access configurations for this interface. */
  core.List<NetworkInterface> networkInterfaces;
  /**
   * Specifies the scheduling options for the instances that are created from
   * this template.
   */
  Scheduling scheduling;
  /**
   * A list of service accounts with specified scopes. Access tokens for these
   * service accounts are available to the instances that are created from this
   * template. Use metadata queries to obtain the access tokens for these
   * instances.
   */
  core.List<ServiceAccount> serviceAccounts;
  /**
   * A list of tags to apply to the instances that are created from this
   * template. The tags identify valid sources or targets for network firewalls.
   * The setTags method can modify this list of tags. Each tag within the list
   * must comply with RFC1035.
   */
  Tags tags;

  InstanceProperties();

  InstanceProperties.fromJson(core.Map _json) {
    if (_json.containsKey("canIpForward")) {
      canIpForward = _json["canIpForward"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("disks")) {
      disks = _json["disks"].map((value) => new AttachedDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("networkInterfaces")) {
      networkInterfaces = _json["networkInterfaces"].map((value) => new NetworkInterface.fromJson(value)).toList();
    }
    if (_json.containsKey("scheduling")) {
      scheduling = new Scheduling.fromJson(_json["scheduling"]);
    }
    if (_json.containsKey("serviceAccounts")) {
      serviceAccounts = _json["serviceAccounts"].map((value) => new ServiceAccount.fromJson(value)).toList();
    }
    if (_json.containsKey("tags")) {
      tags = new Tags.fromJson(_json["tags"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (canIpForward != null) {
      _json["canIpForward"] = canIpForward;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (disks != null) {
      _json["disks"] = disks.map((value) => (value).toJson()).toList();
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (networkInterfaces != null) {
      _json["networkInterfaces"] = networkInterfaces.map((value) => (value).toJson()).toList();
    }
    if (scheduling != null) {
      _json["scheduling"] = (scheduling).toJson();
    }
    if (serviceAccounts != null) {
      _json["serviceAccounts"] = serviceAccounts.map((value) => (value).toJson()).toList();
    }
    if (tags != null) {
      _json["tags"] = (tags).toJson();
    }
    return _json;
  }
}

class InstanceReference {
  /** The URL for a specific instance. */
  core.String instance;

  InstanceReference();

  InstanceReference.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instance != null) {
      _json["instance"] = instance;
    }
    return _json;
  }
}

/** An Instance Template resource. */
class InstanceTemplate {
  /**
   * [Output Only] The creation timestamp for this instance template in RFC3339
   * text format.
   */
  core.String creationTimestamp;
  /** An optional text description for the instance template. */
  core.String description;
  /**
   * [Output Only] A unique identifier for this instance template. The server
   * defines this identifier.
   */
  core.String id;
  /**
   * [Output Only] The resource type, which is always compute#instanceTemplate
   * for instance templates.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** The instance properties for this instance template. */
  InstanceProperties properties;
  /**
   * [Output Only] The URL for this instance template. The server defines this
   * URL.
   */
  core.String selfLink;

  InstanceTemplate();

  InstanceTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("properties")) {
      properties = new InstanceProperties.fromJson(_json["properties"]);
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (properties != null) {
      _json["properties"] = (properties).toJson();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A list of instance templates. */
class InstanceTemplateList {
  /**
   * [Output Only] A unique identifier for this instance template. The server
   * defines this identifier.
   */
  core.String id;
  /** [Output Only] list of InstanceTemplate resources. */
  core.List<InstanceTemplate> items;
  /**
   * [Output Only] The resource type, which is always
   * compute#instanceTemplatesListResponse for instance template lists.
   */
  core.String kind;
  /**
   * [Output Only] A token that is used to continue a truncated list request.
   */
  core.String nextPageToken;
  /**
   * [Output Only] The URL for this instance template list. The server defines
   * this URL.
   */
  core.String selfLink;

  InstanceTemplateList();

  InstanceTemplateList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new InstanceTemplate.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class InstanceWithNamedPorts {
  /** [Output Only] The URL of the instance. */
  core.String instance;
  /** [Output Only] The named ports that belong to this instance group. */
  core.List<NamedPort> namedPorts;
  /**
   * [Output Only] The status of the instance.
   * Possible string values are:
   * - "PROVISIONING"
   * - "RUNNING"
   * - "STAGING"
   * - "STOPPED"
   * - "STOPPING"
   * - "SUSPENDED"
   * - "SUSPENDING"
   * - "TERMINATED"
   */
  core.String status;

  InstanceWithNamedPorts();

  InstanceWithNamedPorts.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("namedPorts")) {
      namedPorts = _json["namedPorts"].map((value) => new NamedPort.fromJson(value)).toList();
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (namedPorts != null) {
      _json["namedPorts"] = namedPorts.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

class InstancesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  InstancesScopedListWarningData();

  InstancesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of instances when
 * the list is empty.
 */
class InstancesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<InstancesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  InstancesScopedListWarning();

  InstancesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new InstancesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class InstancesScopedList {
  /** [Output Only] List of instances contained in this scope. */
  core.List<Instance> instances;
  /**
   * [Output Only] Informational warning which replaces the list of instances
   * when the list is empty.
   */
  InstancesScopedListWarning warning;

  InstancesScopedList();

  InstancesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new Instance.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new InstancesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

/** A license resource. */
class License {
  /**
   * If true, the customer will be charged license fee for running software that
   * contains this license on an instance.
   */
  core.bool chargesUseFee;
  /** [Output Only] Type of resource. Always compute#license for licenses. */
  core.String kind;
  /**
   * [Output Only] Name of the resource. The name is 1-63 characters long and
   * complies with RFC1035.
   */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  License();

  License.fromJson(core.Map _json) {
    if (_json.containsKey("chargesUseFee")) {
      chargesUseFee = _json["chargesUseFee"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (chargesUseFee != null) {
      _json["chargesUseFee"] = chargesUseFee;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class MachineTypeScratchDisks {
  /** Size of the scratch disk, defined in GB. */
  core.int diskGb;

  MachineTypeScratchDisks();

  MachineTypeScratchDisks.fromJson(core.Map _json) {
    if (_json.containsKey("diskGb")) {
      diskGb = _json["diskGb"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskGb != null) {
      _json["diskGb"] = diskGb;
    }
    return _json;
  }
}

/** A Machine Type resource. */
class MachineType {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * [Output Only] The deprecation status associated with this machine type.
   */
  DeprecationStatus deprecated;
  /** [Output Only] An optional textual description of the resource. */
  core.String description;
  /** [Output Only] The tumber of CPUs exposed to the instance. */
  core.int guestCpus;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Deprecated] This property is deprecated and will never be populated with
   * any relevant values.
   */
  core.int imageSpaceGb;
  /** Type of the resource. */
  core.String kind;
  /** [Output Only] Maximum persistent disks allowed. */
  core.int maximumPersistentDisks;
  /** [Output Only] Maximum total persistent disks size (GB) allowed. */
  core.String maximumPersistentDisksSizeGb;
  /**
   * [Output Only] The amount of physical memory available to the instance,
   * defined in MB.
   */
  core.int memoryMb;
  /** [Output Only] Name of the resource. */
  core.String name;
  /** [Output Only] List of extended scratch disks assigned to the instance. */
  core.List<MachineTypeScratchDisks> scratchDisks;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] The name of the zone where the machine type resides, such as
   * us-central1-a.
   */
  core.String zone;

  MachineType();

  MachineType.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("guestCpus")) {
      guestCpus = _json["guestCpus"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("imageSpaceGb")) {
      imageSpaceGb = _json["imageSpaceGb"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maximumPersistentDisks")) {
      maximumPersistentDisks = _json["maximumPersistentDisks"];
    }
    if (_json.containsKey("maximumPersistentDisksSizeGb")) {
      maximumPersistentDisksSizeGb = _json["maximumPersistentDisksSizeGb"];
    }
    if (_json.containsKey("memoryMb")) {
      memoryMb = _json["memoryMb"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("scratchDisks")) {
      scratchDisks = _json["scratchDisks"].map((value) => new MachineTypeScratchDisks.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (guestCpus != null) {
      _json["guestCpus"] = guestCpus;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (imageSpaceGb != null) {
      _json["imageSpaceGb"] = imageSpaceGb;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maximumPersistentDisks != null) {
      _json["maximumPersistentDisks"] = maximumPersistentDisks;
    }
    if (maximumPersistentDisksSizeGb != null) {
      _json["maximumPersistentDisksSizeGb"] = maximumPersistentDisksSizeGb;
    }
    if (memoryMb != null) {
      _json["memoryMb"] = memoryMb;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (scratchDisks != null) {
      _json["scratchDisks"] = scratchDisks.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class MachineTypeAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped machine type lists. */
  core.Map<core.String, MachineTypesScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#machineTypeAggregatedList
   * for aggregated lists of machine types.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  MachineTypeAggregatedList();

  MachineTypeAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new MachineTypesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of Machine Type resources. */
class MachineTypeList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Machine Type resources. */
  core.List<MachineType> items;
  /**
   * [Output Only] Type of resource. Always compute#machineTypeList for lists of
   * machine types.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  MachineTypeList();

  MachineTypeList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new MachineType.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class MachineTypesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  MachineTypesScopedListWarningData();

  MachineTypesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] An informational warning that appears when the machine types
 * list is empty.
 */
class MachineTypesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<MachineTypesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  MachineTypesScopedListWarning();

  MachineTypesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new MachineTypesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class MachineTypesScopedList {
  /** [Output Only] List of machine types contained in this scope. */
  core.List<MachineType> machineTypes;
  /**
   * [Output Only] An informational warning that appears when the machine types
   * list is empty.
   */
  MachineTypesScopedListWarning warning;

  MachineTypesScopedList();

  MachineTypesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("machineTypes")) {
      machineTypes = _json["machineTypes"].map((value) => new MachineType.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new MachineTypesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (machineTypes != null) {
      _json["machineTypes"] = machineTypes.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class ManagedInstance {
  /**
   * [Output Only] The current action that the managed instance group has
   * scheduled for the instance. Possible values:
   * - NONE The instance is running, and the managed instance group does not
   * have any scheduled actions for this instance.
   * - CREATING The managed instance group is creating this instance.
   * - RECREATING The managed instance group is recreating this instance.
   * - DELETING The managed instance group is permanently deleting this
   * instance.
   * - ABANDONING The managed instance group is abandoning this instance. The
   * instance will be removed from the instance group and from any target pools
   * that are associated with this group.
   * - RESTARTING The managed instance group is restarting the instance.
   * - REFRESHING The managed instance group is applying configuration changes
   * to the instance without stopping it. For example, the group can update the
   * target pool list for an instance without stopping that instance.
   * Possible string values are:
   * - "ABANDONING"
   * - "CREATING"
   * - "DELETING"
   * - "NONE"
   * - "RECREATING"
   * - "REFRESHING"
   * - "RESTARTING"
   */
  core.String currentAction;
  /**
   * [Output only] The unique identifier for this resource. This field is empty
   * when instance does not exist.
   */
  core.String id;
  /**
   * [Output Only] The URL of the instance. The URL can exist even if the
   * instance has not yet been created.
   */
  core.String instance;
  /**
   * [Output Only] The status of the instance. This field is empty when the
   * instance does not exist.
   * Possible string values are:
   * - "PROVISIONING"
   * - "RUNNING"
   * - "STAGING"
   * - "STOPPED"
   * - "STOPPING"
   * - "SUSPENDED"
   * - "SUSPENDING"
   * - "TERMINATED"
   */
  core.String instanceStatus;
  /**
   * [Output Only] Information about the last attempt to create or delete the
   * instance.
   */
  ManagedInstanceLastAttempt lastAttempt;

  ManagedInstance();

  ManagedInstance.fromJson(core.Map _json) {
    if (_json.containsKey("currentAction")) {
      currentAction = _json["currentAction"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("instanceStatus")) {
      instanceStatus = _json["instanceStatus"];
    }
    if (_json.containsKey("lastAttempt")) {
      lastAttempt = new ManagedInstanceLastAttempt.fromJson(_json["lastAttempt"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currentAction != null) {
      _json["currentAction"] = currentAction;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (instanceStatus != null) {
      _json["instanceStatus"] = instanceStatus;
    }
    if (lastAttempt != null) {
      _json["lastAttempt"] = (lastAttempt).toJson();
    }
    return _json;
  }
}

class ManagedInstanceLastAttemptErrorsErrors {
  /** [Output Only] The error type identifier for this error. */
  core.String code;
  /**
   * [Output Only] Indicates the field in the request which caused the error.
   * This property is optional.
   */
  core.String location;
  /** [Output Only] An optional, human-readable error message. */
  core.String message;

  ManagedInstanceLastAttemptErrorsErrors();

  ManagedInstanceLastAttemptErrorsErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/**
 * [Output Only] Encountered errors during the last attempt to create or delete
 * the instance.
 */
class ManagedInstanceLastAttemptErrors {
  /**
   * [Output Only] The array of errors encountered while processing this
   * operation.
   */
  core.List<ManagedInstanceLastAttemptErrorsErrors> errors;

  ManagedInstanceLastAttemptErrors();

  ManagedInstanceLastAttemptErrors.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new ManagedInstanceLastAttemptErrorsErrors.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ManagedInstanceLastAttempt {
  /**
   * [Output Only] Encountered errors during the last attempt to create or
   * delete the instance.
   */
  ManagedInstanceLastAttemptErrors errors;

  ManagedInstanceLastAttempt();

  ManagedInstanceLastAttempt.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = new ManagedInstanceLastAttemptErrors.fromJson(_json["errors"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = (errors).toJson();
    }
    return _json;
  }
}

class MetadataItems {
  /**
   * Key for the metadata entry. Keys must conform to the following regexp:
   * [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as
   * part of a URL in the metadata server. Additionally, to avoid ambiguity,
   * keys must not conflict with any other metadata keys for the project.
   */
  core.String key;
  /**
   * Value for the metadata entry. These are free-form strings, and only have
   * meaning as interpreted by the image running in the instance. The only
   * restriction placed on values is that their size must be less than or equal
   * to 32768 bytes.
   */
  core.String value;

  MetadataItems();

  MetadataItems.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/** A metadata key/value entry. */
class Metadata {
  /**
   * Specifies a fingerprint for this request, which is essentially a hash of
   * the metadata's contents and used for optimistic locking. The fingerprint is
   * initially generated by Compute Engine and changes after every request to
   * modify or update metadata. You must always provide an up-to-date
   * fingerprint hash in order to update or change metadata.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * Array of key/value pairs. The total size of all keys and values must be
   * less than 512 KB.
   */
  core.List<MetadataItems> items;
  /**
   * [Output Only] Type of the resource. Always compute#metadata for metadata.
   */
  core.String kind;

  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new MetadataItems.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** The named port. For example: . */
class NamedPort {
  /**
   * The name for this named port. The name must be 1-63 characters long, and
   * comply with RFC1035.
   */
  core.String name;
  /** The port number, which can be a value between 1 and 65535. */
  core.int port;

  NamedPort();

  NamedPort.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (port != null) {
      _json["port"] = port;
    }
    return _json;
  }
}

/** A network resource. */
class Network {
  /**
   * The range of internal addresses that are legal on this network. This range
   * is a CIDR specification, for example: 192.168.0.0/16. Provided by the
   * client when the network is created.
   */
  core.String IPv4Range;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * A gateway address for default routing to other networks. This value is read
   * only and is selected by the Google Compute Engine, typically as the first
   * usable address in the IPv4Range.
   */
  core.String gatewayIPv4;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#network for networks.
   */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  Network();

  Network.fromJson(core.Map _json) {
    if (_json.containsKey("IPv4Range")) {
      IPv4Range = _json["IPv4Range"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("gatewayIPv4")) {
      gatewayIPv4 = _json["gatewayIPv4"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (IPv4Range != null) {
      _json["IPv4Range"] = IPv4Range;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (gatewayIPv4 != null) {
      _json["gatewayIPv4"] = gatewayIPv4;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A network interface resource attached to an instance. */
class NetworkInterface {
  /**
   * An array of configurations for this interface. Currently, ONE_TO_ONE_NAT is
   * the only access config supported. If there are no accessConfigs specified,
   * then this instance will have no external internet access.
   */
  core.List<AccessConfig> accessConfigs;
  /**
   * [Output Only] The name of the network interface, generated by the server.
   * For network devices, these are eth0, eth1, etc.
   */
  core.String name;
  /**
   * URL of the network resource for this instance. This is required for
   * creating an instance but optional when creating a firewall rule. If not
   * specified when creating a firewall rule, the default network is used:
   *
   * global/networks/default
   *
   * If you specify this property, you can specify the network as a full or
   * partial URL. For example, the following are all valid URLs:
   * -
   * https://www.googleapis.com/compute/v1/projects/project/global/networks/network
   * - projects/project/global/networks/network
   * - global/networks/default
   */
  core.String network;
  /**
   * [Output Only] An optional IPV4 internal network address assigned to the
   * instance for this network interface.
   */
  core.String networkIP;

  NetworkInterface();

  NetworkInterface.fromJson(core.Map _json) {
    if (_json.containsKey("accessConfigs")) {
      accessConfigs = _json["accessConfigs"].map((value) => new AccessConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("networkIP")) {
      networkIP = _json["networkIP"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accessConfigs != null) {
      _json["accessConfigs"] = accessConfigs.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (networkIP != null) {
      _json["networkIP"] = networkIP;
    }
    return _json;
  }
}

/** Contains a list of Network resources. */
class NetworkList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Network resources. */
  core.List<Network> items;
  /**
   * [Output Only] Type of resource. Always compute#networkList for lists of
   * networks.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource . */
  core.String selfLink;

  NetworkList();

  NetworkList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Network.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class OperationErrorErrors {
  /** [Output Only] The error type identifier for this error. */
  core.String code;
  /**
   * [Output Only] Indicates the field in the request which caused the error.
   * This property is optional.
   */
  core.String location;
  /** [Output Only] An optional, human-readable error message. */
  core.String message;

  OperationErrorErrors();

  OperationErrorErrors.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/**
 * [Output Only] If errors are generated during processing of the operation,
 * this field will be populated.
 */
class OperationError {
  /**
   * [Output Only] The array of errors encountered while processing this
   * operation.
   */
  core.List<OperationErrorErrors> errors;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new OperationErrorErrors.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class OperationWarningsData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  OperationWarningsData();

  OperationWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class OperationWarnings {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<OperationWarningsData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  OperationWarnings();

  OperationWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationWarningsData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/** An Operation resource, used to manage asynchronous API requests. */
class Operation {
  /**
   * [Output Only] An optional identifier specified by the client when the
   * mutation was initiated. Must be unique for all Operation resources in the
   * project.
   */
  core.String clientOperationId;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * [Output Only] The time that this operation was completed. This is in
   * RFC3339 text format.
   */
  core.String endTime;
  /**
   * [Output Only] If errors are generated during processing of the operation,
   * this field will be populated.
   */
  OperationError error;
  /**
   * [Output Only] If the operation fails, this field contains the HTTP error
   * message that was returned, such as NOT FOUND.
   */
  core.String httpErrorMessage;
  /**
   * [Output Only] If the operation fails, this field contains the HTTP error
   * message that was returned, such as 404.
   */
  core.int httpErrorStatusCode;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] The time that this operation was requested. This is in
   * RFC3339 text format.
   */
  core.String insertTime;
  /**
   * [Output Only] Type of the resource. Always compute#operation for Operation
   * resources.
   */
  core.String kind;
  /** [Output Only] Name of the resource. */
  core.String name;
  /**
   * [Output Only] Type of the operation, such as insert,
   * compute.instanceGroups.update, or compute.instanceGroups.delete.
   */
  core.String operationType;
  /**
   * [Output Only] An optional progress indicator that ranges from 0 to 100.
   * There is no requirement that this be linear or support any granularity of
   * operations. This should not be used to guess at when the operation will be
   * complete. This number should monotonically increase as the operation
   * progresses.
   */
  core.int progress;
  /**
   * [Output Only] URL of the region where the operation resides. Only
   * applicable for regional resources.
   */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] The time that this operation was started by the server. This
   * is in RFC3339 text format.
   */
  core.String startTime;
  /**
   * [Output Only] Status of the operation. Can be one of the following:
   * PENDING, RUNNING, or DONE.
   * Possible string values are:
   * - "DONE"
   * - "PENDING"
   * - "RUNNING"
   */
  core.String status;
  /**
   * [Output Only] An optional textual description of the current status of the
   * operation.
   */
  core.String statusMessage;
  /**
   * [Output Only] Unique target ID which identifies a particular incarnation of
   * the target.
   */
  core.String targetId;
  /** [Output Only] URL of the resource the operation is mutating. */
  core.String targetLink;
  /**
   * [Output Only] User who requested the operation, for example:
   * user@example.com.
   */
  core.String user;
  /**
   * [Output Only] If warning messages are generated during processing of the
   * operation, this field will be populated.
   */
  core.List<OperationWarnings> warnings;
  /** [Output Only] URL of the zone where the operation resides. */
  core.String zone;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("clientOperationId")) {
      clientOperationId = _json["clientOperationId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("error")) {
      error = new OperationError.fromJson(_json["error"]);
    }
    if (_json.containsKey("httpErrorMessage")) {
      httpErrorMessage = _json["httpErrorMessage"];
    }
    if (_json.containsKey("httpErrorStatusCode")) {
      httpErrorStatusCode = _json["httpErrorStatusCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new OperationWarnings.fromJson(value)).toList();
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientOperationId != null) {
      _json["clientOperationId"] = clientOperationId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (httpErrorMessage != null) {
      _json["httpErrorMessage"] = httpErrorMessage;
    }
    if (httpErrorStatusCode != null) {
      _json["httpErrorStatusCode"] = httpErrorStatusCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (user != null) {
      _json["user"] = user;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class OperationAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped operation lists. */
  core.Map<core.String, OperationsScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#operationAggregatedList for
   * aggregated lists of operations.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  OperationAggregatedList();

  OperationAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new OperationsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of Operation resources. */
class OperationList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] The Operation resources. */
  core.List<Operation> items;
  /**
   * [Output Only] Type of resource. Always compute#operations for Operations
   * resource.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncate. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  OperationList();

  OperationList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class OperationsScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  OperationsScopedListWarningData();

  OperationsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of operations
 * when the list is empty.
 */
class OperationsScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<OperationsScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  OperationsScopedListWarning();

  OperationsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new OperationsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class OperationsScopedList {
  /** [Output Only] List of operations contained in this scope. */
  core.List<Operation> operations;
  /**
   * [Output Only] Informational warning which replaces the list of operations
   * when the list is empty.
   */
  OperationsScopedListWarning warning;

  OperationsScopedList();

  OperationsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new OperationsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

/**
 * A matcher for the path portion of the URL. The BackendService from the
 * longest-matched rule will serve the URL. If no rule was matched, the default
 * service will be used.
 */
class PathMatcher {
  /**
   * The URL to the BackendService resource. This will be used if none of the
   * 'pathRules' defined by this PathMatcher is met by the URL's path portion.
   */
  core.String defaultService;
  /** An optional textual description of the resource. */
  core.String description;
  /** The name to which this PathMatcher is referred by the HostRule. */
  core.String name;
  /** The list of path rules. */
  core.List<PathRule> pathRules;

  PathMatcher();

  PathMatcher.fromJson(core.Map _json) {
    if (_json.containsKey("defaultService")) {
      defaultService = _json["defaultService"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pathRules")) {
      pathRules = _json["pathRules"].map((value) => new PathRule.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultService != null) {
      _json["defaultService"] = defaultService;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pathRules != null) {
      _json["pathRules"] = pathRules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A path-matching rule for a URL. If matched, will use the specified
 * BackendService to handle the traffic arriving at this URL.
 */
class PathRule {
  /**
   * The list of path patterns to match. Each must start with / and the only
   * place a * is allowed is at the end following a /. The string fed to the
   * path matcher does not include any text after the first ? or #, and those
   * chars are not allowed here.
   */
  core.List<core.String> paths;
  /** The URL of the BackendService resource if this rule is matched. */
  core.String service;

  PathRule();

  PathRule.fromJson(core.Map _json) {
    if (_json.containsKey("paths")) {
      paths = _json["paths"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (paths != null) {
      _json["paths"] = paths;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/**
 * A Project resource. Projects can only be created in the Google Developers
 * Console. Unless marked otherwise, values can only be modified in the console.
 */
class Project {
  /**
   * Metadata key/value pairs available to all instances contained in this
   * project. See Custom metadata for more information.
   */
  Metadata commonInstanceMetadata;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** An optional textual description of the resource. */
  core.String description;
  /** Restricted features enabled for use on this project. */
  core.List<core.String> enabledFeatures;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#project for projects.
   */
  core.String kind;
  /** Name of the resource. */
  core.String name;
  /** [Output Only] Quotas assigned to this project. */
  core.List<Quota> quotas;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * The location in Cloud Storage and naming method of the daily usage report.
   */
  UsageExportLocation usageExportLocation;

  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey("commonInstanceMetadata")) {
      commonInstanceMetadata = new Metadata.fromJson(_json["commonInstanceMetadata"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("enabledFeatures")) {
      enabledFeatures = _json["enabledFeatures"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("quotas")) {
      quotas = _json["quotas"].map((value) => new Quota.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("usageExportLocation")) {
      usageExportLocation = new UsageExportLocation.fromJson(_json["usageExportLocation"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commonInstanceMetadata != null) {
      _json["commonInstanceMetadata"] = (commonInstanceMetadata).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (enabledFeatures != null) {
      _json["enabledFeatures"] = enabledFeatures;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (quotas != null) {
      _json["quotas"] = quotas.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (usageExportLocation != null) {
      _json["usageExportLocation"] = (usageExportLocation).toJson();
    }
    return _json;
  }
}

/** A quotas entry. */
class Quota {
  /** [Output Only] Quota limit for this metric. */
  core.double limit;
  /**
   * [Output Only] Name of the quota metric.
   * Possible string values are:
   * - "BACKEND_SERVICES"
   * - "CPUS"
   * - "DISKS_TOTAL_GB"
   * - "FIREWALLS"
   * - "FORWARDING_RULES"
   * - "HEALTH_CHECKS"
   * - "IMAGES"
   * - "INSTANCES"
   * - "INSTANCE_GROUPS"
   * - "INSTANCE_GROUP_MANAGERS"
   * - "INSTANCE_TEMPLATES"
   * - "IN_USE_ADDRESSES"
   * - "LOCAL_SSD_TOTAL_GB"
   * - "NETWORKS"
   * - "ROUTES"
   * - "SNAPSHOTS"
   * - "SSD_TOTAL_GB"
   * - "STATIC_ADDRESSES"
   * - "TARGET_HTTP_PROXIES"
   * - "TARGET_INSTANCES"
   * - "TARGET_POOLS"
   * - "TARGET_VPN_GATEWAYS"
   * - "URL_MAPS"
   * - "VPN_TUNNELS"
   */
  core.String metric;
  /** [Output Only] Current usage of this metric. */
  core.double usage;

  Quota();

  Quota.fromJson(core.Map _json) {
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
    if (_json.containsKey("usage")) {
      usage = _json["usage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    if (usage != null) {
      _json["usage"] = usage;
    }
    return _json;
  }
}

/** Region resource. */
class Region {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** [Output Only] The deprecation status associated with this region. */
  DeprecationStatus deprecated;
  /** [Output Only] Textual description of the resource. */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server .
   */
  core.String id;
  /** [Output Only] Type of the resource. Always compute#region for regions. */
  core.String kind;
  /** [Output Only] Name of the resource. */
  core.String name;
  /** [Output Only] Quotas assigned to this region. */
  core.List<Quota> quotas;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] Status of the region, either UP or DOWN.
   * Possible string values are:
   * - "DOWN"
   * - "UP"
   */
  core.String status;
  /**
   * [Output Only] A list of zones available in this region, in the form of
   * resource URLs.
   */
  core.List<core.String> zones;

  Region();

  Region.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("quotas")) {
      quotas = _json["quotas"].map((value) => new Quota.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("zones")) {
      zones = _json["zones"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (quotas != null) {
      _json["quotas"] = quotas.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (zones != null) {
      _json["zones"] = zones;
    }
    return _json;
  }
}

/** Contains a list of region resources. */
class RegionList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Region resources. */
  core.List<Region> items;
  /**
   * [Output Only] Type of resource. Always compute#regionList for lists of
   * regions.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  RegionList();

  RegionList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Region.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class ResourceGroupReference {
  /**
   * A URI referencing one of the resource views listed in the backend service.
   */
  core.String group;

  ResourceGroupReference();

  ResourceGroupReference.fromJson(core.Map _json) {
    if (_json.containsKey("group")) {
      group = _json["group"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (group != null) {
      _json["group"] = group;
    }
    return _json;
  }
}

class RouteWarningsData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  RouteWarningsData();

  RouteWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class RouteWarnings {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<RouteWarningsData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  RouteWarnings();

  RouteWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new RouteWarningsData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/**
 * The route resource. A Route is a rule that specifies how certain packets
 * should be handled by the virtual network. Routes are associated with
 * instances by tag and the set of Routes for a particular instance is called
 * its routing table. For each packet leaving a instance, the system searches
 * that instance's routing table for a single best matching Route. Routes match
 * packets by destination IP address, preferring smaller or more specific ranges
 * over larger ones. If there is a tie, the system selects the Route with the
 * smallest priority value. If there is still a tie, it uses the layer three and
 * four packet headers to select just one of the remaining matching Routes. The
 * packet is then forwarded as specified by the nextHop field of the winning
 * Route -- either to another instance destination, a instance gateway or a
 * Google Compute Engien-operated gateway. Packets that do not match any Route
 * in the sending instance's routing table are dropped.
 */
class Route {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /** The destination range of outgoing packets that this route applies to. */
  core.String destRange;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of this resource. Always compute#routes for Route
   * resources.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** Fully-qualified URL of the network that this route applies to. */
  core.String network;
  /**
   * The URL to a gateway that should handle matching packets. Currently, this
   * is only the internet gateway:
   * projects/<project-id>/global/gateways/default-internet-gateway
   */
  core.String nextHopGateway;
  /**
   * The fully-qualified URL to an instance that should handle matching packets.
   * For example:
   * https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
   */
  core.String nextHopInstance;
  /**
   * The network IP address of an instance that should handle matching packets.
   */
  core.String nextHopIp;
  /** The URL of the local network if it should handle matching packets. */
  core.String nextHopNetwork;
  /** The URL to a VpnTunnel that should handle matching packets. */
  core.String nextHopVpnTunnel;
  /**
   * Breaks ties between Routes of equal specificity. Routes with smaller values
   * win when tied with routes with larger values. Default value is 1000. A
   * valid range is between 0 and 65535.
   */
  core.int priority;
  /** [Output Only] Server-defined fully-qualified URL for this resource. */
  core.String selfLink;
  /** A list of instance tags to which this route applies. */
  core.List<core.String> tags;
  /**
   * [Output Only] If potential misconfigurations are detected for this route,
   * this field will be populated with warning messages.
   */
  core.List<RouteWarnings> warnings;

  Route();

  Route.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("destRange")) {
      destRange = _json["destRange"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("nextHopGateway")) {
      nextHopGateway = _json["nextHopGateway"];
    }
    if (_json.containsKey("nextHopInstance")) {
      nextHopInstance = _json["nextHopInstance"];
    }
    if (_json.containsKey("nextHopIp")) {
      nextHopIp = _json["nextHopIp"];
    }
    if (_json.containsKey("nextHopNetwork")) {
      nextHopNetwork = _json["nextHopNetwork"];
    }
    if (_json.containsKey("nextHopVpnTunnel")) {
      nextHopVpnTunnel = _json["nextHopVpnTunnel"];
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("tags")) {
      tags = _json["tags"];
    }
    if (_json.containsKey("warnings")) {
      warnings = _json["warnings"].map((value) => new RouteWarnings.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (destRange != null) {
      _json["destRange"] = destRange;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (nextHopGateway != null) {
      _json["nextHopGateway"] = nextHopGateway;
    }
    if (nextHopInstance != null) {
      _json["nextHopInstance"] = nextHopInstance;
    }
    if (nextHopIp != null) {
      _json["nextHopIp"] = nextHopIp;
    }
    if (nextHopNetwork != null) {
      _json["nextHopNetwork"] = nextHopNetwork;
    }
    if (nextHopVpnTunnel != null) {
      _json["nextHopVpnTunnel"] = nextHopVpnTunnel;
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (tags != null) {
      _json["tags"] = tags;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Contains a list of route resources. */
class RouteList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A list of Route resources. */
  core.List<Route> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  RouteList();

  RouteList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Route.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Sets the scheduling options for an Instance. */
class Scheduling {
  /**
   * Specifies whether the instance should be automatically restarted if it is
   * terminated by Compute Engine (not terminated by a user). You can only set
   * the automatic restart option for standard instances. Preemptible instances
   * cannot be automatically restarted.
   */
  core.bool automaticRestart;
  /**
   * Defines the maintenance behavior for this instance. For standard instances,
   * the default behavior is MIGRATE. For preemptible instances, the default and
   * only possible behavior is TERMINATE. For more information, see Setting
   * maintenance behavior.
   * Possible string values are:
   * - "MIGRATE"
   * - "TERMINATE"
   */
  core.String onHostMaintenance;
  /** Whether the instance is preemptible. */
  core.bool preemptible;

  Scheduling();

  Scheduling.fromJson(core.Map _json) {
    if (_json.containsKey("automaticRestart")) {
      automaticRestart = _json["automaticRestart"];
    }
    if (_json.containsKey("onHostMaintenance")) {
      onHostMaintenance = _json["onHostMaintenance"];
    }
    if (_json.containsKey("preemptible")) {
      preemptible = _json["preemptible"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (automaticRestart != null) {
      _json["automaticRestart"] = automaticRestart;
    }
    if (onHostMaintenance != null) {
      _json["onHostMaintenance"] = onHostMaintenance;
    }
    if (preemptible != null) {
      _json["preemptible"] = preemptible;
    }
    return _json;
  }
}

/** An instance's serial console output. */
class SerialPortOutput {
  /** [Output Only] The contents of the console output. */
  core.String contents;
  /**
   * [Output Only] Type of the resource. Always compute#serialPortOutput for
   * serial port output.
   */
  core.String kind;
  /** [Output Only] Server defined URL for the resource. */
  core.String selfLink;

  SerialPortOutput();

  SerialPortOutput.fromJson(core.Map _json) {
    if (_json.containsKey("contents")) {
      contents = _json["contents"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contents != null) {
      _json["contents"] = contents;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A service account. */
class ServiceAccount {
  /** Email address of the service account. */
  core.String email;
  /** The list of scopes to be made available for this service account. */
  core.List<core.String> scopes;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("scopes")) {
      scopes = _json["scopes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (email != null) {
      _json["email"] = email;
    }
    if (scopes != null) {
      _json["scopes"] = scopes;
    }
    return _json;
  }
}

/** A persistent disk snapshot resource. */
class Snapshot {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /** [Output Only] Size of the snapshot, specified in GB. */
  core.String diskSizeGb;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of the resource. Always compute#snapshot for Snapshot
   * resources.
   */
  core.String kind;
  /** Public visible licenses. */
  core.List<core.String> licenses;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /** The source disk used to create this snapshot. */
  core.String sourceDisk;
  /**
   * [Output Only] The ID value of the disk used to create this snapshot. This
   * value may be used to determine whether the snapshot was taken from the
   * current or a previous instance of a given disk name.
   */
  core.String sourceDiskId;
  /**
   * [Output Only] The status of the snapshot.
   * Possible string values are:
   * - "CREATING"
   * - "DELETING"
   * - "FAILED"
   * - "READY"
   * - "UPLOADING"
   */
  core.String status;
  /**
   * [Output Only] A size of the the storage used by the snapshot. As snapshots
   * share storage, this number is expected to change with snapshot
   * creation/deletion.
   */
  core.String storageBytes;
  /**
   * [Output Only] An indicator whether storageBytes is in a stable state or it
   * is being adjusted as a result of shared storage reallocation.
   * Possible string values are:
   * - "UPDATING"
   * - "UP_TO_DATE"
   */
  core.String storageBytesStatus;

  Snapshot();

  Snapshot.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("licenses")) {
      licenses = _json["licenses"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sourceDisk")) {
      sourceDisk = _json["sourceDisk"];
    }
    if (_json.containsKey("sourceDiskId")) {
      sourceDiskId = _json["sourceDiskId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("storageBytes")) {
      storageBytes = _json["storageBytes"];
    }
    if (_json.containsKey("storageBytesStatus")) {
      storageBytesStatus = _json["storageBytesStatus"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (licenses != null) {
      _json["licenses"] = licenses;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sourceDisk != null) {
      _json["sourceDisk"] = sourceDisk;
    }
    if (sourceDiskId != null) {
      _json["sourceDiskId"] = sourceDiskId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (storageBytes != null) {
      _json["storageBytes"] = storageBytes;
    }
    if (storageBytesStatus != null) {
      _json["storageBytesStatus"] = storageBytesStatus;
    }
    return _json;
  }
}

/** Contains a list of Snapshot resources. */
class SnapshotList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A list of Snapshot resources. */
  core.List<Snapshot> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  SnapshotList();

  SnapshotList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Snapshot.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** A set of instance tags. */
class Tags {
  /**
   * Specifies a fingerprint for this request, which is essentially a hash of
   * the metadata's contents and used for optimistic locking. The fingerprint is
   * initially generated by Compute Engine and changes after every request to
   * modify or update metadata. You must always provide an up-to-date
   * fingerprint hash in order to update or change metadata.
   *
   * To see the latest fingerprint, make get() request to the instance.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * An array of tags. Each tag must be 1-63 characters long, and comply with
   * RFC1035.
   */
  core.List<core.String> items;

  Tags();

  Tags.fromJson(core.Map _json) {
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (items != null) {
      _json["items"] = items;
    }
    return _json;
  }
}

/** A TargetHttpProxy resource. This resource defines an HTTP proxy. */
class TargetHttpProxy {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of resource. Always compute#operation for Operation
   * resources.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * URL to the UrlMap resource that defines the mapping from URL to the
   * BackendService.
   */
  core.String urlMap;

  TargetHttpProxy();

  TargetHttpProxy.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("urlMap")) {
      urlMap = _json["urlMap"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (urlMap != null) {
      _json["urlMap"] = urlMap;
    }
    return _json;
  }
}

/** A list of TargetHttpProxy resources. */
class TargetHttpProxyList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A list of TargetHttpProxy resources. */
  core.List<TargetHttpProxy> items;
  /**
   * Type of resource. Always compute#targetHttpProxyList for lists of Target
   * HTTP proxies.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  TargetHttpProxyList();

  TargetHttpProxyList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetHttpProxy.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/**
 * A TargetInstance resource. This resource defines an endpoint instance that
 * terminates traffic of certain protocols.
 */
class TargetInstance {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** The URL to the instance that terminates the relevant traffic. */
  core.String instance;
  /** Type of the resource. */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * NAT option controlling how IPs are NAT'ed to the instance. Currently only
   * NO_NAT (default value) is supported.
   * Possible string values are:
   * - "NO_NAT"
   */
  core.String natPolicy;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /** [Output Only] URL of the zone where the target instance resides. */
  core.String zone;

  TargetInstance();

  TargetInstance.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("natPolicy")) {
      natPolicy = _json["natPolicy"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (natPolicy != null) {
      _json["natPolicy"] = natPolicy;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

class TargetInstanceAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A map of scoped target instance lists. */
  core.Map<core.String, TargetInstancesScopedList> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  TargetInstanceAggregatedList();

  TargetInstanceAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new TargetInstancesScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of TargetInstance resources. */
class TargetInstanceList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** A list of TargetInstance resources. */
  core.List<TargetInstance> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  TargetInstanceList();

  TargetInstanceList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetInstance.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class TargetInstancesScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  TargetInstancesScopedListWarningData();

  TargetInstancesScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class TargetInstancesScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<TargetInstancesScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  TargetInstancesScopedListWarning();

  TargetInstancesScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new TargetInstancesScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class TargetInstancesScopedList {
  /** List of target instances contained in this scope. */
  core.List<TargetInstance> targetInstances;
  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  TargetInstancesScopedListWarning warning;

  TargetInstancesScopedList();

  TargetInstancesScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("targetInstances")) {
      targetInstances = _json["targetInstances"].map((value) => new TargetInstance.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new TargetInstancesScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetInstances != null) {
      _json["targetInstances"] = targetInstances.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

/**
 * A TargetPool resource. This resource defines a pool of instances, associated
 * HttpHealthCheck resources, and the fallback TargetPool.
 */
class TargetPool {
  /**
   * This field is applicable only when the containing target pool is serving a
   * forwarding rule as the primary pool, and its failoverRatio field is
   * properly set to a value between [0, 1].
   *
   * backupPool and failoverRatio together define the fallback behavior of the
   * primary target pool: if the ratio of the healthy instances in the primary
   * pool is at or below failoverRatio, traffic arriving at the load-balanced IP
   * will be directed to the backup pool.
   *
   * In case where failoverRatio and backupPool are not set, or all the
   * instances in the backup pool are unhealthy, the traffic will be directed
   * back to the primary pool in the "force" mode, where traffic will be spread
   * to the healthy instances with the best effort, or to all instances when no
   * instance is healthy.
   */
  core.String backupPool;
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource; provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * This field is applicable only when the containing target pool is serving a
   * forwarding rule as the primary pool (i.e., not as a backup pool to some
   * other target pool). The value of the field must be in [0, 1].
   *
   * If set, backupPool must also be set. They together define the fallback
   * behavior of the primary target pool: if the ratio of the healthy instances
   * in the primary pool is at or below this number, traffic arriving at the
   * load-balanced IP will be directed to the backup pool.
   *
   * In case where failoverRatio is not set or all the instances in the backup
   * pool are unhealthy, the traffic will be directed back to the primary pool
   * in the "force" mode, where traffic will be spread to the healthy instances
   * with the best effort, or to all instances when no instance is healthy.
   */
  core.double failoverRatio;
  /**
   * A list of URLs to the HttpHealthCheck resource. A member instance in this
   * pool is considered healthy if and only if all specified health checks pass.
   * An empty list means all member instances will be considered healthy at all
   * times.
   */
  core.List<core.String> healthChecks;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /**
   * A list of resource URLs to the member virtual machines serving this pool.
   * They must live in zones contained in the same region as this pool.
   */
  core.List<core.String> instances;
  /** Type of the resource. */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** [Output Only] URL of the region where the target pool resides. */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * Sesssion affinity option, must be one of the following values:
   * NONE: Connections from the same client IP may go to any instance in the
   * pool.
   * CLIENT_IP: Connections from the same client IP will go to the same instance
   * in the pool while that instance remains healthy.
   * CLIENT_IP_PROTO: Connections from the same client IP with the same IP
   * protocol will go to the same instance in the pool while that instance
   * remains healthy.
   * Possible string values are:
   * - "CLIENT_IP"
   * - "CLIENT_IP_PROTO"
   * - "NONE"
   */
  core.String sessionAffinity;

  TargetPool();

  TargetPool.fromJson(core.Map _json) {
    if (_json.containsKey("backupPool")) {
      backupPool = _json["backupPool"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("failoverRatio")) {
      failoverRatio = _json["failoverRatio"];
    }
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instances")) {
      instances = _json["instances"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sessionAffinity")) {
      sessionAffinity = _json["sessionAffinity"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (backupPool != null) {
      _json["backupPool"] = backupPool;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (failoverRatio != null) {
      _json["failoverRatio"] = failoverRatio;
    }
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instances != null) {
      _json["instances"] = instances;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sessionAffinity != null) {
      _json["sessionAffinity"] = sessionAffinity;
    }
    return _json;
  }
}

class TargetPoolAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A map of scoped target pool lists. */
  core.Map<core.String, TargetPoolsScopedList> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  TargetPoolAggregatedList();

  TargetPoolAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new TargetPoolsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class TargetPoolInstanceHealth {
  core.List<HealthStatus> healthStatus;
  /** Type of resource. */
  core.String kind;

  TargetPoolInstanceHealth();

  TargetPoolInstanceHealth.fromJson(core.Map _json) {
    if (_json.containsKey("healthStatus")) {
      healthStatus = _json["healthStatus"].map((value) => new HealthStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthStatus != null) {
      _json["healthStatus"] = healthStatus.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Contains a list of TargetPool resources. */
class TargetPoolList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A list of TargetPool resources. */
  core.List<TargetPool> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  TargetPoolList();

  TargetPoolList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetPool.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class TargetPoolsAddHealthCheckRequest {
  /** Health check URLs to be added to targetPool. */
  core.List<HealthCheckReference> healthChecks;

  TargetPoolsAddHealthCheckRequest();

  TargetPoolsAddHealthCheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"].map((value) => new HealthCheckReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TargetPoolsAddInstanceRequest {
  /** URLs of the instances to be added to targetPool. */
  core.List<InstanceReference> instances;

  TargetPoolsAddInstanceRequest();

  TargetPoolsAddInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TargetPoolsRemoveHealthCheckRequest {
  /** Health check URLs to be removed from targetPool. */
  core.List<HealthCheckReference> healthChecks;

  TargetPoolsRemoveHealthCheckRequest();

  TargetPoolsRemoveHealthCheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("healthChecks")) {
      healthChecks = _json["healthChecks"].map((value) => new HealthCheckReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (healthChecks != null) {
      _json["healthChecks"] = healthChecks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TargetPoolsRemoveInstanceRequest {
  /** URLs of the instances to be removed from targetPool. */
  core.List<InstanceReference> instances;

  TargetPoolsRemoveInstanceRequest();

  TargetPoolsRemoveInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = _json["instances"].map((value) => new InstanceReference.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class TargetPoolsScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  TargetPoolsScopedListWarningData();

  TargetPoolsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class TargetPoolsScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<TargetPoolsScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  TargetPoolsScopedListWarning();

  TargetPoolsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new TargetPoolsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class TargetPoolsScopedList {
  /** List of target pools contained in this scope. */
  core.List<TargetPool> targetPools;
  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  TargetPoolsScopedListWarning warning;

  TargetPoolsScopedList();

  TargetPoolsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("targetPools")) {
      targetPools = _json["targetPools"].map((value) => new TargetPool.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new TargetPoolsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetPools != null) {
      _json["targetPools"] = targetPools.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class TargetReference {
  core.String target;

  TargetReference();

  TargetReference.fromJson(core.Map _json) {
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

class TargetVpnGateway {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * [Output Only] A list of URLs to the ForwardingRule resources.
   * ForwardingRules are created using compute.forwardingRules.insert and
   * associated to a VPN gateway.
   */
  core.List<core.String> forwardingRules;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /**
   * [Output Only] Type of resource. Always compute#targetVpnGateway for target
   * VPN gateways.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /**
   * URL of the network to which this VPN gateway is attached. Provided by the
   * client when the VPN gateway is created.
   */
  core.String network;
  /** [Output Only] URL of the region where the target VPN gateway resides. */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] The status of the VPN gateway.
   * Possible string values are:
   * - "CREATING"
   * - "DELETING"
   * - "FAILED"
   * - "READY"
   */
  core.String status;
  /**
   * [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are created
   * using compute.vpntunnels.insert and associated to a VPN gateway.
   */
  core.List<core.String> tunnels;

  TargetVpnGateway();

  TargetVpnGateway.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("forwardingRules")) {
      forwardingRules = _json["forwardingRules"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("tunnels")) {
      tunnels = _json["tunnels"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (forwardingRules != null) {
      _json["forwardingRules"] = forwardingRules;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (tunnels != null) {
      _json["tunnels"] = tunnels;
    }
    return _json;
  }
}

class TargetVpnGatewayAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** A map of scoped target vpn gateway lists. */
  core.Map<core.String, TargetVpnGatewaysScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#targetVpnGateway for target
   * VPN gateways.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  TargetVpnGatewayAggregatedList();

  TargetVpnGatewayAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new TargetVpnGatewaysScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of TargetVpnGateway resources. */
class TargetVpnGatewayList {
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /** [Output Only] A list of TargetVpnGateway resources. */
  core.List<TargetVpnGateway> items;
  /**
   * [Output Only] Type of resource. Always compute#targetVpnGateway for target
   * VPN gateways.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  TargetVpnGatewayList();

  TargetVpnGatewayList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new TargetVpnGateway.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class TargetVpnGatewaysScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  TargetVpnGatewaysScopedListWarningData();

  TargetVpnGatewaysScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * [Output Only] Informational warning which replaces the list of addresses when
 * the list is empty.
 */
class TargetVpnGatewaysScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<TargetVpnGatewaysScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  TargetVpnGatewaysScopedListWarning();

  TargetVpnGatewaysScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new TargetVpnGatewaysScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class TargetVpnGatewaysScopedList {
  /** [Output Only] List of target vpn gateways contained in this scope. */
  core.List<TargetVpnGateway> targetVpnGateways;
  /**
   * [Output Only] Informational warning which replaces the list of addresses
   * when the list is empty.
   */
  TargetVpnGatewaysScopedListWarning warning;

  TargetVpnGatewaysScopedList();

  TargetVpnGatewaysScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("targetVpnGateways")) {
      targetVpnGateways = _json["targetVpnGateways"].map((value) => new TargetVpnGateway.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new TargetVpnGatewaysScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (targetVpnGateways != null) {
      _json["targetVpnGateways"] = targetVpnGateways.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class TestFailure {
  core.String actualService;
  core.String expectedService;
  core.String host;
  core.String path;

  TestFailure();

  TestFailure.fromJson(core.Map _json) {
    if (_json.containsKey("actualService")) {
      actualService = _json["actualService"];
    }
    if (_json.containsKey("expectedService")) {
      expectedService = _json["expectedService"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (actualService != null) {
      _json["actualService"] = actualService;
    }
    if (expectedService != null) {
      _json["expectedService"] = expectedService;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (path != null) {
      _json["path"] = path;
    }
    return _json;
  }
}

/**
 * A UrlMap resource. This resource defines the mapping from URL to the
 * BackendService resource, based on the "longest-match" of the URL's host and
 * path.
 */
class UrlMap {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** The URL of the BackendService resource if none of the hostRules match. */
  core.String defaultService;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /**
   * Fingerprint of this resource. A hash of the contents stored in this object.
   * This field is used in optimistic locking. This field will be ignored when
   * inserting a UrlMap. An up-to-date fingerprint must be provided in order to
   * update the UrlMap.
   */
  core.String fingerprint;
  core.List<core.int> get fingerprintAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(fingerprint);
  }

  void set fingerprintAsBytes(core.List<core.int> _bytes) {
    fingerprint = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /** The list of HostRules to use against the URL. */
  core.List<HostRule> hostRules;
  /** [Output Only] Unique identifier for the resource. Set by the server. */
  core.String id;
  /** Type of the resource. */
  core.String kind;
  /**
   * Name of the resource. Provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** The list of named PathMatchers to use against the URL. */
  core.List<PathMatcher> pathMatchers;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * The list of expected URL mappings. Request to update this UrlMap will
   * succeed only all of the test cases pass.
   */
  core.List<UrlMapTest> tests;

  UrlMap();

  UrlMap.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("defaultService")) {
      defaultService = _json["defaultService"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("hostRules")) {
      hostRules = _json["hostRules"].map((value) => new HostRule.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pathMatchers")) {
      pathMatchers = _json["pathMatchers"].map((value) => new PathMatcher.fromJson(value)).toList();
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("tests")) {
      tests = _json["tests"].map((value) => new UrlMapTest.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (defaultService != null) {
      _json["defaultService"] = defaultService;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (hostRules != null) {
      _json["hostRules"] = hostRules.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pathMatchers != null) {
      _json["pathMatchers"] = pathMatchers.map((value) => (value).toJson()).toList();
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (tests != null) {
      _json["tests"] = tests.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Contains a list of UrlMap resources. */
class UrlMapList {
  /** [Output Only] Unique identifier for the resource. Set by the server. */
  core.String id;
  /** A list of UrlMap resources. */
  core.List<UrlMap> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  UrlMapList();

  UrlMapList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new UrlMap.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class UrlMapReference {
  core.String urlMap;

  UrlMapReference();

  UrlMapReference.fromJson(core.Map _json) {
    if (_json.containsKey("urlMap")) {
      urlMap = _json["urlMap"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (urlMap != null) {
      _json["urlMap"] = urlMap;
    }
    return _json;
  }
}

/** Message for the expected URL mappings. */
class UrlMapTest {
  /** Description of this test case. */
  core.String description;
  /** Host portion of the URL. */
  core.String host;
  /** Path portion of the URL. */
  core.String path;
  /** Expected BackendService resource the given URL should be mapped to. */
  core.String service;

  UrlMapTest();

  UrlMapTest.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/** Message representing the validation result for a UrlMap. */
class UrlMapValidationResult {
  core.List<core.String> loadErrors;
  /**
   * Whether the given UrlMap can be successfully loaded. If false, 'loadErrors'
   * indicates the reasons.
   */
  core.bool loadSucceeded;
  core.List<TestFailure> testFailures;
  /**
   * If successfully loaded, this field indicates whether the test passed. If
   * false, 'testFailures's indicate the reason of failure.
   */
  core.bool testPassed;

  UrlMapValidationResult();

  UrlMapValidationResult.fromJson(core.Map _json) {
    if (_json.containsKey("loadErrors")) {
      loadErrors = _json["loadErrors"];
    }
    if (_json.containsKey("loadSucceeded")) {
      loadSucceeded = _json["loadSucceeded"];
    }
    if (_json.containsKey("testFailures")) {
      testFailures = _json["testFailures"].map((value) => new TestFailure.fromJson(value)).toList();
    }
    if (_json.containsKey("testPassed")) {
      testPassed = _json["testPassed"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (loadErrors != null) {
      _json["loadErrors"] = loadErrors;
    }
    if (loadSucceeded != null) {
      _json["loadSucceeded"] = loadSucceeded;
    }
    if (testFailures != null) {
      _json["testFailures"] = testFailures.map((value) => (value).toJson()).toList();
    }
    if (testPassed != null) {
      _json["testPassed"] = testPassed;
    }
    return _json;
  }
}

class UrlMapsValidateRequest {
  /** Content of the UrlMap to be validated. */
  UrlMap resource;

  UrlMapsValidateRequest();

  UrlMapsValidateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new UrlMap.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

class UrlMapsValidateResponse {
  UrlMapValidationResult result;

  UrlMapsValidateResponse();

  UrlMapsValidateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = new UrlMapValidationResult.fromJson(_json["result"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

/**
 * The location in Cloud Storage and naming method of the daily usage report.
 * Contains bucket_name and report_name prefix.
 */
class UsageExportLocation {
  /**
   * The name of an existing bucket in Cloud Storage where the usage report
   * object is stored. The Google Service Account is granted write access to
   * this bucket. This is just the bucket name, with no gs:// or
   * https://storage.googleapis.com/ in front of it.
   */
  core.String bucketName;
  /**
   * An optional prefix for the name of the usage report object stored in
   * bucketName. If not supplied, defaults to usage. The report is stored as a
   * CSV file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is the
   * day of the usage according to Pacific Time. If you supply a prefix, it
   * should conform to Cloud Storage object naming conventions.
   */
  core.String reportNamePrefix;

  UsageExportLocation();

  UsageExportLocation.fromJson(core.Map _json) {
    if (_json.containsKey("bucketName")) {
      bucketName = _json["bucketName"];
    }
    if (_json.containsKey("reportNamePrefix")) {
      reportNamePrefix = _json["reportNamePrefix"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bucketName != null) {
      _json["bucketName"] = bucketName;
    }
    if (reportNamePrefix != null) {
      _json["reportNamePrefix"] = reportNamePrefix;
    }
    return _json;
  }
}

class VpnTunnel {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /**
   * An optional textual description of the resource. Provided by the client
   * when the resource is created.
   */
  core.String description;
  /** [Output Only] Detailed status message for the VPN tunnel. */
  core.String detailedStatus;
  /**
   * [Output Only] Unique identifier for the resource. Defined by the server.
   */
  core.String id;
  /**
   * IKE protocol version to use when establishing the VPN tunnel with peer VPN
   * gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
   */
  core.int ikeVersion;
  /**
   * [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
   */
  core.String kind;
  /**
   * Name of the resource; provided by the client when the resource is created.
   * The name must be 1-63 characters long, and comply with RFC1035.
   * Specifically, the name must be 1-63 characters long and match the regular
   * expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must
   * be a lowercase letter, and all following characters must be a dash,
   * lowercase letter, or digit, except the last character, which cannot be a
   * dash.
   */
  core.String name;
  /** IP address of the peer VPN gateway. */
  core.String peerIp;
  /** [Output Only] URL of the region where the VPN tunnel resides. */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * Shared secret used to set the secure session between the GCE VPN gateway
   * and the peer VPN gateway.
   */
  core.String sharedSecret;
  /** Hash of the shared secret. */
  core.String sharedSecretHash;
  /**
   * [Output Only] The status of the VPN tunnel.
   * Possible string values are:
   * - "AUTHORIZATION_ERROR"
   * - "DEPROVISIONING"
   * - "ESTABLISHED"
   * - "FAILED"
   * - "FIRST_HANDSHAKE"
   * - "NEGOTIATION_FAILURE"
   * - "NETWORK_ERROR"
   * - "NO_INCOMING_PACKETS"
   * - "PROVISIONING"
   * - "REJECTED"
   * - "WAITING_FOR_FULL_CONFIG"
   */
  core.String status;
  /**
   * URL of the VPN gateway to which this VPN tunnel is associated. Provided by
   * the client when the VPN tunnel is created.
   */
  core.String targetVpnGateway;

  VpnTunnel();

  VpnTunnel.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("detailedStatus")) {
      detailedStatus = _json["detailedStatus"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("ikeVersion")) {
      ikeVersion = _json["ikeVersion"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("peerIp")) {
      peerIp = _json["peerIp"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sharedSecret")) {
      sharedSecret = _json["sharedSecret"];
    }
    if (_json.containsKey("sharedSecretHash")) {
      sharedSecretHash = _json["sharedSecretHash"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("targetVpnGateway")) {
      targetVpnGateway = _json["targetVpnGateway"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (detailedStatus != null) {
      _json["detailedStatus"] = detailedStatus;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (ikeVersion != null) {
      _json["ikeVersion"] = ikeVersion;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (peerIp != null) {
      _json["peerIp"] = peerIp;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sharedSecret != null) {
      _json["sharedSecret"] = sharedSecret;
    }
    if (sharedSecretHash != null) {
      _json["sharedSecretHash"] = sharedSecretHash;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (targetVpnGateway != null) {
      _json["targetVpnGateway"] = targetVpnGateway;
    }
    return _json;
  }
}

class VpnTunnelAggregatedList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A map of scoped vpn tunnel lists. */
  core.Map<core.String, VpnTunnelsScopedList> items;
  /**
   * [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  VpnTunnelAggregatedList();

  VpnTunnelAggregatedList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = commons.mapMap(_json["items"], (item) => new VpnTunnelsScopedList.fromJson(item));
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = commons.mapMap(items, (item) => (item).toJson());
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/** Contains a list of VpnTunnel resources. */
class VpnTunnelList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of VpnTunnel resources. */
  core.List<VpnTunnel> items;
  /**
   * [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
   */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;

  VpnTunnelList();

  VpnTunnelList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new VpnTunnel.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

class VpnTunnelsScopedListWarningData {
  /** [Output Only] A key for the warning data. */
  core.String key;
  /** [Output Only] A warning data value corresponding to the key. */
  core.String value;

  VpnTunnelsScopedListWarningData();

  VpnTunnelsScopedListWarningData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Informational warning which replaces the list of addresses when the list is
 * empty.
 */
class VpnTunnelsScopedListWarning {
  /**
   * [Output Only] The warning type identifier for this warning.
   * Possible string values are:
   * - "DEPRECATED_RESOURCE_USED"
   * - "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
   * - "INJECTED_KERNELS_DEPRECATED"
   * - "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
   * - "NEXT_HOP_CANNOT_IP_FORWARD"
   * - "NEXT_HOP_INSTANCE_NOT_FOUND"
   * - "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
   * - "NEXT_HOP_NOT_RUNNING"
   * - "NOT_CRITICAL_ERROR"
   * - "NO_RESULTS_ON_PAGE"
   * - "REQUIRED_TOS_AGREEMENT"
   * - "RESOURCE_NOT_DELETED"
   * - "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
   * - "UNREACHABLE"
   */
  core.String code;
  /** [Output Only] Metadata for this warning in key: value format. */
  core.List<VpnTunnelsScopedListWarningData> data;
  /** [Output Only] Optional human-readable details for this warning. */
  core.String message;

  VpnTunnelsScopedListWarning();

  VpnTunnelsScopedListWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"].map((value) => new VpnTunnelsScopedListWarningData.fromJson(value)).toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

class VpnTunnelsScopedList {
  /** List of vpn tunnels contained in this scope. */
  core.List<VpnTunnel> vpnTunnels;
  /**
   * Informational warning which replaces the list of addresses when the list is
   * empty.
   */
  VpnTunnelsScopedListWarning warning;

  VpnTunnelsScopedList();

  VpnTunnelsScopedList.fromJson(core.Map _json) {
    if (_json.containsKey("vpnTunnels")) {
      vpnTunnels = _json["vpnTunnels"].map((value) => new VpnTunnel.fromJson(value)).toList();
    }
    if (_json.containsKey("warning")) {
      warning = new VpnTunnelsScopedListWarning.fromJson(_json["warning"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (vpnTunnels != null) {
      _json["vpnTunnels"] = vpnTunnels.map((value) => (value).toJson()).toList();
    }
    if (warning != null) {
      _json["warning"] = (warning).toJson();
    }
    return _json;
  }
}

class ZoneMaintenanceWindows {
  /**
   * [Output Only] Starting time of the maintenance window, in RFC3339 format.
   */
  core.String beginTime;
  /** [Output Only] Textual description of the maintenance window. */
  core.String description;
  /**
   * [Output Only] Ending time of the maintenance window, in RFC3339 format.
   */
  core.String endTime;
  /** [Output Only] Name of the maintenance window. */
  core.String name;

  ZoneMaintenanceWindows();

  ZoneMaintenanceWindows.fromJson(core.Map _json) {
    if (_json.containsKey("beginTime")) {
      beginTime = _json["beginTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (beginTime != null) {
      _json["beginTime"] = beginTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** A Zone resource. */
class Zone {
  /** [Output Only] Creation timestamp in RFC3339 text format. */
  core.String creationTimestamp;
  /** [Output Only] The deprecation status associated with this zone. */
  DeprecationStatus deprecated;
  /** [Output Only] Textual description of the resource. */
  core.String description;
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] Type of the resource. Always kind#zone for zones. */
  core.String kind;
  /**
   * [Output Only] Any scheduled maintenance windows for this zone. When the
   * zone is in a maintenance window, all resources which reside in the zone
   * will be unavailable. For more information, see Maintenance Windows
   */
  core.List<ZoneMaintenanceWindows> maintenanceWindows;
  /** [Output Only] Name of the resource. */
  core.String name;
  /** [Output Only] Full URL reference to the region which hosts the zone. */
  core.String region;
  /** [Output Only] Server-defined URL for the resource. */
  core.String selfLink;
  /**
   * [Output Only] Status of the zone, either UP or DOWN.
   * Possible string values are:
   * - "DOWN"
   * - "UP"
   */
  core.String status;

  Zone();

  Zone.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = _json["creationTimestamp"];
    }
    if (_json.containsKey("deprecated")) {
      deprecated = new DeprecationStatus.fromJson(_json["deprecated"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maintenanceWindows")) {
      maintenanceWindows = _json["maintenanceWindows"].map((value) => new ZoneMaintenanceWindows.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = creationTimestamp;
    }
    if (deprecated != null) {
      _json["deprecated"] = (deprecated).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maintenanceWindows != null) {
      _json["maintenanceWindows"] = maintenanceWindows.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/** Contains a list of zone resources. */
class ZoneList {
  /**
   * [Output Only] Unique identifier for the resource; defined by the server.
   */
  core.String id;
  /** [Output Only] A list of Zone resources. */
  core.List<Zone> items;
  /** Type of resource. */
  core.String kind;
  /** [Output Only] A token used to continue a truncated list request. */
  core.String nextPageToken;
  /** [Output Only] Server-defined URL for this resource. */
  core.String selfLink;

  ZoneList();

  ZoneList.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Zone.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}
