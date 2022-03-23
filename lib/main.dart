import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:home_service/Screens/Signup/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Service',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen
      (curve: Curves.bounceIn,
      splash: Image.asset('assets/images/Group 52780.png'),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      backgroundColor: Colors.white,
      nextScreen: const SignUpPage(),
    )
    );
  }
}
