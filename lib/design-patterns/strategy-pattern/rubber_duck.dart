import 'duck_behaviors.dart';

class RubberDuck {
  final IDisplayBehavior _iDisplayBehavior;

  RubberDuck(this._iDisplayBehavior);

  void display() {
    _iDisplayBehavior.display();
  }
}
