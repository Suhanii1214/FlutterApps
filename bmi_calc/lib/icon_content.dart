import 'package:flutter/material.dart';
import 'input_page.dart';

const labelStyle =  TextStyle(color: Color(0xFF8D8E98),
  fontSize:18.0,
);

class IconWidget extends StatelessWidget {
  const IconWidget({@required this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: labelStyle,
        )
      ],
    );
  }
}