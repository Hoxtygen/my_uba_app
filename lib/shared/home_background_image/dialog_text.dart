import 'package:flutter/material.dart';

class DialogText extends StatelessWidget {
  const DialogText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding:
            EdgeInsets.only(top: 15.0, bottom: 10),
            child: Text(
              "Background Picture",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                fontFamily: "Raleway",
              ),
            ),
          ),
          SizedBox(
            width: 125,
            height: 3,
            child: DecoratedBox(
              decoration:
              BoxDecoration(color: Colors.red),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              "Where would you like to get your background picture from?",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
                fontFamily: "Raleway",
              ),
            ),
          ),
        ]
    );
  }
}
