import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'btn_home_screen/btn_favourite.dart';
import 'btn_home_screen/btn_home.dart';
import 'btn_home_screen/btn_myAccount.dart';
import 'btn_home_screen/btn_shopping.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isSelected = false;
  int currentIndex = 0;

  List<Widget> list = [
    home_widget_screen(),
    Shopping(),
    Favourite(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        // backgroundColor: Colors.grey,
        selectedItemColor: HexColor("#769E49"),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontFamily: "Poppins", fontSize: 10),
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.grey,
            icon: Icon(Icons.home_outlined),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Shopping cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "My Account",
          )
        ],
      ),
    );
  }
}

class listViewCat extends StatefulWidget {
  @override
  _listViewCatState createState() => _listViewCatState();
}

class _listViewCatState extends State<listViewCat> with SingleTickerProviderStateMixin {
  // List categorise = ["Vegetables", "Fruits", "Dry Fruits"];
  int _selectedIndexCat = 0;

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TabBar(
        unselectedLabelColor: Colors.grey,
        controller: _tabController,
        onTap: (value) {
          _selectedIndexCat = value;
        },
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _selectedIndexCat == 0
              ? HexColor("#CC7D00")
              : Colors.transparent,
        ),
        tabs: [
          Tab(
            text: "Vegatables",
          ),
          Tab(
            text: "Fruits",
          ),
          Tab(
            text: "Dry Fruits",
          ),
        ],
      ),
    );
  }
}

