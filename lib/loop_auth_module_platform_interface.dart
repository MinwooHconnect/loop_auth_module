import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'loop_auth_module_method_channel.dart';

abstract class LoopAuthModulePlatform extends PlatformInterface {
  /// Constructs a LoopAuthModulePlatform.
  LoopAuthModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static LoopAuthModulePlatform _instance = MethodChannelLoopAuthModule();

  /// The default instance of [LoopAuthModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelLoopAuthModule].
  static LoopAuthModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LoopAuthModulePlatform] when
  /// they register themselves.
  static set instance(LoopAuthModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
