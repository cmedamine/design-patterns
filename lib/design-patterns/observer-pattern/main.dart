

import 'package:design_patterns/design-patterns/observer-pattern/phone.dart';
import 'package:design_patterns/design-patterns/observer-pattern/tv.dart';
import 'package:design_patterns/design-patterns/observer-pattern/weather_station.dart';

void main(List<String> args) {
  final WeatherStaion weatherStaion = WeatherStaion();
  weatherStaion.add(PhoneDisplay(weatherStaion));
  weatherStaion.add(TvDisplay(weatherStaion));
}