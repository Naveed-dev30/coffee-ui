import 'package:coffee_shop/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Function(int) onAdd;
  CoffeeTile({this.onAdd});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => CheckoutScreen(),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
            width: screenSize.width * 0.5,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        onAdd(0);
                      },
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
                Image.asset('assets/coffee_heart.png'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "\$10.04",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: Theme.of(context).textTheme.headline6.fontSize,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cappucino',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Theme.of(context).textTheme.headline5.fontSize,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Aliquam rutrum elit quis hendrerit malesuada. Nunc facilisis lectus quis velit accumsan……...',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    for (var star = 0; star < 5; star++)
                      Icon(
                        Icons.star,
                        color: Theme.of(context).accentColor,
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
