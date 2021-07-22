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

import 'package:googleapis_beta/transcoder/v1beta1.dart' as api;
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
  if (buildCounterAes128Encryption < 3) {
    o.keyUri = 'foo';
  }
  buildCounterAes128Encryption--;
  return o;
}

void checkAes128Encryption(api.Aes128Encryption o) {
  buildCounterAes128Encryption++;
  if (buildCounterAes128Encryption < 3) {
    unittest.expect(
      o.keyUri!,
      unittest.equals('foo'),
    );
  }
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

core.List<api.AudioChannel> buildUnnamed8520() => [
      buildAudioChannel(),
      buildAudioChannel(),
    ];

void checkUnnamed8520(core.List<api.AudioChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioChannel(o[0]);
  checkAudioChannel(o[1]);
}

core.int buildCounterAudioAtom = 0;
api.AudioAtom buildAudioAtom() {
  final o = api.AudioAtom();
  buildCounterAudioAtom++;
  if (buildCounterAudioAtom < 3) {
    o.channels = buildUnnamed8520();
    o.key = 'foo';
  }
  buildCounterAudioAtom--;
  return o;
}

void checkAudioAtom(api.AudioAtom o) {
  buildCounterAudioAtom++;
  if (buildCounterAudioAtom < 3) {
    checkUnnamed8520(o.channels!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterAudioAtom--;
}

core.List<api.AudioChannelInput> buildUnnamed8521() => [
      buildAudioChannelInput(),
      buildAudioChannelInput(),
    ];

void checkUnnamed8521(core.List<api.AudioChannelInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioChannelInput(o[0]);
  checkAudioChannelInput(o[1]);
}

core.int buildCounterAudioChannel = 0;
api.AudioChannel buildAudioChannel() {
  final o = api.AudioChannel();
  buildCounterAudioChannel++;
  if (buildCounterAudioChannel < 3) {
    o.inputs = buildUnnamed8521();
  }
  buildCounterAudioChannel--;
  return o;
}

void checkAudioChannel(api.AudioChannel o) {
  buildCounterAudioChannel++;
  if (buildCounterAudioChannel < 3) {
    checkUnnamed8521(o.inputs!);
  }
  buildCounterAudioChannel--;
}

core.int buildCounterAudioChannelInput = 0;
api.AudioChannelInput buildAudioChannelInput() {
  final o = api.AudioChannelInput();
  buildCounterAudioChannelInput++;
  if (buildCounterAudioChannelInput < 3) {
    o.channel = 42;
    o.gainDb = 42.0;
    o.key = 'foo';
    o.track = 42;
  }
  buildCounterAudioChannelInput--;
  return o;
}

void checkAudioChannelInput(api.AudioChannelInput o) {
  buildCounterAudioChannelInput++;
  if (buildCounterAudioChannelInput < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.gainDb!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.track!,
      unittest.equals(42),
    );
  }
  buildCounterAudioChannelInput--;
}

core.List<core.String> buildUnnamed8522() => [
      'foo',
      'foo',
    ];

void checkUnnamed8522(core.List<core.String> o) {
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

core.List<api.AudioAtom> buildUnnamed8523() => [
      buildAudioAtom(),
      buildAudioAtom(),
    ];

void checkUnnamed8523(core.List<api.AudioAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudioAtom(o[0]);
  checkAudioAtom(o[1]);
}

core.int buildCounterAudioStream = 0;
api.AudioStream buildAudioStream() {
  final o = api.AudioStream();
  buildCounterAudioStream++;
  if (buildCounterAudioStream < 3) {
    o.bitrateBps = 42;
    o.channelCount = 42;
    o.channelLayout = buildUnnamed8522();
    o.codec = 'foo';
    o.mapping = buildUnnamed8523();
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
    checkUnnamed8522(o.channelLayout!);
    unittest.expect(
      o.codec!,
      unittest.equals('foo'),
    );
    checkUnnamed8523(o.mapping!);
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

core.List<core.String> buildUnnamed8524() => [
      'foo',
      'foo',
    ];

void checkUnnamed8524(core.List<core.String> o) {
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
    o.inputs = buildUnnamed8524();
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
    checkUnnamed8524(o.inputs!);
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
    o.iv = 'foo';
    o.key = 'foo';
    o.mpegCenc = buildMpegCommonEncryption();
    o.sampleAes = buildSampleAesEncryption();
  }
  buildCounterEncryption--;
  return o;
}

void checkEncryption(api.Encryption o) {
  buildCounterEncryption++;
  if (buildCounterEncryption < 3) {
    checkAes128Encryption(o.aes128!);
    unittest.expect(
      o.iv!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkMpegCommonEncryption(o.mpegCenc!);
    checkSampleAesEncryption(o.sampleAes!);
  }
  buildCounterEncryption--;
}

core.int buildCounterFailureDetail = 0;
api.FailureDetail buildFailureDetail() {
  final o = api.FailureDetail();
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    o.description = 'foo';
  }
  buildCounterFailureDetail--;
  return o;
}

void checkFailureDetail(api.FailureDetail o) {
  buildCounterFailureDetail++;
  if (buildCounterFailureDetail < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailureDetail--;
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

core.List<api.FailureDetail> buildUnnamed8525() => [
      buildFailureDetail(),
      buildFailureDetail(),
    ];

void checkUnnamed8525(core.List<api.FailureDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailureDetail(o[0]);
  checkFailureDetail(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.config = buildJobConfig();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.failureDetails = buildUnnamed8525();
    o.failureReason = 'foo';
    o.inputUri = 'foo';
    o.name = 'foo';
    o.originUri = buildOriginUri();
    o.outputUri = 'foo';
    o.priority = 42;
    o.progress = buildProgress();
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
    checkUnnamed8525(o.failureDetails!);
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOriginUri(o.originUri!);
    unittest.expect(
      o.outputUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    checkProgress(o.progress!);
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

core.List<api.AdBreak> buildUnnamed8526() => [
      buildAdBreak(),
      buildAdBreak(),
    ];

void checkUnnamed8526(core.List<api.AdBreak> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdBreak(o[0]);
  checkAdBreak(o[1]);
}

core.List<api.EditAtom> buildUnnamed8527() => [
      buildEditAtom(),
      buildEditAtom(),
    ];

void checkUnnamed8527(core.List<api.EditAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditAtom(o[0]);
  checkEditAtom(o[1]);
}

core.List<api.ElementaryStream> buildUnnamed8528() => [
      buildElementaryStream(),
      buildElementaryStream(),
    ];

void checkUnnamed8528(core.List<api.ElementaryStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkElementaryStream(o[0]);
  checkElementaryStream(o[1]);
}

core.List<api.Input> buildUnnamed8529() => [
      buildInput(),
      buildInput(),
    ];

void checkUnnamed8529(core.List<api.Input> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInput(o[0]);
  checkInput(o[1]);
}

core.List<api.Manifest> buildUnnamed8530() => [
      buildManifest(),
      buildManifest(),
    ];

void checkUnnamed8530(core.List<api.Manifest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManifest(o[0]);
  checkManifest(o[1]);
}

core.List<api.MuxStream> buildUnnamed8531() => [
      buildMuxStream(),
      buildMuxStream(),
    ];

void checkUnnamed8531(core.List<api.MuxStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMuxStream(o[0]);
  checkMuxStream(o[1]);
}

core.List<api.Overlay> buildUnnamed8532() => [
      buildOverlay(),
      buildOverlay(),
    ];

void checkUnnamed8532(core.List<api.Overlay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOverlay(o[0]);
  checkOverlay(o[1]);
}

core.List<api.SpriteSheet> buildUnnamed8533() => [
      buildSpriteSheet(),
      buildSpriteSheet(),
    ];

void checkUnnamed8533(core.List<api.SpriteSheet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpriteSheet(o[0]);
  checkSpriteSheet(o[1]);
}

core.int buildCounterJobConfig = 0;
api.JobConfig buildJobConfig() {
  final o = api.JobConfig();
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    o.adBreaks = buildUnnamed8526();
    o.editList = buildUnnamed8527();
    o.elementaryStreams = buildUnnamed8528();
    o.inputs = buildUnnamed8529();
    o.manifests = buildUnnamed8530();
    o.muxStreams = buildUnnamed8531();
    o.output = buildOutput();
    o.overlays = buildUnnamed8532();
    o.pubsubDestination = buildPubsubDestination();
    o.spriteSheets = buildUnnamed8533();
  }
  buildCounterJobConfig--;
  return o;
}

void checkJobConfig(api.JobConfig o) {
  buildCounterJobConfig++;
  if (buildCounterJobConfig < 3) {
    checkUnnamed8526(o.adBreaks!);
    checkUnnamed8527(o.editList!);
    checkUnnamed8528(o.elementaryStreams!);
    checkUnnamed8529(o.inputs!);
    checkUnnamed8530(o.manifests!);
    checkUnnamed8531(o.muxStreams!);
    checkOutput(o.output!);
    checkUnnamed8532(o.overlays!);
    checkPubsubDestination(o.pubsubDestination!);
    checkUnnamed8533(o.spriteSheets!);
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

core.List<api.JobTemplate> buildUnnamed8534() => [
      buildJobTemplate(),
      buildJobTemplate(),
    ];

void checkUnnamed8534(core.List<api.JobTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobTemplate(o[0]);
  checkJobTemplate(o[1]);
}

core.int buildCounterListJobTemplatesResponse = 0;
api.ListJobTemplatesResponse buildListJobTemplatesResponse() {
  final o = api.ListJobTemplatesResponse();
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    o.jobTemplates = buildUnnamed8534();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobTemplatesResponse--;
  return o;
}

void checkListJobTemplatesResponse(api.ListJobTemplatesResponse o) {
  buildCounterListJobTemplatesResponse++;
  if (buildCounterListJobTemplatesResponse < 3) {
    checkUnnamed8534(o.jobTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobTemplatesResponse--;
}

core.List<api.Job> buildUnnamed8535() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed8535(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed8535();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed8535(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<core.String> buildUnnamed8536() => [
      'foo',
      'foo',
    ];

void checkUnnamed8536(core.List<core.String> o) {
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
    o.muxStreams = buildUnnamed8536();
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
    checkUnnamed8536(o.muxStreams!);
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
    o.keyId = 'foo';
    o.scheme = 'foo';
  }
  buildCounterMpegCommonEncryption--;
  return o;
}

void checkMpegCommonEncryption(api.MpegCommonEncryption o) {
  buildCounterMpegCommonEncryption++;
  if (buildCounterMpegCommonEncryption < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheme!,
      unittest.equals('foo'),
    );
  }
  buildCounterMpegCommonEncryption--;
}

core.List<core.String> buildUnnamed8537() => [
      'foo',
      'foo',
    ];

void checkUnnamed8537(core.List<core.String> o) {
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
    o.elementaryStreams = buildUnnamed8537();
    o.encryption = buildEncryption();
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
    checkUnnamed8537(o.elementaryStreams!);
    checkEncryption(o.encryption!);
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

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  final o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.cancelRequested = true;
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.statusDetail = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cancelRequested!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusDetail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOriginUri = 0;
api.OriginUri buildOriginUri() {
  final o = api.OriginUri();
  buildCounterOriginUri++;
  if (buildCounterOriginUri < 3) {
    o.dash = 'foo';
    o.hls = 'foo';
  }
  buildCounterOriginUri--;
  return o;
}

void checkOriginUri(api.OriginUri o) {
  buildCounterOriginUri++;
  if (buildCounterOriginUri < 3) {
    unittest.expect(
      o.dash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hls!,
      unittest.equals('foo'),
    );
  }
  buildCounterOriginUri--;
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

core.List<api.Animation> buildUnnamed8538() => [
      buildAnimation(),
      buildAnimation(),
    ];

void checkUnnamed8538(core.List<api.Animation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnimation(o[0]);
  checkAnimation(o[1]);
}

core.int buildCounterOverlay = 0;
api.Overlay buildOverlay() {
  final o = api.Overlay();
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    o.animations = buildUnnamed8538();
    o.image = buildImage();
  }
  buildCounterOverlay--;
  return o;
}

void checkOverlay(api.Overlay o) {
  buildCounterOverlay++;
  if (buildCounterOverlay < 3) {
    checkUnnamed8538(o.animations!);
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

core.int buildCounterProgress = 0;
api.Progress buildProgress() {
  final o = api.Progress();
  buildCounterProgress++;
  if (buildCounterProgress < 3) {
    o.analyzed = 42.0;
    o.encoded = 42.0;
    o.notified = 42.0;
    o.uploaded = 42.0;
  }
  buildCounterProgress--;
  return o;
}

void checkProgress(api.Progress o) {
  buildCounterProgress++;
  if (buildCounterProgress < 3) {
    unittest.expect(
      o.analyzed!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.encoded!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.notified!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.uploaded!,
      unittest.equals(42.0),
    );
  }
  buildCounterProgress--;
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
  if (buildCounterSampleAesEncryption < 3) {
    o.keyUri = 'foo';
  }
  buildCounterSampleAesEncryption--;
  return o;
}

void checkSampleAesEncryption(api.SampleAesEncryption o) {
  buildCounterSampleAesEncryption++;
  if (buildCounterSampleAesEncryption < 3) {
    unittest.expect(
      o.keyUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSampleAesEncryption--;
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

core.List<api.TextInput> buildUnnamed8539() => [
      buildTextInput(),
      buildTextInput(),
    ];

void checkUnnamed8539(core.List<api.TextInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextInput(o[0]);
  checkTextInput(o[1]);
}

core.int buildCounterTextAtom = 0;
api.TextAtom buildTextAtom() {
  final o = api.TextAtom();
  buildCounterTextAtom++;
  if (buildCounterTextAtom < 3) {
    o.inputs = buildUnnamed8539();
    o.key = 'foo';
  }
  buildCounterTextAtom--;
  return o;
}

void checkTextAtom(api.TextAtom o) {
  buildCounterTextAtom++;
  if (buildCounterTextAtom < 3) {
    checkUnnamed8539(o.inputs!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextAtom--;
}

core.int buildCounterTextInput = 0;
api.TextInput buildTextInput() {
  final o = api.TextInput();
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    o.key = 'foo';
    o.track = 42;
  }
  buildCounterTextInput--;
  return o;
}

void checkTextInput(api.TextInput o) {
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.track!,
      unittest.equals(42),
    );
  }
  buildCounterTextInput--;
}

core.List<api.TextAtom> buildUnnamed8540() => [
      buildTextAtom(),
      buildTextAtom(),
    ];

void checkUnnamed8540(core.List<api.TextAtom> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextAtom(o[0]);
  checkTextAtom(o[1]);
}

core.int buildCounterTextStream = 0;
api.TextStream buildTextStream() {
  final o = api.TextStream();
  buildCounterTextStream++;
  if (buildCounterTextStream < 3) {
    o.codec = 'foo';
    o.languageCode = 'foo';
    o.mapping = buildUnnamed8540();
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
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkUnnamed8540(o.mapping!);
  }
  buildCounterTextStream--;
}

core.int buildCounterVideoStream = 0;
api.VideoStream buildVideoStream() {
  final o = api.VideoStream();
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
    o.allowOpenGop = true;
    o.aqStrength = 42.0;
    o.bFrameCount = 42;
    o.bPyramid = true;
    o.bitrateBps = 42;
    o.codec = 'foo';
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
  buildCounterVideoStream--;
  return o;
}

void checkVideoStream(api.VideoStream o) {
  buildCounterVideoStream++;
  if (buildCounterVideoStream < 3) {
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
      o.codec!,
      unittest.equals('foo'),
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
  buildCounterVideoStream--;
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

  unittest.group('obj-schema-AudioAtom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioAtom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AudioAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAudioAtom(od);
    });
  });

  unittest.group('obj-schema-AudioChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioChannel(od);
    });
  });

  unittest.group('obj-schema-AudioChannelInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudioChannelInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudioChannelInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAudioChannelInput(od);
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

  unittest.group('obj-schema-Encryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Encryption.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEncryption(od);
    });
  });

  unittest.group('obj-schema-FailureDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailureDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailureDetail(od);
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

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-OriginUri', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOriginUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OriginUri.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOriginUri(od);
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

  unittest.group('obj-schema-Progress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Progress.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProgress(od);
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

  unittest.group('obj-schema-TextAtom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextAtom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextAtom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextAtom(od);
    });
  });

  unittest.group('obj-schema-TextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextInput.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextInput(od);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListJobTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });
  });
}
