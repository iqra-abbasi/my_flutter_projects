import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home page.dart';

void main() async{

  //firebase initialzation
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

     // home: HomePage(),

      debugShowCheckedModeBanner: false,


      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.teal,


        appBarTheme: AppBarTheme(
          color: Colors.pink,
        ),

        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),




      initialRoute: "/",
      routes: {
        "/": (context)=> HomePage(),
      //  "/":(context)=>(),

      },

    );




  }
}
