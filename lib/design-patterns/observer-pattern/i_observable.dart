import 'dart:svg';

import '../../design-patterns/observer-pattern/i_observer.dart';
// subject
abstract class IObserveble {
  void add(IObserver iObserver);
  void remove(IObserver iObserver);
  void notify();
}
