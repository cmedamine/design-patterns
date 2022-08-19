import 'package:design_patterns/design-patterns/observer-pattern/i_observer.dart';
import 'package:design_patterns/design-patterns/observer-pattern/weather_station.dart';

class PhoneDisplay implements IObserver {
  
  //! fix: https://refactoring.guru/design-patterns/observer/csharp/example
  
  final WeatherStaion weatherStaion;
  PhoneDisplay(this.weatherStaion);

  @override
  void update(temp) {
    print('Smart Phone: ${weatherStaion.temp}');
  }
}
