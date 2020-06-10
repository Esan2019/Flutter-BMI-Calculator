import 'dart:math';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/calculator/results.dart';
import 'package:bmi_calculator/calculator/tips.dart';

class Calculator {
  Result _result;

  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = 1.3 * weight / pow(height / 100, 2.5);
    _result = getResult(_bmi);
    return _bmi.toStringAsFixed(2);
  }

  String calculateResult() {
    switch (_result) {
      case Result.SEVERELY_UNDERWEIGHT:
        return 'Muito abaixo do peso';
        break;
      case Result.UNDERWEIGHT:
        return 'Abaixo do peso';
        break;
      case Result.NORMAL:
        return 'Peso normal';
        break;
      case Result.OVERWEIGHT:
        return 'Acima do peso';
        break;
      case Result.OBESE_CLASS_1:
        return 'Obesidade grau I';
        break;
      case Result.OBESE_CLASS_2:
        return 'Obesidade grau II (severa)';
        break;
      default:
        return 'Obesidade grau III (mórbida)';
    }
  }

  Color getResultColor() {
    if (_result == Result.SEVERELY_UNDERWEIGHT ||
        _result == Result.OBESE_CLASS_1) {
      return Color(0xFFFF0008);
    }
    if (_result == Result.UNDERWEIGHT || _result == Result.OVERWEIGHT) {
      return Color(0xFFFBFF00);
    }
    if (_result == Result.NORMAL) {
      return Color(0xFF00FF00);
    } else {
      return Color(0xFFFF00C3);
    }
  }

  String getTip() {
    if (_result == Result.SEVERELY_UNDERWEIGHT) {
      return severelyUnderweightTips[getRange(severelyUnderweightTips)];
    }
    if (_result == Result.UNDERWEIGHT) {
      return underweightTips[getRange(underweightTips)];
    }
    if (_result == Result.NORMAL) {
      return normalTips[getRange(normalTips)];
    }
    if (_result == Result.OVERWEIGHT) {
      return overweightTips[getRange(overweightTips)];
    } else {
      return obeseTips[getRange(obeseTips)];
    }
  }
}
