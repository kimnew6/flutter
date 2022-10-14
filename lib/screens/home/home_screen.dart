import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_example/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
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
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: kTextColor,
              ),
              onPressed: () {},
            ),
          ),
        ]);
  }
}
