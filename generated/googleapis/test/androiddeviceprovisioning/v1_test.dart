library googleapis.androiddeviceprovisioning.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/androiddeviceprovisioning/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterClaimDeviceRequest = 0;
buildClaimDeviceRequest() {
  var o = new api.ClaimDeviceRequest();
  buildCounterClaimDeviceRequest++;
  if (buildCounterClaimDeviceRequest < 3) {
    o.customerId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.sectionType = "foo";
  }
  buildCounterClaimDeviceRequest--;
  return o;
}

checkClaimDeviceRequest(api.ClaimDeviceRequest o) {
  buildCounterClaimDeviceRequest++;
  if (buildCounterClaimDeviceRequest < 3) {
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterClaimDeviceRequest--;
}

core.int buildCounterClaimDeviceResponse = 0;
buildClaimDeviceResponse() {
  var o = new api.ClaimDeviceResponse();
  buildCounterClaimDeviceResponse++;
  if (buildCounterClaimDeviceResponse < 3) {
    o.deviceId = "foo";
    o.deviceName = "foo";
  }
  buildCounterClaimDeviceResponse--;
  return o;
}

checkClaimDeviceResponse(api.ClaimDeviceResponse o) {
  buildCounterClaimDeviceResponse++;
  if (buildCounterClaimDeviceResponse < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.deviceName, unittest.equals('foo'));
  }
  buildCounterClaimDeviceResponse--;
}

buildUnnamed28() {
  var o = new core.List<api.PartnerClaim>();
  o.add(buildPartnerClaim());
  o.add(buildPartnerClaim());
  return o;
}

checkUnnamed28(core.List<api.PartnerClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerClaim(o[0]);
  checkPartnerClaim(o[1]);
}

core.int buildCounterClaimDevicesRequest = 0;
buildClaimDevicesRequest() {
  var o = new api.ClaimDevicesRequest();
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    o.claims = buildUnnamed28();
  }
  buildCounterClaimDevicesRequest--;
  return o;
}

checkClaimDevicesRequest(api.ClaimDevicesRequest o) {
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    checkUnnamed28(o.claims);
  }
  buildCounterClaimDevicesRequest--;
}

buildUnnamed29() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed30() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompany = 0;
buildCompany() {
  var o = new api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.adminEmails = buildUnnamed29();
    o.companyId = "foo";
    o.companyName = "foo";
    o.name = "foo";
    o.ownerEmails = buildUnnamed30();
  }
  buildCounterCompany--;
  return o;
}

checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    checkUnnamed29(o.adminEmails);
    unittest.expect(o.companyId, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed30(o.ownerEmails);
  }
  buildCounterCompany--;
}

core.int buildCounterCreateCustomerRequest = 0;
buildCreateCustomerRequest() {
  var o = new api.CreateCustomerRequest();
  buildCounterCreateCustomerRequest++;
  if (buildCounterCreateCustomerRequest < 3) {
    o.customer = buildCompany();
  }
  buildCounterCreateCustomerRequest--;
  return o;
}

checkCreateCustomerRequest(api.CreateCustomerRequest o) {
  buildCounterCreateCustomerRequest++;
  if (buildCounterCreateCustomerRequest < 3) {
    checkCompany(o.customer);
  }
  buildCounterCreateCustomerRequest--;
}

buildUnnamed31() {
  var o = new core.List<api.DeviceClaim>();
  o.add(buildDeviceClaim());
  o.add(buildDeviceClaim());
  return o;
}

