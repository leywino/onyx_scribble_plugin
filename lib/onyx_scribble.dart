
import 'onyx_scribble_platform_interface.dart';

class OnyxScribble {
  Future<String?> getPlatformVersion() {
    return OnyxScribblePlatform.instance.getPlatformVersion();
  }
}
