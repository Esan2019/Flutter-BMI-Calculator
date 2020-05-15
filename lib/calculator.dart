import 'dart:math';

import 'package:flutter/material.dart';

const String obeseTip =
    'Sua situação é grave. Recomendamos consultar um endocrinologista.';

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
      return 'Obesidade grau II (severa)';
    } else {
      result = Result.obeseClass3;
      return 'Obesidade grau III (mórbida)';
    }
  }

  Color getResultColor() {
    if (result == Result.severelyUnderweight || result == Result.obeseClass1) {
      return Color(0xFFFF0008);
    }
    if (result == Result.underweight || result == Result.overweight) {
      return Color(0xFFFBFF00);
    }
    if (result == Result.normal) {
      return Color(0xFF00FF00);
    } else {
      return Color(0xFFFF00C3);
    }
  }

  String getTip() {
    if (result == Result.severelyUnderweight) {
      return 'Especialistas do Hospital de St. Michael\'s, no Canadá, afirmam que estar abaixo do peso apresenta mais riscos à saúde do que estar acima do peso. Para se obter um ganho de peso saudável, alimentos ricos em calorias não são a escolha correta, mas sim, aqueles com uma quantidade calórica equilibrada ricos em vitamina, proteína e principalmente carboidratos que contribuem no aumento de massa muscular, e que possuem pequenas taxas de gorduras trans e saturada.';
    }
    if (result == Result.underweight) {
      return 'O melhor caminho para ganhar peso de forma saudável é aliar a prática de exercícios físicos que contribuam para o ganho de massa muscular (como musculação e crossfit), e uma alimentação balanceada (alimentos naturais e frescos, como cereais, frutas e legumes).';
    }
    if (result == Result.normal) {
      return 'Parabéns pelo ótimo trabalho! Lembre-se que para manter o peso ideal é importante manter uma dieta balanceada (não basta apenas alimentos corretos, deve-ser levar em conta também as quantidades corretas).';
    }
    if (result == Result.overweight) {
      return 'O melhor caminho para perder peso de forma saudável é aliar a prática de exercícios físicos que queimam calorias (como corrida e natação), e uma dieta balanceada. Não é necessário (e nem saudável) deixar de se alimentar durante longos períodos de tempo no intuito de emagrecer. Você apenas precisa comer os alimentos certos, na quantidade certa.';
    } else {
      return obeseTip;
    }
  }
}
