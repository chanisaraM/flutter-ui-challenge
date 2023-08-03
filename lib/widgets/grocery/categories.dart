// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';
import 'package:flutter_ui_challenge/widgets/grocery/card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> typeOfFood = [
      ['Vegetables', 'vegetable.png'],
      ['Fruits', 'fruits.png'],
      ['Cereals', 'cereals.png'],
      ['Tubers', 'potato.png'],
      ['Legumes', 'legumes.png'],
      ['Dairy', 'dairy.png'],
      ['Meat', 'meat.png'],
    ];
    return CardMain(
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.bodyMedium!.merge(TextStyle(color: Colors.black)),
                ),
                Spacer(),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "See all",
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
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: typeOfFood.length,
                  itemBuilder: (context, index) {
                    return MiniCard(title: typeOfFood[index][0], img: typeOfFood[index][1]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniCard extends StatelessWidget {
  String title;
  String img;

  MiniCard({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12, top: 12),
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
        SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.merge(TextStyle(color: Colors.black54)),
        )
      ],
    );
  }
}
