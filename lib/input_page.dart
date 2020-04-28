import 'package:flutter/material.dart';

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
  final Color color;
  ReuseableCard({@required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
