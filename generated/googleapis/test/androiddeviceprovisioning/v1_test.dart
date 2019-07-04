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
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterClaimDeviceRequest = 0;
buildClaimDeviceRequest() {
  var o = new api.ClaimDeviceRequest();
  buildCounterClaimDeviceRequest++;
  if (buildCounterClaimDeviceRequest < 3) {
    o.customerId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
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
    checkDeviceMetadata(o.deviceMetadata);
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

buildUnnamed2402() {
  var o = new core.List<api.PartnerClaim>();
  o.add(buildPartnerClaim());
  o.add(buildPartnerClaim());
  return o;
}

checkUnnamed2402(core.List<api.PartnerClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerClaim(o[0]);
  checkPartnerClaim(o[1]);
}

core.int buildCounterClaimDevicesRequest = 0;
buildClaimDevicesRequest() {
  var o = new api.ClaimDevicesRequest();
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    o.claims = buildUnnamed2402();
  }
  buildCounterClaimDevicesRequest--;
  return o;
}

checkClaimDevicesRequest(api.ClaimDevicesRequest o) {
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    checkUnnamed2402(o.claims);
  }
  buildCounterClaimDevicesRequest--;
}

buildUnnamed2403() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2403(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2404() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCompany = 0;
buildCompany() {
  var o = new api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.adminEmails = buildUnnamed2403();
    o.companyId = "foo";
    o.companyName = "foo";
    o.name = "foo";
    o.ownerEmails = buildUnnamed2404();
    o.termsStatus = "foo";
  }
  buildCounterCompany--;
  return o;
}

checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    checkUnnamed2403(o.adminEmails);
    unittest.expect(o.companyId, unittest.equals('foo'));
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2404(o.ownerEmails);
    unittest.expect(o.termsStatus, unittest.equals('foo'));
  }
  buildCounterCompany--;
}

core.int buildCounterConfiguration = 0;
buildConfiguration() {
  var o = new api.Configuration();
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    o.companyName = "foo";
    o.configurationId = "foo";
    o.configurationName = "foo";
    o.contactEmail = "foo";
    o.contactPhone = "foo";
    o.customMessage = "foo";
    o.dpcExtras = "foo";
    o.dpcResourcePath = "foo";
    o.isDefault = true;
    o.name = "foo";
  }
  buildCounterConfiguration--;
  return o;
}

checkConfiguration(api.Configuration o) {
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    unittest.expect(o.companyName, unittest.equals('foo'));
    unittest.expect(o.configurationId, unittest.equals('foo'));
    unittest.expect(o.configurationName, unittest.equals('foo'));
    unittest.expect(o.contactEmail, unittest.equals('foo'));
    unittest.expect(o.contactPhone, unittest.equals('foo'));
    unittest.expect(o.customMessage, unittest.equals('foo'));
    unittest.expect(o.dpcExtras, unittest.equals('foo'));
    unittest.expect(o.dpcResourcePath, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterConfiguration--;
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

core.int buildCounterCustomerApplyConfigurationRequest = 0;
buildCustomerApplyConfigurationRequest() {
  var o = new api.CustomerApplyConfigurationRequest();
  buildCounterCustomerApplyConfigurationRequest++;
  if (buildCounterCustomerApplyConfigurationRequest < 3) {
    o.configuration = "foo";
    o.device = buildDeviceReference();
  }
  buildCounterCustomerApplyConfigurationRequest--;
  return o;
}

checkCustomerApplyConfigurationRequest(
    api.CustomerApplyConfigurationRequest o) {
  buildCounterCustomerApplyConfigurationRequest++;
  if (buildCounterCustomerApplyConfigurationRequest < 3) {
    unittest.expect(o.configuration, unittest.equals('foo'));
    checkDeviceReference(o.device);
  }
  buildCounterCustomerApplyConfigurationRequest--;
}

buildUnnamed2405() {
  var o = new core.List<api.Configuration>();
  o.add(buildConfiguration());
  o.add(buildConfiguration());
  return o;
}

checkUnnamed2405(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0]);
  checkConfiguration(o[1]);
}

