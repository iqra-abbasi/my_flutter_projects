
import 'package:flutter/material.dart';
import 'package:zego_zimkit/services/services.dart';

import 'home page 1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final userID=TextEditingController();
  final userName=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Login Page")),
      ),


body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      TextFormField(
        controller: userID,

        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "userID"
        ),
      ),

      SizedBox(height: 20,),

      TextFormField(
        controller: userName,

        decoration: InputDecoration(
          border: OutlineInputBorder(),
            labelText: "userName"
        ),
      ),

      SizedBox(height: 20,),

      ElevatedButton(
          onPressed:() async

          {
await ZIMKit().connectUser(id: userID.text, name: userName.text);

Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
          },

          child: Text("Login"),
      ),
    ],
  ),
),

    );
  }
}
