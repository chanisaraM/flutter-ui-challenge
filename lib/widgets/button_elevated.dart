// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/button.dart';

class ButtonElevated extends StatelessWidget {
  late ButtonStyle? style;
  late String txt = "";
  late VoidCallback? onPressed;
  ButtonElevated({super.key, required this.txt, this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? ButtonConfig.raisedButtonStyle,
      child: Text(
        txt,
        style: Theme.of(context).textTheme.bodyLarge!.merge(const TextStyle(color: Colors.white)),
      ),
    );
  }
}
