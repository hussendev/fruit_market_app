import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController!.forward();
    super.initState();
    // Future.delayed(
    //   Duration(seconds: 2),(){
    //     Navigator.pushReplacementNamed(context, "/OnBoardingScreen");
    // },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              "assets/images/Multi Furit.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Fruit Market",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  color: Colors.orange,
                  letterSpacing: 1),
            ),
          )
        ],
      ),
    );
  }
}
