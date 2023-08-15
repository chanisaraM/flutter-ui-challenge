import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/res/grocery.dart';
import 'package:flutter_ui_challenge/theme/config.dart';
import 'package:flutter_ui_challenge/widgets/grocery/mini_card.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 12, right: 12),
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return PromotionCard(promotions: GroceryData.promotionsList[index]);
                }),
          ),
        ],
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  final Map<String, dynamic> promotions;
  const PromotionCard({super.key, required this.promotions});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: promotions['bgColor'],
      ),
      child: Row(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12),
                height: 200,
                width: size.width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/${promotions['image']}'),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Column(
                    children: [
                      Text(
                        promotions['title'],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Grocery.titleColor),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          promotions['detail'],
                          style: const TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
