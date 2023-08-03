import 'package:flutter/material.dart';

class ButtonConfig {
  double widthSize = 0.0;
  double heightSize = 0.0;
  ButtonConfig(this.widthSize, this.heightSize);

  static ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFFF6F00),
    fixedSize: const Size(300, 50),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
