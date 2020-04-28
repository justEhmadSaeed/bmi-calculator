import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
              fontSize: 18.0,
              color: Color(0xFF808E98),
            );

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: labelTextStyle
          )
        ]);
  }
}