import 'duck_behaviors.dart';

// context
class Duck {
  final String _name;
  final IDisplayBehavior _iDisplayBehavior;
  final IFlyBehavior _iFlyBehavior;
  final IQuackBehavior _iQuackBehavior;

  Duck(
    this._name,
    this._iDisplayBehavior,
    this._iFlyBehavior,
    this._iQuackBehavior,
  );

  void display() {
    _iDisplayBehavior.display();
  }

  void fly() {
    _iFlyBehavior.fly();
  }

  void quack() {
    _iQuackBehavior.quack();
  }

  String get name => _name;
}
