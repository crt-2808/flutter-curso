import 'dart:math';

class CalculationBrain {
  CalculationBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Your BMI is quite high. It's important to adopt a healthier lifestyle, which includes a balanced diet and regular physical activity. Consider consulting with a healthcare provider for personalized advice.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Keep up the good work maintaining a healthy lifestyle!";
    } else {
      return "Your BMI is below the normal range. It may be beneficial to consult with a healthcare provider to ensure you're getting the necessary nutrients and maintaining a healthy weight.";
    }
  }
}
