import 'package:flutter/material.dart';
import 'package:fruit_market_app/models/Info.dart';
import 'package:fruit_market_app/models/details.dart';
import 'package:hexcolor/hexcolor.dart';

class listView_widget extends StatelessWidget {
  final Info? info;
  // final Details? details;
  final VoidCallback? press;

  listView_widget({
    this.info,
    // this.details,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 20),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    info!.image,
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.antiAlias,
                  height: 143,
                  width: 118,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.5, left: 20.3),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: HexColor("#FFB238"),
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFB238"),
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFB238"),
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFB238"),
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 5.1),
            child: Text(
              info!.title,
              style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 5.1),
            child: Text(
              "${info!.subTitle}",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
