import 'package:flutter/material.dart';

class Chair2details extends StatefulWidget {
  const Chair2details({super.key});

  @override
  State<Chair2details> createState() => _Chair1detailsState();
}

class _Chair1detailsState extends State<Chair2details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),

              child: Container(

                height: 370,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(
                    fit: BoxFit.cover,

                    image:AssetImage("assets/images/chair2.jpg"),

                  ),
                ),

              ),
            ),


            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("4000",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Preahvihear',

                    ),
                    textScaleFactor: 1.3,),
                ],
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Vintage Chair",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Preahvihear',

                    ),
                    textScaleFactor: 1.0,),


                  SizedBox(width: 50,),

                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star,color: Colors.orange,),
                  Icon(Icons.star_border,color: Colors.orange,),
                  Text("4.6",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Color option",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Preahvihear',

                    ),),
                ],
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Image(
                      height: 22,
                      width: 22,
                      image: AssetImage("assets/images/circle1.png")),

                  SizedBox(width: 10,),

                  Image(
                      height: 22,
                      width: 22,
                      image: AssetImage("assets/images/circle2.png")),

                  SizedBox(width: 10,),

                  Image(
                      height: 22,
                      width: 22,
                      image: AssetImage("assets/images/circle3.png")),

                ],
              ),
            ),



            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Preahvihear',

                    ),
                    textScaleFactor: 1.0,),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Wrap(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("A vintage chair exudes charm and character with its timeless design, often showcasing aged wood, intricate details, and a nostalgic appeal.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Preahvihear',

                    ),
                    textScaleFactor: 1.0,),
                ],
              ),
            ),

//SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [


                ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Container(
                    alignment: Alignment.center,
                    width: 180,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),

                    child: Text("Add to Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ],
            )


          ],
        ),
      ),



    );
  }
}
