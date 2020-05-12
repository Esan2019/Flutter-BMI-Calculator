import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/default_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,
    @required this.resultText,
    @required this.resultTip});

  final String bmiResult;
  final String resultText;
  final String resultTip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Resultado',
                  style: kResultPageTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: DefaultCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kBMINumber,
                    ),
                    Text(
                      resultTip,
                      style: kResultTip,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                text: 'CALCULAR NOVAMENTE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
