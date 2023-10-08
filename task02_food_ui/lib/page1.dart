import 'package:flutter/material.dart';
import 'package:task02_food_ui/page2.dart';
import 'package:task02_food_ui/page3.dart';

import 'drawer.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  //const Page1({super.key});
  bool changecolor=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor:changecolor? Colors.grey[300]: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text("Food Panda",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),

      ),

      body:  Padding(

        padding:const EdgeInsets.all(10),

        child:   SingleChildScrollView(



          scrollDirection: Axis.vertical,



          child:   Column(

            children: [



              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                  InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>page2()));
                    },
                    child: Padding(
                      padding:const EdgeInsets.only(top: 15),
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 40,

                        child: Text("Book a table",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textScaleFactor: 1.0,),

                        decoration: BoxDecoration(
                            color: Colors.pinkAccent[100],
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                  )


                ],
              ),



              SizedBox(height: 20,),
              Wrap(


                direction: Axis.horizontal,

                spacing: 10,



                children: [



                  Text("Food Panda",

                    style: TextStyle(


                      fontSize: 40,

                      color: Colors.black,

                      fontWeight: FontWeight.bold,

                      decoration: TextDecoration.none,

                      decorationColor: Colors.white,


                      fontFamily: " Preahvihear",


                    ),
                    textScaleFactor: 1.0,

                  ),


                  SizedBox(height: 23,),




                  Text("Famous for its simple and delicious Italian food. Ristorante italiano serves a range of high quality italian food.",

                    style: TextStyle(

                      fontWeight: FontWeight.normal,

                      fontSize: 20,

                      color: Colors.black,

                    ),),


                ],


              ),




              SizedBox(
                height: 25,
              ),



              SingleChildScrollView(

                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  //crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    InkWell(
                    onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage2()));
                },

                      child: Container(

                        alignment: Alignment.center,

                        width: 160,
                        height: 40,

                        child: Text("Today's Special",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.pink,

                              fontWeight: FontWeight.bold

                          ),
                          textScaleFactor: 1.0,),

                        decoration: BoxDecoration(

                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(100),

                        ),

                      ),
                    ),


                    SizedBox(width: 20,),



                    Container(

                      alignment: Alignment.center,

                      width: 100,

                      height: 40,
                      child: Text("Lunch",
                        style: TextStyle(
                            fontSize: 20,

                            color: Colors.pink,

                            fontWeight: FontWeight.bold

                        ),

                        textScaleFactor: 1.0,),


                      decoration: BoxDecoration(


                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(100)

                      ),

                    ),


                    SizedBox(width: 20,),



                    Container(
                      alignment: Alignment.center,
                      width: 100,

                      height: 40,

                      child: Text("Dinner",


                        style: TextStyle(

                            fontSize: 20,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold

                        ),

                        textScaleFactor: 1.0,),



                      decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],

                          borderRadius: BorderRadius.circular(100)

                      ),


                    ),


                  ],

                ),

              ),




              SizedBox(height: 20,),



              Row(

                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  Text("Today's Special",

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: "Preahvihear",
                      color: Colors.black,
                    ),

                    textScaleFactor: 1.5,),

                ],
              ),




              Card(

                child: InkWell(
                  onTap: ()
                  {

                  },
                  child: Container(

                    child: ListTile(

                      leading: Image.asset('assets/images/image1.jpg',
                        width: 90,
                        height: 200,
                        fit: BoxFit.fill,),

                      title: Text("Pizza",

                        style: TextStyle(

                          fontSize: 25,

                          fontWeight: FontWeight.bold,

                          fontFamily: "Preahvihear",

                        ),

                        textScaleFactor: 1.0,),

                      subtitle: Text("Italian pizza baked in rectangular trays",

                        style: TextStyle(
                          fontSize: 20,

                        ),),




                    ),
                  ),
                ),
              ),





              Card(

                child: ListTile(
                  leading: Image.asset('assets/images/biryani.jpg',
                    width: 90,

                    height: 200,

                    fit: BoxFit.cover,),

                  title: Text("Karachi Biryani",

                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                      fontFamily: "Preahvihear",
                    ),

                    textScaleFactor: 1.0,),

                  subtitle: Text("Delicious Karachi Biryani",


                    style: TextStyle(

                      fontSize: 20,
                    ),),


                 // trailing: Text("\$5.50",),



                ),

              ),


              Card(


                child: ListTile(

                  leading: Image.asset('assets/images/image3.jpg',


                    width: 90,

                    height: 200,
                    fit: BoxFit.fill,),

                  title: Text("Pasta",

                    style: TextStyle(

                      fontSize: 25,

                      fontWeight: FontWeight.bold,

                      fontFamily: "Preahvihear",

                    ),

                    textScaleFactor: 1.0,),


                  subtitle: Text("This Cheeze Pasta are Italic favorite",
                    style: TextStyle(
                      fontSize: 20,

                    ),),




                ),

              ),


              TextButton(

                  child: Text("Explore More For Order",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    fontFamily: " Preahvihear",
                    color:changecolor?Colors.blue: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor:changecolor? Colors.blue: Colors.black,
                  ),
                  textScaleFactor: 1.3,),

                onPressed: ()async
          {

            setState(() {
              changecolor=true;
            });

            await Future.delayed(Duration(seconds: 2));

            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage2()));

            setState(() {
              changecolor=false;
            });
            },
              ),



            ],


          ),



        ),

      ),




drawer: MyDrawer(),


    );
  }
}














