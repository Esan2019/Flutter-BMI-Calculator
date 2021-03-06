import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/widgets/selectors_row.dart';
import 'package:bmi_calculator/widgets/BottomButton.dart';
import 'package:bmi_calculator/calculator/calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/default_card.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 160;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: IconContent(FontAwesomeIcons.mars, 'MASCULINO'),
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: DefaultCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: IconContent(FontAwesomeIcons.venus, 'FEMININO'),
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: DefaultCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'ALTURA',
                    style: kTextLabel,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberLabel,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        'cm',
                        style: kTextLabel,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.tealAccent,
                    inactiveColor: Colors.teal[600],
                    min: 30.0,
                    max: 300.0,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DefaultCard(
                    cardChild: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'PESO',
                            style: kTextLabel,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kNumberLabel,
                              ),
                              SizedBox(width: 3.0),
                              Text(
                                'KG',
                                style: kTextLabel,
                              ),
                            ],
                          ),
                          SelectorsRow(
                            onPressAdd: () {
                              setState(() {
                                if (weight >= 0 && weight < 550)
                                weight++;
                              });
                            },
                            onPressRemove: () {
                              setState(() {
                                if (weight > 0 && weight <= 550)
                                weight--;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: DefaultCard(
                    cardChild: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'IDADE',
                            style: kTextLabel,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberLabel,
                          ),
                          SelectorsRow(
                            onPressRemove: () {
                              setState(() {
                                if (age > 0 && age <= 150)
                                age--;
                              });
                            },
                            onPressAdd: () {
                              setState(() {
                                if (age >= 0 && age < 150)
                                age++;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULAR',
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.calculateResult(),
                            resultTip: calc.getTip(),
                            resultColor: calc.getResultColor(),
                          )));
            },
          )
        ],
      )),
    );
  }
}
