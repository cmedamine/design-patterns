import 'package:design_patterns/design-patterns/observer-pattern/i_observer.dart';

abstract class IObserveble {
  void add(IObserver iObserver);
  void remove(IObserver iObserver);
  void notify();
}