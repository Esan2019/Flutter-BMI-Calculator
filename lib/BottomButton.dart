import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, @required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonCalculate,
          ),
        ),
        color: kButtonColor,
        width: double.infinity,
        height: 80.0,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
