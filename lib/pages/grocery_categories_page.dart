import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/res/grocery.dart';
import 'package:flutter_ui_challenge/theme/config.dart';
import 'package:flutter_ui_challenge/widgets/grocery/mini_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Grocery.secondary,
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.bodyLarge!.merge(
                TextStyle(fontSize: 24, color: Grocery.titleColor),
              ),
        ),
      ),
      body: Container(
        color: Grocery.secondary,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
                top: 20,
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
                  child: Container(
                    margin: EdgeInsets.only(top: 12, left: 6, right: 6),
                    // height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 6),
                      child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: GroceryData.categories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return MiniCard(
                              marginRight: 6,
                              title: GroceryData.categories[index][0],
                              img: GroceryData.categories[index][1],
                            );
                          }),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
