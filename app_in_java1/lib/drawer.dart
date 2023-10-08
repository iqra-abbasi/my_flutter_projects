import 'package:app_in_java/home-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {

//image url
  final imageUrl=
      "https://media.istockphoto.com/id/1254508881/photo/woman-holding-sale-shopping-bags-consumerism-shopping-lifestyle-concept.jpg?b=1&s=612x612&w=0&k=20&c=S4nh5T3QotfFKKjzKIB8SOz4aukbBCV2rfzEAcvGAlA=";
    
    //drawer
    return Drawer(

      //listview
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          DrawerHeader(

            padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,


                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,

                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),

                  accountName: Text("Fashion.pk",
                  style: TextStyle(
                    fontSize:17,
                    fontWeight: FontWeight.bold,
                  ),
                  textScaleFactor: 2.0,),

                  accountEmail: Text("abbasi@mail.com",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),),

                 arrowColor: Colors.pink,
                  
                 // currentAccountPicture: Image.asset("assets/images/login.png"),

                  //or taking image from url


                  //currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),



          ListTile(
           // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.home,
            color: Colors.red,
            size: 40,),


            title: Text("Home Page",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),


            onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },

          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.red,
              size: 40,),


            title: Text("My Account",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.shopping_cart,
              color: Colors.red,
              size: 40,),


            title: Text("My Orders",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),


          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.circle_grid_hex,
              color: Colors.red,
              size: 40,),


            title: Text("Categories",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),


          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.heart,
              color: Colors.red,
              size: 40,),


            title: Text("My favourites",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.settings,
              color: Colors.red,
              size: 40,),


            title: Text("settings",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.question_circle,
              color: Colors.red,
              size: 40,),


            title: Text("about",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.lock_fill,
              color: Colors.red,
              size: 40,),


            title: Text("LogOut",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),
        ],
      ),
    );
  }
}
