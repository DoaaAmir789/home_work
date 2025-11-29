import 'package:flutter/material.dart';

class WeatherInformationView extends StatelessWidget {
  const WeatherInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alexandria',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text('updated at 23:46'),
            Row(
              children: [
                Image.asset('assets/images/cloudy.png'),
                Text(
                  '17',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Column(
                  children: [
                    Text('MaxTemp : 24', style: TextStyle(fontSize: 16)),
                    Text('MinTemp : 16', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
            Text(
              'Light Rain',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
