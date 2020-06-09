import 'package:flutter/material.dart';

import 'package:bmi_calculator/widgets/BottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/default_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.resultTip,
      @required this.resultColor});

  final String bmiResult;
  final String resultText;
  final String resultTip;
  final Color resultColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                cardChild: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            resultText,
                            style: TextStyle(
                                color: resultColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 15.0,
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
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            resultTip,
                            style: kResultTip,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Aviso: os resultados são obtidos através da nova fórmula proposta em 2013 pelo professor e pesquisador da Universidade de Oxford, Nick Trefethen:\nIMC = 1,3 x m / h ^ 2,5',
                            style: kTextLabel,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              text: 'CALCULAR NOVAMENTE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
