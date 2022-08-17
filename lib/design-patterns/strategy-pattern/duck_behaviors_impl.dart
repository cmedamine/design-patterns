import 'duck_behaviors.dart';

class DisplayAsText implements IDisplayBehavior {
  @override
  void display() {
    print('this duck in text is "RUBBER DUCK"');
  }
}

class SimpleFlyBehavior implements IFlyBehavior {
  @override
  void fly() {
    print('Simple Flying');
  }
}

class JetFlyBehavior implements IFlyBehavior {
  @override
  void fly() {
    print('JET Flying');
  }
}

class SimpleDisplay implements IDisplayBehavior {
  @override
  void display() {
    print('Displaying');
  }
}

class Quack implements IQuackBehavior {
  @override
  void quack() {
    print('Quacking');
  }
}
