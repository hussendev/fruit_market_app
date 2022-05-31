import 'package:flutter/material.dart';
import 'package:fruit_market_app/models/details.dart';
import 'package:hexcolor/hexcolor.dart';

class Body2 extends StatelessWidget {
  final Details details2;


  Body2({required  this.details2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Container(
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              details2.image,
              fit: BoxFit.cover,
            ),
            height: 176,
            width: 335,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 8),
          child: Text(
            details2.title,
            style: TextStyle(fontFamily: "Poppins", fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 31.5, bottom: 25),
          child: Text(
            details2.subTitle,
            style: TextStyle(color: HexColor("#626262")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Text(
            "Nutrition",
            style: TextStyle(fontFamily: "Poppins", fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Fiber",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Potassium",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Iron",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Magnesium",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Vitamin C",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Vitamin K",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Zinc",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16, bottom: 56),
          child: Row(
            children: [
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                    color: HexColor("#838181"), shape: BoxShape.circle),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Phosphorous",
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor("#393939"),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 19.5,
              ),
              child: Text(
                details2.salary,
                style: TextStyle(fontFamily: "Poppins", fontSize: 16),
              ),
            ),
            SizedBox(
              width: 105,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(148, 40),
                  primary: HexColor("#769E49"),
                ),
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style:
                  TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ))
          ],
        )
      ],
    );
  }
}