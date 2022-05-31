import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#69A03A"),
        title: Text("Shopping Cart",style: TextStyle(fontSize: 14,fontFamily: "Poppins"),),
      ),
    );
  }
}
