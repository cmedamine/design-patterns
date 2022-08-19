import 'package:design_patterns/design-patterns/singleton-pattern/singleton.dart';

void main() {

  final singleton1 = Singleton.instance;
  final singleton2 = Singleton.instance;

  final FactorySingleton singletonOne = FactorySingleton();
  final FactorySingleton singletonTwo = FactorySingleton();

  print(singletonOne.hashCode);
  print(singletonTwo.hashCode);


  print(singleton1.hashCode);
  print(singleton2.hashCode);
}