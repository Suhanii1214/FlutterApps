import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF0A0E35);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,female
}

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
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      print('male button is pressed');
                    },
                    child: Reusable_Card(
                        colour: selectedGender==Gender.male? activeCardColor : inactiveCardColor,
                      cardChild: IconWidget(icon:FontAwesomeIcons.mars , label: 'MALE',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      print('female button is pressed');
                    },
                    child: Reusable_Card(
                      colour: selectedGender==Gender.female? activeCardColor : inactiveCardColor,
                      cardChild: IconWidget(icon:FontAwesomeIcons.venus , label: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width:double.infinity,
              height: 50,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFF0A0E35),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
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



