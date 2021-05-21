import '';
import 'package:bmi_calc/input_page.dart';
import 'package:bmi_calc/reuse_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text('Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:Reusable_Card(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal',
                    style: resultText,
                  ),
                  Text('18.3',
                  style: bmiTextIndex,
                  ),
                  Text('Your bmi is quite low you should eat more',
                      style:bmiMsg,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
          ),
          ),
          BottomButton(
              onTap: () {
                  Navigator.pop(context);
              },
              bottomButtonTitle: 'RE-CALCULATE'
          ),
        ],
      ),
    );
  }
}
