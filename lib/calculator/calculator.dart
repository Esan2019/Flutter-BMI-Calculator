import 'dart:math';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/calculator/enums/results.dart';
import 'package:bmi_calculator/calculator/tips.dart';

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
      result = Result.SEVERELY_UNDERWEIGHT;
      return 'Muito abaixo do peso';
    } else if (_bmi >= 17 && _bmi <= 18.49) {
      result = Result.UNDERWEIGHT;
      return 'Abaixo do peso';
    } else if (_bmi >= 18.50 && _bmi <= 24.99) {
      result = Result.NORMAL;
      return 'Peso normal';
    } else if (_bmi >= 25 && _bmi <= 29.99) {
      result = Result.OVERWEIGHT;
      return 'Acima do peso';
    } else if (_bmi >= 30.0 && _bmi <= 34.99) {
      result = Result.OBESE_CLASS_1;
      return 'Obesidade grau I';
    } else if (_bmi >= 35.0 && _bmi <= 39.99) {
      result = Result.OBESE_CLASS_2;
      return 'Obesidade grau II (severa)';
    } else {
      result = Result.OBESE_CLASS_3;
      return 'Obesidade grau III (mórbida)';
    }
  }

  Color getResultColor() {
    if (result == Result.SEVERELY_UNDERWEIGHT || result == Result.OBESE_CLASS_1) {
      return Color(0xFFFF0008);
    }
    if (result == Result.UNDERWEIGHT || result == Result.OVERWEIGHT) {
      return Color(0xFFFBFF00);
    }
    if (result == Result.NORMAL) {
      return Color(0xFF00FF00);
    } else {
      return Color(0xFFFF00C3);
    }
  }

  String getTip() {
    if (result == Result.SEVERELY_UNDERWEIGHT) {
      return severelyUnderweightTips[getRange(severelyUnderweightTips)];
    }
    if (result == Result.UNDERWEIGHT) {
      return underweightTips[getRange(underweightTips)];
    }
    if (result == Result.NORMAL) {
      return normalTips[getRange(normalTips)];
    }
    if (result == Result.OVERWEIGHT) {
      return overweightTips[getRange(overweightTips)];
    } else {
      return obeseTips[getRange(obeseTips)];
    }
  }
}
