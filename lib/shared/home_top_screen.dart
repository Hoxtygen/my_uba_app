import 'package:flutter/material.dart';
import 'package:my_uba_app/shared/top_left.dart';
import 'package:my_uba_app/shared/top_right.dart';

class HomeTopScreen extends StatelessWidget {
  const HomeTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          TopLeft(),
          HomeTopRight(),
        ],
      ),
    );
  }
}
