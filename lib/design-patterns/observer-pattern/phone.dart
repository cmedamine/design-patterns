import 'package:design_patterns/design-patterns/observer-pattern/i_observer.dart';
import 'package:design_patterns/design-patterns/observer-pattern/weather_station.dart';

class PhoneDisplay implements IObserver {

  final WeatherStaion weatherStaion;
  PhoneDisplay(this.weatherStaion);

  @override
  void update(temp) {
    print('Smart Phone: ${weatherStaion.temp}');
  }
}