
import 'package:dashboard_web/side%20menu%20bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(

                //default flex=1
                //take 1/6 part of the page
                child:SideMenu(),

              ),


              Expanded(
                //it takes 5/6 part of the page
                flex: 5,
                child: DashboardScreen(),
              ),



            ],
          ),
        )

    );
  }
}
