import 'package:flutter/material.dart';
import 'package:fruit_market_app/widgets/on_boarding_widget.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late  PageController _pageController;
   int currentIndexPage=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Visibility(
            visible: currentIndexPage !=2,
            maintainAnimation: true,
            maintainSize: true,
            maintainState: true,

            child: Padding(
              padding: const EdgeInsets.only(
                  left: 318, bottom: 84.5, right: 30, top: 86),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _pageController.animateToPage(2,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 500));
                  });
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: HexColor("#898989"), fontSize: 14),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 46),
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndexPage = value;
                  });
                },
                children: [
                  onBoardingWidget(
                    sizedBox: 47.1,
                    height: 210.91,
                    wihdth: 272.54,
                    title: "E Shopping",
                    image: "assets/images/Capture.PNG",
                    subtTitle: "Explore  top organic fruits & grab them",
                  ),
                  onBoardingWidget(
                    sizedBox: 76.5,
                    height: 151.47,
                    wihdth: 268.68,
                    title: "Delivery on the way",
                    image: "assets/images/Capture1.PNG",
                    subtTitle: "Get your order by speed delivery ",
                  ),
                  onBoardingWidget(
                    sizedBox: 29.9,
                    height: 245.14,
                    wihdth: 255.68,
                    title: "Delivery Arrived",
                    image: "assets/images/Capture2.PNG",
                    subtTitle: "Order is arrived at your Place",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 89),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndexPage == 0
                          ? HexColor("#69A03A")
                          : HexColor("#69A03A").withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndexPage == 1
                          ? HexColor("#69A03A")
                          : HexColor("#69A03A").withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndexPage == 2
                          ? HexColor("#69A03A")
                          : HexColor("#69A03A").withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility (
            visible: currentIndexPage!=2,
            replacement: Padding(
              padding: const EdgeInsets.only(bottom: 98),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: HexColor(("#69A03A")), minimumSize: Size(146, 48)),
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacementNamed(context, "/HomeScreen");
                  }
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            child: Padding(
              
              padding: const EdgeInsets.only(bottom: 98),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: HexColor(("#69A03A")), minimumSize: Size(146, 48)),
                onPressed: () {
                  setState(() {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                    // currentIndexPage++;
                  });
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
