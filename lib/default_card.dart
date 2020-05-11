import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  DefaultCard({this.color = const Color(0xDD1D1E33), this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
