import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/calculator_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/calculator.png'),
            SizedBox(
              height: 60
            ),
            Text("Calculator",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange
            ),
            ),
            SizedBox(
              height: 20
            ),
            Text("Agnibha Sarkar",
              style: TextStyle(fontSize: 20,
              color: Colors.blueGrey
              ),
            ),
            SizedBox(height: 20,),
            Text("DevSoc",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
            ),
            )
          ],
        ),
       nextScreen: Calculator(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        backgroundColor: Color(0xFF1d2630),
        splashIconSize: 350,
      )
     );
  }
}