import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/main.dart';
import 'package:flutter_ui_challenge/pages/grocery_main_page.dart';
import 'package:flutter_ui_challenge/router/route_extension.dart';

import 'app_routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.groceryMainPage:
      // final args = settings.arguments! as String;
      return _getPageRoute(
        routeName: settings.name!,
        screen: const GroceryMainPage(),
        // screen: const GroceryMainPage(params: args),
      );
    case Routes.home:
      return _getPageRoute(
        routeName: settings.name!,
        screen: const MainApp(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No Route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({
  required String routeName,
  required Widget screen,
}) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.rightToLeft,
  );
}
