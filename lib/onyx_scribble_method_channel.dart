import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'onyx_scribble_platform_interface.dart';

/// An implementation of [OnyxScribblePlatform] that uses method channels.
class MethodChannelOnyxScribble extends OnyxScribblePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('onyx_scribble');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
