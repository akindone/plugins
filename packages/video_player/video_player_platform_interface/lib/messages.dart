// Autogenerated from Pigeon (v0.1.0-experimental.11), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
import 'dart:async';
import 'package:flutter/services.dart';

class TextureMessage {
  int textureId;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    return pigeonMap;
  }

  // ignore: unused_element
  static TextureMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final TextureMessage result = TextureMessage();
    result.textureId = pigeonMap['textureId'];
    return result;
  }
}

class CreateMessage {
  String asset;
  String uri;
  String packageName;
  String formatHint;
  double timeout;
  double outPutChangeIntervalSecond;

  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['asset'] = asset;
    pigeonMap['uri'] = uri;
    pigeonMap['packageName'] = packageName;
    pigeonMap['formatHint'] = formatHint;
    pigeonMap['timeout'] = timeout;
    pigeonMap['outPutChangeIntervalSecond'] = outPutChangeIntervalSecond;
    return pigeonMap;
  }

  // ignore: unused_element
  static CreateMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final CreateMessage result = CreateMessage();
    result.asset = pigeonMap['asset'];
    result.uri = pigeonMap['uri'];
    result.packageName = pigeonMap['packageName'];
    result.formatHint = pigeonMap['formatHint'];
    result.timeout = pigeonMap['timeout'];
    result.outPutChangeIntervalSecond = pigeonMap['outPutChangeIntervalSecond'];
    return result;
  }
}

class LoopingMessage {
  int textureId;
  bool isLooping;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['isLooping'] = isLooping;
    return pigeonMap;
  }

  // ignore: unused_element
  static LoopingMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final LoopingMessage result = LoopingMessage();
    result.textureId = pigeonMap['textureId'];
    result.isLooping = pigeonMap['isLooping'];
    return result;
  }
}

class VolumeMessage {
  int textureId;
  double volume;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['volume'] = volume;
    return pigeonMap;
  }

  // ignore: unused_element
  static VolumeMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final VolumeMessage result = VolumeMessage();
    result.textureId = pigeonMap['textureId'];
    result.volume = pigeonMap['volume'];
    return result;
  }
}

class PositionMessage {
  int textureId;
  int position;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['position'] = position;
    return pigeonMap;
  }

  // ignore: unused_element
  static PositionMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final PositionMessage result = PositionMessage();
    result.textureId = pigeonMap['textureId'];
    result.position = pigeonMap['position'];
    return result;
  }
}

class MixWithOthersMessage {
  bool mixWithOthers;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['mixWithOthers'] = mixWithOthers;
    return pigeonMap;
  }

  // ignore: unused_element
  static MixWithOthersMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final MixWithOthersMessage result = MixWithOthersMessage();
    result.mixWithOthers = pigeonMap['mixWithOthers'];
    return result;
  }
}

class AndroidOptionsMessage {
  bool mp4ExtractorSkipEditLists;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['mp4ExtractorSkipEditLists'] = mp4ExtractorSkipEditLists;
    return pigeonMap;
  }

  // ignore: unused_element
  static AndroidOptionsMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final AndroidOptionsMessage result = AndroidOptionsMessage();
    result.mp4ExtractorSkipEditLists = pigeonMap['mp4ExtractorSkipEditLists'];
    return result;
  }
}

class VideoPlayerApi {
  Future<void> initialize() async {
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.initialize', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(null);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<TextureMessage> create(CreateMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.create', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return TextureMessage._fromMap(replyMap['result']);
    }
  }

  Future<void> dispose(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.dispose', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setLooping(LoopingMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setLooping', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setVolume(VolumeMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setVolume', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> play(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.play', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<PositionMessage> position(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.position', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return PositionMessage._fromMap(replyMap['result']);
    }
  }

  Future<void> seekTo(PositionMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.seekTo', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> pause(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.pause', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setMixWithOthers(MixWithOthersMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setAndroidOptions(AndroidOptionsMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setAndroidOptions',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }
}
