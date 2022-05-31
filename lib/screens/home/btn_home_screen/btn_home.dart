import 'package:flutter/material.dart';
import 'package:fruit_market_app/models/Info.dart';
import 'package:fruit_market_app/models/details.dart';
import 'package:fruit_market_app/screens/home/detail1s_screen/details1_screen.dart';
import 'package:fruit_market_app/screens/home/details2_screen/details2_screen.dart';
import 'package:fruit_market_app/widgets/list_view_widget.dart';
import 'package:hexcolor/hexcolor.dart';

import '../home_page_screen.dart';

class home_widget_screen extends StatefulWidget {


  @override
  _home_widget_screenState createState() => _home_widget_screenState();
}

class _home_widget_screenState extends State<home_widget_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 125,
                width: 405,
                decoration: BoxDecoration(color: HexColor("#69A03A")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 55, right: 20.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fruit Market",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Poppins",
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 109, right: 30, left: 30),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey)),
                  ),
                  width: 335,
                  height: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(0, 3),
                            blurRadius: 36)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),


          listViewCat(),

          Padding(
            padding: const EdgeInsets.only(
              top: 26,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Organic Fruits  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                                text: '(20% off)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#4CA300"))),
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pick up from organic farms",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return listView_widget(
                    info: info1[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Details1Sreen(details: details[index],);
                          })
                      );
                    },
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Mixed Fruit Pack  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                                text: '(10% off)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#4CA300"))),
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pick up from organic farms",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return listView_widget
                    (info: info2[index],
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Details2Sreen(details2: details2[index],)));
                    },);
                }),
          ),
        ],
      ),
    );
  }
}