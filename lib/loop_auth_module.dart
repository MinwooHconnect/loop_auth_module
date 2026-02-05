
import 'loop_auth_module_platform_interface.dart';

class LoopAuthModule {
  Future<String?> getPlatformVersion() {
    return LoopAuthModulePlatform.instance.getPlatformVersion();
  }
}
