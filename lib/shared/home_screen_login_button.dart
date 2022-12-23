// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import 'package:my_uba_app/constants/styles.dart';
import 'package:my_uba_app/shared/custom_button.dart';

class HomeScreenLoginButton extends StatelessWidget {
  const HomeScreenLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Padding(
        padding: const EdgeInsets.only(top: 270.0),
        child: CustomButton(
          onPress: () {
            print("Login button pressed");
          },
          style: kLoginCustomButtonStyle,
          child: const Padding(
            padding: EdgeInsets.only(bottom: 15, top: 15),
            child: Text(
              "Sign in",
                style: kFontStyle,
            ),
          ),
        ),
      ),
    );
  }
}
