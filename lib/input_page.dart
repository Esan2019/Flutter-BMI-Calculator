import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'default_card.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;
  int height = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
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
                        cardChild:
                        IconContent(FontAwesomeIcons.mars, 'MASCULINO'),
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
                        cardChild:
                        IconContent(FontAwesomeIcons.venus, 'FEMININO'),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('ALTURA', style: kTextLabel,),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: <Widget>[
                          Text(height.toString(), style: kNumberLabel,),
                          SizedBox(width: 3.0,),
                          Text('cm', style: kTextLabel,),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.blue,
                        inactiveColor: Colors.blue[900],
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
                      child: DefaultCard(),
                    ),
                    Expanded(
                      child: DefaultCard(),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.blue[700],
                width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.only(top: 10.0),
              )
            ],
          ),
        ));
  }
}
