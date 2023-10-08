import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task02_food_ui/page1.dart';
import 'package:task02_food_ui/page3.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  final imgurl="https://www.pexels.com/photo/delicious-burger-with-fried-egg-and-fries-4393021/";


  @override
  Widget build(BuildContext context) {


    return Drawer(

    backgroundColor: Colors.grey[100],


child: ListView(

  padding: EdgeInsets.zero,

  children: [

    DrawerHeader(
padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,

        child: UserAccountsDrawerHeader(
          margin: EdgeInsets.zero,

          decoration: BoxDecoration(
            color: Colors.pinkAccent,
          ),

          accountName: Text("FoodPanda",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Preahvihear",
              fontSize:20,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 1.0,),

          accountEmail: Text("iqra@mail.com",
            style: TextStyle(
              fontFamily: "Preahvihear",
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),),

currentAccountPicture: CircleAvatar(
  backgroundImage: NetworkImage(imgurl),
 // backgroundColor: Colors.blue,
),

        ),
    ),




    ListTile(
      leading: Icon(Icons.home,
      color: Colors.pink,
      size: 30,),

      title: Text("Home Page",
        style: TextStyle(
          fontFamily: "Preahvihear",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
      },
    ),



    ListTile(
      leading: Icon(CupertinoIcons.profile_circled,
        color: Colors.pink,
        size: 30,),

      title: Text("My Account",
        style: TextStyle(
          fontFamily: "Preahvihear",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),

    ),



ExpansionTile(
    title: Text("My category",
        style: TextStyle(
          fontFamily: "Preahvihear",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),

  leading: Icon(CupertinoIcons.circle_grid_hex,
    color: Colors.pink,
    size: 30,) ,

  children: [
    ListTile(
      title: Text("Todays specials",
        style: TextStyle(
          fontFamily: "Preahvihear",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),

      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage2()));
      },
    ),
  ],

),



    ExpansionTile(
      title: Text("About",
          style: TextStyle(
            fontFamily: "Preahvihear",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),

      leading: Icon(CupertinoIcons.question_circle,
        color: Colors.pink,
        size: 30,) ,

      children: [
        ListTile(
          title:   Text("Foodpanda is a global online food delivery platform connecting customers with a variety of restaurants for convenient meal ordering and delivery.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black54,
              fontSize: 16,
              fontFamily: "Preahvihear",
            ),),
        )
      ],
    ),


    ListTile(
      // leading: Icon(Icons.home),
      leading: Icon(CupertinoIcons.lock_fill,
        color: Colors.pink,
        size: 30,),


      title: Text("LogOut",
        style: TextStyle(
          fontFamily: "Preahvihear",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),

      onTap: ()
      {
      },
    ),

  ],
),









    );
  }
}
