import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatefulWidget {
  @override
  _IncrementDecrementButtonState createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  var amount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 10),
          Material(
            child: InkWell(
              child: Icon(Icons.remove),
              onTap: () {
                setState(() {
                  amount = amount > 0 ? amount - 1 : amount;
                });
              },
            ),
          ),
          SizedBox(width: 10),
          Text(
            '$amount',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: Theme.of(context).textTheme.headline4.fontSize,
            ),
          ),
          SizedBox(width: 10),
          Material(
            child: InkWell(
              onTap: () {
                setState(() {
                  amount++;
                });
              },
              child: Icon(Icons.add),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
