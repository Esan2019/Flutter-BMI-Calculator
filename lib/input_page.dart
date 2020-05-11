import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'default_card.dart';
import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1E40);
const Color inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inactiveCardColor;

  // 1 = male, 2 = female
  void updateColor(int gender) {
    if (gender < 2) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      }
      if (femaleCardColor == activeCardColor) {
        femaleCardColor = inactiveCardColor;
      }
    } else {
      if (maleCardColor == activeCardColor) {
        maleCardColor = inactiveCardColor;
      }
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
      }
    }
  }

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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(1);
                          });
                        },
                        child: DefaultCard(
                          cardChild:
                          IconContent(FontAwesomeIcons.mars, 'MASCULINO'),
                          color: maleCardColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(2);
                          });
                        },
                        child: DefaultCard(
                          cardChild:
                          IconContent(FontAwesomeIcons.venus, 'FEMININO'),
                          color: femaleCardColor,
                        ),
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
