import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'loop_auth_module_platform_interface.dart';

/// An implementation of [LoopAuthModulePlatform] that uses method channels.
class MethodChannelLoopAuthModule extends LoopAuthModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('loop_auth_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
