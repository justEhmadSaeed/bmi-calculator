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

  String getResults() {
    if (_bmi >= 25)
      return 'OverWeight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to Exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You should eat a bit more.';
  }
}
