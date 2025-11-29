import 'package:flutter/material.dart';
import 'package:weather_app/widgets/search_city_weather_view.dart';
import 'package:weather_app/widgets/weather_information_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchCityWeatherView(),
                ),
              );
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: WeatherInformationView(),
    );
  }
}
