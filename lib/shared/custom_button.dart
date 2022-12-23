import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onPress, this.style, required this.child})
      : super(key: key);
  final void Function()? onPress;
  final ButtonStyle? style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: style,
      child: child,
    );
  }
}
