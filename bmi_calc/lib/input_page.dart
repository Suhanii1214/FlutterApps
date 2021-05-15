import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                      colour: selectedGender==Gender.male? activeCardColor : inactiveCardColor,
                    cardChild: IconWidget(icon:FontAwesomeIcons.mars , label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender==Gender.female? activeCardColor : inactiveCardColor,
                    cardChild: IconWidget(icon:FontAwesomeIcons.venus , label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable_Card(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height',
                  style: labelStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                        style: boldText,
                        ),
                        Text('cm',
                        style:labelStyle)
                      ],
                    ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                 ],
              ),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(colour:activeCardColor)
                ),
                Expanded(
                  child: Reusable_Card(colour: activeCardColor)
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 50.0,
          )
        ],
      )
    );
  }
}



