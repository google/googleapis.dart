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

import 'package:googleapis/transcoder/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdBreak = 0;
api.AdBreak buildAdBreak() {
  final o = api.AdBreak();
  buildCounterAdBreak++;
  if (buildCounterAdBreak < 3) {
    o.startTimeOffset = 'foo';
  }
  buildCounterAdBreak--;
  return o;
}

void checkAdBreak(api.AdBreak o) {
  buildCounterAdBreak++;
  if (buildCounterAdBreak < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdBreak--;
}

core.int buildCounterAnimation = 0;
api.Animation buildAnimation() {
  final o = api.Animation();
  buildCounterAnimation++;
  if (buildCounterAnimation < 3) {
    o.animationEnd = buildAnimationEnd();
    o.animationFade = buildAnimationFade();
    o.animationStatic = buildAnimationStatic();
  }
  buildCounterAnimation--;
  return o;
}

void checkAnimation(api.Animation o) {
  buildCounterAnimation++;
  if (buildCounterAnimation < 3) {
    checkAnimationEnd(o.animationEnd!);
    checkAnimationFade(o.animationFade!);
    checkAnimationStatic(o.animationStatic!);
  }
  buildCounterAnimation--;
}

core.int buildCounterAnimationEnd = 0;
api.AnimationEnd buildAnimationEnd() {
  final o = api.AnimationEnd();
  buildCounterAnimationEnd++;
  if (buildCounterAnimationEnd < 3) {
    o.startTimeOffset = 'foo';
  }
  buildCounterAnimationEnd--;
  return o;
}

void checkAnimationEnd(api.AnimationEnd o) {
  buildCounterAnimationEnd++;
  if (buildCounterAnimationEnd < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnimationEnd--;
}

core.int buildCounterAnimationFade = 0;
api.AnimationFade buildAnimationFade() {
  final o = api.AnimationFade();
  buildCounterAnimationFade++;
  if (buildCounterAnimationFade < 3) {
    o.endTimeOffset = 'foo';
    o.fadeType = 'foo';
    o.startTimeOffset = 'foo';
    o.xy = buildNormalizedCoordinate();
  }
  buildCounterAnimationFade--;
  return o;
}

void checkAnimationFade(api.AnimationFade o) {
  buildCounterAnimationFade++;
  if (buildCounterAnimationFade < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fadeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    checkNormalizedCoordinate(o.xy!);
  }
  buildCounterAnimationFade--;
}

core.int buildCounterAnimationStatic = 0;
api.AnimationStatic buildAnimationStatic() {
  final o = api.AnimationStatic();
  buildCounterAnimationStatic++;
  if (buildCounterAnimationStatic < 3) {
    o.startTimeOffset = 'foo';
    o.xy = buildNormalizedCoordinate();
  }
  buildCounterAnimationStatic--;
  return o;
}

void checkAnimationStatic(api.AnimationStatic o) {
  buildCounterAnimationStatic++;
  if (buildCounterAnimationStatic < 3) {
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    checkNormalizedCoordinate(o.xy!);
  }
  buildCounterAnimationStatic--;
}

core.int buildCounterAudio = 0;
api.Audio buildAudio() {
  final o = api.Audio();
  buildCounterAudio++;
  if (buildCounterAudio < 3) {
    o.highBoost = true;
    o.lowBoost = true;
    o.lufs = 42.0;
  }
  buildCounterAudio--;
  return o;
}

void checkAudio(api.Audio o) {
  buildCounterAudio++;
  if (buildCounterAudio < 3) {
    unittest.expect(o.highBoost!, unittest.isTrue);
    unittest.expect(o.lowBoost!, unittest.isTrue);
    unittest.expect(
      o.lufs!,
      unittest.equals(42.0),
    );
  }
  buildCounterAudio--;
}

core.int buildCounterAudioMapping = 0;
api.AudioMapping buildAudioMapping() {
  final o = api.AudioMapping();
  buildCounterAudioMapping++;
  if (buildCounterAudioMapping < 3) {
    o.atomKey = 'foo';
    o.gainDb = 42.0;
    o.inputChannel = 42;
    o.inputKey = 'foo';
    o.inputTrack = 42;
    o.outputChannel = 42;
  }
  buildCounterAudioMapping--;
  return o;
}

void checkAudioMapping(api.AudioMapping o) {
  buildCounterAudioMapping++;
  if (buildCounterAudioMapping < 3) {
    unittest.expect(
      o.atomKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gainDb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.inputChannel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.inputKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputTrack!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outputChannel!,
      unittest.equals(42),
    );
  }
  buildCounterAudioMapping--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.List<api.AudioMapping> buildUnnamed1() => [
      buildAudioMapping(),
      buildAudioMapping(),
    ];

void checkUnnamed1(core.List<api.AudioMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioMapping(o[0]);
  checkAudioMapping(o[1]);
}

core.int buildCounterAudioStream = 0;
api.AudioStream buildAudioStream() {
  final o = api.AudioStream();
  buildCounterAudioStream++;
  if (buildCounterAudioStream < 3) {
    o.bitrateBps = 42;
    o.channelCount = 42;
    o.channelLayout = buildUnnamed0();
    o.codec = 'foo';
    o.mapping = buildUnnamed1();
    o.sampleRateHertz = 42;
  }
  buildCounterAudioStream--;
  return o;
}

void checkAudioStream(api.AudioStream o) {
  buildCounterAudioStream++;
  if (buildCounterAudioStream < 3) {
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.channelCount!,
      unittest.equals(42),
    );
    checkUnnamed0(o.channelLayout!);
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.mapping!);
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
  }
  buildCounterAudioStream--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  final o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.brightness = 42.0;
    o.contrast = 42.0;
    o.saturation = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.brightness!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contrast!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.saturation!,
      unittest.equals(42.0),
    );
  }
  buildCounterColor--;
}

