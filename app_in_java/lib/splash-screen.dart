import 'dart:async';
//import 'dart:js';

import 'package:app_in_java/fashion-pk.dart';
import 'package:app_in_java/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  //initialization when page load this func will call
  void initState() {
    // TODO: implement initState
    super.initState();

    //coding for shared preferences that i user already login then after splash screen
    //it directly goes to home page otherwise login page

    //function create
    whereToGo();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(

              width: 230,

              height: 200,


              child: CircleAvatar(

                backgroundImage: AssetImage("assets/images/splash.png"),

                radius: 200,

              ),

            ),


            /*Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 500,
              height: 300,
              child: Image.asset("assets/images/logo.jpg",
              scale:1,),



            ),

              */
            SizedBox(height: 20,),


            /* SizedBox(

              child: Text("Fashion.Pk",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),),

            )

            */
          ],
        ),
      ),
    );
  }


  void whereToGo() async {
    var sharepref = await SharedPreferences.getInstance();
    var loggedin = sharepref.getBool("login");


    //use of timer

    Timer(Duration(seconds: 3), () {
      //use pushreplacement k when we open app this splash screen
      //appear only one time and then replace with login page in
      //stack and again cannot appear splash screen again when we
      //go back
      if (loggedin != null) {
        if (loggedin) {
          Navigator.pushReplacement(context ,
              MaterialPageRoute(builder: (context) => FashionPk()));
        }
        else {
          Navigator.pushReplacement(context ,
              MaterialPageRoute(builder: (context) => LoginPage()));
        }
      }
      else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }
    },

    );
  }

}