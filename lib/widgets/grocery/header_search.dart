// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

class HeaderSearch extends StatelessWidget {
  const HeaderSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return Container(
      margin: const EdgeInsets.only(left: 28, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning....',
            style: Theme.of(context).textTheme.bodyLarge!.merge(TextStyle(color: Grocery.titleColor, fontWeight: FontWeight.w700)),
          ),
          Text(
            'Lets search your food.',
            style: Theme.of(context).textTheme.bodyMedium!.merge(TextStyle(color: Grocery.titleColor)),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 2, right: 40),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    suffixIcon: Material(
                      elevation: 1.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.search,
                        color: Grocery.accent,
                      ),
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
