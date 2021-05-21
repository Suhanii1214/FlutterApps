import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'results_page.dart';

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
  int weight = 60;
  int age = 19;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor:Color(0x29EB1555),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                 ],
              ),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable_Card(
                      colour:activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: labelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: boldText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed:() {
                                setState(() {
                                  weight--;
                                });
                              }
                            ),
                            SizedBox(width: 10.0,),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed:() {
                                  setState(() {
                                    weight++;
                                  });
                                }
                                )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Expanded(
                  child: Reusable_Card(
                      colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: labelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: boldText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed:() {
                                  setState(() {
                                    age--;
                                  });
                                }
                            ),
                            SizedBox(width: 10.0,),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed:() {
                                  setState(() {
                                    age++;
                                  });
                                }
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
          BottomButton(
            bottomButtonTitle: 'CALCULATE',
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
            },
          )
        ],
      )
    );
  }
}

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.bottomButtonTitle});

  final Function onTap;
  final String bottomButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        child: Center(
          child: Text(bottomButtonTitle,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  @override
  RoundIconButton({this.icon,this.onPressed});

  final IconData icon;
  final Function onPressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}




