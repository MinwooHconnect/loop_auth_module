import 'package:get/get.dart';
import 'package:loop_auth_module/loop_auth_manager.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() {
    LoopAuthManager().printHello();
  }

  void decrement() {
    LoopAuthManager().printHello();
  }
}
