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
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReuseableCard(),
                ),
                Expanded(
                  flex: 1,
                  child: ReuseableCard(),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ReuseableCard(),
              ),
              Expanded(
                flex: 1,
                child: ReuseableCard(),
              )
            ],
          )),
        ]));
  }
}

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF1D1E33),
      ),
    );
  }
}
