import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'input': (context) => InputPage(),
        'result': (context) => ResultsPage()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0d22),
        scaffoldBackgroundColor: Color(0xff0a0d22),
      ),
      initialRoute: 'input',
    );
  }
}