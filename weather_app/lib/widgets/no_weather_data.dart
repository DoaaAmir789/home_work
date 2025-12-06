import 'package:flutter/material.dart';

class NoWeatherView extends StatelessWidget {
  const NoWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'there is no weather 😞 start',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
          Text(
            'searching now 🔎',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
