import 'package:flutter_test/flutter_test.dart';
import 'package:onyx_scribble/onyx_scribble.dart';
import 'package:onyx_scribble/onyx_scribble_platform_interface.dart';
import 'package:onyx_scribble/onyx_scribble_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOnyxScribblePlatform
    with MockPlatformInterfaceMixin
    implements OnyxScribblePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OnyxScribblePlatform initialPlatform = OnyxScribblePlatform.instance;

  test('$MethodChannelOnyxScribble is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOnyxScribble>());
  });

  test('getPlatformVersion', () async {
    OnyxScribble onyxScribblePlugin = OnyxScribble();
    MockOnyxScribblePlatform fakePlatform = MockOnyxScribblePlatform();
    OnyxScribblePlatform.instance = fakePlatform;

    expect(await onyxScribblePlugin.getPlatformVersion(), '42');
  });
}
