import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.bottonTitle, @required this.onTap});

  final Function onTap;
  final String bottonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
              child: Text(
            bottonTitle,
            style: kLargeButtonStyle,
          ))),
    );
  }
}
