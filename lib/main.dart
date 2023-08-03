// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/pages/menu.dart';
import 'package:flutter_ui_challenge/router/main_route.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: generateRoute,
        theme: ThemeData(
          fontFamily: ThemeConfig.fontFamily,
          brightness: Brightness.light,
          textTheme: ThemeConfig.textTheme,
        ),
        home: MenuPage());
  }
}
