import 'package:app_in_java/cart-page-2.dart';
import 'package:app_in_java/cart-page.dart';
import 'package:app_in_java/fragrance-catelog2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FragranceDetailPage extends StatefulWidget {
  //const FragranceDetailPage({super.key});

  final Products2 catalog2;

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
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage2()));
        },
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
        backgroundColor: Colors.teal[800],
      ),



      appBar: AppBar(

        backgroundColor: Colors.teal[800],

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
                  SizedBox(height: 30,),



                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("For:",style: TextStyle(
                          fontFamily: "Preahvihear",
                          fontSize: 25,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          width: 90,
                          height: 35,
                          child: Text(widget.catalog2.gender,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                  ),




                  SizedBox(height: 15,),


                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Size:",style: TextStyle(
                          fontFamily: "Preahvihear",
                          fontSize: 25,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            color:Colors.black,
                            borderRadius: BorderRadius.circular(12),

                          ),

                            alignment: Alignment.center,
                            width: 130,
                            height: 40,

                            child: Text("100ML Bottle",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),),
                          ),


                      ],
                    ),
                  ),

                  SizedBox(height: 10,),


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
                          Text("Fashion.PK Perfumes are original Italian fragrances that last up to 8 hours",

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
                      backgroundColor: MaterialStateProperty.all(Colors.teal[700]),
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
