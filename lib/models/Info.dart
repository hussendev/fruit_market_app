import 'package:flutter/cupertino.dart';

class Info {
  String title;
  String subTitle;
  String image;

  Info({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<Info> info1 = [
  Info(
    title: "Strawberry",
    subTitle: "\$ 300 Per/ kg",
    image: "assets/images/stawberry.jpg",
    // onPress: (){
    //   Navigator.pushNamed(context, "/");
    // }
  ),
  Info(
    title: "Grapes",
    subTitle: "\$ 160 Per/ kg",
    image: "assets/images/grapes.webp",
  ),
  Info(
    title: "Oranges",
    subTitle: "\$ 120 Per/ kg",
    image: "assets/images/oranges.jpg",
  ),
];

List<Info> info2 = [
  Info(
    title: "Multi Fruits Pack",
    subTitle: "\$ 350 Per/ kg",
    image: "assets/images/Multi Furit.jpg",
  ),
  Info(
    title: "Paper Fruits Pack",
    subTitle: "\$ 230 Per/ kg",
    image: "assets/images/paper.jpg",
  ),
  Info(
    title: "Tropicana",
    subTitle: "\$ 140 Per/ kg",
    image: "assets/images/tropicana.jpg",
  ),
];
