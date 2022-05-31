import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#69A03A"),
        title: Text("Favourites",style: TextStyle(fontSize: 14,fontFamily: "Poppins"),),
      ),
    );
  }
}
