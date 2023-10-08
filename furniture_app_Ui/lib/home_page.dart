import 'package:flutter/material.dart';
import 'package:furniture_app/cart%20page.dart';
import 'package:furniture_app/chair1%20detail.dart';
import 'package:furniture_app/chair2%20detail.dart';
import 'package:furniture_app/chair3%20detail.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {






  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Color(0xfFE9EBEA),

      appBar: AppBar(
        backgroundColor: Color(0xfFE9EBEA),
        elevation:0.0,

        actions: [

          IconButton(
            icon:const Icon(Icons.contacts,
            color: Colors.black,),
            onPressed: () {

            },

          )
        ],
      ),

      
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0,left: 18.0),
                    child: Container(
                      height: 50,
                      width: 260,
                     // color: Colors.white,

                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,
                          color: Colors.black,
                          size: 40,),
                          hintText: 'Search..',
                          hintStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                        ),

                        onTap: ()
                        {
                          showSearch(
                            context: context,
                            delegate: MySearchDelegate(),
                          );
                        },
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 30.0),

                    child: Badge(

                      child: InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                        },
                        child: Icon(Icons.shopping_cart_outlined,
                        size: 30,
                        color: Colors.black,),
                      ),
                    ),
                  )
                ],

              ),
            ),



            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'Preahvihear',
                  ),
                  textScaleFactor: 1.3,),
                ],
              ),
            ),




Padding(
  padding: const EdgeInsets.only(top: 20.0,left: 18.0,right: 18.0),
  child:   SingleChildScrollView(
    scrollDirection: Axis.horizontal,

    child: Row(
        children: [



          Container(
            width:220,
            height: 350,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chair1details()));
                    },
                    
                    child: Container(

                     height: 150,
                      width: 190,
                      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                          fit: BoxFit.cover,

                            image:AssetImage("assets/images/chair1.jpg"),

                            ),
        ),

                      ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Minimalist Chair",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Preahvihear',

                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Sleek and uncluttered seating solution.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Preahvihear',
                    ),),
                ),

SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("5000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Preahvihear',

                        ),),

                      SizedBox(width: 110,),

                      Image(
                        height: 22,
                          width: 22,
                          image: AssetImage("assets/images/add.png")),

                    ],
                  ),
                ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.star,color: Colors.orange,),
                    ),
                    SizedBox(width: 10,),

                    Text("4.9  |  2336",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ],
            ),
          ),




          SizedBox(width: 20,),




          Container(
            width:220,
            height: 350,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chair2details()));
                    },
                    
                    child: Container(

                      height: 150,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                          fit: BoxFit.cover,

                          image:AssetImage("assets/images/chair2.jpg"),

                        ),
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Vintage Chair",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Preahvihear',

                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Sleek and uncluttered seating solution.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Preahvihear',
                    ),),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("4000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Preahvihear',

                        ),),

                      SizedBox(width: 110,),

                      Image(
                          height: 22,
                          width: 22,
                          image: AssetImage("assets/images/add.png")),

                    ],
                  ),
                ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.star,color: Colors.orange,),
                    ),
                    SizedBox(width: 10,),

                    Text("4.5  |  2336",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],
                ),
              ],
            ),
          ),




          SizedBox(width: 20,),


          Container(
            width:220,
            height: 350,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chair3details()));
                    },
                    
                    child: Container(

                      height: 150,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:DecorationImage(
                          fit: BoxFit.cover,

                          image:AssetImage("assets/images/chair3.jpg"),

                        ),
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Elegent white Chair",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Preahvihear',

                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Sleek and uncluttered seating solution.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Preahvihear',
                    ),),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("5000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Preahvihear',

                        ),),

                      SizedBox(width: 110,),

                      Image(
                          height: 22,
                          width: 22,
                          image: AssetImage("assets/images/add.png")),

                    ],
                  ),
                ),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.star,color: Colors.orange,),
                    ),
                    SizedBox(width: 10,),

                    Text("4.7  |  2336",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],
                ),
              ],
            ),
          ),



        ],
    ),
  ),
),




            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Best Selling",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: 'Preahvihear',
                    ),
                    textScaleFactor: 1.3,),
                ],
              ),
            ),




                Container(
                  width:350,
                  height: 120,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),


                 child:ListTile(

                   leading: Image.asset('assets/images/chair3.jpg',
                     width: 90,
                     height: 200,
                     fit: BoxFit.fill,),


                   title: Text("White Chair",

                     style: TextStyle(

                       fontSize: 22,

                       fontWeight: FontWeight.bold,

                       fontFamily: "Preahvihear",

                     ),

                     textScaleFactor: 1.0,),

                   subtitle: Text("Sleek and uncluttered seating solution.",

                     style: TextStyle(
                       fontSize: 14,
                       fontFamily: "Preahvihear",

                     ),),


trailing:   Image(
    height: 25,
    width: 26,
    image: AssetImage("assets/images/arrow.png")),



                 ),



                ),












          ],
        ),
      ),

      drawer: Drawer(),
    );
  }



}



//for search bar

  class MySearchDelegate extends SearchDelegate {



    List<String> searchTerms=[
      'minimalist chair',
      'vintage chair',
      'elegent white chair',
    ];



    @override
    List<Widget> buildActions(BuildContext context)

    {
      return[
        IconButton(
          icon:Icon(Icons.clear),
          onPressed: ()
          { if(query.isEmpty)
          {
            close(context, null);
          }
          else
          {
            query='';}
          },
        ),
      ];
    }



    @override
    Widget buildLeading(BuildContext context)
    {
      return IconButton(
        icon:Icon(Icons.arrow_back),
        onPressed: ()=> close(context, null),//close search  bar
      );
    }




    @override
    Widget buildResults(BuildContext context)
    {
      List<String> matchQuery=[];
      for(var chairs in searchTerms)
        {
          if(chairs.toLowerCase().contains(query.toLowerCase()))
            {
              matchQuery.add(chairs);
            }
        }
      return ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context,index)
          {var result=matchQuery[index];
          return ListTile(
            title: Text(result),
          );
            },
      );
    }






    @override
    Widget buildSuggestions(BuildContext context) {
      List<String> matchQuery = [];
      for (var chairs in searchTerms) {
        if (chairs.toLowerCase().contains(query.toLowerCase())) {
          matchQuery.add(chairs);
        }
      }
      return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        },
      );
    }
  }

