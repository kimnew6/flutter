import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_example/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  String? searchTerm;
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(() {
      setState(() {
        searchTerm = textController.text;
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(searchTerm: searchTerm),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
              icon: SvgPicture.asset("assets/icons/back.svg"),
              onPressed: () {}),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: AnimSearchBar(
              width: 375,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
              color: Colors.grey,
              helpText: 'Search Champion...',
              closeSearchOnSuffixTap: true,
            ),

            // IconButton(
            //   icon: SvgPicture.asset(
            //     "assets/icons/search.svg",
            //     color: kTextColor,
            //   ),
            //   onPressed: () {},
            // ),
          ),
        ]);
  }
}
