import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final VoidCallback onTap;
  DrawerButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Image.asset('assets/drawer_icon.png'),
          onTap: () {
            onTap();
          },
        ),
      ),
    );
  }
}
