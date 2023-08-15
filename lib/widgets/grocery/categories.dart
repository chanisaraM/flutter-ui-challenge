// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/res/grocery.dart';
import 'package:flutter_ui_challenge/router/app_routes.dart';
import 'package:flutter_ui_challenge/router/router.dart';
import 'package:flutter_ui_challenge/widgets/grocery/card.dart';
import 'package:flutter_ui_challenge/widgets/grocery/mini_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return CardMain(
      title: 'Categories',
      txtButton: 'See all',
      txtFunction: () => NavigationRoutes().push(context, Routes.groceryCategoriesPage),
      widget: Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: GroceryData.typeOfFood.length,
            itemBuilder: (context, index) {
              return MiniCard(title: GroceryData.typeOfFood[index][0], img: GroceryData.typeOfFood[index][1]);
            }),
      ),
    );
  }
}
