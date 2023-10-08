import 'package:flutter/material.dart';
import 'package:task03/loginpage.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome")),
        
      ),

body: Center(
  child:   InkWell(
    onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPAge()));
    },
    
    child: Container(
      width: 100,
      height: 60,
      color: Colors.blue,
      child: Text("LogOUt",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white,
      ),
      textScaleFactor: 1.3,),
    ),
  ),
),

    );
  }
}
