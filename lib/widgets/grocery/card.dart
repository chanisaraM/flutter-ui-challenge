// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

class CardMain extends StatelessWidget {
  String title;
  String txtButton;
  Widget? widget;
  VoidCallback? txtFunction;
  CardMain({
    super.key,
    this.widget,
    this.txtFunction,
    required this.title,
    required this.txtButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 12, right: 12),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium!.merge(const TextStyle(color: Colors.black)),
                ),
                const Spacer(),
                TextButton(
                  onPressed: txtFunction,
                  child: Text(
                    txtButton,
                    style: Theme.of(context).textTheme.bodySmall!.merge(TextStyle(color: Grocery.accent)),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Grocery.secondary,
            ),
            widget!
          ],
        ),
      ),
    );
  }
}
