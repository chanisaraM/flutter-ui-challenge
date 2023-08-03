// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/pages/grocery_main_page.dart';
import 'package:flutter_ui_challenge/router/router.dart';
import 'package:flutter_ui_challenge/widgets/appbar_Curved.dart';
import 'package:flutter_ui_challenge/widgets/button_elevated.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCurved(title: 'UI-Challenges'),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Contents',
                style: Theme.of(context).textTheme.titleLarge!.merge(TextStyle(color: Colors.black54)),
              ),
              SizedBox(height: 20),
              ButtonElevated(txt: 'Grocery', onPressed: () => NavigationRoutes().push(context, Routes.groceryMainPage)),
              SizedBox(height: 12),
              ButtonElevated(txt: ''),
              SizedBox(height: 12),
              ButtonElevated(txt: ''),
              SizedBox(height: 12),
              ButtonElevated(txt: ''),
              SizedBox(height: 12),
              ButtonElevated(txt: ''),
            ],
          ),
        ));
  }
}
