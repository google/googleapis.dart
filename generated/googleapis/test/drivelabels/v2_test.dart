// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/drivelabels/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAppsDriveLabelsV2BadgeColors = 0;
api.GoogleAppsDriveLabelsV2BadgeColors
    buildGoogleAppsDriveLabelsV2BadgeColors() {
  final o = api.GoogleAppsDriveLabelsV2BadgeColors();
  buildCounterGoogleAppsDriveLabelsV2BadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeColors < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.foregroundColor = buildGoogleTypeColor();
    o.soloColor = buildGoogleTypeColor();
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeColors--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BadgeColors(
    api.GoogleAppsDriveLabelsV2BadgeColors o) {
  buildCounterGoogleAppsDriveLabelsV2BadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeColors < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.foregroundColor!);
    checkGoogleTypeColor(o.soloColor!);
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeColors--;
}

core.int buildCounterGoogleAppsDriveLabelsV2BadgeConfig = 0;
api.GoogleAppsDriveLabelsV2BadgeConfig
    buildGoogleAppsDriveLabelsV2BadgeConfig() {
  final o = api.GoogleAppsDriveLabelsV2BadgeConfig();
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeConfig < 3) {
    o.color = buildGoogleTypeColor();
    o.priorityOverride = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BadgeConfig(
    api.GoogleAppsDriveLabelsV2BadgeConfig o) {
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeConfig < 3) {
    checkGoogleTypeColor(o.color!);
    unittest.expect(
      o.priorityOverride!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig--;
}

core.int buildCounterGoogleAppsDriveLabelsV2Field = 0;
api.GoogleAppsDriveLabelsV2Field buildGoogleAppsDriveLabelsV2Field() {
  final o = api.GoogleAppsDriveLabelsV2Field();
  buildCounterGoogleAppsDriveLabelsV2Field++;
  if (buildCounterGoogleAppsDriveLabelsV2Field < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.dateOptions = buildGoogleAppsDriveLabelsV2FieldDateOptions();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2FieldDisplayHints();
    o.id = 'foo';
    o.integerOptions = buildGoogleAppsDriveLabelsV2FieldIntegerOptions();
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.properties = buildGoogleAppsDriveLabelsV2FieldProperties();
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.queryKey = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities();
    o.selectionOptions = buildGoogleAppsDriveLabelsV2FieldSelectionOptions();
    o.textOptions = buildGoogleAppsDriveLabelsV2FieldTextOptions();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2UserInfo();
    o.userOptions = buildGoogleAppsDriveLabelsV2FieldUserOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2Field--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Field(api.GoogleAppsDriveLabelsV2Field o) {
  buildCounterGoogleAppsDriveLabelsV2Field++;
  if (buildCounterGoogleAppsDriveLabelsV2Field < 3) {
    checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(
        o.appliedCapabilities!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    checkGoogleAppsDriveLabelsV2FieldDateOptions(o.dateOptions!);
    unittest.expect(
      o.disableTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2FieldDisplayHints(o.displayHints!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2FieldIntegerOptions(o.integerOptions!);
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2FieldProperties(o.properties!);
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    unittest.expect(
      o.queryKey!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(o.schemaCapabilities!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptions(o.selectionOptions!);
    checkGoogleAppsDriveLabelsV2FieldTextOptions(o.textOptions!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.updater!);
    checkGoogleAppsDriveLabelsV2FieldUserOptions(o.userOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2Field--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities
    buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities < 3) {
    o.canRead = true;
    o.canSearch = true;
    o.canWrite = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(
    api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities o) {
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities < 3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canWrite!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldDateOptions = 0;
api.GoogleAppsDriveLabelsV2FieldDateOptions
    buildGoogleAppsDriveLabelsV2FieldDateOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldDateOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDateOptions < 3) {
    o.dateFormat = 'foo';
    o.dateFormatType = 'foo';
    o.maxValue = buildGoogleTypeDate();
    o.minValue = buildGoogleTypeDate();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldDateOptions(
    api.GoogleAppsDriveLabelsV2FieldDateOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDateOptions < 3) {
    unittest.expect(
      o.dateFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dateFormatType!,
      unittest.equals('foo'),
    );
    checkGoogleTypeDate(o.maxValue!);
    checkGoogleTypeDate(o.minValue!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints = 0;
api.GoogleAppsDriveLabelsV2FieldDisplayHints
    buildGoogleAppsDriveLabelsV2FieldDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2FieldDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.required = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldDisplayHints(
    api.GoogleAppsDriveLabelsV2FieldDisplayHints o) {
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions = 0;
api.GoogleAppsDriveLabelsV2FieldIntegerOptions
    buildGoogleAppsDriveLabelsV2FieldIntegerOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldIntegerOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldIntegerOptions(
    api.GoogleAppsDriveLabelsV2FieldIntegerOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions < 3) {
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldListOptions = 0;
api.GoogleAppsDriveLabelsV2FieldListOptions
    buildGoogleAppsDriveLabelsV2FieldListOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldListOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldListOptions < 3) {
    o.maxEntries = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldListOptions(
    api.GoogleAppsDriveLabelsV2FieldListOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldListOptions < 3) {
    unittest.expect(
      o.maxEntries!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldProperties = 0;
api.GoogleAppsDriveLabelsV2FieldProperties
    buildGoogleAppsDriveLabelsV2FieldProperties() {
  final o = api.GoogleAppsDriveLabelsV2FieldProperties();
  buildCounterGoogleAppsDriveLabelsV2FieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldProperties < 3) {
    o.displayName = 'foo';
    o.insertBeforeField = 'foo';
    o.required = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldProperties(
    api.GoogleAppsDriveLabelsV2FieldProperties o) {
  buildCounterGoogleAppsDriveLabelsV2FieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldProperties < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertBeforeField!,
      unittest.equals('foo'),
    );
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities
    buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(
    api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities--;
}

core.List<api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice>
    buildUnnamed0() => [
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(),
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(),
        ];

void checkUnnamed0(
    core.List<api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(o[0]);
  checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptions
    buildGoogleAppsDriveLabelsV2FieldSelectionOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions < 3) {
    o.choices = buildUnnamed0();
    o.listOptions = buildGoogleAppsDriveLabelsV2FieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptions(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions < 3) {
    checkUnnamed0(o.choices!);
    checkGoogleAppsDriveLabelsV2FieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
    buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
    o.id = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.properties =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2UserInfo();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice < 3) {
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
        o.appliedCapabilities!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    unittest.expect(
      o.disableTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(
        o.displayHints!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(
        o.properties!);
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
        o.schemaCapabilities!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.updater!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice--;
}

core.int
    buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
    buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities() {
  final o = api
      .GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    o.canRead = true;
    o.canSearch = true;
    o.canSelect = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
        o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canSelect!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities--;
}

core.int
    buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
    buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints() {
  final o =
      api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints <
      3) {
    o.badgeColors = buildGoogleAppsDriveLabelsV2BadgeColors();
    o.badgePriority = 'foo';
    o.darkBadgeColors = buildGoogleAppsDriveLabelsV2BadgeColors();
    o.disabled = true;
    o.hiddenInSearch = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints <
      3) {
    checkGoogleAppsDriveLabelsV2BadgeColors(o.badgeColors!);
    unittest.expect(
      o.badgePriority!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2BadgeColors(o.darkBadgeColors!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints--;
}

core.int
    buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
    buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties <
      3) {
    o.badgeConfig = buildGoogleAppsDriveLabelsV2BadgeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.insertBeforeChoice = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties <
      3) {
    checkGoogleAppsDriveLabelsV2BadgeConfig(o.badgeConfig!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.insertBeforeChoice!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties--;
}

core.int
    buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
    buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities() {
  final o = api
      .GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
    api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
        o) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldTextOptions = 0;
api.GoogleAppsDriveLabelsV2FieldTextOptions
    buildGoogleAppsDriveLabelsV2FieldTextOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldTextOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldTextOptions < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldTextOptions(
    api.GoogleAppsDriveLabelsV2FieldTextOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldTextOptions < 3) {
    unittest.expect(
      o.maxLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minLength!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldUserOptions = 0;
api.GoogleAppsDriveLabelsV2FieldUserOptions
    buildGoogleAppsDriveLabelsV2FieldUserOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldUserOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldUserOptions < 3) {
    o.listOptions = buildGoogleAppsDriveLabelsV2FieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldUserOptions(
    api.GoogleAppsDriveLabelsV2FieldUserOptions o) {
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldUserOptions < 3) {
    checkGoogleAppsDriveLabelsV2FieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions--;
}

core.List<api.GoogleAppsDriveLabelsV2Field> buildUnnamed1() => [
      buildGoogleAppsDriveLabelsV2Field(),
      buildGoogleAppsDriveLabelsV2Field(),
    ];

void checkUnnamed1(core.List<api.GoogleAppsDriveLabelsV2Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2Field(o[0]);
  checkGoogleAppsDriveLabelsV2Field(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2Label = 0;
api.GoogleAppsDriveLabelsV2Label buildGoogleAppsDriveLabelsV2Label() {
  final o = api.GoogleAppsDriveLabelsV2Label();
  buildCounterGoogleAppsDriveLabelsV2Label++;
  if (buildCounterGoogleAppsDriveLabelsV2Label < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities();
    o.appliedLabelPolicy =
        buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2LabelDisplayHints();
    o.fields = buildUnnamed1();
    o.id = 'foo';
    o.labelType = 'foo';
    o.learnMoreUri = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.name = 'foo';
    o.properties = buildGoogleAppsDriveLabelsV2LabelProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.revisionCreateTime = 'foo';
    o.revisionCreator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.revisionId = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities();
  }
  buildCounterGoogleAppsDriveLabelsV2Label--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Label(api.GoogleAppsDriveLabelsV2Label o) {
  buildCounterGoogleAppsDriveLabelsV2Label++;
  if (buildCounterGoogleAppsDriveLabelsV2Label < 3) {
    checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(
        o.appliedCapabilities!);
    checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(o.appliedLabelPolicy!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    unittest.expect(
      o.disableTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2LabelDisplayHints(o.displayHints!);
    checkUnnamed1(o.fields!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.learnMoreUri!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2LabelProperties(o.properties!);
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    unittest.expect(
      o.revisionCreateTime!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2UserInfo(o.revisionCreator!);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(o.schemaCapabilities!);
  }
  buildCounterGoogleAppsDriveLabelsV2Label--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities
    buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities < 3) {
    o.canApply = true;
    o.canRead = true;
    o.canRemove = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(
    api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities o) {
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities < 3) {
    unittest.expect(o.canApply!, unittest.isTrue);
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canRemove!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy = 0;
api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy
    buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy() {
  final o = api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy < 3) {
    o.copyMode = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(
    api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy o) {
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy < 3) {
    unittest.expect(
      o.copyMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints = 0;
api.GoogleAppsDriveLabelsV2LabelDisplayHints
    buildGoogleAppsDriveLabelsV2LabelDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2LabelDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.priority = 'foo';
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelDisplayHints(
    api.GoogleAppsDriveLabelsV2LabelDisplayHints o) {
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelProperties = 0;
api.GoogleAppsDriveLabelsV2LabelProperties
    buildGoogleAppsDriveLabelsV2LabelProperties() {
  final o = api.GoogleAppsDriveLabelsV2LabelProperties();
  buildCounterGoogleAppsDriveLabelsV2LabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelProperties < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelProperties(
    api.GoogleAppsDriveLabelsV2LabelProperties o) {
  buildCounterGoogleAppsDriveLabelsV2LabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelProperties < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2LabelProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities
    buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(
    api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities o) {
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2Lifecycle = 0;
api.GoogleAppsDriveLabelsV2Lifecycle buildGoogleAppsDriveLabelsV2Lifecycle() {
  final o = api.GoogleAppsDriveLabelsV2Lifecycle();
  buildCounterGoogleAppsDriveLabelsV2Lifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2Lifecycle < 3) {
    o.disabledPolicy = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
    o.hasUnpublishedChanges = true;
    o.state = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2Lifecycle--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Lifecycle(
    api.GoogleAppsDriveLabelsV2Lifecycle o) {
  buildCounterGoogleAppsDriveLabelsV2Lifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2Lifecycle < 3) {
    checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.hasUnpublishedChanges!, unittest.isTrue);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2Lifecycle--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy = 0;
api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy
    buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy() {
  final o = api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy < 3) {
    o.hideInSearch = true;
    o.showInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(
    api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy o) {
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy < 3) {
    unittest.expect(o.hideInSearch!, unittest.isTrue);
    unittest.expect(o.showInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy--;
}

core.List<api.GoogleAppsDriveLabelsV2Label> buildUnnamed2() => [
      buildGoogleAppsDriveLabelsV2Label(),
      buildGoogleAppsDriveLabelsV2Label(),
    ];

void checkUnnamed2(core.List<api.GoogleAppsDriveLabelsV2Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2Label(o[0]);
  checkGoogleAppsDriveLabelsV2Label(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse = 0;
api.GoogleAppsDriveLabelsV2ListLabelsResponse
    buildGoogleAppsDriveLabelsV2ListLabelsResponse() {
  final o = api.GoogleAppsDriveLabelsV2ListLabelsResponse();
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse < 3) {
    o.labels = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2ListLabelsResponse(
    api.GoogleAppsDriveLabelsV2ListLabelsResponse o) {
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse < 3) {
    checkUnnamed2(o.labels!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LockStatus = 0;
api.GoogleAppsDriveLabelsV2LockStatus buildGoogleAppsDriveLabelsV2LockStatus() {
  final o = api.GoogleAppsDriveLabelsV2LockStatus();
  buildCounterGoogleAppsDriveLabelsV2LockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2LockStatus < 3) {
    o.locked = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LockStatus--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LockStatus(
    api.GoogleAppsDriveLabelsV2LockStatus o) {
  buildCounterGoogleAppsDriveLabelsV2LockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2LockStatus < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LockStatus--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UserInfo = 0;
api.GoogleAppsDriveLabelsV2UserInfo buildGoogleAppsDriveLabelsV2UserInfo() {
  final o = api.GoogleAppsDriveLabelsV2UserInfo();
  buildCounterGoogleAppsDriveLabelsV2UserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2UserInfo < 3) {
    o.person = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2UserInfo--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UserInfo(
    api.GoogleAppsDriveLabelsV2UserInfo o) {
  buildCounterGoogleAppsDriveLabelsV2UserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2UserInfo < 3) {
    unittest.expect(
      o.person!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsDriveLabelsV2UserInfo--;
}

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  final o = api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

void checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeColor--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

void main() {
  unittest.group('obj-schema-GoogleAppsDriveLabelsV2BadgeColors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2BadgeColors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2BadgeColors.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2BadgeColors(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2BadgeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2BadgeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2BadgeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2BadgeConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Field.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2Field(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldAppliedCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldDateOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldDateOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldDateOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldDisplayHints(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldIntegerOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldIntegerOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldIntegerOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldListOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldListOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldListOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldSchemaCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldSelectionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldTextOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldTextOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldTextOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldUserOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldUserOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2FieldUserOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Label();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Label.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2Label(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelAppliedCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LabelDisplayHints(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LabelProperties(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelSchemaCapabilities',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Lifecycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Lifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Lifecycle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2Lifecycle(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LifecycleDisabledPolicy',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2ListLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2ListLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2ListLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LockStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LockStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LockStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2LockStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2UserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsDriveLabelsV2UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeColor(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-LabelsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_useAdminAccess = true;
      final arg_view = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['useAdminAccess']!.first,
          unittest.equals('$arg_useAdminAccess'),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode,
          useAdminAccess: arg_useAdminAccess,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleAppsDriveLabelsV2Label(
          response as api.GoogleAppsDriveLabelsV2Label);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_languageCode = 'foo';
      final arg_minimumRole = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_publishedOnly = true;
      final arg_useAdminAccess = true;
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v2/labels'),
        );
        pathOffset += 9;

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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['minimumRole']!.first,
          unittest.equals(arg_minimumRole),
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
          queryMap['publishedOnly']!.first,
          unittest.equals('$arg_publishedOnly'),
        );
        unittest.expect(
          queryMap['useAdminAccess']!.first,
          unittest.equals('$arg_useAdminAccess'),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsDriveLabelsV2ListLabelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          languageCode: arg_languageCode,
          minimumRole: arg_minimumRole,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          publishedOnly: arg_publishedOnly,
          useAdminAccess: arg_useAdminAccess,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleAppsDriveLabelsV2ListLabelsResponse(
          response as api.GoogleAppsDriveLabelsV2ListLabelsResponse);
    });
  });
}
