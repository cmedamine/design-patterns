/*
    private constructor in Java
      private Singleton() {...}
    
    private constructor in Dart
      Singleton._();

  */

class Singleton {
  Singleton._();

  static Singleton? _instance;

  static Singleton? get instance {
    _instance ??= Singleton._();

    return _instance;
  }
}


//
class FactorySingleton {

  FactorySingleton._();

  static final FactorySingleton _instance = FactorySingleton._();

  factory FactorySingleton() {
    return _instance;
  }

}