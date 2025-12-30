class LoopAuthManager {
  static final LoopAuthManager _instance = LoopAuthManager._internal();

  factory LoopAuthManager() => _instance;

  LoopAuthManager._internal();

  void printHello() {
    print('Hello, LoopAuthManager!');
  }
}
