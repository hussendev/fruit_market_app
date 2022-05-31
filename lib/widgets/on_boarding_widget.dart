import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class onBoardingWidget extends StatelessWidget {
  final String title;
  final String image;
  final String subtTitle;
  final double height;
  final double wihdth;
  final double sizedBox;


  const onBoardingWidget({
    required  this.title,
    required  this.image,
    required  this.subtTitle,
    required  this.height,
    required  this.wihdth,
    required  this.sizedBox,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //"asset/images/Capture.PNG"
        Image.asset(image,width: wihdth,height: height,),
        SizedBox(
          height: sizedBox,
        ),
        Text(
            title,
          // "E Shopping",
          style: TextStyle(
              color: HexColor("##2F2E41"),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              letterSpacing: 2),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          subtTitle,
          // "Explore  top organic fruits & grab them",
          style: TextStyle(
            color: HexColor("#78787C"),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
