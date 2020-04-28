import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resusable_card.dart';
import 'constants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                // Male Input Card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    color: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                // Female Input Card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          // Height Slider Card
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(children: <Widget>[

              ]),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              // Weight Input Card
              Expanded(
                flex: 1,
                child: ReusableCard(color: kActiveCardColor),
              ),
              // Age Input Card
              Expanded(
                flex: 1,
                child: ReusableCard(color: kActiveCardColor),
              )
            ],
          )),
          // Calculate Button
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ]));
  }
}
