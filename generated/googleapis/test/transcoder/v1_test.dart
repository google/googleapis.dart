// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_import
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

core.int buildCounterAes128Encryption = 0;
api.Aes128Encryption buildAes128Encryption() {
  final o = api.Aes128Encryption();
  buildCounterAes128Encryption++;
  if (buildCounterAes128Encryption < 3) {}
  buildCounterAes128Encryption--;
  return o;
}

void checkAes128Encryption(api.Aes128Encryption o) {
  buildCounterAes128Encryption++;
  if (buildCounterAes128Encryption < 3) {}
  buildCounterAes128Encryption--;
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
    o.displayName = 'foo';
    o.languageCode = 'foo';
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
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

core.int buildCounterBwdifConfig = 0;
api.BwdifConfig buildBwdifConfig() {
  final o = api.BwdifConfig();
  buildCounterBwdifConfig++;
  if (buildCounterBwdifConfig < 3) {
    o.deinterlaceAllFrames = true;
    o.mode = 'foo';
    o.parity = 'foo';
  }
  buildCounterBwdifConfig--;
  return o;
}

void checkBwdifConfig(api.BwdifConfig o) {
  buildCounterBwdifConfig++;
  if (buildCounterBwdifConfig < 3) {
    unittest.expect(o.deinterlaceAllFrames!, unittest.isTrue);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parity!,
      unittest.equals('foo'),
    );
  }
  buildCounterBwdifConfig--;
}

core.int buildCounterClearkey = 0;
api.Clearkey buildClearkey() {
  final o = api.Clearkey();
  buildCounterClearkey++;
  if (buildCounterClearkey < 3) {}
  buildCounterClearkey--;
  return o;
}

