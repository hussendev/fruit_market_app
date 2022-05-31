import 'package:flutter/material.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  _SuccessfulScreenState createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, "/HomePageScreen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(Icons.check_circle_outline,size: 150,color: Colors.green,),
          ),
          SizedBox(height: 15,),
          Text("Successfully Registered",style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25
          ),)
        ],

      ),

    );
  }
}
