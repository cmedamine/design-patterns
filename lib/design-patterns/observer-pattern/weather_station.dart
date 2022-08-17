import 'dart:async';
import 'dart:math';

import 'package:design_patterns/design-patterns/observer-pattern/i_observable.dart';
import 'package:design_patterns/design-patterns/observer-pattern/i_observer.dart';

class WeatherStaion implements IObserveble {
  List<IObserver> observers = [];

  int _oldTemp = 0;
  late int _currentTemp;
  String _textTemp = '';


  int clock = 0;
  late Timer t;

  @override
  void add(IObserver iObserver) {
    t = Timer.periodic(Duration(seconds: 1), (timer) {
      
      clock = timer.tick;

      _currentTemp = Random().nextInt(50);

      if (_currentTemp != _oldTemp) {
        if (_currentTemp == 0) {
          _textTemp = 'Very Cold';
        }

        if (_currentTemp > 0 && _currentTemp <= 20) {
          _textTemp = 'Cold';
        }

        if (_currentTemp >= 21 && _currentTemp <= 39) {
          _textTemp = 'Warm';
        }

        if (_currentTemp >= 40 && _currentTemp <= 50) {
          _textTemp = 'Very Hot';
        }

        notify();
      }

      _oldTemp = _currentTemp;
    });

    observers.add(iObserver);
  }

  @override
  void remove(IObserver iObserver) {
    observers = [...observers]..remove(iObserver);
  }

  @override
  void notify() {
    for (var observer in observers) {
      observer.update();
    }
  }

  double get temp => _currentTemp.toDouble();
  String get textTemp => _textTemp;
  bool get full => clock == 4;

  void stop() {
    t.cancel();
  }
}
