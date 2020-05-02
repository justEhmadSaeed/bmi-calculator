import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label, this.active});

  final IconData icon;
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80.0,
            color: active ? Colors.white : kInactiveLabelColor,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              color: active ? Colors.white : kInactiveLabelColor,
            ),
          ),
        ]);
  }
}
