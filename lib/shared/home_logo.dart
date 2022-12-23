import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class HomeScreenLogo extends StatelessWidget {
  const HomeScreenLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SvgPicture.asset("assets/icons/uba_logo.svg"),
    );
  }
}
