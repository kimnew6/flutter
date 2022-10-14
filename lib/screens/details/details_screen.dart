import 'package:flutter/material.dart';
import 'package:flutter_example/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
