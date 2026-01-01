import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({required this.icon, required this.text, Key? key})
      : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0, color: Color(0xFFFFFFFF),),
        SizedBox(height: 15.0),
        Text(
          text,
          style: kLabelTextStyle
        ),
      ],
    );
  }
}
