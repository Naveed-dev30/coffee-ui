import 'package:coffee_shop/widgets/categories.dart';
import 'package:coffee_shop/widgets/category_items.dart';
import 'package:coffee_shop/widgets/drawer_button.dart';
import 'package:coffee_shop/widgets/popular_item.dart';
import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(
          onTap: () {
            //Drawer Button Tapped
          },
        ),
        title: Text('Coffee Craze'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              onChange: (value) {
                //value is updated string value in text field
              },
            ),
            SizedBox(height: 10),
            Categories(
              onCategorySelected: (catId) {
                //On tap on Category, catId is recieved
              },
            ),
            CategoryItems(
              onAdd: (id) {
                //id of coffee
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PopularItem(
              onAdd: (id) {
                //Id of Coffee
              },
            ),
            PopularItem(
              onAdd: (id) {
                //Id of Coffee
              },
            ),
          ],
        ),
      ),
    );
  }
}
