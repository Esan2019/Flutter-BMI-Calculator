import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'default_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                        cardChild: IconContent(
                            FontAwesomeIcons.mars, 'MASCULINO'),
                      ),
                    ),
                    Expanded(
                      child: DefaultCard(
                        cardChild: IconContent(
                            FontAwesomeIcons.venus, 'FEMININO'),
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