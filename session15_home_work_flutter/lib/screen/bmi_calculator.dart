import 'package:flutter/material.dart';
import 'package:session15_home_work_flutter/Health_Details.dart';
import 'package:session15_home_work_flutter/widgets/calculate_button/calculate_section.dart';
import 'package:session15_home_work_flutter/widgets/gender_section/gender_section.dart';
import 'package:session15_home_work_flutter/widgets/height_section/height_section.dart';
import 'package:session15_home_work_flutter/screen/result_screen.dart';
import 'package:session15_home_work_flutter/widgets/wieght_age_section/weight_age_section.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  String selectedGender = 'Male';
  int height = 174;
  int weight = 60;
  int age = 29;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03051a),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061d),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GenderSection(onGenderChanged: (newGender) {
            selectedGender = newGender;
          }),
          HeightSection(onHeightChanged: (newHeight) {
            height = newHeight;
          }),
          WeightAndAgeSection(onAgeChanged: (newAge) {
            age = newAge;
          }, onWeightChanged: (newWeight) {
            weight = newWeight;
          }),
          CalculateButton(
            onTap: () {
              var details = HealthDetails(
                  gender: selectedGender,
                  age: age,
                  weight: weight,
                  height: height);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(details: details),
                  ));
            },
          ),
        ],
      )),
    );
  }
}