core.int buildCounterCrop = 0;
api.Crop buildCrop() {
  final o = api.Crop();
  buildCounterCrop++;
  if (buildCounterCrop < 3) {
    o.bottomPixels = 42;
    o.leftPixels = 42;
    o.rightPixels = 42;
    o.topPixels = 42;
  }
  buildCounterCrop--;
  return o;
}

void checkCrop(api.Crop o) {
  buildCounterCrop++;
  if (buildCounterCrop < 3) {
    unittest.expect(
      o.bottomPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.leftPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.topPixels!,
      unittest.equals(42),
    );
  }
  buildCounterCrop--;
}

core.int buildCounterDeblock = 0;
api.Deblock buildDeblock() {
  final o = api.Deblock();
  buildCounterDeblock++;
  if (buildCounterDeblock < 3) {
    o.enabled = true;
    o.strength = 42.0;
  }
  buildCounterDeblock--;
  return o;
}

void checkDeblock(api.Deblock o) {
  buildCounterDeblock++;
  if (buildCounterDeblock < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.strength!,
      unittest.equals(42.0),
    );
  }
  buildCounterDeblock--;
}

core.int buildCounterDenoise = 0;
api.Denoise buildDenoise() {
  final o = api.Denoise();
  buildCounterDenoise++;
  if (buildCounterDenoise < 3) {
    o.strength = 42.0;
    o.tune = 'foo';
  }
  buildCounterDenoise--;
  return o;
}

