import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../custom_button.dart';

class BackgroundDialogButton extends StatelessWidget {
  const BackgroundDialogButton({Key? key, this.onPress, required this.text}) : super(key: key);
  final void Function()? onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  FractionallySizedBox(
      widthFactor: 0.8,
      child: Padding(
        padding:const  EdgeInsets.only(top: 10.0),
        child: CustomButton(
          onPress: onPress,
          style: kBackgroundImageButtonStyle,
          child:  Padding(
            padding:
            const EdgeInsets.only(bottom: 10, top: 10),
            child: Text(
              text,
              style: kBackgroundTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
