import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:holaskin/constants.dart';
import 'package:flutter/material.dart';
import 'package:holaskin/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 400,
        splash: Image.asset(
          'assets/images/splash_screen.png',
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: kPrimaryColor,
      ),
      title: 'Hola SKin',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        canvasColor: Colors.transparent,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}