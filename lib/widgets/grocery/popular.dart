// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/grocery/card.dart';
import 'package:flutter_ui_challenge/widgets/grocery/mini_card.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return CardMain(
      title: 'Popular itemsr',
      txtButton: 'See all',
      txtFunction: () => print('press txt button'),
      widget: Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return MiniCard(title: "popular item ${index}", img: "popular.png");
            }),
      ),
    );
  }
}
