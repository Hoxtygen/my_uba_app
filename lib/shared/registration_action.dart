// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:my_uba_app/constants/styles.dart';
import 'package:my_uba_app/shared/custom_button.dart';

class RegistrationAction extends StatelessWidget {
  const RegistrationAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            onPress: () {
              print("Open an account");
            },
            style: kCustomButtonStyle,
            child: const Text(
              "Open an Account",
              style: kFontStyle,
            ),
          ),
          CustomButton(
              onPress: () {
                print("Sign UP");
              },
              style: kCustomButtonStyle,
              child: const Text(
                "Sign up",
                style: kFontStyle,
              )),
        ],
      ),
    );
  }
}
