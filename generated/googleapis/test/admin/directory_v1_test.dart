library googleapis.admin.directory_v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/admin/directory_v1.dart' as api;



core.int buildCounterAlias = 0;
buildAlias() {
  var o = new api.Alias();
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    o.alias = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.primaryEmail = "foo";
  }
  buildCounterAlias--;
  return o;
}

checkAlias(api.Alias o) {
  buildCounterAlias++;
  if (buildCounterAlias < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
  }
  buildCounterAlias--;
}

buildUnnamed90() {
  var o = new core.List<api.Alias>();
  o.add(buildAlias());
  o.add(buildAlias());
  return o;
}

checkUnnamed90(core.List<api.Alias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlias(o[0]);
  checkAlias(o[1]);
}

core.int buildCounterAliases = 0;
buildAliases() {
  var o = new api.Aliases();
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    o.aliases = buildUnnamed90();
    o.etag = "foo";
    o.kind = "foo";
  }
  buildCounterAliases--;
  return o;
}

checkAliases(api.Aliases o) {
  buildCounterAliases++;
  if (buildCounterAliases < 3) {
    checkUnnamed90(o.aliases);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAliases--;
}

core.int buildCounterAsp = 0;
buildAsp() {
  var o = new api.Asp();
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    o.codeId = 42;
    o.creationTime = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.lastTimeUsed = "foo";
    o.name = "foo";
    o.userKey = "foo";
  }
  buildCounterAsp--;
  return o;
}

checkAsp(api.Asp o) {
  buildCounterAsp++;
  if (buildCounterAsp < 3) {
    unittest.expect(o.codeId, unittest.equals(42));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastTimeUsed, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterAsp--;
}

buildUnnamed91() {
  var o = new core.List<api.Asp>();
  o.add(buildAsp());
  o.add(buildAsp());
  return o;
}

checkUnnamed91(core.List<api.Asp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsp(o[0]);
  checkAsp(o[1]);
}

core.int buildCounterAsps = 0;
buildAsps() {
  var o = new api.Asps();
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    o.etag = "foo";
    o.items = buildUnnamed91();
    o.kind = "foo";
  }
  buildCounterAsps--;
  return o;
}

