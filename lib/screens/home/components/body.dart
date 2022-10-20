import 'package:flutter/material.dart';
import 'package:flutter_example/constants.dart';
import 'package:flutter_example/models/Product.dart';
import 'package:flutter_example/screens/details/details_screen.dart';
import 'package:flutter_example/screens/home/components/item_card.dart';

// import 'categories.dart';

class Body extends StatefulWidget {
  Body({super.key, required this.searchTerm});
  final String? searchTerm;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;
  List filteredChampions = [...products];

  void selectCategory(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void filterChampions(int index) {
    final champions = products.where((champion) {
      final position = champion.position;
      String pos = '';
      switch (index) {
        case 1:
          pos = 'ASSASSIN';
          break;
        case 2:
          pos = 'FIGHTER';
          break;
        case 3:
          pos = 'MAGE';
          break;
        case 4:
          pos = 'MARKSMAN';
          break;
        case 5:
          pos = 'SUPPORT';
          break;
        case 6:
          pos = 'TANK';
          break;
        case 0:
          pos = "";
      }
      return position.contains(pos);
    }).toList();
    setState(() {
      filteredChampions = (champions.length == 0) ? products : champions;
      selectedIndex = index;
    });
  }

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
        Categories(
          selectCategory: filterChampions,
          selectedIndex: selectedIndex,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: filteredChampions.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin / 4,
                  crossAxisSpacing: kDefaultPaddin / 4,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: filteredChampions[index],
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: filteredChampions[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories(
      {Key? key, required this.selectedIndex, required this.selectCategory})
      : super(key: key);
  final Function selectCategory;
  final int selectedIndex;
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["전체", "암살자", "전사", "마법사", "원거리 딜러", "서포터", "탱커"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () => widget.selectCategory(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.selectedIndex == index
                    ? kTextColor
                    : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 30,
              color: widget.selectedIndex == index
                  ? Colors.black
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
