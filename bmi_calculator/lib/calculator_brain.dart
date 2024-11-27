import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    double _bmi = double.parse(calculateBMI());
    if (_bmi >= 25){
      return 'OverWeight';
    }else if (_bmi > 18.5) {
      return 'normal';
    }else {
      return 'underweight';
    }
  }

  String getInterpretation(){
    double _bmi = double.parse(calculateBMI());
    if (_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    }else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}