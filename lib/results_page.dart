import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/default_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
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
                  'Your results',
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
                      'Teste',
                      style: kResultText,
                    ),
                    Text(
                      '18.3',
                      style: kBMINumber,
                    ),
                    Text('Result', style: kResultTip,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(text: 'CALCULAR NOVAMENTE', onTap: () {
                Navigator.pop(context);
              },),
            )
          ],
        ),
      ),
    );
  }
}