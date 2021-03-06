import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) {
    runApp(BmiCalculator());
  });
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