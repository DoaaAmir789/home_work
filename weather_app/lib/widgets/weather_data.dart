import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInformationView extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInformationView({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
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
    );
  }
}
