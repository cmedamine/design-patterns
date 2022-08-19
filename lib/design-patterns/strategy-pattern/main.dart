import 'duck.dart';
import 'duck_behaviors_impl.dart';

void main() {
  final cityDuck =
      Duck('city duck', SimpleDisplay(), SimpleFlyBehavior(), Quack());
  final cloudDuck =
      Duck('cloud duck', SimpleDisplay(), SimpleFlyBehavior(), Quack());
  final rubberDuck =
      Duck('rubber duck', DisplayAsText(), SimpleFlyBehavior(), Quack());

  cityDuck.fly();
  cityDuck.display();
  cityDuck.quack();

  cloudDuck.display();
  cloudDuck.fly();
  cloudDuck.quack();

  rubberDuck.display();

  print(cityDuck.name);

}