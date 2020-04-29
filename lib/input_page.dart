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
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                      active: selectedGender == Gender.Male ? true : false,
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
                      active: selectedGender == Gender.Female ? true : false,
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
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kNumberStyle),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x1FEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (sliderValue) {
                            setState(() {
                              height = sliderValue.round();
                            });
                          }),
                    )
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
              child: Center(
                  child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
          ),
              ))),
        ]));
  }
}
