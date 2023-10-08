import 'package:app_in_java/cart-page.dart';
import 'package:app_in_java/fashion-pk.dart';
import 'package:app_in_java/home-page-2.dart';
import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/login.dart';
import 'package:app_in_java/reset-password.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:app_in_java/splash-screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());//constructor or obj call in main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: LoginPage(),


      debugShowCheckedModeBanner: false,


      //theme light

      themeMode:ThemeMode.light,

      theme: ThemeData(
        primarySwatch: Colors.brown,

        appBarTheme: AppBarTheme(
          color: Colors.teal[800],
          elevation: 0,


          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

      ),


//theme dark
      darkTheme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          color: Colors.purple,
          elevation: 0,


          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),






      //manually move from one page to another
      initialRoute: "/",
      routes: {
        "/":(context) =>SplashScreen(),
        "":(context) => HomePage(),


      },
    );
  }
}

