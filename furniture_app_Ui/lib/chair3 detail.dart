import 'package:flutter/material.dart';

class Chair3details extends StatefulWidget {
  const Chair3details({super.key});

  @override
  State<Chair3details> createState() => _Chair1detailsState();
}

class _Chair1detailsState extends State<Chair3details> {
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

                    image:AssetImage("assets/images/chair3.jpg"),

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
                  Text("5000",
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("elegent white chair",
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
                    Text("4.7",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],
                ),
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
                  Text("An elegant white chair epitomizes sophistication with its pristine white color and refined design, adding a touch of timeless luxury to any space.",
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
