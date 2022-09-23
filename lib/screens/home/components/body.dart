import 'package:flutter/material.dart';
import 'package:flutter_example/constants.dart';
import 'package:flutter_example/models/Product.dart';
import 'package:flutter_example/screens/details/details_screen.dart';
import 'package:flutter_example/screens/home/components/item_card.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "챔피언 분석",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin / 4,
                  crossAxisSpacing: kDefaultPaddin / 4,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
