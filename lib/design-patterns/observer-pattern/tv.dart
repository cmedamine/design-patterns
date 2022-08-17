import 'package:design_patterns/design-patterns/observer-pattern/i_observer.dart';
import 'package:design_patterns/design-patterns/observer-pattern/weather_station.dart';

class TvDisplay implements IObserver {

  final WeatherStaion weatherStaion;
  TvDisplay(this.weatherStaion);

  @override
  void update(temp) {
    print(weatherStaion.clock);
    print('Tv: $temp');

    if (weatherStaion.full) {
      weatherStaion.remove(this);
    }
  }
}