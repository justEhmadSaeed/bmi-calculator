import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReuseableCard(color: cardColor),
                ),
                Expanded(
                  flex: 1,
                  child: ReuseableCard(color: cardColor),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(color: cardColor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ReuseableCard(color: cardColor),
              ),
              Expanded(
                flex: 1,
                child: ReuseableCard(color: cardColor),
              )
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ]));
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
