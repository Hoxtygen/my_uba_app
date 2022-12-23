import 'package:flutter/material.dart';

final ButtonStyle kCustomButtonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  backgroundColor: Colors.transparent,
);

final ButtonStyle kLoginCustomButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: Colors.white, width: 2.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
  backgroundColor: Colors.black54,
);

const TextStyle kFontStyle = TextStyle(
  fontFamily: kFontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

final ButtonStyle kBackgroundImageButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: Colors.red, width: 2.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  ),
    backgroundColor: Colors.white
);

const TextStyle kBackgroundTextStyle = TextStyle(
  color: Colors.red,
  fontFamily: kFontFamily,
  fontSize: 16
);
const String kFontFamily = "Raleway";