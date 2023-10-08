import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentification/sign.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("home page")),
      ),


body: Center(
  child:   InkWell(

    onTap: ()
    {

      //firebase logout
      FirebaseAuth.instance.signOut().then((value) {

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Successfully Log Out",
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 20, // Set the font size
              ),)));
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

      });



    },

    child: Container(
      alignment: Alignment.center,

      width: 170,
      height: 50,
      color: Colors.purple,
      child: Text("LogOut",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,
        ),),



    ),
  ),
),

    );
  }
}
