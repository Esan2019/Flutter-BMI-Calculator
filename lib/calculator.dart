import 'dart:math';

class Calculator {
  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do peso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getTip() {
    if (_bmi >= 25) {
      return 'Você tem um peso acima do normal';
    } else if (_bmi > 18.5) {
      return 'Você tem um peso normal';
    } else {
      return 'Você tem um peso abaixo do normal';
    }
  }
}
