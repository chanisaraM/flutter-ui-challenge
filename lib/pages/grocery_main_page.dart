import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';
import 'package:flutter_ui_challenge/widgets/grocery/categories.dart';
import 'package:flutter_ui_challenge/widgets/grocery/header_search.dart';
import 'package:flutter_ui_challenge/widgets/grocery/popular.dart';
import 'package:flutter_ui_challenge/widgets/grocery/promotion.dart';

class GroceryMainPage extends StatelessWidget {
  const GroceryMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
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
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Categories(),
                      Promotion(),
                      Popular(),
                    ],
                  ),
                ),
              ),
              const HeaderSearch(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Grocery.primary,
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.menu),
          TabItem(icon: Icons.recommend),
          TabItem(icon: Icons.shopping_cart),
          TabItem(icon: Icons.favorite),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: 2,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