checkUnnamed31(core.List<api.DeviceClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceClaim(o[0]);
  checkDeviceClaim(o[1]);
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.claims = buildUnnamed31();
    o.configuration = "foo";
    o.deviceId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
    o.name = "foo";
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed31(o.claims);
    unittest.expect(o.configuration, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    checkDeviceMetadata(o.deviceMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceClaim = 0;
buildDeviceClaim() {
  var o = new api.DeviceClaim();
  buildCounterDeviceClaim++;
  if (buildCounterDeviceClaim < 3) {
    o.ownerCompanyId = "foo";
    o.sectionType = "foo";
  }
  buildCounterDeviceClaim--;
  return o;
}

checkDeviceClaim(api.DeviceClaim o) {
  buildCounterDeviceClaim++;
  if (buildCounterDeviceClaim < 3) {
    unittest.expect(o.ownerCompanyId, unittest.equals('foo'));
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterDeviceClaim--;
}

core.int buildCounterDeviceIdentifier = 0;
buildDeviceIdentifier() {
  var o = new api.DeviceIdentifier();
  buildCounterDeviceIdentifier++;
  if (buildCounterDeviceIdentifier < 3) {
    o.imei = "foo";
    o.manufacturer = "foo";
    o.meid = "foo";
    o.serialNumber = "foo";
  }
  buildCounterDeviceIdentifier--;
  return o;
}

checkDeviceIdentifier(api.DeviceIdentifier o) {
  buildCounterDeviceIdentifier++;
  if (buildCounterDeviceIdentifier < 3) {
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
  }
  buildCounterDeviceIdentifier--;
}

buildUnnamed32() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDeviceMetadata = 0;
buildDeviceMetadata() {
  var o = new api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.entries = buildUnnamed32();
  }
  buildCounterDeviceMetadata--;
  return o;
}

checkDeviceMetadata(api.DeviceMetadata o) {
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    checkUnnamed32(o.entries);
  }
  buildCounterDeviceMetadata--;
}

core.int buildCounterDevicesLongRunningOperationMetadata = 0;
buildDevicesLongRunningOperationMetadata() {
  var o = new api.DevicesLongRunningOperationMetadata();
  buildCounterDevicesLongRunningOperationMetadata++;
  if (buildCounterDevicesLongRunningOperationMetadata < 3) {
    o.devicesCount = 42;
    o.processingStatus = "foo";
    o.progress = 42;
  }
  buildCounterDevicesLongRunningOperationMetadata--;
  return o;
}

checkDevicesLongRunningOperationMetadata(
    api.DevicesLongRunningOperationMetadata o) {
  buildCounterDevicesLongRunningOperationMetadata++;
  if (buildCounterDevicesLongRunningOperationMetadata < 3) {
    unittest.expect(o.devicesCount, unittest.equals(42));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42));
  }
  buildCounterDevicesLongRunningOperationMetadata--;
}

buildUnnamed33() {
  var o = new core.List<api.OperationPerDevice>();
  o.add(buildOperationPerDevice());
  o.add(buildOperationPerDevice());
  return o;
}

checkUnnamed33(core.List<api.OperationPerDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationPerDevice(o[0]);
  checkOperationPerDevice(o[1]);
}

core.int buildCounterDevicesLongRunningOperationResponse = 0;
buildDevicesLongRunningOperationResponse() {
  var o = new api.DevicesLongRunningOperationResponse();
  buildCounterDevicesLongRunningOperationResponse++;
  if (buildCounterDevicesLongRunningOperationResponse < 3) {
    o.perDeviceStatus = buildUnnamed33();
    o.successCount = 42;
  }
  buildCounterDevicesLongRunningOperationResponse--;
  return o;
}

