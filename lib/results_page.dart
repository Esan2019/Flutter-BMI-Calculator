import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/default_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,
    @required this.resultText,
    @required this.resultTip,
    @required this.resultColor});

  final String bmiResult;
  final String resultText;
  final String resultTip;
  final Color resultColor;

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
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Text(
                        'Os resultados são obtidos através da nova fórmula proposta em 2013 pelo professor e pesquisador da Universidade de Oxford, Nick Trefethen:\nIMC = 1,3 x m / h ^ 2,5',
                        style: kTextLabel,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      resultText,
                      style: TextStyle(
                          color: resultColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          bmiResult,
                          style: kBMINumber,
                        ),
                        Text(
                          'IMC',
                          style: kTextLabel,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        resultTip,
                        style: kResultTip,
                        textAlign: TextAlign.center,
                      ),
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