checkAsps(api.Asps o) {
  buildCounterAsps++;
  if (buildCounterAsps < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed91(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAsps--;
}

buildUnnamed92() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed92(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
buildChannel() {
  var o = new api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.address = "foo";
    o.expiration = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.params = buildUnnamed92();
    o.payload = true;
    o.resourceId = "foo";
    o.resourceUri = "foo";
    o.token = "foo";
    o.type = "foo";
  }
  buildCounterChannel--;
  return o;
}

checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed92(o.params);
    unittest.expect(o.payload, unittest.isTrue);
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.resourceUri, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.int buildCounterChromeOsDeviceActiveTimeRanges = 0;
buildChromeOsDeviceActiveTimeRanges() {
  var o = new api.ChromeOsDeviceActiveTimeRanges();
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    o.activeTime = 42;
    o.date = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
  return o;
}

checkChromeOsDeviceActiveTimeRanges(api.ChromeOsDeviceActiveTimeRanges o) {
  buildCounterChromeOsDeviceActiveTimeRanges++;
  if (buildCounterChromeOsDeviceActiveTimeRanges < 3) {
    unittest.expect(o.activeTime, unittest.equals(42));
    unittest.expect(o.date, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterChromeOsDeviceActiveTimeRanges--;
}

buildUnnamed93() {
  var o = new core.List<api.ChromeOsDeviceActiveTimeRanges>();
  o.add(buildChromeOsDeviceActiveTimeRanges());
  o.add(buildChromeOsDeviceActiveTimeRanges());
  return o;
}

checkUnnamed93(core.List<api.ChromeOsDeviceActiveTimeRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceActiveTimeRanges(o[0]);
  checkChromeOsDeviceActiveTimeRanges(o[1]);
}

core.int buildCounterChromeOsDeviceRecentUsers = 0;
buildChromeOsDeviceRecentUsers() {
  var o = new api.ChromeOsDeviceRecentUsers();
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    o.email = "foo";
    o.type = "foo";
  }
  buildCounterChromeOsDeviceRecentUsers--;
  return o;
}

checkChromeOsDeviceRecentUsers(api.ChromeOsDeviceRecentUsers o) {
  buildCounterChromeOsDeviceRecentUsers++;
  if (buildCounterChromeOsDeviceRecentUsers < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterChromeOsDeviceRecentUsers--;
}

buildUnnamed94() {
  var o = new core.List<api.ChromeOsDeviceRecentUsers>();
  o.add(buildChromeOsDeviceRecentUsers());
  o.add(buildChromeOsDeviceRecentUsers());
  return o;
}

checkUnnamed94(core.List<api.ChromeOsDeviceRecentUsers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDeviceRecentUsers(o[0]);
  checkChromeOsDeviceRecentUsers(o[1]);
}

core.int buildCounterChromeOsDevice = 0;
buildChromeOsDevice() {
  var o = new api.ChromeOsDevice();
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    o.activeTimeRanges = buildUnnamed93();
    o.annotatedLocation = "foo";
    o.annotatedUser = "foo";
    o.bootMode = "foo";
    o.deviceId = "foo";
    o.etag = "foo";
    o.ethernetMacAddress = "foo";
    o.firmwareVersion = "foo";
    o.kind = "foo";
    o.lastEnrollmentTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.macAddress = "foo";
    o.meid = "foo";
    o.model = "foo";
    o.notes = "foo";
    o.orderNumber = "foo";
    o.orgUnitPath = "foo";
    o.osVersion = "foo";
    o.platformVersion = "foo";
    o.recentUsers = buildUnnamed94();
    o.serialNumber = "foo";
    o.status = "foo";
    o.supportEndDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.willAutoRenew = true;
  }
  buildCounterChromeOsDevice--;
  return o;
}

checkChromeOsDevice(api.ChromeOsDevice o) {
  buildCounterChromeOsDevice++;
  if (buildCounterChromeOsDevice < 3) {
    checkUnnamed93(o.activeTimeRanges);
    unittest.expect(o.annotatedLocation, unittest.equals('foo'));
    unittest.expect(o.annotatedUser, unittest.equals('foo'));
    unittest.expect(o.bootMode, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.ethernetMacAddress, unittest.equals('foo'));
    unittest.expect(o.firmwareVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastEnrollmentTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.lastSync, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.macAddress, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.orderNumber, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.osVersion, unittest.equals('foo'));
    unittest.expect(o.platformVersion, unittest.equals('foo'));
    checkUnnamed94(o.recentUsers);
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.supportEndDate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.willAutoRenew, unittest.isTrue);
  }
  buildCounterChromeOsDevice--;
}

buildUnnamed95() {
  var o = new core.List<api.ChromeOsDevice>();
  o.add(buildChromeOsDevice());
  o.add(buildChromeOsDevice());
  return o;
}

checkUnnamed95(core.List<api.ChromeOsDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChromeOsDevice(o[0]);
  checkChromeOsDevice(o[1]);
}

core.int buildCounterChromeOsDevices = 0;
buildChromeOsDevices() {
  var o = new api.ChromeOsDevices();
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    o.chromeosdevices = buildUnnamed95();
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterChromeOsDevices--;
  return o;
}

checkChromeOsDevices(api.ChromeOsDevices o) {
  buildCounterChromeOsDevices++;
  if (buildCounterChromeOsDevices < 3) {
    checkUnnamed95(o.chromeosdevices);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChromeOsDevices--;
}

buildUnnamed96() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed96(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed97() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.adminCreated = true;
    o.aliases = buildUnnamed96();
    o.description = "foo";
    o.directMembersCount = "foo";
    o.email = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.nonEditableAliases = buildUnnamed97();
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.adminCreated, unittest.isTrue);
    checkUnnamed96(o.aliases);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.directMembersCount, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed97(o.nonEditableAliases);
  }
  buildCounterGroup--;
}

buildUnnamed98() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed98(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterGroups = 0;
buildGroups() {
  var o = new api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.etag = "foo";
    o.groups = buildUnnamed98();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterGroups--;
  return o;
}

checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed98(o.groups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGroups--;
}

core.int buildCounterMember = 0;
buildMember() {
  var o = new api.Member();
  buildCounterMember++;
  if (buildCounterMember < 3) {
    o.email = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.role = "foo";
    o.type = "foo";
  }
  buildCounterMember--;
  return o;
}

checkMember(api.Member o) {
  buildCounterMember++;
  if (buildCounterMember < 3) {
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMember--;
}

buildUnnamed99() {
  var o = new core.List<api.Member>();
  o.add(buildMember());
  o.add(buildMember());
  return o;
}

checkUnnamed99(core.List<api.Member> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMember(o[0]);
  checkMember(o[1]);
}

core.int buildCounterMembers = 0;
buildMembers() {
  var o = new api.Members();
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.members = buildUnnamed99();
    o.nextPageToken = "foo";
  }
  buildCounterMembers--;
  return o;
}

checkMembers(api.Members o) {
  buildCounterMembers++;
  if (buildCounterMembers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed99(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMembers--;
}

buildUnnamed100() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDeviceApplications = 0;
buildMobileDeviceApplications() {
  var o = new api.MobileDeviceApplications();
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    o.displayName = "foo";
    o.packageName = "foo";
    o.permission = buildUnnamed100();
    o.versionCode = 42;
    o.versionName = "foo";
  }
  buildCounterMobileDeviceApplications--;
  return o;
}

checkMobileDeviceApplications(api.MobileDeviceApplications o) {
  buildCounterMobileDeviceApplications++;
  if (buildCounterMobileDeviceApplications < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed100(o.permission);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterMobileDeviceApplications--;
}

buildUnnamed101() {
  var o = new core.List<api.MobileDeviceApplications>();
  o.add(buildMobileDeviceApplications());
  o.add(buildMobileDeviceApplications());
  return o;
}

checkUnnamed101(core.List<api.MobileDeviceApplications> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDeviceApplications(o[0]);
  checkMobileDeviceApplications(o[1]);
}

buildUnnamed102() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed103() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileDevice = 0;
buildMobileDevice() {
  var o = new api.MobileDevice();
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    o.applications = buildUnnamed101();
    o.basebandVersion = "foo";
    o.buildNumber = "foo";
    o.defaultLanguage = "foo";
    o.deviceCompromisedStatus = "foo";
    o.deviceId = "foo";
    o.email = buildUnnamed102();
    o.etag = "foo";
    o.firstSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.hardwareId = "foo";
    o.imei = "foo";
    o.kernelVersion = "foo";
    o.kind = "foo";
    o.lastSync = core.DateTime.parse("2002-02-27T14:01:02");
    o.managedAccountIsOnOwnerProfile = true;
    o.meid = "foo";
    o.model = "foo";
    o.name = buildUnnamed103();
    o.networkOperator = "foo";
    o.os = "foo";
    o.resourceId = "foo";
    o.serialNumber = "foo";
    o.status = "foo";
    o.type = "foo";
    o.userAgent = "foo";
    o.wifiMacAddress = "foo";
  }
  buildCounterMobileDevice--;
  return o;
}

checkMobileDevice(api.MobileDevice o) {
  buildCounterMobileDevice++;
  if (buildCounterMobileDevice < 3) {
    checkUnnamed101(o.applications);
    unittest.expect(o.basebandVersion, unittest.equals('foo'));
    unittest.expect(o.buildNumber, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    unittest.expect(o.deviceCompromisedStatus, unittest.equals('foo'));
    unittest.expect(o.deviceId, unittest.equals('foo'));
    checkUnnamed102(o.email);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.firstSync, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.hardwareId, unittest.equals('foo'));
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.kernelVersion, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastSync, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.managedAccountIsOnOwnerProfile, unittest.isTrue);
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    checkUnnamed103(o.name);
    unittest.expect(o.networkOperator, unittest.equals('foo'));
    unittest.expect(o.os, unittest.equals('foo'));
    unittest.expect(o.resourceId, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userAgent, unittest.equals('foo'));
    unittest.expect(o.wifiMacAddress, unittest.equals('foo'));
  }
  buildCounterMobileDevice--;
}

core.int buildCounterMobileDeviceAction = 0;
buildMobileDeviceAction() {
  var o = new api.MobileDeviceAction();
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    o.action = "foo";
  }
  buildCounterMobileDeviceAction--;
  return o;
}

checkMobileDeviceAction(api.MobileDeviceAction o) {
  buildCounterMobileDeviceAction++;
  if (buildCounterMobileDeviceAction < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
  }
  buildCounterMobileDeviceAction--;
}

buildUnnamed104() {
  var o = new core.List<api.MobileDevice>();
  o.add(buildMobileDevice());
  o.add(buildMobileDevice());
  return o;
}

checkUnnamed104(core.List<api.MobileDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileDevice(o[0]);
  checkMobileDevice(o[1]);
}

core.int buildCounterMobileDevices = 0;
buildMobileDevices() {
  var o = new api.MobileDevices();
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.mobiledevices = buildUnnamed104();
    o.nextPageToken = "foo";
  }
  buildCounterMobileDevices--;
  return o;
}

