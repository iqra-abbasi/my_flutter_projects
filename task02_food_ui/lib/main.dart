import 'package:flutter/material.dart';
import 'package:task02_food_ui/page1.dart';
import 'package:task02_food_ui/page2.dart';
import 'package:task02_food_ui/splashscreen.dart';


void main()
{
  runApp(MyApp());//constructor
}


//stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

     // home: Page1(),

      debugShowCheckedModeBanner: false,


      //light theme

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.brown,

        appBarTheme: AppBarTheme(
          color: Colors.pink,
        ),


       iconTheme: IconThemeData(
         color: Colors.white,
       ),

      ),



      //dark theme
      darkTheme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.pink,

        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,


          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),


      //routes
      //manually move from one page to another
      initialRoute: "/",
      routes: {
        "/":(context) =>SplashScreen(),
        "":(context) => page2(),


      },

    );
  }
}
