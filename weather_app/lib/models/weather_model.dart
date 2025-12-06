class WeatherModel {
  final String cityName;
  final DateTime time;
  final String? image;
  final double currentTemp;
  final double maxTemp;
  final double minTemp;
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

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      currentTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      time: DateTime.parse(json['current']['last_updated']),
      weatherCondition:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