core.int buildCounterCustomerListConfigurationsResponse = 0;
buildCustomerListConfigurationsResponse() {
  var o = new api.CustomerListConfigurationsResponse();
  buildCounterCustomerListConfigurationsResponse++;
  if (buildCounterCustomerListConfigurationsResponse < 3) {
    o.configurations = buildUnnamed2405();
  }
  buildCounterCustomerListConfigurationsResponse--;
  return o;
}

checkCustomerListConfigurationsResponse(
    api.CustomerListConfigurationsResponse o) {
  buildCounterCustomerListConfigurationsResponse++;
  if (buildCounterCustomerListConfigurationsResponse < 3) {
    checkUnnamed2405(o.configurations);
  }
  buildCounterCustomerListConfigurationsResponse--;
}

buildUnnamed2406() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed2406(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterCustomerListCustomersResponse = 0;
buildCustomerListCustomersResponse() {
  var o = new api.CustomerListCustomersResponse();
  buildCounterCustomerListCustomersResponse++;
  if (buildCounterCustomerListCustomersResponse < 3) {
    o.customers = buildUnnamed2406();
    o.nextPageToken = "foo";
  }
  buildCounterCustomerListCustomersResponse--;
  return o;
}

checkCustomerListCustomersResponse(api.CustomerListCustomersResponse o) {
  buildCounterCustomerListCustomersResponse++;
  if (buildCounterCustomerListCustomersResponse < 3) {
    checkUnnamed2406(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCustomerListCustomersResponse--;
}

buildUnnamed2407() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed2407(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterCustomerListDevicesResponse = 0;
buildCustomerListDevicesResponse() {
  var o = new api.CustomerListDevicesResponse();
  buildCounterCustomerListDevicesResponse++;
  if (buildCounterCustomerListDevicesResponse < 3) {
    o.devices = buildUnnamed2407();
    o.nextPageToken = "foo";
  }
  buildCounterCustomerListDevicesResponse--;
  return o;
}

checkCustomerListDevicesResponse(api.CustomerListDevicesResponse o) {
  buildCounterCustomerListDevicesResponse++;
  if (buildCounterCustomerListDevicesResponse < 3) {
    checkUnnamed2407(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCustomerListDevicesResponse--;
}

buildUnnamed2408() {
  var o = new core.List<api.Dpc>();
  o.add(buildDpc());
  o.add(buildDpc());
  return o;
}

checkUnnamed2408(core.List<api.Dpc> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDpc(o[0]);
  checkDpc(o[1]);
}

core.int buildCounterCustomerListDpcsResponse = 0;
buildCustomerListDpcsResponse() {
  var o = new api.CustomerListDpcsResponse();
  buildCounterCustomerListDpcsResponse++;
  if (buildCounterCustomerListDpcsResponse < 3) {
    o.dpcs = buildUnnamed2408();
  }
  buildCounterCustomerListDpcsResponse--;
  return o;
}

checkCustomerListDpcsResponse(api.CustomerListDpcsResponse o) {
  buildCounterCustomerListDpcsResponse++;
  if (buildCounterCustomerListDpcsResponse < 3) {
    checkUnnamed2408(o.dpcs);
  }
  buildCounterCustomerListDpcsResponse--;
}

core.int buildCounterCustomerRemoveConfigurationRequest = 0;
buildCustomerRemoveConfigurationRequest() {
  var o = new api.CustomerRemoveConfigurationRequest();
  buildCounterCustomerRemoveConfigurationRequest++;
  if (buildCounterCustomerRemoveConfigurationRequest < 3) {
    o.device = buildDeviceReference();
  }
  buildCounterCustomerRemoveConfigurationRequest--;
  return o;
}

checkCustomerRemoveConfigurationRequest(
    api.CustomerRemoveConfigurationRequest o) {
  buildCounterCustomerRemoveConfigurationRequest++;
  if (buildCounterCustomerRemoveConfigurationRequest < 3) {
    checkDeviceReference(o.device);
  }
  buildCounterCustomerRemoveConfigurationRequest--;
}

core.int buildCounterCustomerUnclaimDeviceRequest = 0;
buildCustomerUnclaimDeviceRequest() {
  var o = new api.CustomerUnclaimDeviceRequest();
  buildCounterCustomerUnclaimDeviceRequest++;
  if (buildCounterCustomerUnclaimDeviceRequest < 3) {
    o.device = buildDeviceReference();
  }
  buildCounterCustomerUnclaimDeviceRequest--;
  return o;
}

checkCustomerUnclaimDeviceRequest(api.CustomerUnclaimDeviceRequest o) {
  buildCounterCustomerUnclaimDeviceRequest++;
  if (buildCounterCustomerUnclaimDeviceRequest < 3) {
    checkDeviceReference(o.device);
  }
  buildCounterCustomerUnclaimDeviceRequest--;
}

buildUnnamed2409() {
  var o = new core.List<api.DeviceClaim>();
  o.add(buildDeviceClaim());
  o.add(buildDeviceClaim());
  return o;
}

checkUnnamed2409(core.List<api.DeviceClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceClaim(o[0]);
  checkDeviceClaim(o[1]);
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.claims = buildUnnamed2409();
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
    checkUnnamed2409(o.claims);
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
    o.resellerId = "foo";
    o.sectionType = "foo";
    o.vacationModeExpireTime = "foo";
    o.vacationModeStartTime = "foo";
  }
  buildCounterDeviceClaim--;
  return o;
}

checkDeviceClaim(api.DeviceClaim o) {
  buildCounterDeviceClaim++;
  if (buildCounterDeviceClaim < 3) {
    unittest.expect(o.ownerCompanyId, unittest.equals('foo'));
    unittest.expect(o.resellerId, unittest.equals('foo'));
    unittest.expect(o.sectionType, unittest.equals('foo'));
    unittest.expect(o.vacationModeExpireTime, unittest.equals('foo'));
    unittest.expect(o.vacationModeStartTime, unittest.equals('foo'));
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
    o.model = "foo";
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
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
  }
  buildCounterDeviceIdentifier--;
}

buildUnnamed2410() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2410(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDeviceMetadata = 0;
buildDeviceMetadata() {
  var o = new api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.entries = buildUnnamed2410();
  }
  buildCounterDeviceMetadata--;
  return o;
}

checkDeviceMetadata(api.DeviceMetadata o) {
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    checkUnnamed2410(o.entries);
  }
  buildCounterDeviceMetadata--;
}

core.int buildCounterDeviceReference = 0;
buildDeviceReference() {
  var o = new api.DeviceReference();
  buildCounterDeviceReference++;
  if (buildCounterDeviceReference < 3) {
    o.deviceId = "foo";
    o.deviceIdentifier = buildDeviceIdentifier();
  }
  buildCounterDeviceReference--;
  return o;
}

checkDeviceReference(api.DeviceReference o) {
  buildCounterDeviceReference++;
  if (buildCounterDeviceReference < 3) {
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkDeviceIdentifier(o.deviceIdentifier);
  }
  buildCounterDeviceReference--;
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

buildUnnamed2411() {
  var o = new core.List<api.OperationPerDevice>();
  o.add(buildOperationPerDevice());
  o.add(buildOperationPerDevice());
  return o;
}

checkUnnamed2411(core.List<api.OperationPerDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationPerDevice(o[0]);
  checkOperationPerDevice(o[1]);
}

core.int buildCounterDevicesLongRunningOperationResponse = 0;
buildDevicesLongRunningOperationResponse() {
  var o = new api.DevicesLongRunningOperationResponse();
  buildCounterDevicesLongRunningOperationResponse++;
  if (buildCounterDevicesLongRunningOperationResponse < 3) {
    o.perDeviceStatus = buildUnnamed2411();
    o.successCount = 42;
  }
  buildCounterDevicesLongRunningOperationResponse--;
  return o;
}

checkDevicesLongRunningOperationResponse(
    api.DevicesLongRunningOperationResponse o) {
  buildCounterDevicesLongRunningOperationResponse++;
  if (buildCounterDevicesLongRunningOperationResponse < 3) {
    checkUnnamed2411(o.perDeviceStatus);
    unittest.expect(o.successCount, unittest.equals(42));
  }
  buildCounterDevicesLongRunningOperationResponse--;
}

core.int buildCounterDpc = 0;
buildDpc() {
  var o = new api.Dpc();
  buildCounterDpc++;
  if (buildCounterDpc < 3) {
    o.dpcName = "foo";
    o.name = "foo";
    o.packageName = "foo";
  }
  buildCounterDpc--;
  return o;
}

checkDpc(api.Dpc o) {
  buildCounterDpc++;
  if (buildCounterDpc < 3) {
    unittest.expect(o.dpcName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterDpc--;
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

buildUnnamed2412() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed2412(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByDeviceIdentifierResponse = 0;
buildFindDevicesByDeviceIdentifierResponse() {
  var o = new api.FindDevicesByDeviceIdentifierResponse();
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    o.devices = buildUnnamed2412();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
  return o;
}

checkFindDevicesByDeviceIdentifierResponse(
    api.FindDevicesByDeviceIdentifierResponse o) {
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    checkUnnamed2412(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
}

buildUnnamed2413() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2413(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFindDevicesByOwnerRequest = 0;
buildFindDevicesByOwnerRequest() {
  var o = new api.FindDevicesByOwnerRequest();
  buildCounterFindDevicesByOwnerRequest++;
  if (buildCounterFindDevicesByOwnerRequest < 3) {
    o.customerId = buildUnnamed2413();
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
    checkUnnamed2413(o.customerId);
    unittest.expect(o.limit, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterFindDevicesByOwnerRequest--;
}

buildUnnamed2414() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed2414(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByOwnerResponse = 0;
buildFindDevicesByOwnerResponse() {
  var o = new api.FindDevicesByOwnerResponse();
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    o.devices = buildUnnamed2414();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterFindDevicesByOwnerResponse--;
  return o;
}

checkFindDevicesByOwnerResponse(api.FindDevicesByOwnerResponse o) {
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    checkUnnamed2414(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterFindDevicesByOwnerResponse--;
}

buildUnnamed2415() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed2415(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCustomersResponse = 0;
buildListCustomersResponse() {
  var o = new api.ListCustomersResponse();
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    o.customers = buildUnnamed2415();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListCustomersResponse--;
  return o;
}

checkListCustomersResponse(api.ListCustomersResponse o) {
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    checkUnnamed2415(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListCustomersResponse--;
}

buildUnnamed2416() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed2416(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListVendorCustomersResponse = 0;
buildListVendorCustomersResponse() {
  var o = new api.ListVendorCustomersResponse();
  buildCounterListVendorCustomersResponse++;
  if (buildCounterListVendorCustomersResponse < 3) {
    o.customers = buildUnnamed2416();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListVendorCustomersResponse--;
  return o;
}

checkListVendorCustomersResponse(api.ListVendorCustomersResponse o) {
  buildCounterListVendorCustomersResponse++;
  if (buildCounterListVendorCustomersResponse < 3) {
    checkUnnamed2416(o.customers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListVendorCustomersResponse--;
}

buildUnnamed2417() {
  var o = new core.List<api.Company>();
  o.add(buildCompany());
  o.add(buildCompany());
  return o;
}

checkUnnamed2417(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListVendorsResponse = 0;
buildListVendorsResponse() {
  var o = new api.ListVendorsResponse();
  buildCounterListVendorsResponse++;
  if (buildCounterListVendorsResponse < 3) {
    o.nextPageToken = "foo";
    o.totalSize = 42;
    o.vendors = buildUnnamed2417();
  }
  buildCounterListVendorsResponse--;
  return o;
}

checkListVendorsResponse(api.ListVendorsResponse o) {
  buildCounterListVendorsResponse++;
  if (buildCounterListVendorsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed2417(o.vendors);
  }
  buildCounterListVendorsResponse--;
}

buildUnnamed2418() {
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

checkUnnamed2418(core.Map<core.String, core.Object> o) {
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

buildUnnamed2419() {
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

checkUnnamed2419(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2418();
    o.name = "foo";
    o.response = buildUnnamed2419();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2418(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2419(o.response);
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
    o.vacationModeDays = 42;
    o.vacationModeExpireTime = "foo";
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
    unittest.expect(o.vacationModeDays, unittest.equals(42));
    unittest.expect(o.vacationModeExpireTime, unittest.equals('foo'));
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

buildUnnamed2420() {
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

checkUnnamed2420(core.Map<core.String, core.Object> o) {
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

buildUnnamed2421() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2420());
  o.add(buildUnnamed2420());
  return o;
}

checkUnnamed2421(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2420(o[0]);
  checkUnnamed2420(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2421();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2421(o.details);
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
    o.vacationModeDays = 42;
    o.vacationModeExpireTime = "foo";
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
    unittest.expect(o.vacationModeDays, unittest.equals(42));
    unittest.expect(o.vacationModeExpireTime, unittest.equals('foo'));
  }
  buildCounterUnclaimDeviceRequest--;
}

buildUnnamed2422() {
  var o = new core.List<api.PartnerUnclaim>();
  o.add(buildPartnerUnclaim());
  o.add(buildPartnerUnclaim());
  return o;
}

checkUnnamed2422(core.List<api.PartnerUnclaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerUnclaim(o[0]);
  checkPartnerUnclaim(o[1]);
}

core.int buildCounterUnclaimDevicesRequest = 0;
buildUnclaimDevicesRequest() {
  var o = new api.UnclaimDevicesRequest();
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    o.unclaims = buildUnnamed2422();
  }
  buildCounterUnclaimDevicesRequest--;
  return o;
}

checkUnclaimDevicesRequest(api.UnclaimDevicesRequest o) {
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    checkUnnamed2422(o.unclaims);
  }
  buildCounterUnclaimDevicesRequest--;
}

buildUnnamed2423() {
  var o = new core.List<api.UpdateMetadataArguments>();
  o.add(buildUpdateMetadataArguments());
  o.add(buildUpdateMetadataArguments());
  return o;
}

checkUnnamed2423(core.List<api.UpdateMetadataArguments> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMetadataArguments(o[0]);
  checkUpdateMetadataArguments(o[1]);
}

core.int buildCounterUpdateDeviceMetadataInBatchRequest = 0;
buildUpdateDeviceMetadataInBatchRequest() {
  var o = new api.UpdateDeviceMetadataInBatchRequest();
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    o.updates = buildUnnamed2423();
  }
  buildCounterUpdateDeviceMetadataInBatchRequest--;
  return o;
}

checkUpdateDeviceMetadataInBatchRequest(
    api.UpdateDeviceMetadataInBatchRequest o) {
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    checkUnnamed2423(o.updates);
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

  unittest.group("obj-schema-Configuration", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfiguration();
      var od = new api.Configuration.fromJson(o.toJson());
      checkConfiguration(od);
    });
  });

  unittest.group("obj-schema-CreateCustomerRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateCustomerRequest();
      var od = new api.CreateCustomerRequest.fromJson(o.toJson());
      checkCreateCustomerRequest(od);
    });
  });

  unittest.group("obj-schema-CustomerApplyConfigurationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerApplyConfigurationRequest();
      var od = new api.CustomerApplyConfigurationRequest.fromJson(o.toJson());
      checkCustomerApplyConfigurationRequest(od);
    });
  });

  unittest.group("obj-schema-CustomerListConfigurationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerListConfigurationsResponse();
      var od = new api.CustomerListConfigurationsResponse.fromJson(o.toJson());
      checkCustomerListConfigurationsResponse(od);
    });
  });

  unittest.group("obj-schema-CustomerListCustomersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerListCustomersResponse();
      var od = new api.CustomerListCustomersResponse.fromJson(o.toJson());
      checkCustomerListCustomersResponse(od);
    });
  });

  unittest.group("obj-schema-CustomerListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerListDevicesResponse();
      var od = new api.CustomerListDevicesResponse.fromJson(o.toJson());
      checkCustomerListDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-CustomerListDpcsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerListDpcsResponse();
      var od = new api.CustomerListDpcsResponse.fromJson(o.toJson());
      checkCustomerListDpcsResponse(od);
    });
  });

  unittest.group("obj-schema-CustomerRemoveConfigurationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerRemoveConfigurationRequest();
      var od = new api.CustomerRemoveConfigurationRequest.fromJson(o.toJson());
      checkCustomerRemoveConfigurationRequest(od);
    });
  });

  unittest.group("obj-schema-CustomerUnclaimDeviceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerUnclaimDeviceRequest();
      var od = new api.CustomerUnclaimDeviceRequest.fromJson(o.toJson());
      checkCustomerUnclaimDeviceRequest(od);
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

  unittest.group("obj-schema-DeviceReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceReference();
      var od = new api.DeviceReference.fromJson(o.toJson());
      checkDeviceReference(od);
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

  unittest.group("obj-schema-Dpc", () {
    unittest.test("to-json--from-json", () {
      var o = buildDpc();
      var od = new api.Dpc.fromJson(o.toJson());
      checkDpc(od);
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

  unittest.group("obj-schema-ListVendorCustomersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVendorCustomersResponse();
      var od = new api.ListVendorCustomersResponse.fromJson(o.toJson());
      checkListVendorCustomersResponse(od);
    });
  });

  unittest.group("obj-schema-ListVendorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListVendorsResponse();
      var od = new api.ListVendorsResponse.fromJson(o.toJson());
      checkListVendorsResponse(od);
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

  unittest.group("resource-CustomersResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
            unittest.equals("v1/customers"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCustomerListCustomersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomerListCustomersResponse(response);
      })));
    });
  });

  unittest.group("resource-CustomersConfigurationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CustomersConfigurationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.configurations;
      var arg_request = buildConfiguration();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Configuration.fromJson(json);
        checkConfiguration(obj);

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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CustomersConfigurationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.configurations;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersConfigurationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.configurations;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersConfigurationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.configurations;
      var arg_parent = "foo";
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
        var queryMap = <core.String, core.List<core.String>>{};
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
            convert.json.encode(buildCustomerListConfigurationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomerListConfigurationsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CustomersConfigurationsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.configurations;
      var arg_request = buildConfiguration();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Configuration.fromJson(json);
        checkConfiguration(obj);

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
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildConfiguration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConfiguration(response);
      })));
    });
  });

  unittest.group("resource-CustomersDevicesResourceApi", () {
    unittest.test("method--applyConfiguration", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.devices;
      var arg_request = buildCustomerApplyConfigurationRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomerApplyConfigurationRequest.fromJson(json);
        checkCustomerApplyConfigurationRequest(obj);

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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .applyConfiguration(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.devices;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.devices;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = "foo";
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["pageSize"].first, unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCustomerListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomerListDevicesResponse(response);
      })));
    });

    unittest.test("method--removeConfiguration", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.devices;
      var arg_request = buildCustomerRemoveConfigurationRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomerRemoveConfigurationRequest.fromJson(json);
        checkCustomerRemoveConfigurationRequest(obj);

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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeConfiguration(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--unclaim", () {
      var mock = new HttpServerMock();
      api.CustomersDevicesResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.devices;
      var arg_request = buildCustomerUnclaimDeviceRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CustomerUnclaimDeviceRequest.fromJson(json);
        checkCustomerUnclaimDeviceRequest(obj);

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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unclaim(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-CustomersDpcsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CustomersDpcsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).customers.dpcs;
      var arg_parent = "foo";
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildCustomerListDpcsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomerListDpcsResponse(response);
      })));
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildCompany());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompany(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PartnersCustomersResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.customers;
      var arg_partnerId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListCustomersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_partnerId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildClaimDeviceResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claim(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .claimAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
            convert.json.encode(buildFindDevicesByDeviceIdentifierResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findByIdentifier(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildFindDevicesByOwnerResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findByOwner(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildDeviceMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .metadata(arg_request, arg_metadataOwnerId, arg_deviceId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unclaim(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unclaimAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateMetadataAsync(arg_request, arg_partnerId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-PartnersVendorsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PartnersVendorsResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.vendors;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVendorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVendorsResponse(response);
      })));
    });
  });

  unittest.group("resource-PartnersVendorsCustomersResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PartnersVendorsCustomersResourceApi res =
          new api.AndroiddeviceprovisioningApi(mock).partners.vendors.customers;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        var queryMap = <core.String, core.List<core.String>>{};
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListVendorCustomersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListVendorCustomersResponse(response);
      })));
    });
  });
}
