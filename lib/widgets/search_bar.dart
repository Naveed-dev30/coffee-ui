import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onChange;
  SearchBar({this.onChange});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(60),
              )),
        ),
        Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: screenWidth * 0.8,
                      child: TextField(
                        onChanged: (value) {
                          onChange(value);
                        },
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Theme.of(context).accentColor,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
