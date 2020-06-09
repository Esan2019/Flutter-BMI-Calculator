import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {

  final Color color;
  final Widget cardChild;
  final Function onPress;

  DefaultCard(
      {this.color = const Color(0xFF1D1E40), this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