checkMobileDevices(api.MobileDevices o) {
  buildCounterMobileDevices++;
  if (buildCounterMobileDevices < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed104(o.mobiledevices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMobileDevices--;
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = "foo";
    o.etag = "foo";
    o.fromAddress = "foo";
    o.isUnread = true;
    o.kind = "foo";
    o.notificationId = "foo";
    o.sendTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.subject = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fromAddress, unittest.equals('foo'));
    unittest.expect(o.isUnread, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.notificationId, unittest.equals('foo'));
    unittest.expect(o.sendTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

buildUnnamed105() {
  var o = new core.List<api.Notification>();
  o.add(buildNotification());
  o.add(buildNotification());
  return o;
}

checkUnnamed105(core.List<api.Notification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotification(o[0]);
  checkNotification(o[1]);
}

core.int buildCounterNotifications = 0;
buildNotifications() {
  var o = new api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.etag = "foo";
    o.items = buildUnnamed105();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.unreadNotificationsCount = 42;
  }
  buildCounterNotifications--;
  return o;
}

checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed105(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.unreadNotificationsCount, unittest.equals(42));
  }
  buildCounterNotifications--;
}

core.int buildCounterOrgUnit = 0;
buildOrgUnit() {
  var o = new api.OrgUnit();
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    o.blockInheritance = true;
    o.description = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.orgUnitPath = "foo";
    o.parentOrgUnitPath = "foo";
  }
  buildCounterOrgUnit--;
  return o;
}

checkOrgUnit(api.OrgUnit o) {
  buildCounterOrgUnit++;
  if (buildCounterOrgUnit < 3) {
    unittest.expect(o.blockInheritance, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    unittest.expect(o.parentOrgUnitPath, unittest.equals('foo'));
  }
  buildCounterOrgUnit--;
}

buildUnnamed106() {
  var o = new core.List<api.OrgUnit>();
  o.add(buildOrgUnit());
  o.add(buildOrgUnit());
  return o;
}

checkUnnamed106(core.List<api.OrgUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgUnit(o[0]);
  checkOrgUnit(o[1]);
}

core.int buildCounterOrgUnits = 0;
buildOrgUnits() {
  var o = new api.OrgUnits();
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.organizationUnits = buildUnnamed106();
  }
  buildCounterOrgUnits--;
  return o;
}

checkOrgUnits(api.OrgUnits o) {
  buildCounterOrgUnits++;
  if (buildCounterOrgUnits < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed106(o.organizationUnits);
  }
  buildCounterOrgUnits--;
}

buildUnnamed107() {
  var o = new core.List<api.SchemaFieldSpec>();
  o.add(buildSchemaFieldSpec());
  o.add(buildSchemaFieldSpec());
  return o;
}

checkUnnamed107(core.List<api.SchemaFieldSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchemaFieldSpec(o[0]);
  checkSchemaFieldSpec(o[1]);
}

core.int buildCounterSchema = 0;
buildSchema() {
  var o = new api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.etag = "foo";
    o.fields = buildUnnamed107();
    o.kind = "foo";
    o.schemaId = "foo";
    o.schemaName = "foo";
  }
  buildCounterSchema--;
  return o;
}

checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed107(o.fields);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.schemaId, unittest.equals('foo'));
    unittest.expect(o.schemaName, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSchemaFieldSpecNumericIndexingSpec = 0;
buildSchemaFieldSpecNumericIndexingSpec() {
  var o = new api.SchemaFieldSpecNumericIndexingSpec();
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
  return o;
}

checkSchemaFieldSpecNumericIndexingSpec(api.SchemaFieldSpecNumericIndexingSpec o) {
  buildCounterSchemaFieldSpecNumericIndexingSpec++;
  if (buildCounterSchemaFieldSpecNumericIndexingSpec < 3) {
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterSchemaFieldSpecNumericIndexingSpec--;
}

core.int buildCounterSchemaFieldSpec = 0;
buildSchemaFieldSpec() {
  var o = new api.SchemaFieldSpec();
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    o.etag = "foo";
    o.fieldId = "foo";
    o.fieldName = "foo";
    o.fieldType = "foo";
    o.indexed = true;
    o.kind = "foo";
    o.multiValued = true;
    o.numericIndexingSpec = buildSchemaFieldSpecNumericIndexingSpec();
    o.readAccessType = "foo";
  }
  buildCounterSchemaFieldSpec--;
  return o;
}

checkSchemaFieldSpec(api.SchemaFieldSpec o) {
  buildCounterSchemaFieldSpec++;
  if (buildCounterSchemaFieldSpec < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fieldId, unittest.equals('foo'));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.fieldType, unittest.equals('foo'));
    unittest.expect(o.indexed, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.multiValued, unittest.isTrue);
    checkSchemaFieldSpecNumericIndexingSpec(o.numericIndexingSpec);
    unittest.expect(o.readAccessType, unittest.equals('foo'));
  }
  buildCounterSchemaFieldSpec--;
}

buildUnnamed108() {
  var o = new core.List<api.Schema>();
  o.add(buildSchema());
  o.add(buildSchema());
  return o;
}

checkUnnamed108(core.List<api.Schema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchema(o[0]);
  checkSchema(o[1]);
}

core.int buildCounterSchemas = 0;
buildSchemas() {
  var o = new api.Schemas();
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.schemas = buildUnnamed108();
  }
  buildCounterSchemas--;
  return o;
}

checkSchemas(api.Schemas o) {
  buildCounterSchemas++;
  if (buildCounterSchemas < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed108(o.schemas);
  }
  buildCounterSchemas--;
}

buildUnnamed109() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterToken = 0;
buildToken() {
  var o = new api.Token();
  buildCounterToken++;
  if (buildCounterToken < 3) {
    o.anonymous = true;
    o.clientId = "foo";
    o.displayText = "foo";
    o.etag = "foo";
    o.kind = "foo";
    o.nativeApp = true;
    o.scopes = buildUnnamed109();
    o.userKey = "foo";
  }
  buildCounterToken--;
  return o;
}

checkToken(api.Token o) {
  buildCounterToken++;
  if (buildCounterToken < 3) {
    unittest.expect(o.anonymous, unittest.isTrue);
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.displayText, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nativeApp, unittest.isTrue);
    checkUnnamed109(o.scopes);
    unittest.expect(o.userKey, unittest.equals('foo'));
  }
  buildCounterToken--;
}

buildUnnamed110() {
  var o = new core.List<api.Token>();
  o.add(buildToken());
  o.add(buildToken());
  return o;
}

checkUnnamed110(core.List<api.Token> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkToken(o[0]);
  checkToken(o[1]);
}

core.int buildCounterTokens = 0;
buildTokens() {
  var o = new api.Tokens();
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    o.etag = "foo";
    o.items = buildUnnamed110();
    o.kind = "foo";
  }
  buildCounterTokens--;
  return o;
}

