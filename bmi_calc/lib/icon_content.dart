import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

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