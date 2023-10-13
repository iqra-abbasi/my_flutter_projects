import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:  Column(
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: DrawerHeader(
              child:Image.asset("assets/images/person.png",
                width: 30,
                height: 10,),
              //child: Icon(Icons.add_box_rounded,color: Colors.black,),
            ),
          ),


          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.dashboard,color: Colors.black,),
            title: Text("Dashboard"),
            onTap: ()
            {},
          ),



          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.money,color: Colors.black,),
            title: Text("Transactions"),
            onTap: ()
            {},
          ),



          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.task,color: Colors.black,),
            title: Text("Tasks"),
            onTap: ()
            {},
          ),



          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.document_scanner,color: Colors.black,),
            title: Text("Documents"),
            onTap: ()
            {},
          ),



          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.store,color: Colors.black,),
            title: Text("Store"),
            onTap: ()
            {},
          ),




          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.notification_add,color: Colors.black,),
            title: Text("Notification"),
            onTap: ()
            {},
          ),




          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.person,color: Colors.black,),
            title: Text("Profile"),
            onTap: ()
            {},
          ),




          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(Icons.settings,color: Colors.black,),
            title: Text("settings"),
            onTap: ()
            {},
          ),





        ],
      ),



    );
  }
}