void checkDenoise(api.Denoise o) {
  buildCounterDenoise++;
  if (buildCounterDenoise < 3) {
    unittest.expect(
      o.strength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.tune!,
      unittest.equals('foo'),
    );
  }
  buildCounterDenoise--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterEditAtom = 0;
api.EditAtom buildEditAtom() {
  final o = api.EditAtom();
  buildCounterEditAtom++;
  if (buildCounterEditAtom < 3) {
    o.endTimeOffset = 'foo';
    o.inputs = buildUnnamed2();
    o.key = 'foo';
    o.startTimeOffset = 'foo';
  }
  buildCounterEditAtom--;
  return o;
}

void checkEditAtom(api.EditAtom o) {
  buildCounterEditAtom++;
  if (buildCounterEditAtom < 3) {
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.inputs!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterEditAtom--;
}

core.int buildCounterElementaryStream = 0;
api.ElementaryStream buildElementaryStream() {
  final o = api.ElementaryStream();
  buildCounterElementaryStream++;
  if (buildCounterElementaryStream < 3) {
    o.audioStream = buildAudioStream();
    o.key = 'foo';
    o.textStream = buildTextStream();
    o.videoStream = buildVideoStream();
  }
  buildCounterElementaryStream--;
  return o;
}

void checkElementaryStream(api.ElementaryStream o) {
  buildCounterElementaryStream++;
  if (buildCounterElementaryStream < 3) {
    checkAudioStream(o.audioStream!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkTextStream(o.textStream!);
    checkVideoStream(o.videoStream!);
  }
  buildCounterElementaryStream--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterH264CodecSettings = 0;
api.H264CodecSettings buildH264CodecSettings() {
  final o = api.H264CodecSettings();
  buildCounterH264CodecSettings++;
  if (buildCounterH264CodecSettings < 3) {
    o.allowOpenGop = true;
    o.aqStrength = 42.0;
    o.bFrameCount = 42;
    o.bPyramid = true;
    o.bitrateBps = 42;
    o.crfLevel = 42;
    o.enableTwoPass = true;
    o.entropyCoder = 'foo';
    o.frameRate = 42.0;
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.pixelFormat = 'foo';
    o.preset = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.tune = 'foo';
    o.vbvFullnessBits = 42;
    o.vbvSizeBits = 42;
    o.widthPixels = 42;
  }
  buildCounterH264CodecSettings--;
  return o;
}

void checkH264CodecSettings(api.H264CodecSettings o) {
  buildCounterH264CodecSettings++;
  if (buildCounterH264CodecSettings < 3) {
    unittest.expect(o.allowOpenGop!, unittest.isTrue);
    unittest.expect(
      o.aqStrength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(o.bPyramid!, unittest.isTrue);
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.crfLevel!,
      unittest.equals(42),
    );
    unittest.expect(o.enableTwoPass!, unittest.isTrue);
    unittest.expect(
      o.entropyCoder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.gopDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pixelFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateControlMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tune!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vbvFullnessBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vbvSizeBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterH264CodecSettings--;
}

core.int buildCounterH265CodecSettings = 0;
api.H265CodecSettings buildH265CodecSettings() {
  final o = api.H265CodecSettings();
  buildCounterH265CodecSettings++;
  if (buildCounterH265CodecSettings < 3) {
    o.allowOpenGop = true;
    o.aqStrength = 42.0;
    o.bFrameCount = 42;
    o.bPyramid = true;
    o.bitrateBps = 42;
    o.crfLevel = 42;
    o.enableTwoPass = true;
    o.frameRate = 42.0;
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.pixelFormat = 'foo';
    o.preset = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.tune = 'foo';
    o.vbvFullnessBits = 42;
    o.vbvSizeBits = 42;
    o.widthPixels = 42;
  }
  buildCounterH265CodecSettings--;
  return o;
}

void checkH265CodecSettings(api.H265CodecSettings o) {
  buildCounterH265CodecSettings++;
  if (buildCounterH265CodecSettings < 3) {
    unittest.expect(o.allowOpenGop!, unittest.isTrue);
    unittest.expect(
      o.aqStrength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(o.bPyramid!, unittest.isTrue);
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.crfLevel!,
      unittest.equals(42),
    );
    unittest.expect(o.enableTwoPass!, unittest.isTrue);
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.gopDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pixelFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateControlMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tune!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vbvFullnessBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vbvSizeBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterH265CodecSettings--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.alpha = 42.0;
    o.resolution = buildNormalizedCoordinate();
    o.uri = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    checkNormalizedCoordinate(o.resolution!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.int buildCounterInput = 0;
api.Input buildInput() {
  final o = api.Input();
  buildCounterInput++;
  if (buildCounterInput < 3) {
    o.key = 'foo';
    o.preprocessingConfig = buildPreprocessingConfig();
    o.uri = 'foo';
  }
  buildCounterInput--;
  return o;
}

void checkInput(api.Input o) {
  buildCounterInput++;
  if (buildCounterInput < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkPreprocessingConfig(o.preprocessingConfig!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterInput--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.config = buildJobConfig();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.inputUri = 'foo';
    o.name = 'foo';
    o.outputUri = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.templateId = 'foo';
    o.ttlAfterCompletionDays = 42;
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkJobConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttlAfterCompletionDays!,
      unittest.equals(42),
    );
  }
  buildCounterJob--;
}

core.List<api.AdBreak> buildUnnamed3() => [
      buildAdBreak(),
      buildAdBreak(),
    ];

void checkUnnamed3(core.List<api.AdBreak> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdBreak(o[0]);
  checkAdBreak(o[1]);
}

core.List<api.EditAtom> buildUnnamed4() => [
      buildEditAtom(),
      buildEditAtom(),
    ];

void checkUnnamed4(core.List<api.EditAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditAtom(o[0]);
  checkEditAtom(o[1]);
}

core.List<api.ElementaryStream> buildUnnamed5() => [
      buildElementaryStream(),
      buildElementaryStream(),
    ];

void checkUnnamed5(core.List<api.ElementaryStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElementaryStream(o[0]);
  checkElementaryStream(o[1]);
}

core.List<api.Input> buildUnnamed6() => [
      buildInput(),
      buildInput(),
    ];

void checkUnnamed6(core.List<api.Input> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInput(o[0]);
  checkInput(o[1]);
}

core.List<api.Manifest> buildUnnamed7() => [
      buildManifest(),
      buildManifest(),
    ];

void checkUnnamed7(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.List<api.MuxStream> buildUnnamed8() => [
      buildMuxStream(),
      buildMuxStream(),
    ];

void checkUnnamed8(core.List<api.MuxStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMuxStream(o[0]);
  checkMuxStream(o[1]);
}

core.List<api.Overlay> buildUnnamed9() => [
      buildOverlay(),
      buildOverlay(),
    ];

void checkUnnamed9(core.List<api.Overlay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOverlay(o[0]);
  checkOverlay(o[1]);
}

core.List<api.SpriteSheet> buildUnnamed10() => [
      buildSpriteSheet(),
      buildSpriteSheet(),
    ];

void checkUnnamed10(core.List<api.SpriteSheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpriteSheet(o[0]);
  checkSpriteSheet(o[1]);
}

core.int buildCounterJobConfig = 0;
api.JobConfig buildJobConfig() {
  final o = api.JobConfig();
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    o.adBreaks = buildUnnamed3();
    o.editList = buildUnnamed4();
    o.elementaryStreams = buildUnnamed5();
    o.inputs = buildUnnamed6();
    o.manifests = buildUnnamed7();
    o.muxStreams = buildUnnamed8();
    o.output = buildOutput();
    o.overlays = buildUnnamed9();
    o.pubsubDestination = buildPubsubDestination();
    o.spriteSheets = buildUnnamed10();
  }
  buildCounterJobConfig--;
  return o;
}

void checkJobConfig(api.JobConfig o) {
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    checkUnnamed3(o.adBreaks!);
    checkUnnamed4(o.editList!);
    checkUnnamed5(o.elementaryStreams!);
    checkUnnamed6(o.inputs!);
    checkUnnamed7(o.manifests!);
    checkUnnamed8(o.muxStreams!);
    checkOutput(o.output!);
    checkUnnamed9(o.overlays!);
    checkPubsubDestination(o.pubsubDestination!);
    checkUnnamed10(o.spriteSheets!);
  }
  buildCounterJobConfig--;
}

core.int buildCounterJobTemplate = 0;
api.JobTemplate buildJobTemplate() {
  final o = api.JobTemplate();
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    o.config = buildJobConfig();
    o.name = 'foo';
  }
  buildCounterJobTemplate--;
  return o;
}

void checkJobTemplate(api.JobTemplate o) {
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    checkJobConfig(o.config!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobTemplate--;
}

core.List<api.JobTemplate> buildUnnamed11() => [
      buildJobTemplate(),
      buildJobTemplate(),
    ];

void checkUnnamed11(core.List<api.JobTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobTemplate(o[0]);
  checkJobTemplate(o[1]);
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterListJobTemplatesResponse = 0;
api.ListJobTemplatesResponse buildListJobTemplatesResponse() {
  final o = api.ListJobTemplatesResponse();
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    o.jobTemplates = buildUnnamed11();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed12();
  }
  buildCounterListJobTemplatesResponse--;
  return o;
}

void checkListJobTemplatesResponse(api.ListJobTemplatesResponse o) {
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    checkUnnamed11(o.jobTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListJobTemplatesResponse--;
}

core.List<api.Job> buildUnnamed13() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed13(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed14();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed13(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterManifest = 0;
api.Manifest buildManifest() {
  final o = api.Manifest();
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    o.fileName = 'foo';
    o.muxStreams = buildUnnamed15();
    o.type = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.muxStreams!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterManifest--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterMuxStream = 0;
api.MuxStream buildMuxStream() {
  final o = api.MuxStream();
  buildCounterMuxStream++;
  if (buildCounterMuxStream < 3) {
    o.container = 'foo';
    o.elementaryStreams = buildUnnamed16();
    o.fileName = 'foo';
    o.key = 'foo';
    o.segmentSettings = buildSegmentSettings();
  }
  buildCounterMuxStream--;
  return o;
}

void checkMuxStream(api.MuxStream o) {
  buildCounterMuxStream++;
  if (buildCounterMuxStream < 3) {
    unittest.expect(
      o.container!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.elementaryStreams!);
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkSegmentSettings(o.segmentSettings!);
  }
  buildCounterMuxStream--;
}

core.int buildCounterNormalizedCoordinate = 0;
api.NormalizedCoordinate buildNormalizedCoordinate() {
  final o = api.NormalizedCoordinate();
  buildCounterNormalizedCoordinate++;
  if (buildCounterNormalizedCoordinate < 3) {
    o.x = 42.0;
    o.y = 42.0;
  }
  buildCounterNormalizedCoordinate--;
  return o;
}

void checkNormalizedCoordinate(api.NormalizedCoordinate o) {
  buildCounterNormalizedCoordinate++;
  if (buildCounterNormalizedCoordinate < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
  }
  buildCounterNormalizedCoordinate--;
}

core.int buildCounterOutput = 0;
api.Output buildOutput() {
  final o = api.Output();
  buildCounterOutput++;
  if (buildCounterOutput < 3) {
    o.uri = 'foo';
  }
  buildCounterOutput--;
  return o;
}

void checkOutput(api.Output o) {
  buildCounterOutput++;
  if (buildCounterOutput < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterOutput--;
}

core.List<api.Animation> buildUnnamed17() => [
      buildAnimation(),
      buildAnimation(),
    ];

void checkUnnamed17(core.List<api.Animation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnimation(o[0]);
  checkAnimation(o[1]);
}

core.int buildCounterOverlay = 0;
api.Overlay buildOverlay() {
  final o = api.Overlay();
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    o.animations = buildUnnamed17();
    o.image = buildImage();
  }
  buildCounterOverlay--;
  return o;
}

void checkOverlay(api.Overlay o) {
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    checkUnnamed17(o.animations!);
    checkImage(o.image!);
  }
  buildCounterOverlay--;
}

core.int buildCounterPad = 0;
api.Pad buildPad() {
  final o = api.Pad();
  buildCounterPad++;
  if (buildCounterPad < 3) {
    o.bottomPixels = 42;
    o.leftPixels = 42;
    o.rightPixels = 42;
    o.topPixels = 42;
  }
  buildCounterPad--;
  return o;
}

void checkPad(api.Pad o) {
  buildCounterPad++;
  if (buildCounterPad < 3) {
    unittest.expect(
      o.bottomPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.leftPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.topPixels!,
      unittest.equals(42),
    );
  }
  buildCounterPad--;
}

core.int buildCounterPreprocessingConfig = 0;
api.PreprocessingConfig buildPreprocessingConfig() {
  final o = api.PreprocessingConfig();
  buildCounterPreprocessingConfig++;
  if (buildCounterPreprocessingConfig < 3) {
    o.audio = buildAudio();
    o.color = buildColor();
    o.crop = buildCrop();
    o.deblock = buildDeblock();
    o.denoise = buildDenoise();
    o.pad = buildPad();
  }
  buildCounterPreprocessingConfig--;
  return o;
}

void checkPreprocessingConfig(api.PreprocessingConfig o) {
  buildCounterPreprocessingConfig++;
  if (buildCounterPreprocessingConfig < 3) {
    checkAudio(o.audio!);
    checkColor(o.color!);
    checkCrop(o.crop!);
    checkDeblock(o.deblock!);
    checkDenoise(o.denoise!);
    checkPad(o.pad!);
  }
  buildCounterPreprocessingConfig--;
}

core.int buildCounterPubsubDestination = 0;
api.PubsubDestination buildPubsubDestination() {
  final o = api.PubsubDestination();
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    o.topic = 'foo';
  }
  buildCounterPubsubDestination--;
  return o;
}

void checkPubsubDestination(api.PubsubDestination o) {
  buildCounterPubsubDestination++;
  if (buildCounterPubsubDestination < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubDestination--;
}

core.int buildCounterSegmentSettings = 0;
api.SegmentSettings buildSegmentSettings() {
  final o = api.SegmentSettings();
  buildCounterSegmentSettings++;
  if (buildCounterSegmentSettings < 3) {
    o.individualSegments = true;
    o.segmentDuration = 'foo';
  }
  buildCounterSegmentSettings--;
  return o;
}

void checkSegmentSettings(api.SegmentSettings o) {
  buildCounterSegmentSettings++;
  if (buildCounterSegmentSettings < 3) {
    unittest.expect(o.individualSegments!, unittest.isTrue);
    unittest.expect(
      o.segmentDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterSegmentSettings--;
}

core.int buildCounterSpriteSheet = 0;
api.SpriteSheet buildSpriteSheet() {
  final o = api.SpriteSheet();
  buildCounterSpriteSheet++;
  if (buildCounterSpriteSheet < 3) {
    o.columnCount = 42;
    o.endTimeOffset = 'foo';
    o.filePrefix = 'foo';
    o.format = 'foo';
    o.interval = 'foo';
    o.quality = 42;
    o.rowCount = 42;
    o.spriteHeightPixels = 42;
    o.spriteWidthPixels = 42;
    o.startTimeOffset = 'foo';
    o.totalCount = 42;
  }
  buildCounterSpriteSheet--;
  return o;
}

void checkSpriteSheet(api.SpriteSheet o) {
  buildCounterSpriteSheet++;
  if (buildCounterSpriteSheet < 3) {
    unittest.expect(
      o.columnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.endTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quality!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spriteHeightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spriteWidthPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTimeOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals(42),
    );
  }
  buildCounterSpriteSheet--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTextMapping = 0;
api.TextMapping buildTextMapping() {
  final o = api.TextMapping();
  buildCounterTextMapping++;
  if (buildCounterTextMapping < 3) {
    o.atomKey = 'foo';
    o.inputKey = 'foo';
    o.inputTrack = 42;
  }
  buildCounterTextMapping--;
  return o;
}

void checkTextMapping(api.TextMapping o) {
  buildCounterTextMapping++;
  if (buildCounterTextMapping < 3) {
    unittest.expect(
      o.atomKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputTrack!,
      unittest.equals(42),
    );
  }
  buildCounterTextMapping--;
}

core.List<api.TextMapping> buildUnnamed20() => [
      buildTextMapping(),
      buildTextMapping(),
    ];

void checkUnnamed20(core.List<api.TextMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextMapping(o[0]);
  checkTextMapping(o[1]);
}

core.int buildCounterTextStream = 0;
api.TextStream buildTextStream() {
  final o = api.TextStream();
  buildCounterTextStream++;
  if (buildCounterTextStream < 3) {
    o.codec = 'foo';
    o.mapping = buildUnnamed20();
  }
  buildCounterTextStream--;
  return o;
}

void checkTextStream(api.TextStream o) {
  buildCounterTextStream++;
  if (buildCounterTextStream < 3) {
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.mapping!);
  }
  buildCounterTextStream--;
}

core.int buildCounterVideoStream = 0;
api.VideoStream buildVideoStream() {
  final o = api.VideoStream();
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
    o.h264 = buildH264CodecSettings();
    o.h265 = buildH265CodecSettings();
    o.vp9 = buildVp9CodecSettings();
  }
  buildCounterVideoStream--;
  return o;
}

void checkVideoStream(api.VideoStream o) {
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
    checkH264CodecSettings(o.h264!);
    checkH265CodecSettings(o.h265!);
    checkVp9CodecSettings(o.vp9!);
  }
  buildCounterVideoStream--;
}

core.int buildCounterVp9CodecSettings = 0;
api.Vp9CodecSettings buildVp9CodecSettings() {
  final o = api.Vp9CodecSettings();
  buildCounterVp9CodecSettings++;
  if (buildCounterVp9CodecSettings < 3) {
    o.bitrateBps = 42;
    o.crfLevel = 42;
    o.frameRate = 42.0;
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.pixelFormat = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.widthPixels = 42;
  }
  buildCounterVp9CodecSettings--;
  return o;
}

void checkVp9CodecSettings(api.Vp9CodecSettings o) {
  buildCounterVp9CodecSettings++;
  if (buildCounterVp9CodecSettings < 3) {
    unittest.expect(
      o.bitrateBps!,
      unittest.equals(42),
    );
    unittest.expect(
      o.crfLevel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.frameRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.gopDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pixelFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rateControlMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterVp9CodecSettings--;
}

void main() {
  unittest.group('obj-schema-AdBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AdBreak.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAdBreak(od);
    });
  });

  unittest.group('obj-schema-Animation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnimation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Animation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnimation(od);
    });
  });

  unittest.group('obj-schema-AnimationEnd', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnimationEnd();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnimationEnd.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationEnd(od);
    });
  });

  unittest.group('obj-schema-AnimationFade', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnimationFade();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnimationFade.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationFade(od);
    });
  });

  unittest.group('obj-schema-AnimationStatic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnimationStatic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnimationStatic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnimationStatic(od);
    });
  });

  unittest.group('obj-schema-Audio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Audio.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAudio(od);
    });
  });

  unittest.group('obj-schema-AudioMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioMapping(od);
    });
  });

  unittest.group('obj-schema-AudioStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioStream(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od);
    });
  });

  unittest.group('obj-schema-Crop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Crop.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCrop(od);
    });
  });

  unittest.group('obj-schema-Deblock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeblock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Deblock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeblock(od);
    });
  });

  unittest.group('obj-schema-Denoise', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDenoise();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Denoise.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDenoise(od);
    });
  });

  unittest.group('obj-schema-EditAtom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditAtom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EditAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEditAtom(od);
    });
  });

  unittest.group('obj-schema-ElementaryStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildElementaryStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ElementaryStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkElementaryStream(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-H264CodecSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH264CodecSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H264CodecSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH264CodecSettings(od);
    });
  });

  unittest.group('obj-schema-H265CodecSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH265CodecSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H265CodecSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH265CodecSettings(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-Input', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Input.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInput(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobConfig(od);
    });
  });

  unittest.group('obj-schema-JobTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobTemplate(od);
    });
  });

  unittest.group('obj-schema-ListJobTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-Manifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Manifest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkManifest(od);
    });
  });

  unittest.group('obj-schema-MuxStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMuxStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MuxStream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMuxStream(od);
    });
  });

  unittest.group('obj-schema-NormalizedCoordinate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNormalizedCoordinate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NormalizedCoordinate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNormalizedCoordinate(od);
    });
  });

  unittest.group('obj-schema-Output', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Output.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOutput(od);
    });
  });

  unittest.group('obj-schema-Overlay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOverlay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Overlay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOverlay(od);
    });
  });

  unittest.group('obj-schema-Pad', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPad();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pad.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPad(od);
    });
  });

  unittest.group('obj-schema-PreprocessingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreprocessingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreprocessingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreprocessingConfig(od);
    });
  });

  unittest.group('obj-schema-PubsubDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubDestination(od);
    });
  });

  unittest.group('obj-schema-SegmentSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentSettings(od);
    });
  });

  unittest.group('obj-schema-SpriteSheet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpriteSheet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpriteSheet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpriteSheet(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TextMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextMapping(od);
    });
  });

  unittest.group('obj-schema-TextStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextStream.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextStream(od);
    });
  });

  unittest.group('obj-schema-VideoStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoStream(od);
    });
  });

  unittest.group('obj-schema-Vp9CodecSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVp9CodecSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vp9CodecSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVp9CodecSettings(od);
    });
  });

  unittest.group('resource-ProjectsLocationsJobTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobTemplates;
      final arg_request = buildJobTemplate();
      final arg_parent = 'foo';
      final arg_jobTemplateId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.JobTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkJobTemplate(obj);

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
          queryMap['jobTemplateId']!.first,
          unittest.equals(arg_jobTemplateId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJobTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          jobTemplateId: arg_jobTemplateId, $fields: arg_$fields);
      checkJobTemplate(response as api.JobTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobTemplates;
      final arg_name = 'foo';
      final arg_allowMissing = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobTemplates;
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
        final resp = convert.json.encode(buildJobTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJobTemplate(response as api.JobTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobTemplates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListJobTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobTemplatesResponse(response as api.ListJobTemplatesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobs;
      final arg_request = buildJob();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobs;
      final arg_name = 'foo';
      final arg_allowMissing = true;
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          allowMissing: arg_allowMissing, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobs;
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TranscoderApi(mock).projects.locations.jobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });
  });
}