void checkClearkey(api.Clearkey o) {
  buildCounterClearkey++;
  if (buildCounterClearkey < 3) {}
  buildCounterClearkey--;
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

core.int buildCounterDashConfig = 0;
api.DashConfig buildDashConfig() {
  final o = api.DashConfig();
  buildCounterDashConfig++;
  if (buildCounterDashConfig < 3) {
    o.segmentReferenceScheme = 'foo';
  }
  buildCounterDashConfig--;
  return o;
}

void checkDashConfig(api.DashConfig o) {
  buildCounterDashConfig++;
  if (buildCounterDashConfig < 3) {
    unittest.expect(
      o.segmentReferenceScheme!,
      unittest.equals('foo'),
    );
  }
  buildCounterDashConfig--;
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

core.int buildCounterDeinterlace = 0;
api.Deinterlace buildDeinterlace() {
  final o = api.Deinterlace();
  buildCounterDeinterlace++;
  if (buildCounterDeinterlace < 3) {
    o.bwdif = buildBwdifConfig();
    o.yadif = buildYadifConfig();
  }
  buildCounterDeinterlace--;
  return o;
}

void checkDeinterlace(api.Deinterlace o) {
  buildCounterDeinterlace++;
  if (buildCounterDeinterlace < 3) {
    checkBwdifConfig(o.bwdif!);
    checkYadifConfig(o.yadif!);
  }
  buildCounterDeinterlace--;
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

core.int buildCounterDrmSystems = 0;
api.DrmSystems buildDrmSystems() {
  final o = api.DrmSystems();
  buildCounterDrmSystems++;
  if (buildCounterDrmSystems < 3) {
    o.clearkey = buildClearkey();
    o.fairplay = buildFairplay();
    o.playready = buildPlayready();
    o.widevine = buildWidevine();
  }
  buildCounterDrmSystems--;
  return o;
}

void checkDrmSystems(api.DrmSystems o) {
  buildCounterDrmSystems++;
  if (buildCounterDrmSystems < 3) {
    checkClearkey(o.clearkey!);
    checkFairplay(o.fairplay!);
    checkPlayready(o.playready!);
    checkWidevine(o.widevine!);
  }
  buildCounterDrmSystems--;
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

core.int buildCounterEncryption = 0;
api.Encryption buildEncryption() {
  final o = api.Encryption();
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    o.aes128 = buildAes128Encryption();
    o.drmSystems = buildDrmSystems();
    o.id = 'foo';
    o.mpegCenc = buildMpegCommonEncryption();
    o.sampleAes = buildSampleAesEncryption();
    o.secretManagerKeySource = buildSecretManagerSource();
  }
  buildCounterEncryption--;
  return o;
}

void checkEncryption(api.Encryption o) {
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    checkAes128Encryption(o.aes128!);
    checkDrmSystems(o.drmSystems!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkMpegCommonEncryption(o.mpegCenc!);
    checkSampleAesEncryption(o.sampleAes!);
    checkSecretManagerSource(o.secretManagerKeySource!);
  }
  buildCounterEncryption--;
}

core.int buildCounterFairplay = 0;
api.Fairplay buildFairplay() {
  final o = api.Fairplay();
  buildCounterFairplay++;
  if (buildCounterFairplay < 3) {}
  buildCounterFairplay--;
  return o;
}

void checkFairplay(api.Fairplay o) {
  buildCounterFairplay++;
  if (buildCounterFairplay < 3) {}
  buildCounterFairplay--;
}

core.int buildCounterFmp4Config = 0;
api.Fmp4Config buildFmp4Config() {
  final o = api.Fmp4Config();
  buildCounterFmp4Config++;
  if (buildCounterFmp4Config < 3) {
    o.codecTag = 'foo';
  }
  buildCounterFmp4Config--;
  return o;
}

void checkFmp4Config(api.Fmp4Config o) {
  buildCounterFmp4Config++;
  if (buildCounterFmp4Config < 3) {
    unittest.expect(
      o.codecTag!,
      unittest.equals('foo'),
    );
  }
  buildCounterFmp4Config--;
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
    o.frameRateConversionStrategy = 'foo';
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.hlg = buildH264ColorFormatHLG();
    o.pixelFormat = 'foo';
    o.preset = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.sdr = buildH264ColorFormatSDR();
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
      o.frameRateConversionStrategy!,
      unittest.equals('foo'),
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
    checkH264ColorFormatHLG(o.hlg!);
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
    checkH264ColorFormatSDR(o.sdr!);
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

core.int buildCounterH264ColorFormatHLG = 0;
api.H264ColorFormatHLG buildH264ColorFormatHLG() {
  final o = api.H264ColorFormatHLG();
  buildCounterH264ColorFormatHLG++;
  if (buildCounterH264ColorFormatHLG < 3) {}
  buildCounterH264ColorFormatHLG--;
  return o;
}

void checkH264ColorFormatHLG(api.H264ColorFormatHLG o) {
  buildCounterH264ColorFormatHLG++;
  if (buildCounterH264ColorFormatHLG < 3) {}
  buildCounterH264ColorFormatHLG--;
}

core.int buildCounterH264ColorFormatSDR = 0;
api.H264ColorFormatSDR buildH264ColorFormatSDR() {
  final o = api.H264ColorFormatSDR();
  buildCounterH264ColorFormatSDR++;
  if (buildCounterH264ColorFormatSDR < 3) {}
  buildCounterH264ColorFormatSDR--;
  return o;
}

void checkH264ColorFormatSDR(api.H264ColorFormatSDR o) {
  buildCounterH264ColorFormatSDR++;
  if (buildCounterH264ColorFormatSDR < 3) {}
  buildCounterH264ColorFormatSDR--;
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
    o.frameRateConversionStrategy = 'foo';
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.hdr10 = buildH265ColorFormatHDR10();
    o.heightPixels = 42;
    o.hlg = buildH265ColorFormatHLG();
    o.pixelFormat = 'foo';
    o.preset = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.sdr = buildH265ColorFormatSDR();
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
      o.frameRateConversionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gopFrameCount!,
      unittest.equals(42),
    );
    checkH265ColorFormatHDR10(o.hdr10!);
    unittest.expect(
      o.heightPixels!,
      unittest.equals(42),
    );
    checkH265ColorFormatHLG(o.hlg!);
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
    checkH265ColorFormatSDR(o.sdr!);
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

core.int buildCounterH265ColorFormatHDR10 = 0;
api.H265ColorFormatHDR10 buildH265ColorFormatHDR10() {
  final o = api.H265ColorFormatHDR10();
  buildCounterH265ColorFormatHDR10++;
  if (buildCounterH265ColorFormatHDR10 < 3) {}
  buildCounterH265ColorFormatHDR10--;
  return o;
}

void checkH265ColorFormatHDR10(api.H265ColorFormatHDR10 o) {
  buildCounterH265ColorFormatHDR10++;
  if (buildCounterH265ColorFormatHDR10 < 3) {}
  buildCounterH265ColorFormatHDR10--;
}

core.int buildCounterH265ColorFormatHLG = 0;
api.H265ColorFormatHLG buildH265ColorFormatHLG() {
  final o = api.H265ColorFormatHLG();
  buildCounterH265ColorFormatHLG++;
  if (buildCounterH265ColorFormatHLG < 3) {}
  buildCounterH265ColorFormatHLG--;
  return o;
}

void checkH265ColorFormatHLG(api.H265ColorFormatHLG o) {
  buildCounterH265ColorFormatHLG++;
  if (buildCounterH265ColorFormatHLG < 3) {}
  buildCounterH265ColorFormatHLG--;
}

core.int buildCounterH265ColorFormatSDR = 0;
api.H265ColorFormatSDR buildH265ColorFormatSDR() {
  final o = api.H265ColorFormatSDR();
  buildCounterH265ColorFormatSDR++;
  if (buildCounterH265ColorFormatSDR < 3) {}
  buildCounterH265ColorFormatSDR--;
  return o;
}

void checkH265ColorFormatSDR(api.H265ColorFormatSDR o) {
  buildCounterH265ColorFormatSDR++;
  if (buildCounterH265ColorFormatSDR < 3) {}
  buildCounterH265ColorFormatSDR--;
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

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.batchModePriority = 42;
    o.config = buildJobConfig();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.inputUri = 'foo';
    o.labels = buildUnnamed3();
    o.mode = 'foo';
    o.name = 'foo';
    o.optimization = 'foo';
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
    unittest.expect(
      o.batchModePriority!,
      unittest.equals(42),
    );
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
    checkUnnamed3(o.labels!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.optimization!,
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

core.List<api.AdBreak> buildUnnamed4() => [
      buildAdBreak(),
      buildAdBreak(),
    ];

void checkUnnamed4(core.List<api.AdBreak> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdBreak(o[0]);
  checkAdBreak(o[1]);
}

core.List<api.EditAtom> buildUnnamed5() => [
      buildEditAtom(),
      buildEditAtom(),
    ];

void checkUnnamed5(core.List<api.EditAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditAtom(o[0]);
  checkEditAtom(o[1]);
}

core.List<api.ElementaryStream> buildUnnamed6() => [
      buildElementaryStream(),
      buildElementaryStream(),
    ];

void checkUnnamed6(core.List<api.ElementaryStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElementaryStream(o[0]);
  checkElementaryStream(o[1]);
}

core.List<api.Encryption> buildUnnamed7() => [
      buildEncryption(),
      buildEncryption(),
    ];

void checkUnnamed7(core.List<api.Encryption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryption(o[0]);
  checkEncryption(o[1]);
}

core.List<api.Input> buildUnnamed8() => [
      buildInput(),
      buildInput(),
    ];

void checkUnnamed8(core.List<api.Input> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInput(o[0]);
  checkInput(o[1]);
}

core.List<api.Manifest> buildUnnamed9() => [
      buildManifest(),
      buildManifest(),
    ];

void checkUnnamed9(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.List<api.MuxStream> buildUnnamed10() => [
      buildMuxStream(),
      buildMuxStream(),
    ];

void checkUnnamed10(core.List<api.MuxStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMuxStream(o[0]);
  checkMuxStream(o[1]);
}

core.List<api.Overlay> buildUnnamed11() => [
      buildOverlay(),
      buildOverlay(),
    ];

void checkUnnamed11(core.List<api.Overlay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOverlay(o[0]);
  checkOverlay(o[1]);
}

core.List<api.SpriteSheet> buildUnnamed12() => [
      buildSpriteSheet(),
      buildSpriteSheet(),
    ];

void checkUnnamed12(core.List<api.SpriteSheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpriteSheet(o[0]);
  checkSpriteSheet(o[1]);
}

core.int buildCounterJobConfig = 0;
api.JobConfig buildJobConfig() {
  final o = api.JobConfig();
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    o.adBreaks = buildUnnamed4();
    o.editList = buildUnnamed5();
    o.elementaryStreams = buildUnnamed6();
    o.encryptions = buildUnnamed7();
    o.inputs = buildUnnamed8();
    o.manifests = buildUnnamed9();
    o.muxStreams = buildUnnamed10();
    o.output = buildOutput();
    o.overlays = buildUnnamed11();
    o.pubsubDestination = buildPubsubDestination();
    o.spriteSheets = buildUnnamed12();
  }
  buildCounterJobConfig--;
  return o;
}

void checkJobConfig(api.JobConfig o) {
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    checkUnnamed4(o.adBreaks!);
    checkUnnamed5(o.editList!);
    checkUnnamed6(o.elementaryStreams!);
    checkUnnamed7(o.encryptions!);
    checkUnnamed8(o.inputs!);
    checkUnnamed9(o.manifests!);
    checkUnnamed10(o.muxStreams!);
    checkOutput(o.output!);
    checkUnnamed11(o.overlays!);
    checkPubsubDestination(o.pubsubDestination!);
    checkUnnamed12(o.spriteSheets!);
  }
  buildCounterJobConfig--;
}

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.int buildCounterJobTemplate = 0;
api.JobTemplate buildJobTemplate() {
  final o = api.JobTemplate();
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    o.config = buildJobConfig();
    o.labels = buildUnnamed13();
    o.name = 'foo';
  }
  buildCounterJobTemplate--;
  return o;
}

void checkJobTemplate(api.JobTemplate o) {
  buildCounterJobTemplate++;
  if (buildCounterJobTemplate < 3) {
    checkJobConfig(o.config!);
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobTemplate--;
}

core.List<api.JobTemplate> buildUnnamed14() => [
      buildJobTemplate(),
      buildJobTemplate(),
    ];

void checkUnnamed14(core.List<api.JobTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobTemplate(o[0]);
  checkJobTemplate(o[1]);
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

core.int buildCounterListJobTemplatesResponse = 0;
api.ListJobTemplatesResponse buildListJobTemplatesResponse() {
  final o = api.ListJobTemplatesResponse();
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    o.jobTemplates = buildUnnamed14();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed15();
  }
  buildCounterListJobTemplatesResponse--;
  return o;
}

void checkListJobTemplatesResponse(api.ListJobTemplatesResponse o) {
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    checkUnnamed14(o.jobTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.unreachable!);
  }
  buildCounterListJobTemplatesResponse--;
}

core.List<api.Job> buildUnnamed16() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed16(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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
    o.jobs = buildUnnamed16();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed17();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed16(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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
    o.dash = buildDashConfig();
    o.fileName = 'foo';
    o.muxStreams = buildUnnamed18();
    o.type = 'foo';
  }
  buildCounterManifest--;
  return o;
}

void checkManifest(api.Manifest o) {
  buildCounterManifest++;
  if (buildCounterManifest < 3) {
    checkDashConfig(o.dash!);
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.muxStreams!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterManifest--;
}

core.int buildCounterMpegCommonEncryption = 0;
api.MpegCommonEncryption buildMpegCommonEncryption() {
  final o = api.MpegCommonEncryption();
  buildCounterMpegCommonEncryption++;
  if (buildCounterMpegCommonEncryption < 3) {
    o.scheme = 'foo';
  }
  buildCounterMpegCommonEncryption--;
  return o;
}

void checkMpegCommonEncryption(api.MpegCommonEncryption o) {
  buildCounterMpegCommonEncryption++;
  if (buildCounterMpegCommonEncryption < 3) {
    unittest.expect(
      o.scheme!,
      unittest.equals('foo'),
    );
  }
  buildCounterMpegCommonEncryption--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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
    o.elementaryStreams = buildUnnamed19();
    o.encryptionId = 'foo';
    o.fileName = 'foo';
    o.fmp4 = buildFmp4Config();
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
    checkUnnamed19(o.elementaryStreams!);
    unittest.expect(
      o.encryptionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    checkFmp4Config(o.fmp4!);
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

core.List<api.Animation> buildUnnamed20() => [
      buildAnimation(),
      buildAnimation(),
    ];

void checkUnnamed20(core.List<api.Animation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnimation(o[0]);
  checkAnimation(o[1]);
}

core.int buildCounterOverlay = 0;
api.Overlay buildOverlay() {
  final o = api.Overlay();
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    o.animations = buildUnnamed20();
    o.image = buildImage();
  }
  buildCounterOverlay--;
  return o;
}

void checkOverlay(api.Overlay o) {
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    checkUnnamed20(o.animations!);
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

core.int buildCounterPlayready = 0;
api.Playready buildPlayready() {
  final o = api.Playready();
  buildCounterPlayready++;
  if (buildCounterPlayready < 3) {}
  buildCounterPlayready--;
  return o;
}

void checkPlayready(api.Playready o) {
  buildCounterPlayready++;
  if (buildCounterPlayready < 3) {}
  buildCounterPlayready--;
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
    o.deinterlace = buildDeinterlace();
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
    checkDeinterlace(o.deinterlace!);
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

core.int buildCounterSampleAesEncryption = 0;
api.SampleAesEncryption buildSampleAesEncryption() {
  final o = api.SampleAesEncryption();
  buildCounterSampleAesEncryption++;
  if (buildCounterSampleAesEncryption < 3) {}
  buildCounterSampleAesEncryption--;
  return o;
}

void checkSampleAesEncryption(api.SampleAesEncryption o) {
  buildCounterSampleAesEncryption++;
  if (buildCounterSampleAesEncryption < 3) {}
  buildCounterSampleAesEncryption--;
}

core.int buildCounterSecretManagerSource = 0;
api.SecretManagerSource buildSecretManagerSource() {
  final o = api.SecretManagerSource();
  buildCounterSecretManagerSource++;
  if (buildCounterSecretManagerSource < 3) {
    o.secretVersion = 'foo';
  }
  buildCounterSecretManagerSource--;
  return o;
}

void checkSecretManagerSource(api.SecretManagerSource o) {
  buildCounterSecretManagerSource++;
  if (buildCounterSecretManagerSource < 3) {
    unittest.expect(
      o.secretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretManagerSource--;
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

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed22() => [
      buildUnnamed21(),
      buildUnnamed21(),
    ];

void checkUnnamed22(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed21(o[0]);
  checkUnnamed21(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed22();
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
    checkUnnamed22(o.details!);
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

core.List<api.TextMapping> buildUnnamed23() => [
      buildTextMapping(),
      buildTextMapping(),
    ];

void checkUnnamed23(core.List<api.TextMapping> o) {
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
    o.displayName = 'foo';
    o.languageCode = 'foo';
    o.mapping = buildUnnamed23();
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.mapping!);
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
    o.frameRateConversionStrategy = 'foo';
    o.gopDuration = 'foo';
    o.gopFrameCount = 42;
    o.heightPixels = 42;
    o.hlg = buildVp9ColorFormatHLG();
    o.pixelFormat = 'foo';
    o.profile = 'foo';
    o.rateControlMode = 'foo';
    o.sdr = buildVp9ColorFormatSDR();
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
      o.frameRateConversionStrategy!,
      unittest.equals('foo'),
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
    checkVp9ColorFormatHLG(o.hlg!);
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
    checkVp9ColorFormatSDR(o.sdr!);
    unittest.expect(
      o.widthPixels!,
      unittest.equals(42),
    );
  }
  buildCounterVp9CodecSettings--;
}

core.int buildCounterVp9ColorFormatHLG = 0;
api.Vp9ColorFormatHLG buildVp9ColorFormatHLG() {
  final o = api.Vp9ColorFormatHLG();
  buildCounterVp9ColorFormatHLG++;
  if (buildCounterVp9ColorFormatHLG < 3) {}
  buildCounterVp9ColorFormatHLG--;
  return o;
}

void checkVp9ColorFormatHLG(api.Vp9ColorFormatHLG o) {
  buildCounterVp9ColorFormatHLG++;
  if (buildCounterVp9ColorFormatHLG < 3) {}
  buildCounterVp9ColorFormatHLG--;
}

core.int buildCounterVp9ColorFormatSDR = 0;
api.Vp9ColorFormatSDR buildVp9ColorFormatSDR() {
  final o = api.Vp9ColorFormatSDR();
  buildCounterVp9ColorFormatSDR++;
  if (buildCounterVp9ColorFormatSDR < 3) {}
  buildCounterVp9ColorFormatSDR--;
  return o;
}

void checkVp9ColorFormatSDR(api.Vp9ColorFormatSDR o) {
  buildCounterVp9ColorFormatSDR++;
  if (buildCounterVp9ColorFormatSDR < 3) {}
  buildCounterVp9ColorFormatSDR--;
}

core.int buildCounterWidevine = 0;
api.Widevine buildWidevine() {
  final o = api.Widevine();
  buildCounterWidevine++;
  if (buildCounterWidevine < 3) {}
  buildCounterWidevine--;
  return o;
}

void checkWidevine(api.Widevine o) {
  buildCounterWidevine++;
  if (buildCounterWidevine < 3) {}
  buildCounterWidevine--;
}

core.int buildCounterYadifConfig = 0;
api.YadifConfig buildYadifConfig() {
  final o = api.YadifConfig();
  buildCounterYadifConfig++;
  if (buildCounterYadifConfig < 3) {
    o.deinterlaceAllFrames = true;
    o.disableSpatialInterlacing = true;
    o.mode = 'foo';
    o.parity = 'foo';
  }
  buildCounterYadifConfig--;
  return o;
}

void checkYadifConfig(api.YadifConfig o) {
  buildCounterYadifConfig++;
  if (buildCounterYadifConfig < 3) {
    unittest.expect(o.deinterlaceAllFrames!, unittest.isTrue);
    unittest.expect(o.disableSpatialInterlacing!, unittest.isTrue);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parity!,
      unittest.equals('foo'),
    );
  }
  buildCounterYadifConfig--;
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

  unittest.group('obj-schema-Aes128Encryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAes128Encryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aes128Encryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAes128Encryption(od);
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

  unittest.group('obj-schema-BwdifConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBwdifConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BwdifConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBwdifConfig(od);
    });
  });

  unittest.group('obj-schema-Clearkey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearkey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Clearkey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkClearkey(od);
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

  unittest.group('obj-schema-DashConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDashConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DashConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDashConfig(od);
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

  unittest.group('obj-schema-Deinterlace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeinterlace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deinterlace.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeinterlace(od);
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

  unittest.group('obj-schema-DrmSystems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDrmSystems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DrmSystems.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDrmSystems(od);
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

  unittest.group('obj-schema-Encryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Encryption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEncryption(od);
    });
  });

  unittest.group('obj-schema-Fairplay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFairplay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Fairplay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFairplay(od);
    });
  });

  unittest.group('obj-schema-Fmp4Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFmp4Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Fmp4Config.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFmp4Config(od);
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

  unittest.group('obj-schema-H264ColorFormatHLG', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH264ColorFormatHLG();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H264ColorFormatHLG.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH264ColorFormatHLG(od);
    });
  });

  unittest.group('obj-schema-H264ColorFormatSDR', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH264ColorFormatSDR();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H264ColorFormatSDR.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH264ColorFormatSDR(od);
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

  unittest.group('obj-schema-H265ColorFormatHDR10', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH265ColorFormatHDR10();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H265ColorFormatHDR10.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH265ColorFormatHDR10(od);
    });
  });

  unittest.group('obj-schema-H265ColorFormatHLG', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH265ColorFormatHLG();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H265ColorFormatHLG.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH265ColorFormatHLG(od);
    });
  });

  unittest.group('obj-schema-H265ColorFormatSDR', () {
    unittest.test('to-json--from-json', () async {
      final o = buildH265ColorFormatSDR();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.H265ColorFormatSDR.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkH265ColorFormatSDR(od);
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

  unittest.group('obj-schema-MpegCommonEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMpegCommonEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MpegCommonEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMpegCommonEncryption(od);
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

  unittest.group('obj-schema-Playready', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlayready();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Playready.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlayready(od);
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

  unittest.group('obj-schema-SampleAesEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSampleAesEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SampleAesEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSampleAesEncryption(od);
    });
  });

  unittest.group('obj-schema-SecretManagerSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretManagerSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretManagerSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretManagerSource(od);
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

  unittest.group('obj-schema-Vp9ColorFormatHLG', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVp9ColorFormatHLG();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vp9ColorFormatHLG.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVp9ColorFormatHLG(od);
    });
  });

  unittest.group('obj-schema-Vp9ColorFormatSDR', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVp9ColorFormatSDR();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vp9ColorFormatSDR.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVp9ColorFormatSDR(od);
    });
  });

  unittest.group('obj-schema-Widevine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidevine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Widevine.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWidevine(od);
    });
  });

  unittest.group('obj-schema-YadifConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYadifConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YadifConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYadifConfig(od);
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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

        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
        final path = req.url.path;
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

        final query = req.url.query;
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
