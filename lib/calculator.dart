import 'dart:math';

import 'package:flutter/material.dart';

enum Result {
  severelyUnderweight,
  underweight,
  normal,
  overweight,
  obeseClass1,
  obeseClass2,
  obeseClass3
}

class Calculator {
  Result result;

  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = 1.3 * weight / pow(height / 100, 2.5);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi < 17.0) {
      result = Result.severelyUnderweight;
      return 'Muito abaixo do peso';
    } else if (_bmi >= 17 && _bmi <= 18.49) {
      result = Result.underweight;
      return 'Abaixo do peso';
    } else if (_bmi >= 18.50 && _bmi <= 24.99) {
      result = Result.normal;
      return 'Peso normal';
    } else if (_bmi >= 25 && _bmi <= 29.99) {
      result = Result.overweight;
      return 'Acima do peso';
    } else if (_bmi >= 30.0 && _bmi <= 34.99) {
      result = Result.obeseClass1;
      return 'Obesidade grau I';
    } else if (_bmi >= 35.0 && _bmi <= 39.99) {
      result = Result.obeseClass2;
      return 'Obesidade grau II';
    } else {
      result = Result.obeseClass3;
      return 'Obesidade grau III';
    }
  }

  //TODO: Add more colors
  Color getResultColor() {
    if (result == Result.severelyUnderweight) {
      return Color(0xFFFF0008);
    }
  }

  //TODO: Add more tips
  String getTip() {
    if (result == Result.severelyUnderweight) {
      return 'Especialistas do Hospital de St. Michael\'s, no Canadá, afirmam que estar abaixo do peso apresenta mais riscos à saúde do que estar acima do peso. Para se obter um ganho de peso saudável, alimentos ricos em calorias não são a escolha correta, mas sim, aqueles com uma quantidade calórica equilibrada ricos em vitamina, proteína e principalmente carboidratos que contribuem no aumento de massa muscular, e que possuem pequenas taxas de gorduras trans e saturada.';
    } else if (_bmi > 18.5) {
      return 'Você tem um peso normal';
    } else {
      return 'Você tem um peso abaixo do normal';
    }
  }
}
