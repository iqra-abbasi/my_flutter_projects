
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'foodCatalog.dart';

class FragranceDetailPage extends StatefulWidget {
  //const FragranceDetailPage({super.key});

  final Data catalog2;

  const FragranceDetailPage({super.key, required this.catalog2});


  @override
  State<FragranceDetailPage> createState() => _FragranceDetailPageState();
}

class _FragranceDetailPageState extends State<FragranceDetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
         // Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage2()));
        },
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
        backgroundColor: Colors.pink,
      ),



      appBar: AppBar(

        backgroundColor: Colors.pink,

      ),


      body: SingleChildScrollView(
        child: Column(
          children: [

            Hero(
              tag: Key(widget.catalog2.id.toString()),//connection link between two
              child: Image.network(widget.catalog2.image,height: 200,width: 300,),
            ),
            SizedBox(height: 20,),

            Container(
              color: Colors.white70,
              child: Column(
                children: [

                  Center(
                    child: Text(widget.catalog2.name,
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(widget.catalog2.price,
                    style: TextStyle(
                      fontFamily: "Preahvihear",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),

                  const Divider(),
                  SizedBox(height: 25,),





                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Product Description:",style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Preahvihear",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      alignment: WrapAlignment.center,
                      // runSpacing: 10,//opposite spacing
                      children: [
                        Text("Foodpanda is a global online food delivery platform connecting customers with a variety of restaurants for convenient meal ordering and delivery.",

                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Preahvihear",
                            color: Colors.black,
                            // overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          softWrap: true,
                        ),
                      ],
                    ),

                  ),

                  SizedBox(height: 30,),


                  ElevatedButton(

                    child: Text("Buy Now",
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor:Colors.white,
                      ),),


                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      minimumSize:MaterialStateProperty.all(Size(200, 50)),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                    //style: TextButton.styleFrom(
                    //minimumSize: Size(200, 40,),
                    //),

                    onPressed: ()
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sorry Buying not supported yet")));
                    },


                  ),




                ],
              ),
            ),





          ],
        ),
      ),




    );
  }
}
