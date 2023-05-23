// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/kmsinventory/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.GoogleCloudKmsV1CryptoKey> buildUnnamed0() => [
      buildGoogleCloudKmsV1CryptoKey(),
      buildGoogleCloudKmsV1CryptoKey(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudKmsV1CryptoKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudKmsV1CryptoKey(o[0]);
  checkGoogleCloudKmsV1CryptoKey(o[1]);
}

core.int buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse = 0;
api.GoogleCloudKmsInventoryV1ListCryptoKeysResponse
    buildGoogleCloudKmsInventoryV1ListCryptoKeysResponse() {
  final o = api.GoogleCloudKmsInventoryV1ListCryptoKeysResponse();
  buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse++;
  if (buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse < 3) {
    o.cryptoKeys = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse--;
  return o;
}

void checkGoogleCloudKmsInventoryV1ListCryptoKeysResponse(
    api.GoogleCloudKmsInventoryV1ListCryptoKeysResponse o) {
  buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse++;
  if (buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse < 3) {
    checkUnnamed0(o.cryptoKeys!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsInventoryV1ListCryptoKeysResponse--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudKmsInventoryV1ProtectedResource = 0;
api.GoogleCloudKmsInventoryV1ProtectedResource
    buildGoogleCloudKmsInventoryV1ProtectedResource() {
  final o = api.GoogleCloudKmsInventoryV1ProtectedResource();
  buildCounterGoogleCloudKmsInventoryV1ProtectedResource++;
  if (buildCounterGoogleCloudKmsInventoryV1ProtectedResource < 3) {
    o.cloudProduct = 'foo';
    o.createTime = 'foo';
    o.cryptoKeyVersion = 'foo';
    o.cryptoKeyVersions = buildUnnamed1();
    o.labels = buildUnnamed2();
    o.location = 'foo';
    o.name = 'foo';
    o.project = 'foo';
    o.projectId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudKmsInventoryV1ProtectedResource--;
  return o;
}

void checkGoogleCloudKmsInventoryV1ProtectedResource(
    api.GoogleCloudKmsInventoryV1ProtectedResource o) {
  buildCounterGoogleCloudKmsInventoryV1ProtectedResource++;
  if (buildCounterGoogleCloudKmsInventoryV1ProtectedResource < 3) {
    unittest.expect(
      o.cloudProduct!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cryptoKeyVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.cryptoKeyVersions!);
    checkUnnamed2(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsInventoryV1ProtectedResource--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary = 0;
api.GoogleCloudKmsInventoryV1ProtectedResourcesSummary
    buildGoogleCloudKmsInventoryV1ProtectedResourcesSummary() {
  final o = api.GoogleCloudKmsInventoryV1ProtectedResourcesSummary();
  buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary++;
  if (buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary < 3) {
    o.cloudProducts = buildUnnamed3();
    o.locations = buildUnnamed4();
    o.name = 'foo';
    o.projectCount = 42;
    o.resourceCount = 'foo';
    o.resourceTypes = buildUnnamed5();
  }
  buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary--;
  return o;
}

void checkGoogleCloudKmsInventoryV1ProtectedResourcesSummary(
    api.GoogleCloudKmsInventoryV1ProtectedResourcesSummary o) {
  buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary++;
  if (buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary < 3) {
    checkUnnamed3(o.cloudProducts!);
    checkUnnamed4(o.locations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.resourceCount!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.resourceTypes!);
  }
  buildCounterGoogleCloudKmsInventoryV1ProtectedResourcesSummary--;
}

core.List<api.GoogleCloudKmsInventoryV1ProtectedResource> buildUnnamed6() => [
      buildGoogleCloudKmsInventoryV1ProtectedResource(),
      buildGoogleCloudKmsInventoryV1ProtectedResource(),
    ];

void checkUnnamed6(
    core.List<api.GoogleCloudKmsInventoryV1ProtectedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudKmsInventoryV1ProtectedResource(o[0]);
  checkGoogleCloudKmsInventoryV1ProtectedResource(o[1]);
}

core.int buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse =
    0;
api.GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
    buildGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse() {
  final o = api.GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse();
  buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse++;
  if (buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.protectedResources = buildUnnamed6();
  }
  buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse--;
  return o;
}

void checkGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse(
    api.GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse o) {
  buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse++;
  if (buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.protectedResources!);
  }
  buildCounterGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse--;
}

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudKmsV1CryptoKey = 0;
api.GoogleCloudKmsV1CryptoKey buildGoogleCloudKmsV1CryptoKey() {
  final o = api.GoogleCloudKmsV1CryptoKey();
  buildCounterGoogleCloudKmsV1CryptoKey++;
  if (buildCounterGoogleCloudKmsV1CryptoKey < 3) {
    o.createTime = 'foo';
    o.cryptoKeyBackend = 'foo';
    o.destroyScheduledDuration = 'foo';
    o.importOnly = true;
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.nextRotationTime = 'foo';
    o.primary = buildGoogleCloudKmsV1CryptoKeyVersion();
    o.purpose = 'foo';
    o.rotationPeriod = 'foo';
    o.versionTemplate = buildGoogleCloudKmsV1CryptoKeyVersionTemplate();
  }
  buildCounterGoogleCloudKmsV1CryptoKey--;
  return o;
}

void checkGoogleCloudKmsV1CryptoKey(api.GoogleCloudKmsV1CryptoKey o) {
  buildCounterGoogleCloudKmsV1CryptoKey++;
  if (buildCounterGoogleCloudKmsV1CryptoKey < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cryptoKeyBackend!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyScheduledDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.importOnly!, unittest.isTrue);
    checkUnnamed7(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRotationTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudKmsV1CryptoKeyVersion(o.primary!);
    unittest.expect(
      o.purpose!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rotationPeriod!,
      unittest.equals('foo'),
    );
    checkGoogleCloudKmsV1CryptoKeyVersionTemplate(o.versionTemplate!);
  }
  buildCounterGoogleCloudKmsV1CryptoKey--;
}

core.int buildCounterGoogleCloudKmsV1CryptoKeyVersion = 0;
api.GoogleCloudKmsV1CryptoKeyVersion buildGoogleCloudKmsV1CryptoKeyVersion() {
  final o = api.GoogleCloudKmsV1CryptoKeyVersion();
  buildCounterGoogleCloudKmsV1CryptoKeyVersion++;
  if (buildCounterGoogleCloudKmsV1CryptoKeyVersion < 3) {
    o.algorithm = 'foo';
    o.attestation = buildGoogleCloudKmsV1KeyOperationAttestation();
    o.createTime = 'foo';
    o.destroyEventTime = 'foo';
    o.destroyTime = 'foo';
    o.externalDestructionFailureReason = 'foo';
    o.externalProtectionLevelOptions =
        buildGoogleCloudKmsV1ExternalProtectionLevelOptions();
    o.generateTime = 'foo';
    o.generationFailureReason = 'foo';
    o.importFailureReason = 'foo';
    o.importJob = 'foo';
    o.importTime = 'foo';
    o.name = 'foo';
    o.protectionLevel = 'foo';
    o.reimportEligible = true;
    o.state = 'foo';
  }
  buildCounterGoogleCloudKmsV1CryptoKeyVersion--;
  return o;
}

void checkGoogleCloudKmsV1CryptoKeyVersion(
    api.GoogleCloudKmsV1CryptoKeyVersion o) {
  buildCounterGoogleCloudKmsV1CryptoKeyVersion++;
  if (buildCounterGoogleCloudKmsV1CryptoKeyVersion < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    checkGoogleCloudKmsV1KeyOperationAttestation(o.attestation!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyEventTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.destroyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalDestructionFailureReason!,
      unittest.equals('foo'),
    );
    checkGoogleCloudKmsV1ExternalProtectionLevelOptions(
        o.externalProtectionLevelOptions!);
    unittest.expect(
      o.generateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generationFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importJob!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reimportEligible!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsV1CryptoKeyVersion--;
}

core.int buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate = 0;
api.GoogleCloudKmsV1CryptoKeyVersionTemplate
    buildGoogleCloudKmsV1CryptoKeyVersionTemplate() {
  final o = api.GoogleCloudKmsV1CryptoKeyVersionTemplate();
  buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate++;
  if (buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate < 3) {
    o.algorithm = 'foo';
    o.protectionLevel = 'foo';
  }
  buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate--;
  return o;
}

void checkGoogleCloudKmsV1CryptoKeyVersionTemplate(
    api.GoogleCloudKmsV1CryptoKeyVersionTemplate o) {
  buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate++;
  if (buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protectionLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsV1CryptoKeyVersionTemplate--;
}

core.int buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions = 0;
api.GoogleCloudKmsV1ExternalProtectionLevelOptions
    buildGoogleCloudKmsV1ExternalProtectionLevelOptions() {
  final o = api.GoogleCloudKmsV1ExternalProtectionLevelOptions();
  buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions++;
  if (buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions < 3) {
    o.ekmConnectionKeyPath = 'foo';
    o.externalKeyUri = 'foo';
  }
  buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions--;
  return o;
}

void checkGoogleCloudKmsV1ExternalProtectionLevelOptions(
    api.GoogleCloudKmsV1ExternalProtectionLevelOptions o) {
  buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions++;
  if (buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions < 3) {
    unittest.expect(
      o.ekmConnectionKeyPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalKeyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsV1ExternalProtectionLevelOptions--;
}

core.int buildCounterGoogleCloudKmsV1KeyOperationAttestation = 0;
api.GoogleCloudKmsV1KeyOperationAttestation
    buildGoogleCloudKmsV1KeyOperationAttestation() {
  final o = api.GoogleCloudKmsV1KeyOperationAttestation();
  buildCounterGoogleCloudKmsV1KeyOperationAttestation++;
  if (buildCounterGoogleCloudKmsV1KeyOperationAttestation < 3) {
    o.certChains =
        buildGoogleCloudKmsV1KeyOperationAttestationCertificateChains();
    o.content = 'foo';
    o.format = 'foo';
  }
  buildCounterGoogleCloudKmsV1KeyOperationAttestation--;
  return o;
}

void checkGoogleCloudKmsV1KeyOperationAttestation(
    api.GoogleCloudKmsV1KeyOperationAttestation o) {
  buildCounterGoogleCloudKmsV1KeyOperationAttestation++;
  if (buildCounterGoogleCloudKmsV1KeyOperationAttestation < 3) {
    checkGoogleCloudKmsV1KeyOperationAttestationCertificateChains(
        o.certChains!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudKmsV1KeyOperationAttestation--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains =
    0;
api.GoogleCloudKmsV1KeyOperationAttestationCertificateChains
    buildGoogleCloudKmsV1KeyOperationAttestationCertificateChains() {
  final o = api.GoogleCloudKmsV1KeyOperationAttestationCertificateChains();
  buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains++;
  if (buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains <
      3) {
    o.caviumCerts = buildUnnamed8();
    o.googleCardCerts = buildUnnamed9();
    o.googlePartitionCerts = buildUnnamed10();
  }
  buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains--;
  return o;
}

void checkGoogleCloudKmsV1KeyOperationAttestationCertificateChains(
    api.GoogleCloudKmsV1KeyOperationAttestationCertificateChains o) {
  buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains++;
  if (buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains <
      3) {
    checkUnnamed8(o.caviumCerts!);
    checkUnnamed9(o.googleCardCerts!);
    checkUnnamed10(o.googlePartitionCerts!);
  }
  buildCounterGoogleCloudKmsV1KeyOperationAttestationCertificateChains--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudKmsInventoryV1ListCryptoKeysResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsInventoryV1ListCryptoKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsInventoryV1ListCryptoKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsInventoryV1ListCryptoKeysResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsInventoryV1ProtectedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsInventoryV1ProtectedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsInventoryV1ProtectedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsInventoryV1ProtectedResource(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudKmsInventoryV1ProtectedResourcesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsInventoryV1ProtectedResourcesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudKmsInventoryV1ProtectedResourcesSummary.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsInventoryV1ProtectedResourcesSummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsV1CryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1CryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsV1CryptoKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1CryptoKey(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsV1CryptoKeyVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1CryptoKeyVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsV1CryptoKeyVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1CryptoKeyVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsV1CryptoKeyVersionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1CryptoKeyVersionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsV1CryptoKeyVersionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1CryptoKeyVersionTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsV1ExternalProtectionLevelOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1ExternalProtectionLevelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsV1ExternalProtectionLevelOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1ExternalProtectionLevelOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudKmsV1KeyOperationAttestation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1KeyOperationAttestation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudKmsV1KeyOperationAttestation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1KeyOperationAttestation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudKmsV1KeyOperationAttestationCertificateChains',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudKmsV1KeyOperationAttestationCertificateChains();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudKmsV1KeyOperationAttestationCertificateChains.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudKmsV1KeyOperationAttestationCertificateChains(od);
    });
  });

  unittest.group('resource-OrganizationsProtectedResourcesResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.KmsinventoryApi(mock).organizations.protectedResources;
      final arg_scope = 'foo';
      final arg_cryptoKey = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['cryptoKey']!.first,
          unittest.equals(arg_cryptoKey),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_scope,
          cryptoKey: arg_cryptoKey,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudKmsInventoryV1SearchProtectedResourcesResponse(response
          as api.GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse);
    });
  });

  unittest.group('resource-ProjectsCryptoKeysResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.KmsinventoryApi(mock).projects.cryptoKeys;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudKmsInventoryV1ListCryptoKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudKmsInventoryV1ListCryptoKeysResponse(
          response as api.GoogleCloudKmsInventoryV1ListCryptoKeysResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsKeyRingsCryptoKeysResource', () {
    unittest.test('method--getProtectedResourcesSummary', () async {
      final mock = HttpServerMock();
      final res =
          api.KmsinventoryApi(mock).projects.locations.keyRings.cryptoKeys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudKmsInventoryV1ProtectedResourcesSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getProtectedResourcesSummary(arg_name,
          $fields: arg_$fields);
      checkGoogleCloudKmsInventoryV1ProtectedResourcesSummary(
          response as api.GoogleCloudKmsInventoryV1ProtectedResourcesSummary);
    });
  });
}
