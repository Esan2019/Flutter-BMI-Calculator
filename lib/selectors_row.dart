import 'package:flutter/material.dart';

import 'constants.dart';

class SelectorsRow extends StatelessWidget {
  SelectorsRow({this.onPressAdd, this.onPressRemove});

  final Function onPressAdd;
  final Function onPressRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundIconButton(
          child: Icons.add,
          onTap: onPressAdd,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundIconButton(
          child: Icons.remove,
          onTap: onPressRemove,
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.child, @required this.onTap});

  final IconData child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kButtonColor,
      onPressed: onTap,
      child: Icon(
        child,
        color: Colors.black,
      ),
    );
  }
}
