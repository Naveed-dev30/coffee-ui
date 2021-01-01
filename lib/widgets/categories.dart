import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final Function(int) onCategorySelected;
  Categories({this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              onCategorySelected(0);
            },
            child: Container(
              child: Text(
                "Hot Cappucino",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 2.0, color: Theme.of(context).accentColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
