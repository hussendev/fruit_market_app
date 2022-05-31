import 'package:flutter/material.dart';
import 'package:fruit_market_app/screens/home/home_page_screen.dart';
import 'package:fruit_market_app/screens/login_screen/home_screen.dart';
import 'package:fruit_market_app/screens/login_screen/successful_screen.dart';
import 'package:fruit_market_app/screens/onboarding/on_boarding_screen.dart';
import 'package:fruit_market_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/SplashScreen",
      routes: {
        "/SplashScreen":(context)=>SplashScreen(),
        "/OnBoardingScreen":(context)=>OnBoardingScreen(),
        "/HomeScreen":(context)=>HomeScreen(),
        "/HomePageScreen":(context)=>HomePageScreen(),
        "/SuccessfulScreen":(context)=>SuccessfulScreen(),

      },

    );
  }
}


