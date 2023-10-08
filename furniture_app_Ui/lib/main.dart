
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/cart%20page.dart';
import 'package:furniture_app/home_page.dart';

void main(){

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

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
        //primarySwatch: Colors.teal,

        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),




      initialRoute: "/",
      routes: {
        "/": (context)=> Homepage(),
        //  "/":(context)=>(),

      },

    );




  }
}
