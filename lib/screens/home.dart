import "package:flutter/material.dart";
import 'package:my_uba_app/shared/home_logo.dart';
import 'package:my_uba_app/shared/home_screen_login_button.dart';
import 'package:my_uba_app/shared/home_top_screen.dart';
import 'package:my_uba_app/shared/quick_actions.dart';
import 'package:my_uba_app/shared/registration_action.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/home_screen_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.center,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      HomeTopScreen(),
                      HomeScreenLogo(),
                      QuickActions(),
                      HomeScreenLoginButton(),
                    ],
                  ),
                ),
                const RegistrationAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
