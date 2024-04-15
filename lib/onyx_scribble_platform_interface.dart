import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'onyx_scribble_method_channel.dart';

abstract class OnyxScribblePlatform extends PlatformInterface {
  /// Constructs a OnyxScribblePlatform.
  OnyxScribblePlatform() : super(token: _token);

  static final Object _token = Object();

  static OnyxScribblePlatform _instance = MethodChannelOnyxScribble();

  /// The default instance of [OnyxScribblePlatform] to use.
  ///
  /// Defaults to [MethodChannelOnyxScribble].
  static OnyxScribblePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OnyxScribblePlatform] when
  /// they register themselves.
  static set instance(OnyxScribblePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
