import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'If your BMI is too high this can mean you need to lose weight - eating less and exercising more is a good way to achieve this';
    } else if (_bmi > 18.5) {
      return 'Your BMI is within a normal range. Nice one.';
    } else {
      return 'Your BMI is lower than the normal range. This can mean you are underweight and should try to eat more calories per day.';
    }
  }
}
