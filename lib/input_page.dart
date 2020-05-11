import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
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
          ],
        ));
  }
}

class DefaultCard extends StatelessWidget {

  final Color color;

  DefaultCard({this.color = const Color(0xDD1D1E33)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
