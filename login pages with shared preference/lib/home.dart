import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task03/welcome.dart';

class Home extends StatefulWidget {
  //const Home({super.key});

  var nameFromHome;

  //constructor
  Home(this.nameFromHome);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



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

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
    }
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Home Page")),
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
                          color: Colors.blue,
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
