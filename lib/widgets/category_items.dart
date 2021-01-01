import 'package:flutter/material.dart';

import 'coffee_tile.dart';

class CategoryItems extends StatelessWidget {
  final Function(int) onAdd;
  CategoryItems({this.onAdd});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.5,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) => CoffeeTile(onAdd: onAdd),
      ),
    );
  }
}
