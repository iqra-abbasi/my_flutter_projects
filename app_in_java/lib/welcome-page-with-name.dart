import 'dart:async';

import 'package:app_in_java/fashion-pk.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  //const WelcomePage({super.key});


  var nameFromHome;

  //constructor
  WelcomePage(this.nameFromHome);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {



  //initialization when page load this func will call
  void initState() {
    // TODO: implement initState
    super.initState();

    //use of timer

    Timer(Duration(seconds: 2),()
    {
      //use pushreplacement k when we open app this splash screen
      //appear only one time and then replace with login page in
      //stack and again cannot appear splash screen again when we
      //go back

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FashionPk()));
    }
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        backgroundColor: Colors.teal[800],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    children: [

                      Text("WELCOME, ${widget.nameFromHome}:)",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[800],
                          fontFamily: "Preahvihear",
                        ),),

                    ],

                  ),
                )),
          ],
        ),
      ),
    );
  }
}

