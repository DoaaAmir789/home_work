import 'package:flutter/material.dart';
import 'package:session14_home_work_flutter/feature_section.dart';
import 'package:session14_home_work_flutter/options.dart';
import 'package:session14_home_work_flutter/quick_stats_section.dart';
import 'package:session14_home_work_flutter/welcome_section.dart';

void main() {
  runApp(const GetStartedPage());
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff9f0ff),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeSection(),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Quick Stats',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                StatsSection(),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Features',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                FeatureSection(),
                Spacer(
                  flex: 10,
                ),
                Options(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
