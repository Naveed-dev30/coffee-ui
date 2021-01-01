import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(height: 10),
            Text(
              'Coffee Craze',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline4.fontSize,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Delecious coffee ever',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline6.fontSize,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
