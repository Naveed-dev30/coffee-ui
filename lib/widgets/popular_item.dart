import 'package:coffee_shop/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  final Function(int) onAdd;
  PopularItem({this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 50, right: 15),
              child: ListTile(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CheckoutScreen(),
                  ),
                ),
                tileColor: Colors.white,
                leading: SizedBox(width: 20),
                title: Text(
                  'Frappucino',
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Aliquam rutrum elit quis hendrerit malesuad nunc fa...………...',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('\$13.04'),
                    CircleAvatar(
                      radius: 14,
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
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.rotate(
              angle: 160,
              child: Container(
                width: 130,
                height: 130,
                child: Image.asset(
                  'assets/tea_flower_one.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