checkTokens(api.Tokens o) {
  buildCounterTokens++;
  if (buildCounterTokens < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed110(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTokens--;
}

buildUnnamed111() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed112() {
  var o = new core.Map<core.String, api.UserCustomProperties>();
  o["x"] = buildUserCustomProperties();
  o["y"] = buildUserCustomProperties();
  return o;
}

checkUnnamed112(core.Map<core.String, api.UserCustomProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserCustomProperties(o["x"]);
  checkUserCustomProperties(o["y"]);
}

buildUnnamed113() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.addresses = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.agreedToTerms = true;
    o.aliases = buildUnnamed111();
    o.changePasswordAtNextLogin = true;
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.customSchemas = buildUnnamed112();
    o.customerId = "foo";
    o.deletionTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.emails = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.etag = "foo";
    o.externalIds = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.hashFunction = "foo";
    o.id = "foo";
    o.ims = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.includeInGlobalAddressList = true;
    o.ipWhitelisted = true;
    o.isAdmin = true;
    o.isDelegatedAdmin = true;
    o.isMailboxSetup = true;
    o.kind = "foo";
    o.lastLoginTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = buildUserName();
    o.nonEditableAliases = buildUnnamed113();
    o.notes = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.orgUnitPath = "foo";
    o.organizations = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.password = "foo";
    o.phones = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.primaryEmail = "foo";
    o.relations = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.suspended = true;
    o.suspensionReason = "foo";
    o.thumbnailPhotoUrl = "foo";
    o.websites = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    var casted1 = (o.addresses) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
    unittest.expect(o.agreedToTerms, unittest.isTrue);
    checkUnnamed111(o.aliases);
    unittest.expect(o.changePasswordAtNextLogin, unittest.isTrue);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed112(o.customSchemas);
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.deletionTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    var casted2 = (o.emails) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
    unittest.expect(o.etag, unittest.equals('foo'));
    var casted3 = (o.externalIds) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
    unittest.expect(o.hashFunction, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    var casted4 = (o.ims) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
    unittest.expect(o.includeInGlobalAddressList, unittest.isTrue);
    unittest.expect(o.ipWhitelisted, unittest.isTrue);
    unittest.expect(o.isAdmin, unittest.isTrue);
    unittest.expect(o.isDelegatedAdmin, unittest.isTrue);
    unittest.expect(o.isMailboxSetup, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastLoginTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUserName(o.name);
    checkUnnamed113(o.nonEditableAliases);
    var casted5 = (o.notes) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
    var casted6 = (o.organizations) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
    unittest.expect(o.password, unittest.equals('foo'));
    var casted7 = (o.phones) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    var casted8 = (o.relations) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
    unittest.expect(o.suspended, unittest.isTrue);
    unittest.expect(o.suspensionReason, unittest.equals('foo'));
    unittest.expect(o.thumbnailPhotoUrl, unittest.equals('foo'));
    var casted9 = (o.websites) as core.Map; unittest.expect(casted9, unittest.hasLength(3)); unittest.expect(casted9["list"], unittest.equals([1, 2, 3])); unittest.expect(casted9["bool"], unittest.equals(true)); unittest.expect(casted9["string"], unittest.equals('foo')); 
  }
  buildCounterUser--;
}

core.int buildCounterUserAbout = 0;
buildUserAbout() {
  var o = new api.UserAbout();
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    o.contentType = "foo";
    o.value = "foo";
  }
  buildCounterUserAbout--;
  return o;
}

checkUserAbout(api.UserAbout o) {
  buildCounterUserAbout++;
  if (buildCounterUserAbout < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserAbout--;
}

core.int buildCounterUserAddress = 0;
buildUserAddress() {
  var o = new api.UserAddress();
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    o.country = "foo";
    o.countryCode = "foo";
    o.customType = "foo";
    o.extendedAddress = "foo";
    o.formatted = "foo";
    o.locality = "foo";
    o.poBox = "foo";
    o.postalCode = "foo";
    o.primary = true;
    o.region = "foo";
    o.sourceIsStructured = true;
    o.streetAddress = "foo";
    o.type = "foo";
  }
  buildCounterUserAddress--;
  return o;
}

checkUserAddress(api.UserAddress o) {
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.extendedAddress, unittest.equals('foo'));
    unittest.expect(o.formatted, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.poBox, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.sourceIsStructured, unittest.isTrue);
    unittest.expect(o.streetAddress, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserAddress--;
}

buildUserCustomProperties() {
  var o = new api.UserCustomProperties();
  o["a"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["b"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUserCustomProperties(api.UserCustomProperties o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o["a"]) as core.Map; unittest.expect(casted10, unittest.hasLength(3)); unittest.expect(casted10["list"], unittest.equals([1, 2, 3])); unittest.expect(casted10["bool"], unittest.equals(true)); unittest.expect(casted10["string"], unittest.equals('foo')); 
  var casted11 = (o["b"]) as core.Map; unittest.expect(casted11, unittest.hasLength(3)); unittest.expect(casted11["list"], unittest.equals([1, 2, 3])); unittest.expect(casted11["bool"], unittest.equals(true)); unittest.expect(casted11["string"], unittest.equals('foo')); 
}

core.int buildCounterUserEmail = 0;
buildUserEmail() {
  var o = new api.UserEmail();
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    o.address = "foo";
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
  }
  buildCounterUserEmail--;
  return o;
}

checkUserEmail(api.UserEmail o) {
  buildCounterUserEmail++;
  if (buildCounterUserEmail < 3) {
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserEmail--;
}

core.int buildCounterUserExternalId = 0;
buildUserExternalId() {
  var o = new api.UserExternalId();
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    o.customType = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserExternalId--;
  return o;
}

checkUserExternalId(api.UserExternalId o) {
  buildCounterUserExternalId++;
  if (buildCounterUserExternalId < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserExternalId--;
}

core.int buildCounterUserIm = 0;
buildUserIm() {
  var o = new api.UserIm();
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    o.customProtocol = "foo";
    o.customType = "foo";
    o.im = "foo";
    o.primary = true;
    o.protocol = "foo";
    o.type = "foo";
  }
  buildCounterUserIm--;
  return o;
}

checkUserIm(api.UserIm o) {
  buildCounterUserIm++;
  if (buildCounterUserIm < 3) {
    unittest.expect(o.customProtocol, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.im, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserIm--;
}

core.int buildCounterUserMakeAdmin = 0;
buildUserMakeAdmin() {
  var o = new api.UserMakeAdmin();
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    o.status = true;
  }
  buildCounterUserMakeAdmin--;
  return o;
}

checkUserMakeAdmin(api.UserMakeAdmin o) {
  buildCounterUserMakeAdmin++;
  if (buildCounterUserMakeAdmin < 3) {
    unittest.expect(o.status, unittest.isTrue);
  }
  buildCounterUserMakeAdmin--;
}

core.int buildCounterUserName = 0;
buildUserName() {
  var o = new api.UserName();
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    o.familyName = "foo";
    o.fullName = "foo";
    o.givenName = "foo";
  }
  buildCounterUserName--;
  return o;
}

checkUserName(api.UserName o) {
  buildCounterUserName++;
  if (buildCounterUserName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterUserName--;
}

core.int buildCounterUserOrganization = 0;
buildUserOrganization() {
  var o = new api.UserOrganization();
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    o.costCenter = "foo";
    o.customType = "foo";
    o.department = "foo";
    o.description = "foo";
    o.domain = "foo";
    o.location = "foo";
    o.name = "foo";
    o.primary = true;
    o.symbol = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterUserOrganization--;
  return o;
}

checkUserOrganization(api.UserOrganization o) {
  buildCounterUserOrganization++;
  if (buildCounterUserOrganization < 3) {
    unittest.expect(o.costCenter, unittest.equals('foo'));
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.symbol, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserOrganization--;
}

core.int buildCounterUserPhone = 0;
buildUserPhone() {
  var o = new api.UserPhone();
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserPhone--;
  return o;
}

checkUserPhone(api.UserPhone o) {
  buildCounterUserPhone++;
  if (buildCounterUserPhone < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserPhone--;
}

core.int buildCounterUserPhoto = 0;
buildUserPhoto() {
  var o = new api.UserPhoto();
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    o.etag = "foo";
    o.height = 42;
    o.id = "foo";
    o.kind = "foo";
    o.mimeType = "foo";
    o.photoData = "foo";
    o.primaryEmail = "foo";
    o.width = 42;
  }
  buildCounterUserPhoto--;
  return o;
}

checkUserPhoto(api.UserPhoto o) {
  buildCounterUserPhoto++;
  if (buildCounterUserPhoto < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.photoData, unittest.equals('foo'));
    unittest.expect(o.primaryEmail, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterUserPhoto--;
}

core.int buildCounterUserRelation = 0;
buildUserRelation() {
  var o = new api.UserRelation();
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    o.customType = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserRelation--;
  return o;
}

checkUserRelation(api.UserRelation o) {
  buildCounterUserRelation++;
  if (buildCounterUserRelation < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserRelation--;
}

core.int buildCounterUserUndelete = 0;
buildUserUndelete() {
  var o = new api.UserUndelete();
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    o.orgUnitPath = "foo";
  }
  buildCounterUserUndelete--;
  return o;
}

checkUserUndelete(api.UserUndelete o) {
  buildCounterUserUndelete++;
  if (buildCounterUserUndelete < 3) {
    unittest.expect(o.orgUnitPath, unittest.equals('foo'));
  }
  buildCounterUserUndelete--;
}

core.int buildCounterUserWebsite = 0;
buildUserWebsite() {
  var o = new api.UserWebsite();
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    o.customType = "foo";
    o.primary = true;
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterUserWebsite--;
  return o;
}

checkUserWebsite(api.UserWebsite o) {
  buildCounterUserWebsite++;
  if (buildCounterUserWebsite < 3) {
    unittest.expect(o.customType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserWebsite--;
}

buildUnnamed114() {
  var o = new core.List<api.User>();
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

checkUnnamed114(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0]);
  checkUser(o[1]);
}

core.int buildCounterUsers = 0;
buildUsers() {
  var o = new api.Users();
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.triggerEvent = "foo";
    o.users = buildUnnamed114();
  }
  buildCounterUsers--;
  return o;
}

checkUsers(api.Users o) {
  buildCounterUsers++;
  if (buildCounterUsers < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.triggerEvent, unittest.equals('foo'));
    checkUnnamed114(o.users);
  }
  buildCounterUsers--;
}

core.int buildCounterVerificationCode = 0;
buildVerificationCode() {
  var o = new api.VerificationCode();
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    o.etag = "foo";
    o.kind = "foo";
    o.userId = "foo";
    o.verificationCode = "foo";
  }
  buildCounterVerificationCode--;
  return o;
}

checkVerificationCode(api.VerificationCode o) {
  buildCounterVerificationCode++;
  if (buildCounterVerificationCode < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
    unittest.expect(o.verificationCode, unittest.equals('foo'));
  }
  buildCounterVerificationCode--;
}

buildUnnamed115() {
  var o = new core.List<api.VerificationCode>();
  o.add(buildVerificationCode());
  o.add(buildVerificationCode());
  return o;
}

checkUnnamed115(core.List<api.VerificationCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVerificationCode(o[0]);
  checkVerificationCode(o[1]);
}

core.int buildCounterVerificationCodes = 0;
buildVerificationCodes() {
  var o = new api.VerificationCodes();
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    o.etag = "foo";
    o.items = buildUnnamed115();
    o.kind = "foo";
  }
  buildCounterVerificationCodes--;
  return o;
}

checkVerificationCodes(api.VerificationCodes o) {
  buildCounterVerificationCodes++;
  if (buildCounterVerificationCodes < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed115(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterVerificationCodes--;
}

buildUnnamed116() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed117() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed118() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed119() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-Alias", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlias();
      var od = new api.Alias.fromJson(o.toJson());
      checkAlias(od);
    });
  });


  unittest.group("obj-schema-Aliases", () {
    unittest.test("to-json--from-json", () {
      var o = buildAliases();
      var od = new api.Aliases.fromJson(o.toJson());
      checkAliases(od);
    });
  });


  unittest.group("obj-schema-Asp", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsp();
      var od = new api.Asp.fromJson(o.toJson());
      checkAsp(od);
    });
  });


  unittest.group("obj-schema-Asps", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsps();
      var od = new api.Asps.fromJson(o.toJson());
      checkAsps(od);
    });
  });


  unittest.group("obj-schema-Channel", () {
    unittest.test("to-json--from-json", () {
      var o = buildChannel();
      var od = new api.Channel.fromJson(o.toJson());
      checkChannel(od);
    });
  });


  unittest.group("obj-schema-ChromeOsDeviceActiveTimeRanges", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDeviceActiveTimeRanges();
      var od = new api.ChromeOsDeviceActiveTimeRanges.fromJson(o.toJson());
      checkChromeOsDeviceActiveTimeRanges(od);
    });
  });


  unittest.group("obj-schema-ChromeOsDeviceRecentUsers", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDeviceRecentUsers();
      var od = new api.ChromeOsDeviceRecentUsers.fromJson(o.toJson());
      checkChromeOsDeviceRecentUsers(od);
    });
  });


  unittest.group("obj-schema-ChromeOsDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDevice();
      var od = new api.ChromeOsDevice.fromJson(o.toJson());
      checkChromeOsDevice(od);
    });
  });


  unittest.group("obj-schema-ChromeOsDevices", () {
    unittest.test("to-json--from-json", () {
      var o = buildChromeOsDevices();
      var od = new api.ChromeOsDevices.fromJson(o.toJson());
      checkChromeOsDevices(od);
    });
  });


  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });


  unittest.group("obj-schema-Groups", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroups();
      var od = new api.Groups.fromJson(o.toJson());
      checkGroups(od);
    });
  });


  unittest.group("obj-schema-Member", () {
    unittest.test("to-json--from-json", () {
      var o = buildMember();
      var od = new api.Member.fromJson(o.toJson());
      checkMember(od);
    });
  });


  unittest.group("obj-schema-Members", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembers();
      var od = new api.Members.fromJson(o.toJson());
      checkMembers(od);
    });
  });


  unittest.group("obj-schema-MobileDeviceApplications", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDeviceApplications();
      var od = new api.MobileDeviceApplications.fromJson(o.toJson());
      checkMobileDeviceApplications(od);
    });
  });


  unittest.group("obj-schema-MobileDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDevice();
      var od = new api.MobileDevice.fromJson(o.toJson());
      checkMobileDevice(od);
    });
  });


  unittest.group("obj-schema-MobileDeviceAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDeviceAction();
      var od = new api.MobileDeviceAction.fromJson(o.toJson());
      checkMobileDeviceAction(od);
    });
  });


  unittest.group("obj-schema-MobileDevices", () {
    unittest.test("to-json--from-json", () {
      var o = buildMobileDevices();
      var od = new api.MobileDevices.fromJson(o.toJson());
      checkMobileDevices(od);
    });
  });


  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });


  unittest.group("obj-schema-Notifications", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotifications();
      var od = new api.Notifications.fromJson(o.toJson());
      checkNotifications(od);
    });
  });


  unittest.group("obj-schema-OrgUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgUnit();
      var od = new api.OrgUnit.fromJson(o.toJson());
      checkOrgUnit(od);
    });
  });


  unittest.group("obj-schema-OrgUnits", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrgUnits();
      var od = new api.OrgUnits.fromJson(o.toJson());
      checkOrgUnits(od);
    });
  });


  unittest.group("obj-schema-Schema", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchema();
      var od = new api.Schema.fromJson(o.toJson());
      checkSchema(od);
    });
  });


  unittest.group("obj-schema-SchemaFieldSpecNumericIndexingSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemaFieldSpecNumericIndexingSpec();
      var od = new api.SchemaFieldSpecNumericIndexingSpec.fromJson(o.toJson());
      checkSchemaFieldSpecNumericIndexingSpec(od);
    });
  });


  unittest.group("obj-schema-SchemaFieldSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemaFieldSpec();
      var od = new api.SchemaFieldSpec.fromJson(o.toJson());
      checkSchemaFieldSpec(od);
    });
  });


  unittest.group("obj-schema-Schemas", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchemas();
      var od = new api.Schemas.fromJson(o.toJson());
      checkSchemas(od);
    });
  });


  unittest.group("obj-schema-Token", () {
    unittest.test("to-json--from-json", () {
      var o = buildToken();
      var od = new api.Token.fromJson(o.toJson());
      checkToken(od);
    });
  });


  unittest.group("obj-schema-Tokens", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokens();
      var od = new api.Tokens.fromJson(o.toJson());
      checkTokens(od);
    });
  });


  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });


  unittest.group("obj-schema-UserAbout", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAbout();
      var od = new api.UserAbout.fromJson(o.toJson());
      checkUserAbout(od);
    });
  });


  unittest.group("obj-schema-UserAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAddress();
      var od = new api.UserAddress.fromJson(o.toJson());
      checkUserAddress(od);
    });
  });


  unittest.group("obj-schema-UserCustomProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserCustomProperties();
      var od = new api.UserCustomProperties.fromJson(o.toJson());
      checkUserCustomProperties(od);
    });
  });


  unittest.group("obj-schema-UserEmail", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserEmail();
      var od = new api.UserEmail.fromJson(o.toJson());
      checkUserEmail(od);
    });
  });


  unittest.group("obj-schema-UserExternalId", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserExternalId();
      var od = new api.UserExternalId.fromJson(o.toJson());
      checkUserExternalId(od);
    });
  });


  unittest.group("obj-schema-UserIm", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserIm();
      var od = new api.UserIm.fromJson(o.toJson());
      checkUserIm(od);
    });
  });


  unittest.group("obj-schema-UserMakeAdmin", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserMakeAdmin();
      var od = new api.UserMakeAdmin.fromJson(o.toJson());
      checkUserMakeAdmin(od);
    });
  });


  unittest.group("obj-schema-UserName", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserName();
      var od = new api.UserName.fromJson(o.toJson());
      checkUserName(od);
    });
  });


  unittest.group("obj-schema-UserOrganization", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserOrganization();
      var od = new api.UserOrganization.fromJson(o.toJson());
      checkUserOrganization(od);
    });
  });


  unittest.group("obj-schema-UserPhone", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPhone();
      var od = new api.UserPhone.fromJson(o.toJson());
      checkUserPhone(od);
    });
  });


  unittest.group("obj-schema-UserPhoto", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserPhoto();
      var od = new api.UserPhoto.fromJson(o.toJson());
      checkUserPhoto(od);
    });
  });


  unittest.group("obj-schema-UserRelation", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserRelation();
      var od = new api.UserRelation.fromJson(o.toJson());
      checkUserRelation(od);
    });
  });


  unittest.group("obj-schema-UserUndelete", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserUndelete();
      var od = new api.UserUndelete.fromJson(o.toJson());
      checkUserUndelete(od);
    });
  });


  unittest.group("obj-schema-UserWebsite", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserWebsite();
      var od = new api.UserWebsite.fromJson(o.toJson());
      checkUserWebsite(od);
    });
  });


  unittest.group("obj-schema-Users", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsers();
      var od = new api.Users.fromJson(o.toJson());
      checkUsers(od);
    });
  });


  unittest.group("obj-schema-VerificationCode", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerificationCode();
      var od = new api.VerificationCode.fromJson(o.toJson());
      checkVerificationCode(od);
    });
  });


  unittest.group("obj-schema-VerificationCodes", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerificationCodes();
      var od = new api.VerificationCodes.fromJson(o.toJson());
      checkVerificationCodes(od);
    });
  });


  unittest.group("resource-AspsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      var arg_codeId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_codeId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userKey, arg_codeId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      var arg_codeId = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/asps/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_codeId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAsp());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userKey, arg_codeId).then(unittest.expectAsync(((api.Asp response) {
        checkAsp(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.AspsResourceApi res = new api.AdminApi(mock).asps;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/asps", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/asps"));
        pathOffset += 5;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAsps());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userKey).then(unittest.expectAsync(((api.Asps response) {
        checkAsps(response);
      })));
    });

  });


  unittest.group("resource-ChannelsResourceApi", () {
    unittest.test("method--stop", () {

      var mock = new common_test.HttpServerMock();
      api.ChannelsResourceApi res = new api.AdminApi(mock).channels;
      var arg_request = buildChannel();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32), unittest.equals("admin/directory_v1/channels/stop"));
        pathOffset += 32;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.stop(arg_request).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-ChromeosdevicesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ChromeosdevicesResourceApi res = new api.AdminApi(mock).chromeosdevices;
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_customerId, arg_deviceId, projection: arg_projection).then(unittest.expectAsync(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ChromeosdevicesResourceApi res = new api.AdminApi(mock).chromeosdevices;
      var arg_customerId = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_sortOrder = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/devices/chromeos"));
        pathOffset += 17;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevices());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_customerId, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, projection: arg_projection, query: arg_query, sortOrder: arg_sortOrder).then(unittest.expectAsync(((api.ChromeOsDevices response) {
        checkChromeOsDevices(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.ChromeosdevicesResourceApi res = new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ChromeOsDevice.fromJson(json);
        checkChromeOsDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_customerId, arg_deviceId, projection: arg_projection).then(unittest.expectAsync(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.ChromeosdevicesResourceApi res = new api.AdminApi(mock).chromeosdevices;
      var arg_request = buildChromeOsDevice();
      var arg_customerId = "foo";
      var arg_deviceId = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ChromeOsDevice.fromJson(json);
        checkChromeOsDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/chromeos/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/devices/chromeos/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_deviceId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChromeOsDevice());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_customerId, arg_deviceId, projection: arg_projection).then(unittest.expectAsync(((api.ChromeOsDevice response) {
        checkChromeOsDevice(response);
      })));
    });

  });


  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_groupKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_groupKey).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
        pathOffset += 6;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("groups"));
        pathOffset += 6;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["userKey"].first, unittest.equals(arg_userKey));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroups());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(customer: arg_customer, domain: arg_domain, maxResults: arg_maxResults, pageToken: arg_pageToken, userKey: arg_userKey).then(unittest.expectAsync(((api.Groups response) {
        checkGroups(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_groupKey).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsResourceApi res = new api.AdminApi(mock).groups;
      var arg_request = buildGroup();
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGroup());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_groupKey).then(unittest.expectAsync(((api.Group response) {
        checkGroup(response);
      })));
    });

  });


  unittest.group("resource-GroupsAliasesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_groupKey = "foo";
      var arg_alias = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alias"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_groupKey, arg_alias).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_request = buildAlias();
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Alias.fromJson(json);
        checkAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAlias());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_groupKey).then(unittest.expectAsync(((api.Alias response) {
        checkAlias(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.GroupsAliasesResourceApi res = new api.AdminApi(mock).groups.aliases;
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAliases());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_groupKey).then(unittest.expectAsync(((api.Aliases response) {
        checkAliases(response);
      })));
    });

  });


  unittest.group("resource-MembersResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_groupKey, arg_memberKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_groupKey, arg_memberKey).then(unittest.expectAsync(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/members"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_groupKey).then(unittest.expectAsync(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_groupKey = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_roles = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/members"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["roles"].first, unittest.equals(arg_roles));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMembers());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_groupKey, maxResults: arg_maxResults, pageToken: arg_pageToken, roles: arg_roles).then(unittest.expectAsync(((api.Members response) {
        checkMembers(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_groupKey, arg_memberKey).then(unittest.expectAsync(((api.Member response) {
        checkMember(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.MembersResourceApi res = new api.AdminApi(mock).members;
      var arg_request = buildMember();
      var arg_groupKey = "foo";
      var arg_memberKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Member.fromJson(json);
        checkMember(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("groups/"));
        pathOffset += 7;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_groupKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_memberKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMember());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_groupKey, arg_memberKey).then(unittest.expectAsync(((api.Member response) {
        checkMember(response);
      })));
    });

  });


  unittest.group("resource-MobiledevicesResourceApi", () {
    unittest.test("method--action", () {

      var mock = new common_test.HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_request = buildMobileDeviceAction();
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.MobileDeviceAction.fromJson(json);
        checkMobileDeviceAction(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        index = path.indexOf("/action", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/action"));
        pathOffset += 7;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.action(arg_request, arg_customerId, arg_resourceId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_customerId, arg_resourceId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_resourceId = "foo";
      var arg_projection = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/devices/mobile/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_resourceId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMobileDevice());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_customerId, arg_resourceId, projection: arg_projection).then(unittest.expectAsync(((api.MobileDevice response) {
        checkMobileDevice(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.MobiledevicesResourceApi res = new api.AdminApi(mock).mobiledevices;
      var arg_customerId = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_sortOrder = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/devices/mobile", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/devices/mobile"));
        pathOffset += 15;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMobileDevices());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_customerId, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, projection: arg_projection, query: arg_query, sortOrder: arg_sortOrder).then(unittest.expectAsync(((api.MobileDevices response) {
        checkMobileDevices(response);
      })));
    });

  });


  unittest.group("resource-NotificationsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_customer, arg_notificationId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_customer, arg_notificationId).then(unittest.expectAsync(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_customer = "foo";
      var arg_language = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/notifications"));
        pathOffset += 14;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["language"].first, unittest.equals(arg_language));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotifications());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_customer, language: arg_language, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.Notifications response) {
        checkNotifications(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_customer, arg_notificationId).then(unittest.expectAsync(((api.Notification response) {
        checkNotification(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.NotificationsResourceApi res = new api.AdminApi(mock).notifications;
      var arg_request = buildNotification();
      var arg_customer = "foo";
      var arg_notificationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Notification.fromJson(json);
        checkNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/notifications/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customer"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/notifications/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_notificationId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildNotification());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_customer, arg_notificationId).then(unittest.expectAsync(((api.Notification response) {
        checkNotification(response);
      })));
    });

  });


  unittest.group("resource-OrgunitsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed116();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path.substring(pathOffset).split("/").map(core.Uri.decodeQueryComponent).where((p) => p.length > 0).toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_customerId, arg_orgUnitPath).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed117();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path.substring(pathOffset).split("/").map(core.Uri.decodeQueryComponent).where((p) => p.length > 0).toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_customerId, arg_orgUnitPath).then(unittest.expectAsync(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_customerId).then(unittest.expectAsync(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_customerId = "foo";
      var arg_orgUnitPath = "foo";
      var arg_type = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["orgUnitPath"].first, unittest.equals(arg_orgUnitPath));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnits());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_customerId, orgUnitPath: arg_orgUnitPath, type: arg_type).then(unittest.expectAsync(((api.OrgUnits response) {
        checkOrgUnits(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed118();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path.substring(pathOffset).split("/").map(core.Uri.decodeQueryComponent).where((p) => p.length > 0).toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_customerId, arg_orgUnitPath).then(unittest.expectAsync(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.OrgunitsResourceApi res = new api.AdminApi(mock).orgunits;
      var arg_request = buildOrgUnit();
      var arg_customerId = "foo";
      var arg_orgUnitPath = buildUnnamed119();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.OrgUnit.fromJson(json);
        checkOrgUnit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/orgunits", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/orgunits"));
        pathOffset += 9;
        var parts = path.substring(pathOffset).split("/").map(core.Uri.decodeQueryComponent).where((p) => p.length > 0).toList();
        unittest.expect(parts, unittest.equals(arg_orgUnitPath));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOrgUnit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_customerId, arg_orgUnitPath).then(unittest.expectAsync(((api.OrgUnit response) {
        checkOrgUnit(response);
      })));
    });

  });


  unittest.group("resource-SchemasResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_customerId, arg_schemaKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_customerId, arg_schemaKey).then(unittest.expectAsync(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/schemas"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_customerId).then(unittest.expectAsync(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_customerId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/schemas"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchemas());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_customerId).then(unittest.expectAsync(((api.Schemas response) {
        checkSchemas(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_customerId, arg_schemaKey).then(unittest.expectAsync(((api.Schema response) {
        checkSchema(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.SchemasResourceApi res = new api.AdminApi(mock).schemas;
      var arg_request = buildSchema();
      var arg_customerId = "foo";
      var arg_schemaKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Schema.fromJson(json);
        checkSchema(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("customer/"));
        pathOffset += 9;
        index = path.indexOf("/schemas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_customerId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/schemas/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_schemaKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSchema());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_customerId, arg_schemaKey).then(unittest.expectAsync(((api.Schema response) {
        checkSchema(response);
      })));
    });

  });


  unittest.group("resource-TokensResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      var arg_clientId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userKey, arg_clientId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      var arg_clientId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clientId"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildToken());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userKey, arg_clientId).then(unittest.expectAsync(((api.Token response) {
        checkToken(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TokensResourceApi res = new api.AdminApi(mock).tokens;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/tokens", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/tokens"));
        pathOffset += 7;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTokens());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userKey).then(unittest.expectAsync(((api.Tokens response) {
        checkTokens(response);
      })));
    });

  });


  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_userKey = "foo";
      var arg_customFieldMask = "foo";
      var arg_projection = "foo";
      var arg_viewType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first, unittest.equals(arg_customFieldMask));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["viewType"].first, unittest.equals(arg_viewType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userKey, customFieldMask: arg_customFieldMask, projection: arg_projection, viewType: arg_viewType).then(unittest.expectAsync(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("users"));
        pathOffset += 5;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_customFieldMask = "foo";
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_event = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_showDeleted = "foo";
      var arg_sortOrder = "foo";
      var arg_viewType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("users"));
        pathOffset += 5;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first, unittest.equals(arg_customFieldMask));
        unittest.expect(queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["viewType"].first, unittest.equals(arg_viewType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUsers());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(customFieldMask: arg_customFieldMask, customer: arg_customer, domain: arg_domain, event: arg_event, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, projection: arg_projection, query: arg_query, showDeleted: arg_showDeleted, sortOrder: arg_sortOrder, viewType: arg_viewType).then(unittest.expectAsync(((api.Users response) {
        checkUsers(response);
      })));
    });

    unittest.test("method--makeAdmin", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUserMakeAdmin();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UserMakeAdmin.fromJson(json);
        checkUserMakeAdmin(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/makeAdmin", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/makeAdmin"));
        pathOffset += 10;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.makeAdmin(arg_request, arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userKey).then(unittest.expectAsync(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--undelete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUserUndelete();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UserUndelete.fromJson(json);
        checkUserUndelete(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/undelete"));
        pathOffset += 9;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.undelete(arg_request, arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildUser();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.User.fromJson(json);
        checkUser(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUser());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userKey).then(unittest.expectAsync(((api.User response) {
        checkUser(response);
      })));
    });

    unittest.test("method--watch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.AdminApi(mock).users;
      var arg_request = buildChannel();
      var arg_customFieldMask = "foo";
      var arg_customer = "foo";
      var arg_domain = "foo";
      var arg_event = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_projection = "foo";
      var arg_query = "foo";
      var arg_showDeleted = "foo";
      var arg_sortOrder = "foo";
      var arg_viewType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("users/watch"));
        pathOffset += 11;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["customFieldMask"].first, unittest.equals(arg_customFieldMask));
        unittest.expect(queryMap["customer"].first, unittest.equals(arg_customer));
        unittest.expect(queryMap["domain"].first, unittest.equals(arg_domain));
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projection"].first, unittest.equals(arg_projection));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["showDeleted"].first, unittest.equals(arg_showDeleted));
        unittest.expect(queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["viewType"].first, unittest.equals(arg_viewType));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, customFieldMask: arg_customFieldMask, customer: arg_customer, domain: arg_domain, event: arg_event, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, projection: arg_projection, query: arg_query, showDeleted: arg_showDeleted, sortOrder: arg_sortOrder, viewType: arg_viewType).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-UsersAliasesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_userKey = "foo";
      var arg_alias = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alias"));

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userKey, arg_alias).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_request = buildAlias();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Alias.fromJson(json);
        checkAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAlias());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_userKey).then(unittest.expectAsync(((api.Alias response) {
        checkAlias(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_userKey = "foo";
      var arg_event = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
        pathOffset += 8;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAliases());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userKey, event: arg_event).then(unittest.expectAsync(((api.Aliases response) {
        checkAliases(response);
      })));
    });

    unittest.test("method--watch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersAliasesResourceApi res = new api.AdminApi(mock).users.aliases;
      var arg_request = buildChannel();
      var arg_userKey = "foo";
      var arg_event = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Channel.fromJson(json);
        checkChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/aliases/watch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/aliases/watch"));
        pathOffset += 14;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["event"].first, unittest.equals(arg_event));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildChannel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_userKey, event: arg_event).then(unittest.expectAsync(((api.Channel response) {
        checkChannel(response);
      })));
    });

  });


  unittest.group("resource-UsersPhotosResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userKey).then(unittest.expectAsync(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UserPhoto.fromJson(json);
        checkUserPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userKey).then(unittest.expectAsync(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UsersPhotosResourceApi res = new api.AdminApi(mock).users.photos;
      var arg_request = buildUserPhoto();
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.UserPhoto.fromJson(json);
        checkUserPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/photos/thumbnail", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/photos/thumbnail"));
        pathOffset += 17;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserPhoto());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userKey).then(unittest.expectAsync(((api.UserPhoto response) {
        checkUserPhoto(response);
      })));
    });

  });


  unittest.group("resource-VerificationCodesResourceApi", () {
    unittest.test("method--generate", () {

      var mock = new common_test.HttpServerMock();
      api.VerificationCodesResourceApi res = new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes/generate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 27), unittest.equals("/verificationCodes/generate"));
        pathOffset += 27;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.generate(arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--invalidate", () {

      var mock = new common_test.HttpServerMock();
      api.VerificationCodesResourceApi res = new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes/invalidate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 29), unittest.equals("/verificationCodes/invalidate"));
        pathOffset += 29;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.invalidate(arg_userKey).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.VerificationCodesResourceApi res = new api.AdminApi(mock).verificationCodes;
      var arg_userKey = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("admin/directory/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("users/"));
        pathOffset += 6;
        index = path.indexOf("/verificationCodes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userKey"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("/verificationCodes"));
        pathOffset += 18;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVerificationCodes());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userKey).then(unittest.expectAsync(((api.VerificationCodes response) {
        checkVerificationCodes(response);
      })));
    });

  });


}

