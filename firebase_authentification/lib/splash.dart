
import 'dart:async';

import 'package:firebase_authentification/login.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState()
  {



    Timer(Duration(seconds: 3), ()
    {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPAge()));

    }
    );




  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      body: Center(
        child: Container(


          child: Image.asset("assets/images/login.png",
            color: Colors.purple,
            fit: BoxFit.fill,),

        ),

      ),

    );
  }






}