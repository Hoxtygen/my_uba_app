import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                bottom: 30,
                top: 10,
              ),
              child: Text(
                "Quick Actions",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.insert_drive_file_rounded,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Top-up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: "Raleway",
                fontSize: 18,
              ),
            ),
          ],
        )
      ],
    );
  }
}
