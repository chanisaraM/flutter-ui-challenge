import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

class MiniCard extends StatelessWidget {
  String title;
  String img;
  double? marginRight;
  MiniCard({
    super.key,
    required this.title,
    required this.img,
    this.marginRight = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: marginRight!, top: 12),
          decoration: BoxDecoration(
            color: Grocery.miniCard,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          height: 100,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('assets/$img'),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.merge(const TextStyle(color: Colors.black54)),
        )
      ],
    );
  }
}
