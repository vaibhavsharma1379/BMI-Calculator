import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.hieght, required this.wieght});
  final int hieght;
  final int wieght;
  late double _bmi;
  String calculateBMI() {
    _bmi = wieght / pow(hieght / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpitation() {
    if (_bmi >= 25) {
      return "You have a higher weight than normal.Try to exercise more";
    } else if (_bmi > 18) {
      return "You have a normal body.Great job";
    } else {
      return "You have lower weight than a normal body weight.You can eat more";
    }
  }
}
