class WeatherModel {
  final String cityName;
  final DateTime time;
  final String? image;
  final String currentTemp;
  final String maxTemp;
  final String minTemp;
  final String? weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.currentTemp,
    required this.image,
    required this.maxTemp,
    required this.minTemp,
    required this.time,
    required this.weatherCondition,
  });
}