checkDevicesLongRunningOperationResponse(
    api.DevicesLongRunningOperationResponse o) {
  buildCounterDevicesLongRunningOperationResponse++;
  if (buildCounterDevicesLongRunningOperationResponse < 3) {
    checkUnnamed33(o.perDeviceStatus);
    unittest.expect(o.successCount, unittest.equals(42));
  }
  buildCounterDevicesLongRunningOperationResponse--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterFindDevicesByDeviceIdentifierRequest = 0;
buildFindDevicesByDeviceIdentifierRequest() {
  var o = new api.FindDevicesByDeviceIdentifierRequest();
  buildCounterFindDevicesByDeviceIdentifierRequest++;
  if (buildCounterFindDevicesByDeviceIdentifierRequest < 3) {
    o.deviceIdentifier = buildDeviceIdentifier();
    o.limit = "foo";
    o.pageToken = "foo";
  }
  buildCounterFindDevicesByDeviceIdentifierRequest--;
  return o;
}

checkFindDevicesByDeviceIdentifierRequest(
    api.FindDevicesByDeviceIdentifierRequest o) {
  buildCounterFindDevicesByDeviceIdentifierRequest++;
  if (buildCounterFindDevicesByDeviceIdentifierRequest < 3) {
    checkDeviceIdentifier(o.deviceIdentifier);
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterFindDevicesByDeviceIdentifierRequest--;
}

buildUnnamed34() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed34(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByDeviceIdentifierResponse = 0;
buildFindDevicesByDeviceIdentifierResponse() {
  var o = new api.FindDevicesByDeviceIdentifierResponse();
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    o.devices = buildUnnamed34();
    o.nextPageToken = "foo";
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
  return o;
}

checkFindDevicesByDeviceIdentifierResponse(
    api.FindDevicesByDeviceIdentifierResponse o) {
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    checkUnnamed34(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
}

buildUnnamed35() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFindDevicesByOwnerRequest = 0;
buildFindDevicesByOwnerRequest() {
  var o = new api.FindDevicesByOwnerRequest();
  buildCounterFindDevicesByOwnerRequest++;
  if (buildCounterFindDevicesByOwnerRequest < 3) {
    o.customerId = buildUnnamed35();
    o.limit = "foo";
    o.pageToken = "foo";
    o.sectionType = "foo";
  }
  buildCounterFindDevicesByOwnerRequest--;
  return o;
}

checkFindDevicesByOwnerRequest(api.FindDevicesByOwnerRequest o) {
  buildCounterFindDevicesByOwnerRequest++;
  if (buildCounterFindDevicesByOwnerRequest < 3) {
    checkUnnamed35(o.customerId);
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterFindDevicesByOwnerRequest--;
}

buildUnnamed36() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed36(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByOwnerResponse = 0;
buildFindDevicesByOwnerResponse() {
  var o = new api.FindDevicesByOwnerResponse();
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    o.devices = buildUnnamed36();
    o.nextPageToken = "foo";
  }
  buildCounterFindDevicesByOwnerResponse--;
  return o;
}

checkFindDevicesByOwnerResponse(api.FindDevicesByOwnerResponse o) {
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    checkUnnamed36(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFindDevicesByOwnerResponse--;
}

buildUnnamed37() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed37(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCustomersResponse = 0;
buildListCustomersResponse() {
  var o = new api.ListCustomersResponse();
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    o.customers = buildUnnamed37();
  }
  buildCounterListCustomersResponse--;
  return o;
}

checkListCustomersResponse(api.ListCustomersResponse o) {
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    checkUnnamed37(o.customers);
  }
  buildCounterListCustomersResponse--;
}

buildUnnamed38() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed38(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed39() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed39(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed38();
    o.name = "foo";
    o.response = buildUnnamed39();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed38(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed39(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationPerDevice = 0;
buildOperationPerDevice() {
  var o = new api.OperationPerDevice();
  buildCounterOperationPerDevice++;
  if (buildCounterOperationPerDevice < 3) {
    o.claim = buildPartnerClaim();
    o.result = buildPerDeviceStatusInBatch();
    o.unclaim = buildPartnerUnclaim();
    o.updateMetadata = buildUpdateMetadataArguments();
  }
  buildCounterOperationPerDevice--;
  return o;
}

checkOperationPerDevice(api.OperationPerDevice o) {
  buildCounterOperationPerDevice++;
  if (buildCounterOperationPerDevice < 3) {
    checkPartnerClaim(o.claim);
    checkPerDeviceStatusInBatch(o.result);
    checkPartnerUnclaim(o.unclaim);
    checkUpdateMetadataArguments(o.updateMetadata);
  }
  buildCounterOperationPerDevice--;
}

core.int buildCounterPartnerClaim = 0;
buildPartnerClaim() {
  var o = new api.PartnerClaim();
  buildCounterPartnerClaim++;
  if (buildCounterPartnerClaim < 3) {
    o.customerId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
    o.sectionType = "foo";
  }
  buildCounterPartnerClaim--;
  return o;
}

checkPartnerClaim(api.PartnerClaim o) {
  buildCounterPartnerClaim++;
  if (buildCounterPartnerClaim < 3) {
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    checkDeviceMetadata(o.deviceMetadata);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterPartnerClaim--;
}

core.int buildCounterPartnerUnclaim = 0;
buildPartnerUnclaim() {
  var o = new api.PartnerUnclaim();
  buildCounterPartnerUnclaim++;
  if (buildCounterPartnerUnclaim < 3) {
    o.deviceId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.sectionType = "foo";
  }
  buildCounterPartnerUnclaim--;
  return o;
}

checkPartnerUnclaim(api.PartnerUnclaim o) {
  buildCounterPartnerUnclaim++;
  if (buildCounterPartnerUnclaim < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterPartnerUnclaim--;
}

core.int buildCounterPerDeviceStatusInBatch = 0;
buildPerDeviceStatusInBatch() {
  var o = new api.PerDeviceStatusInBatch();
  buildCounterPerDeviceStatusInBatch++;
  if (buildCounterPerDeviceStatusInBatch < 3) {
    o.deviceId = "foo";
    o.errorIdentifier = "foo";
    o.errorMessage = "foo";
    o.status = "foo";
  }
  buildCounterPerDeviceStatusInBatch--;
  return o;
}

checkPerDeviceStatusInBatch(api.PerDeviceStatusInBatch o) {
  buildCounterPerDeviceStatusInBatch++;
  if (buildCounterPerDeviceStatusInBatch < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.errorIdentifier, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterPerDeviceStatusInBatch--;
}

buildUnnamed40() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed40(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed41() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed40());
  o.add(buildUnnamed40());
  return o;
}

checkUnnamed41(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed40(o[0]);
  checkUnnamed40(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed41();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed41(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterUnclaimDeviceRequest = 0;
buildUnclaimDeviceRequest() {
  var o = new api.UnclaimDeviceRequest();
  buildCounterUnclaimDeviceRequest++;
  if (buildCounterUnclaimDeviceRequest < 3) {
    o.deviceId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.sectionType = "foo";
  }
  buildCounterUnclaimDeviceRequest--;
  return o;
}

checkUnclaimDeviceRequest(api.UnclaimDeviceRequest o) {
  buildCounterUnclaimDeviceRequest++;
  if (buildCounterUnclaimDeviceRequest < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterUnclaimDeviceRequest--;
}

buildUnnamed42() {
  var o = new core.List<api.PartnerUnclaim>();
  o.add(buildPartnerUnclaim());
  o.add(buildPartnerUnclaim());
  return o;
}

checkUnnamed42(core.List<api.PartnerUnclaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerUnclaim(o[0]);
  checkPartnerUnclaim(o[1]);
}

core.int buildCounterUnclaimDevicesRequest = 0;
buildUnclaimDevicesRequest() {
  var o = new api.UnclaimDevicesRequest();
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    o.unclaims = buildUnnamed42();
  }
  buildCounterUnclaimDevicesRequest--;
  return o;
}

checkUnclaimDevicesRequest(api.UnclaimDevicesRequest o) {
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    checkUnnamed42(o.unclaims);
  }
  buildCounterUnclaimDevicesRequest--;
}

buildUnnamed43() {
  var o = new core.List<api.UpdateMetadataArguments>();
  o.add(buildUpdateMetadataArguments());
  o.add(buildUpdateMetadataArguments());
  return o;
}

checkUnnamed43(core.List<api.UpdateMetadataArguments> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMetadataArguments(o[0]);
  checkUpdateMetadataArguments(o[1]);
}

core.int buildCounterUpdateDeviceMetadataInBatchRequest = 0;
buildUpdateDeviceMetadataInBatchRequest() {
  var o = new api.UpdateDeviceMetadataInBatchRequest();
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    o.updates = buildUnnamed43();
  }
  buildCounterUpdateDeviceMetadataInBatchRequest--;
  return o;
}

checkUpdateDeviceMetadataInBatchRequest(
    api.UpdateDeviceMetadataInBatchRequest o) {
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    checkUnnamed43(o.updates);
  }
  buildCounterUpdateDeviceMetadataInBatchRequest--;
}

core.int buildCounterUpdateDeviceMetadataRequest = 0;
buildUpdateDeviceMetadataRequest() {
  var o = new api.UpdateDeviceMetadataRequest();
  buildCounterUpdateDeviceMetadataRequest++;
  if (buildCounterUpdateDeviceMetadataRequest < 3) {
    o.deviceMetadata = buildDeviceMetadata();
  }
  buildCounterUpdateDeviceMetadataRequest--;
  return o;
}

checkUpdateDeviceMetadataRequest(api.UpdateDeviceMetadataRequest o) {
  buildCounterUpdateDeviceMetadataRequest++;
  if (buildCounterUpdateDeviceMetadataRequest < 3) {
    checkDeviceMetadata(o.deviceMetadata);
  }
  buildCounterUpdateDeviceMetadataRequest--;
}

core.int buildCounterUpdateMetadataArguments = 0;
buildUpdateMetadataArguments() {
  var o = new api.UpdateMetadataArguments();
  buildCounterUpdateMetadataArguments++;
  if (buildCounterUpdateMetadataArguments < 3) {
    o.deviceId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
  }
  buildCounterUpdateMetadataArguments--;
  return o;
}

checkUpdateMetadataArguments(api.UpdateMetadataArguments o) {
  buildCounterUpdateMetadataArguments++;
  if (buildCounterUpdateMetadataArguments < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
    checkDeviceMetadata(o.deviceMetadata);
  }
  buildCounterUpdateMetadataArguments--;
}

main() {
  unittest.group("obj-schema-ClaimDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildClaimDeviceRequest();
      var od = new api.ClaimDeviceRequest.fromJson(o.toJson());
      checkClaimDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-ClaimDeviceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildClaimDeviceResponse();
      var od = new api.ClaimDeviceResponse.fromJson(o.toJson());
      checkClaimDeviceResponse(od);
    });
  });

  unittest.group("obj-schema-ClaimDevicesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildClaimDevicesRequest();
      var od = new api.ClaimDevicesRequest.fromJson(o.toJson());
      checkClaimDevicesRequest(od);
    });
  });

  unittest.group("obj-schema-Company", () {
    unittest.test("to-json--from-json", () {
      var o = buildCompany();
      var od = new api.Company.fromJson(o.toJson());
      checkCompany(od);
    });
  });

  unittest.group("obj-schema-CreateCustomerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateCustomerRequest();
      var od = new api.CreateCustomerRequest.fromJson(o.toJson());
      checkCreateCustomerRequest(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceClaim", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceClaim();
      var od = new api.DeviceClaim.fromJson(o.toJson());
      checkDeviceClaim(od);
    });
  });

  unittest.group("obj-schema-DeviceIdentifier", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceIdentifier();
      var od = new api.DeviceIdentifier.fromJson(o.toJson());
      checkDeviceIdentifier(od);
    });
  });

  unittest.group("obj-schema-DeviceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceMetadata();
      var od = new api.DeviceMetadata.fromJson(o.toJson());
      checkDeviceMetadata(od);
    });
  });

  unittest.group("obj-schema-DevicesLongRunningOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevicesLongRunningOperationMetadata();
      var od = new api.DevicesLongRunningOperationMetadata.fromJson(o.toJson());
      checkDevicesLongRunningOperationMetadata(od);
    });
  });

  unittest.group("obj-schema-DevicesLongRunningOperationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevicesLongRunningOperationResponse();
      var od = new api.DevicesLongRunningOperationResponse.fromJson(o.toJson());
      checkDevicesLongRunningOperationResponse(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-FindDevicesByDeviceIdentifierRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindDevicesByDeviceIdentifierRequest();
      var od =
          new api.FindDevicesByDeviceIdentifierRequest.fromJson(o.toJson());
      checkFindDevicesByDeviceIdentifierRequest(od);
    });
  });

  unittest.group("obj-schema-FindDevicesByDeviceIdentifierResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindDevicesByDeviceIdentifierResponse();
      var od =
          new api.FindDevicesByDeviceIdentifierResponse.fromJson(o.toJson());
      checkFindDevicesByDeviceIdentifierResponse(od);
    });
  });

  unittest.group("obj-schema-FindDevicesByOwnerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindDevicesByOwnerRequest();
      var od = new api.FindDevicesByOwnerRequest.fromJson(o.toJson());
      checkFindDevicesByOwnerRequest(od);
    });
  });

  unittest.group("obj-schema-FindDevicesByOwnerResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildFindDevicesByOwnerResponse();
      var od = new api.FindDevicesByOwnerResponse.fromJson(o.toJson());
      checkFindDevicesByOwnerResponse(od);
    });
  });

  unittest.group("obj-schema-ListCustomersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCustomersResponse();
      var od = new api.ListCustomersResponse.fromJson(o.toJson());
      checkListCustomersResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-OperationPerDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationPerDevice();
      var od = new api.OperationPerDevice.fromJson(o.toJson());
      checkOperationPerDevice(od);
    });
  });

  unittest.group("obj-schema-PartnerClaim", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartnerClaim();
      var od = new api.PartnerClaim.fromJson(o.toJson());
      checkPartnerClaim(od);
    });
  });

  unittest.group("obj-schema-PartnerUnclaim", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartnerUnclaim();
      var od = new api.PartnerUnclaim.fromJson(o.toJson());
      checkPartnerUnclaim(od);
    });
  });

  unittest.group("obj-schema-PerDeviceStatusInBatch", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerDeviceStatusInBatch();
      var od = new api.PerDeviceStatusInBatch.fromJson(o.toJson());
      checkPerDeviceStatusInBatch(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-UnclaimDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnclaimDeviceRequest();
      var od = new api.UnclaimDeviceRequest.fromJson(o.toJson());
      checkUnclaimDeviceRequest(od);
    });
  });

  unittest.group("obj-schema-UnclaimDevicesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnclaimDevicesRequest();
      var od = new api.UnclaimDevicesRequest.fromJson(o.toJson());
      checkUnclaimDevicesRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateDeviceMetadataInBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDeviceMetadataInBatchRequest();
      var od = new api.UpdateDeviceMetadataInBatchRequest.fromJson(o.toJson());
      checkUpdateDeviceMetadataInBatchRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateDeviceMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDeviceMetadataRequest();
      var od = new api.UpdateDeviceMetadataRequest.fromJson(o.toJson());
      checkUpdateDeviceMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateMetadataArguments", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateMetadataArguments();
      var od = new api.UpdateMetadataArguments.fromJson(o.toJson());
      checkUpdateMetadataArguments(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-PartnersCustomersResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.PartnersCustomersResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.customers;
      var arg_request = buildCreateCustomerRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateCustomerRequest.fromJson(json);
        checkCreateCustomerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Company response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PartnersCustomersResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.customers;
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCustomersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListCustomersResponse response) {
        checkListCustomersResponse(response);
      })));
    });
  });

  unittest.group("resource-PartnersDevicesResourceApi", () {
    unittest.test("method--claim", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildClaimDeviceRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClaimDeviceRequest.fromJson(json);
        checkClaimDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildClaimDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claim(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ClaimDeviceResponse response) {
        checkClaimDeviceResponse(response);
      })));
    });

    unittest.test("method--claimAsync", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildClaimDevicesRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ClaimDevicesRequest.fromJson(json);
        checkClaimDevicesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claimAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--findByIdentifier", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildFindDevicesByDeviceIdentifierRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FindDevicesByDeviceIdentifierRequest.fromJson(json);
        checkFindDevicesByDeviceIdentifierRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.JSON.encode(buildFindDevicesByDeviceIdentifierResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findByIdentifier(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(
              ((api.FindDevicesByDeviceIdentifierResponse response) {
        checkFindDevicesByDeviceIdentifierResponse(response);
      })));
    });

    unittest.test("method--findByOwner", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildFindDevicesByOwnerRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FindDevicesByOwnerRequest.fromJson(json);
        checkFindDevicesByOwnerRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFindDevicesByOwnerResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.findByOwner(arg_request, arg_partnerId, $fields: arg_$fields).then(
          unittest.expectAsync1(((api.FindDevicesByOwnerResponse response) {
        checkFindDevicesByOwnerResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Device response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--metadata", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildUpdateDeviceMetadataRequest();
      var arg_metadataOwnerId = "foo";
      var arg_deviceId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDeviceMetadataRequest.fromJson(json);
        checkUpdateDeviceMetadataRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDeviceMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .metadata(arg_request, arg_metadataOwnerId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.DeviceMetadata response) {
        checkDeviceMetadata(response);
      })));
    });

    unittest.test("method--unclaim", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildUnclaimDeviceRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UnclaimDeviceRequest.fromJson(json);
        checkUnclaimDeviceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unclaim(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--unclaimAsync", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildUnclaimDevicesRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UnclaimDevicesRequest.fromJson(json);
        checkUnclaimDevicesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unclaimAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--updateMetadataAsync", () {
      var mock = new HttpServerMock();
      api.PartnersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.devices;
      var arg_request = buildUpdateDeviceMetadataInBatchRequest();
      var arg_partnerId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDeviceMetadataInBatchRequest.fromJson(json);
        checkUpdateDeviceMetadataInBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/partners/"));
        pathOffset += 12;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateMetadataAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Operation response) {
        checkOperation(response);
      })));
    });
  });
}
