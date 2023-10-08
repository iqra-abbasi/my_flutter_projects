
import 'package:chat_app/home_page.dart';
import 'package:chat_app/utl.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/services/services.dart';



void main() async {

ZIMKit().init(
  appID: Utisl.id,
    appSign: Utisl.signIn,

);


  runApp(const MyApp());
}





class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),


      debugShowCheckedModeBanner: false,


      themeMode: ThemeMode.light,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        appBarTheme:AppBarTheme(
           color: Colors.black,
         // color:Color(0xff5C2E7E),

        ),


        iconTheme: IconThemeData(
          color: Colors.white,
        ),

      ),


      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        //"splash":(context)=> LoginPAge(),
      },
    );
  }
}
