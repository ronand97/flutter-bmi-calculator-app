import 'package:flutter/material.dart';
import '../constants.dart';

class CardContents extends StatelessWidget {
  CardContents({@required this.icon, @required this.textString});

  final Widget icon;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 15),
        Text(
          textString,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
