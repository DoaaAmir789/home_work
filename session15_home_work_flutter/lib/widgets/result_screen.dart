import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/Health_Details.dart';

class ResultScreen extends StatelessWidget {
  final HealthDetails details;
  const ResultScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff03051a),
        title: const Text(
          'Calculation result',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                'BMI Score',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                details.calculateBmi.toStringAsFixed(2),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.green,
                ),
              ),
              Text(
                details.healthResult,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.green,
                ),
              ),
              Row(
                children: [Text('Gender '), Text(details.gender)],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [Text('Age'), Text(details.age.toString())],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [Text('Height'), Text(details.height.toString())],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [Text('Weight'), Text(details.weight.toString())],
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
