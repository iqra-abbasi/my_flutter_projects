import 'package:flutter/material.dart';
import 'package:task03/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: SplashScreen(),


debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.light,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        appBarTheme:AppBarTheme(
          color: Colors.blue,

        ),


        iconTheme: IconThemeData(
          color: Colors.white,
        ),

      ),


      initialRoute: "/",
      routes: {
        "/":(context)=>SplashScreen(),
      },
    );
  }
}
