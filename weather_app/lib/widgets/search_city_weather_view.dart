import 'package:flutter/material.dart';

class SearchCityWeatherView extends StatelessWidget {
  const SearchCityWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search a city')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 15,
              ),
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter City Name',
              label: Text('Search'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
