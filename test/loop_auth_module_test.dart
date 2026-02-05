import 'package:flutter_test/flutter_test.dart';
import 'package:loop_auth_module/loop_auth_module.dart';
import 'package:loop_auth_module/loop_auth_module_platform_interface.dart';
import 'package:loop_auth_module/loop_auth_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLoopAuthModulePlatform
    with MockPlatformInterfaceMixin
    implements LoopAuthModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LoopAuthModulePlatform initialPlatform = LoopAuthModulePlatform.instance;

  test('$MethodChannelLoopAuthModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLoopAuthModule>());
  });

  test('getPlatformVersion', () async {
    LoopAuthModule loopAuthModulePlugin = LoopAuthModule();
    MockLoopAuthModulePlatform fakePlatform = MockLoopAuthModulePlatform();
    LoopAuthModulePlatform.instance = fakePlatform;

    expect(await loopAuthModulePlugin.getPlatformVersion(), '42');
  });
}
