
import 'duck_behaviors.dart';

class CityDuck {
  final IDisplayBehavior _iDisplayBehavior;
  final IFlyBehavior _iFlyBehavior;
  final IQuackBehavior _iQuackBehavior;

  CityDuck(this._iDisplayBehavior, this._iFlyBehavior, this._iQuackBehavior);

  void display() {
    _iDisplayBehavior.display();
  }

  void fly() {
    _iFlyBehavior.fly();
  }

  void quack() {
    _iQuackBehavior.quack();
  }
}