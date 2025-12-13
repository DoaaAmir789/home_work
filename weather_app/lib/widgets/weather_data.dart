import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/theme/get_weather_color.dart';

class WeatherInformationView extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInformationView({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getWeatherColor(weatherModel.weatherCondition),
              getWeatherColor(weatherModel.weatherCondition)[300]!,
              getWeatherColor(weatherModel.weatherCondition)[50]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          spacing: 2,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'updated at ${weatherModel.time.hour} : ${weatherModel.time.minute}',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/cloudy.png'),
                Text(
                  weatherModel.currentTemp.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Column(
                  children: [
                    Text(
                      'MaxTemp : ${weatherModel.maxTemp}',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'MinTemp : ${weatherModel.minTemp}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              weatherModel.weatherCondition!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
