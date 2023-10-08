import 'package:app_in_java/cart-page-2.dart';
import 'package:app_in_java/fashion-pk.dart';
import 'package:app_in_java/home-page-2.dart';
import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/login.dart';
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

     backgroundColor: Colors.grey[100],

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
                    color: Colors.teal[600],
                   // image: DecorationImage(
                     // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRff6GRVBJ4gydAV5NNPaZXhuLilwNFXqzHXH844csDBJeBa8vYvt3xz0ssScFdgzvoOI&usqp=CAU"),
                      //fit: BoxFit.cover,
                    //),
                    
                  ),

                  accountName: Text("Fashion.pk",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Preahvihear",
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),
                  textScaleFactor: 1.0,),

                  accountEmail: Text("abbasi@mail.com",
                  style: TextStyle(
                    fontFamily: "Preahvihear",
                    fontSize: 13,
                    color: Colors.white,
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
            color: Colors.teal[800],
            size: 30,),


            title: Text("Home Page",
            style: TextStyle(
              fontFamily: "Preahvihear",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),


            onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FashionPk()));
              },

          ),





          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.teal[800],
              size: 30,),


            title: Text("My Account",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.shopping_cart,
              color: Colors.teal[800],
              size: 30,),


            title: Text("My Orders",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            
            onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage2()));
            },
          ),

          ExpansionTile(
            title: Text("My Category",
                style: TextStyle(
                  fontFamily: "Preahvihear",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),

            leading: Icon(CupertinoIcons.circle_grid_hex,
              color: Colors.teal[800],
              size: 30,) ,

            children: [
              ListTile(

                title: Text("Sneakers",
                    style: TextStyle(
                      fontFamily: "Preahvihear",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },

              ),


              ListTile(

                title: Text("Fragrances",
                  style: TextStyle(
                    fontFamily: "Preahvihear",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2()));
                },

              ),



            ],
          ),



         /* ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.circle_grid_hex,
              color: Colors.teal[800],
              size: 35,),


            title: Text("Categories",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
          ),


          */

          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(Icons.favorite,
              color: Colors.teal[800],
              size: 30,),


            title: Text("My favourites",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Preahvihear",
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
          ),



          ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.settings,
              color: Colors.teal[800],
              size: 30,),


            title: Text("settings",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),



         /* ListTile(
            // leading: Icon(Icons.home),
            leading: Icon(CupertinoIcons.question_circle,
              color: Colors.teal[800],
              size: 35,),


            title: Text("about",
              style: TextStyle(
                fontFamily: "Preahvihear",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
          ),


          */



          ExpansionTile(
            title: Text("About",
                style: TextStyle(
                  fontFamily: "Preahvihear",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),

            leading: Icon(CupertinoIcons.question_circle,
              color: Colors.teal[800],
              size: 30,) ,

            children: [
              ListTile(
                title: Text("Welcome to Fashion.PK, your ultimate destination for all things fashion! At Fashion.PK, we are passionate about helping you discover the latest trends, and express your unique style. Our mission is to make fashion accessible to everyone, providing a seamless shopping experience that caters to your individual tastes and preferences.",
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
              color: Colors.teal[800],
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
