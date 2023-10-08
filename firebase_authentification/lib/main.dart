
import 'package:firebase_authentification/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() async {

  //firebase initialzation
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
         // color: Colors.blue,
          color:Color(0xff5C2E7E),

        ),


        iconTheme: IconThemeData(
          color: Colors.white,
        ),

      ),


      initialRoute: "/",
      routes: {
        "/":(context)=>SplashScreen(),
"splash":(context)=> LoginPAge(),
      },
    );
  }
}
