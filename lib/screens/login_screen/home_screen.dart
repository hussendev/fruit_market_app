import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;
  String? errorController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 56),
            Center(
              child: Image.asset("assets/images/Capture3.PNG"),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Fruit Market",
              style: TextStyle(
                fontSize: 42,
                color: HexColor("##69A03A"),
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(height: 56),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.red.shade500),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          width: 1, style: BorderStyle.solid, color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: "Enter Your Mobile Number",
                    errorText: errorController,
                    helperStyle: TextStyle(
                      color: HexColor("#393939"),
                      fontSize: 12,
                    )),
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                checked();
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(160, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text(
                "Register",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 64),
            Text(
              "OR",
              style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
            ),
            SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 45),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/download.png",
                        height: 26,
                        width: 26,
                      ),
                      SizedBox(
                        width: 17.4,
                      ),
                      Text("Log in with",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(160, 45),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.3, right: 15),
                        child: Icon(
                          Icons.facebook_outlined,
                          size: 35,
                          color: HexColor("#3B5998"),
                        ),
                      ),
                      Text("Log in with",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void checked() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_controller.text.isNotEmpty) {
      _checkFieldsError();
      return true;
    } else {
      _checkFieldsError();
      return false;
    }
  }

  void _checkFieldsError() {
    setState(() {
      errorController = _controller.text.isEmpty ? "Enter Your Phone Number" : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, "/SuccessfulScreen");
  }
}
