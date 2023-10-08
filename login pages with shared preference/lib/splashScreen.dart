import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task03/home.dart';
import 'package:task03/loginpage.dart';
import 'package:task03/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState()
  {


/*
Timer(Duration(seconds: 3), ()
{

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPAge()));

}
);

 */



//coding for shared preferences that i user already login then after splash screen
    //it directly goes to home page otherwise login page

    //function create
    whereToGo();



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlue,



      body: Center(
        child: Container(


          child: Image.asset("assets/images/login.png",
          fit: BoxFit.fill,),

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
        Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => Welcome()));
      }
      else {
        Navigator.pushReplacement(context as BuildContext ,
            MaterialPageRoute(builder: (context) =>LoginPAge() ));
      }
    }
    else {
      Navigator.pushReplacement(context as BuildContext,
          MaterialPageRoute(builder: (context) => LoginPAge()));
    }
  },

  );
}

}