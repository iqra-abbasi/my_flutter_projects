import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task02_food_ui/page1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




  //initialization when page load this will call
  void initState()
  {
Timer(Duration(seconds: 3), () {

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Page1()));

});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.pinkAccent[100],

      appBar: AppBar(
        title: Center(child: Text("Splash Screen")),
        backgroundColor: Colors.pink,
      ),


      body:Center(
        child: Container(
          child: Image.asset("assets/images/icon.png",
          fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
