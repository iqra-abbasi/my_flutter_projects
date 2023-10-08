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

    onTap: () async {
      // Check if there is a current user session
      if (FirebaseAuth.instance.currentUser != null) {
        try {
          await FirebaseAuth.instance.signOut();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Successfully Logged Out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignUp()),
          );
        } catch (error) {
          print("Error logging out: $error");
        }
      } else {
        // There is no user session to log out
        print("No user to log out");
      }
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
