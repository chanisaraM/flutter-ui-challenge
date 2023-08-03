import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

class GroceryBackground extends StatelessWidget {
  const GroceryBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            color: Grocery.primary,
          ),
          width: double.infinity,
        ),
        Align(
          //circle
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(left: 90, bottom: 20),
            width: 299,
            height: 300,
            decoration: BoxDecoration(
                color: Grocery.secondary,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(160),
                    bottomLeft: Radius.circular(290),
                    bottomRight: Radius.circular(160),
                    topRight: Radius.circular(290))),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Grocery.background,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
