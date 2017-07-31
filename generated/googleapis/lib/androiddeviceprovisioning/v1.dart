// This is a generated file (see the discoveryapis_generator project).

library googleapis.androiddeviceprovisioning.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client androiddeviceprovisioning/v1';

/** Android Device Provisioning Partner API */
class AndroiddeviceprovisioningApi {

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  PartnersResourceApi get partners => new PartnersResourceApi(_requester);

  AndroiddeviceprovisioningApi(http.Client client, {core.String rootUrl: "https://androiddeviceprovisioning.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the latest state of a long-running operation.  Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^operations/.+$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

}


class PartnersResourceApi {
  final commons.ApiRequester _requester;

  PartnersCustomersResourceApi get customers => new PartnersCustomersResourceApi(_requester);
  PartnersDevicesResourceApi get devices => new PartnersDevicesResourceApi(_requester);

  PartnersResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class PartnersCustomersResourceApi {
  final commons.ApiRequester _requester;

  PartnersCustomersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * List all the customers that has delegates some role to this customer.
   *
   * Request parameters:
   *
   * [partnerId] - the id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [ListCustomersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCustomersResponse> list(core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/customers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCustomersResponse.fromJson(data));
  }

}


class PartnersDevicesResourceApi {
  final commons.ApiRequester _requester;

  PartnersDevicesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Claim the device identified by device identifier.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - Id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [ClaimDeviceResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ClaimDeviceResponse> claim(ClaimDeviceRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:claim';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ClaimDeviceResponse.fromJson(data));
  }

  /**
   * Claim devices asynchronously
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - partner id.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> claimAsync(ClaimDevicesRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:claimAsync';

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
   * Find devices by device identifier.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [FindDevicesByDeviceIdentifierResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<FindDevicesByDeviceIdentifierResponse> findByIdentifier(FindDevicesByDeviceIdentifierRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:findByIdentifier';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FindDevicesByDeviceIdentifierResponse.fromJson(data));
  }

  /**
   * Find devices by ownership.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [FindDevicesByOwnerResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<FindDevicesByOwnerResponse> findByOwner(FindDevicesByOwnerRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:findByOwner';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FindDevicesByOwnerResponse.fromJson(data));
  }

  /**
   * Get a device
   *
   * Request parameters:
   *
   * [name] - resource name in 'partners/[PARTNER_ID]/devices/[DEVICE_ID]'.
   * Value must have pattern "^partners/[^/]+/devices/[^/]+$".
   *
   * Completes with a [Device].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Device> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Device.fromJson(data));
  }

  /**
   * Update the metadata
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [metadataOwnerId] - The owner of the newly set metadata. Should be partner
   * id itself.
   * Value must have pattern "^[^/]+$".
   *
   * [deviceId] - id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [DeviceMetadata].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DeviceMetadata> metadata(UpdateDeviceMetadataRequest request, core.String metadataOwnerId, core.String deviceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (metadataOwnerId == null) {
      throw new core.ArgumentError("Parameter metadataOwnerId is required.");
    }
    if (deviceId == null) {
      throw new core.ArgumentError("Parameter deviceId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$metadataOwnerId') + '/devices/' + commons.Escaper.ecapeVariableReserved('$deviceId') + '/metadata';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DeviceMetadata.fromJson(data));
  }

  /**
   * Unclaim the device identified by device_id or identifier.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - Id of the partner.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> unclaim(UnclaimDeviceRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:unclaim';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Unclaim devices asynchronously
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - partner id.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> unclaimAsync(UnclaimDevicesRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:unclaimAsync';

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
   * Set metadata in batch asynchronously.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [partnerId] - partner id.
   * Value must have pattern "^[^/]+$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> updateMetadataAsync(UpdateDeviceMetadataInBatchRequest request, core.String partnerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (partnerId == null) {
      throw new core.ArgumentError("Parameter partnerId is required.");
    }

    _url = 'v1/partners/' + commons.Escaper.ecapeVariableReserved('$partnerId') + '/devices:updateMetadataAsync';

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



/** Request message to claim a device on behalf of a customer. */
class ClaimDeviceRequest {
  /** The customer to claim for. */
  core.String customerId;
  /** The device identifier of the device to claim. */
  DeviceIdentifier deviceIdentifier;
  /**
   * Section to claim
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  ClaimDeviceRequest();

  ClaimDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** Response message containing device id of the claim. */
class ClaimDeviceResponse {
  /** the device id of the claimed device. */
  core.String deviceId;
  /**
   * the resource name of the device in
   * 'partners/[PARTNER_ID]/devices/[DEVICE_ID]'.
   */
  core.String deviceName;

  ClaimDeviceResponse();

  ClaimDeviceResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceName")) {
      deviceName = _json["deviceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceName != null) {
      _json["deviceName"] = deviceName;
    }
    return _json;
  }
}

/** Request to claim devices asynchronously in batch. */
class ClaimDevicesRequest {
  /** list of claims. */
  core.List<PartnerClaim> claims;

  ClaimDevicesRequest();

  ClaimDevicesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("claims")) {
      claims = _json["claims"].map((value) => new PartnerClaim.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (claims != null) {
      _json["claims"] = claims.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Company */
class Company {
  /** company id */
  core.String companyId;
  /** company name */
  core.String companyName;

  Company();

  Company.fromJson(core.Map _json) {
    if (_json.containsKey("companyId")) {
      companyId = _json["companyId"];
    }
    if (_json.containsKey("companyName")) {
      companyName = _json["companyName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (companyId != null) {
      _json["companyId"] = companyId;
    }
    if (companyName != null) {
      _json["companyName"] = companyName;
    }
    return _json;
  }
}

/** Device */
class Device {
  /** claims */
  core.List<DeviceClaim> claims;
  /** Device id */
  core.String deviceId;
  /** Device identifier */
  DeviceIdentifier deviceIdentifier;
  /** Device metadata */
  DeviceMetadata deviceMetadata;
  /** Resource name in 'partners/[PARTNER_ID]/devices/[DEVICE_ID]'. */
  core.String name;

  Device();

  Device.fromJson(core.Map _json) {
    if (_json.containsKey("claims")) {
      claims = _json["claims"].map((value) => new DeviceClaim.fromJson(value)).toList();
    }
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("deviceMetadata")) {
      deviceMetadata = new DeviceMetadata.fromJson(_json["deviceMetadata"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (claims != null) {
      _json["claims"] = claims.map((value) => (value).toJson()).toList();
    }
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (deviceMetadata != null) {
      _json["deviceMetadata"] = (deviceMetadata).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** containing the necessary info about a claim for a partner. */
class DeviceClaim {
  /** owner id */
  core.String ownerCompanyId;
  /**
   * section type.
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  DeviceClaim();

  DeviceClaim.fromJson(core.Map _json) {
    if (_json.containsKey("ownerCompanyId")) {
      ownerCompanyId = _json["ownerCompanyId"];
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (ownerCompanyId != null) {
      _json["ownerCompanyId"] = ownerCompanyId;
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** DeviceIdentifiers identifies an unique device. */
class DeviceIdentifier {
  /** IMEI (either IMEI or MEID is required). */
  core.String imei;
  /** Manufacturer to match android.os.Build.MANUFACTURER (required). */
  core.String manufacturer;
  /** MEID */
  core.String meid;
  /** Model to match android.os.Build.MODEL (required). */
  core.String model;
  /** Serial number (optional) */
  core.String serialNumber;

  DeviceIdentifier();

  DeviceIdentifier.fromJson(core.Map _json) {
    if (_json.containsKey("imei")) {
      imei = _json["imei"];
    }
    if (_json.containsKey("manufacturer")) {
      manufacturer = _json["manufacturer"];
    }
    if (_json.containsKey("meid")) {
      meid = _json["meid"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (imei != null) {
      _json["imei"] = imei;
    }
    if (manufacturer != null) {
      _json["manufacturer"] = manufacturer;
    }
    if (meid != null) {
      _json["meid"] = meid;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    return _json;
  }
}

/** metadata */
class DeviceMetadata {
  /** Metadata entries */
  core.Map<core.String, core.String> entries;

  DeviceMetadata();

  DeviceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (entries != null) {
      _json["entries"] = entries;
    }
    return _json;
  }
}

/** Long running operation metadata. */
class DevicesLongRunningOperationMetadata {
  /** Number of devices parsed in your requests. */
  core.int devicesCount;
  /**
   * The overall processing status.
   * Possible string values are:
   * - "BATCH_PROCESS_STATUS_UNSPECIFIED" : Invalid code. Shouldn't be used.
   * - "BATCH_PROCESS_PENDING" : Pending
   * - "BATCH_PROCESS_IN_PROGRESS" : In progress
   * - "BATCH_PROCESS_PROCESSED" : Processed.
   * This doesn't mean all items were processed sucessfully, you should
   * check the `response` field for the result of every item.
   */
  core.String processingStatus;
  /** Processing progress from 0 to 100. */
  core.int progress;

  DevicesLongRunningOperationMetadata();

  DevicesLongRunningOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("devicesCount")) {
      devicesCount = _json["devicesCount"];
    }
    if (_json.containsKey("processingStatus")) {
      processingStatus = _json["processingStatus"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (devicesCount != null) {
      _json["devicesCount"] = devicesCount;
    }
    if (processingStatus != null) {
      _json["processingStatus"] = processingStatus;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    return _json;
  }
}

/** Long running operation response. */
class DevicesLongRunningOperationResponse {
  /**
   * processing status for each device.
   * One PerDeviceStatus per device. The order is the same as in your requests.
   */
  core.List<OperationPerDevice> perDeviceStatus;
  /** Number of succeesfully processed ones. */
  core.int successCount;

  DevicesLongRunningOperationResponse();

  DevicesLongRunningOperationResponse.fromJson(core.Map _json) {
    if (_json.containsKey("perDeviceStatus")) {
      perDeviceStatus = _json["perDeviceStatus"].map((value) => new OperationPerDevice.fromJson(value)).toList();
    }
    if (_json.containsKey("successCount")) {
      successCount = _json["successCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (perDeviceStatus != null) {
      _json["perDeviceStatus"] = perDeviceStatus.map((value) => (value).toJson()).toList();
    }
    if (successCount != null) {
      _json["successCount"] = successCount;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    return _json;
  }
}

/** Request to find devices. */
class FindDevicesByDeviceIdentifierRequest {
  /** The device identifier to search */
  DeviceIdentifier deviceIdentifier;
  /** Number of devices to show. */
  core.String limit;
  /** Page token */
  core.String pageToken;

  FindDevicesByDeviceIdentifierRequest();

  FindDevicesByDeviceIdentifierRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    return _json;
  }
}

/** Response containing found devices. */
class FindDevicesByDeviceIdentifierResponse {
  /** Found devices. */
  core.List<Device> devices;
  /** Page token of next page */
  core.String nextPageToken;

  FindDevicesByDeviceIdentifierResponse();

  FindDevicesByDeviceIdentifierResponse.fromJson(core.Map _json) {
    if (_json.containsKey("devices")) {
      devices = _json["devices"].map((value) => new Device.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (devices != null) {
      _json["devices"] = devices.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Request to find devices by customers. */
class FindDevicesByOwnerRequest {
  /** List of customer ids to search for. */
  core.List<core.String> customerId;
  /** The number of devices to show in the result. */
  core.String limit;
  /** Page token */
  core.String pageToken;
  /**
   * The section type.
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  FindDevicesByOwnerRequest();

  FindDevicesByOwnerRequest.fromJson(core.Map _json) {
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** Response containing found devices. */
class FindDevicesByOwnerResponse {
  /** Devices found. */
  core.List<Device> devices;
  /** Page token of next page */
  core.String nextPageToken;

  FindDevicesByOwnerResponse();

  FindDevicesByOwnerResponse.fromJson(core.Map _json) {
    if (_json.containsKey("devices")) {
      devices = _json["devices"].map((value) => new Device.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (devices != null) {
      _json["devices"] = devices.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Response message of all customers related to this partner. */
class ListCustomersResponse {
  /** List of customers related to this partner. */
  core.List<Company> customers;

  ListCustomersResponse();

  ListCustomersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("customers")) {
      customers = _json["customers"].map((value) => new Company.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (customers != null) {
      _json["customers"] = customers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress.
   * If true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /**
   * This field will always be not set if the operation is created by
   * `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`. In this case, error
   * information for each device is set in
   * `response.perDeviceStatus.result.status`.
   */
  Status error;
  /**
   * This field will contain a `DevicesLongRunningOperationMetadata` object if
   * the operation is created by `claimAsync`, `unclaimAsync`, or
   * `updateMetadataAsync`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. If you use the default HTTP mapping, the
   * `name` should have the format of `operations/some/unique/name`.
   */
  core.String name;
  /**
   * This field will contain a `DevicesLongRunningOperationResponse` object if
   * the operation is created by `claimAsync`, `unclaimAsync`, or
   * `updateMetadataAsync`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/** Operation the server received for every device. */
class OperationPerDevice {
  /** Request to claim a device. */
  PartnerClaim claim;
  /** Processing result for every device. */
  PerDeviceStatusInBatch result;
  /** Request to unclaim a device. */
  PartnerUnclaim unclaim;
  /** Request to set metadata for a device. */
  UpdateMetadataArguments updateMetadata;

  OperationPerDevice();

  OperationPerDevice.fromJson(core.Map _json) {
    if (_json.containsKey("claim")) {
      claim = new PartnerClaim.fromJson(_json["claim"]);
    }
    if (_json.containsKey("result")) {
      result = new PerDeviceStatusInBatch.fromJson(_json["result"]);
    }
    if (_json.containsKey("unclaim")) {
      unclaim = new PartnerUnclaim.fromJson(_json["unclaim"]);
    }
    if (_json.containsKey("updateMetadata")) {
      updateMetadata = new UpdateMetadataArguments.fromJson(_json["updateMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (claim != null) {
      _json["claim"] = (claim).toJson();
    }
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    if (unclaim != null) {
      _json["unclaim"] = (unclaim).toJson();
    }
    if (updateMetadata != null) {
      _json["updateMetadata"] = (updateMetadata).toJson();
    }
    return _json;
  }
}

/** Identifies one claim request. */
class PartnerClaim {
  /** customer id to claim for. */
  core.String customerId;
  /** Device identifier of the device. */
  DeviceIdentifier deviceIdentifier;
  /** metadata to set at claim. */
  DeviceMetadata deviceMetadata;
  /**
   * section type to claim.
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  PartnerClaim();

  PartnerClaim.fromJson(core.Map _json) {
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("deviceMetadata")) {
      deviceMetadata = new DeviceMetadata.fromJson(_json["deviceMetadata"]);
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (deviceMetadata != null) {
      _json["deviceMetadata"] = (deviceMetadata).toJson();
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** Identifies one unclaim request. */
class PartnerUnclaim {
  /** device id of the device. */
  core.String deviceId;
  /** device identifier of the device. */
  DeviceIdentifier deviceIdentifier;
  /**
   * section type to unclaim.
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  PartnerUnclaim();

  PartnerUnclaim.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** Stores the processing result for each device. */
class PerDeviceStatusInBatch {
  /** device id of the device if process succeeds. */
  core.String deviceId;
  /** Error identifier. */
  core.String errorIdentifier;
  /** Error message */
  core.String errorMessage;
  /**
   * Process result.
   * Possible string values are:
   * - "SINGLE_DEVICE_STATUS_UNSPECIFIED" : Invalid code. Shouldn' be used.
   * - "SINGLE_DEVICE_STATUS_UNKNOWN_ERROR" : Unknown error.
   * Unknown error is we don't expect it here.
   * - "SINGLE_DEVICE_STATUS_OTHER_ERROR" : Other error.
   * Other error is we know/expect this error, but not having proper error
   * code yet.
   * - "SINGLE_DEVICE_STATUS_SUCCESS" : Success.
   * - "SINGLE_DEVICE_STATUS_PERMISSION_DENIED" : Permission denied
   * - "SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER" : Invalid device
   * identifier.
   * - "SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE" : Invalid section type.
   * - "SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS" : This section is claimed by
   * other company.
   */
  core.String status;

  PerDeviceStatusInBatch();

  PerDeviceStatusInBatch.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("errorIdentifier")) {
      errorIdentifier = _json["errorIdentifier"];
    }
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (errorIdentifier != null) {
      _json["errorIdentifier"] = errorIdentifier;
    }
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` that can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There is a common set of
   * message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/** Request message to unclaim a device. */
class UnclaimDeviceRequest {
  /** The device id returned by ClaimDevice. */
  core.String deviceId;
  /** The device identifier you use when you claimed this device. */
  DeviceIdentifier deviceIdentifier;
  /**
   * The section type to unclaim for.
   * Possible string values are:
   * - "SECTION_TYPE_UNSPECIFIED" : Unspecified
   * - "SECTION_TYPE_ZERO_TOUCH" : Zero touch
   */
  core.String sectionType;

  UnclaimDeviceRequest();

  UnclaimDeviceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("sectionType")) {
      sectionType = _json["sectionType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (sectionType != null) {
      _json["sectionType"] = sectionType;
    }
    return _json;
  }
}

/** Request to unclaim devices asynchronously in batch. */
class UnclaimDevicesRequest {
  /** list of unclaims. */
  core.List<PartnerUnclaim> unclaims;

  UnclaimDevicesRequest();

  UnclaimDevicesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("unclaims")) {
      unclaims = _json["unclaims"].map((value) => new PartnerUnclaim.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (unclaims != null) {
      _json["unclaims"] = unclaims.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Request to update device metadata in batch. */
class UpdateDeviceMetadataInBatchRequest {
  /** list of metadata updates. */
  core.List<UpdateMetadataArguments> updates;

  UpdateDeviceMetadataInBatchRequest();

  UpdateDeviceMetadataInBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("updates")) {
      updates = _json["updates"].map((value) => new UpdateMetadataArguments.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (updates != null) {
      _json["updates"] = updates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Request to set metadata for a device. */
class UpdateDeviceMetadataRequest {
  /** The metdata to set. */
  DeviceMetadata deviceMetadata;

  UpdateDeviceMetadataRequest();

  UpdateDeviceMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deviceMetadata")) {
      deviceMetadata = new DeviceMetadata.fromJson(_json["deviceMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceMetadata != null) {
      _json["deviceMetadata"] = (deviceMetadata).toJson();
    }
    return _json;
  }
}

/** Identifies metdata updates to one device. */
class UpdateMetadataArguments {
  /** device id of the device. */
  core.String deviceId;
  /** device identifier. */
  DeviceIdentifier deviceIdentifier;
  /** The metadata to update. */
  DeviceMetadata deviceMetadata;

  UpdateMetadataArguments();

  UpdateMetadataArguments.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceIdentifier")) {
      deviceIdentifier = new DeviceIdentifier.fromJson(_json["deviceIdentifier"]);
    }
    if (_json.containsKey("deviceMetadata")) {
      deviceMetadata = new DeviceMetadata.fromJson(_json["deviceMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json = new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceIdentifier != null) {
      _json["deviceIdentifier"] = (deviceIdentifier).toJson();
    }
    if (deviceMetadata != null) {
      _json["deviceMetadata"] = (deviceMetadata).toJson();
    }
    return _json;
  }
}
