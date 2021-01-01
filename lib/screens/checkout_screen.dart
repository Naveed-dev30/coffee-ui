import 'package:coffee_shop/widgets/increment_decrement_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(elevation: 0.0),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenSize.height * 0.25,
                width: screenSize.width,
                color: Theme.of(context).primaryColor,
              ),
              Image.asset('assets/tea_flower_two.png'),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/beans.png'),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Cappucino",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "\$13.04",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'The name cappuccino comes from Cappucino frame reffering to the colour of their habits and in this context referring to the colour ofthe beve-rage when milk is added in small portion tpdark brewed coffee....',
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    for (var star = 0; star < 5; star++)
                      Icon(
                        Icons.star,
                        color: Theme.of(context).accentColor,
                      )
                  ],
                ),
                SizedBox(width: 20),
                Text(
                  '12K Sales',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          IncrementDecrementButton(),
          SizedBox(height: 20),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {},
            child: Text(
              'Order Now',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
