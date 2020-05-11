import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'default_card.dart';
import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1E40);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
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
                            ? activeCardColor
                            : inactiveCardColor,
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
                            ? activeCardColor
                            : inactiveCardColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: DefaultCard(),
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
                color: Colors.pink,
                width: double.infinity,
                height: 80.0,
                margin: EdgeInsets.only(top: 10.0),
              )
            ],
          ),
        ));
  }
}
