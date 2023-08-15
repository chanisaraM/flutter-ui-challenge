import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/theme/config.dart';

class GroceryData {
  static List<List<String>> typeOfFood = [
    ['Vegetables', 'vegetable.png'],
    ['Fruits', 'fruits.png'],
    ['Cereals', 'cereals.png'],
    ['Tubers', 'potato.png'],
    ['Legumes', 'legumes.png'],
    ['Dairy', 'dairy.png'],
    ['Meat', 'meat.png'],
  ];
  static List<Map<String, dynamic>> promotionsList = [
    {
      "image": "promotion01.png",
      "title": "10% Discount",
      "detail": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel mattis sem.",
      "bgColor": Grocery.secondary
    },
    {
      "image": "promotion02.png",
      "title": "5% Discount",
      "detail": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel mattis sem.",
      "bgColor": Grocery.secondary
    }
  ];

  static List<List<String>> categories = [
    ['Vegetables', 'vegetable.png'],
    ['Fruits', 'fruits.png'],
    ['Cereals', 'cereals.png'],
    ['Tubers', 'potato.png'],
    ['Legumes', 'legumes.png'],
    ['Dairy', 'dairy.png'],
    ['Meat', 'meat.png'],
    ['Snacks', 'snack.png'],
    ['Beverages', 'drinks.png'],
    ['Fish', 'fish.png'],
    ['Seafood', 'dish.png'],
    ['Category', 'application.png'],
    ['Category', 'application.png'],
    ['Category Foods', 'application.png'],
    ['Category', 'application.png'],
    ['Category', 'application.png'],
    ['Category', 'application.png'],
    ['Category', 'application.png'],
  ];
}
