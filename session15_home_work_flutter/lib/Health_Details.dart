class HealthDetails {
  String gender;
  int weight;
  int age;
  int height;

  HealthDetails({
    required this.gender,
    required this.age,
    required this.weight,
    required this.height,
  });

  double get calculateBmi {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String get healthResult {
    String health = 'Normal';
    if (calculateBmi < 18.5) {
      health = 'Underweight';
    } else if (calculateBmi >= 18.5 && calculateBmi <= 24.9) {
      health = 'Normal';
    } else {
      health = 'Overweight';
    }
    return health;
  }
}
