import 'package:app_in_java/cart-page.dart';
import 'package:app_in_java/catelog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsDetailPage extends StatefulWidget {
 //const ProductsDetailPage({super.key});
  final Products catalog;

  const ProductsDetailPage({super.key, required this.catalog});

  @override
  State<ProductsDetailPage> createState() => _ProductsDetailPageState();
}

class _ProductsDetailPageState extends State<ProductsDetailPage> {

  bool colorchng1=false;
  bool colorchng2=false;
  bool colorchng3=false;
  bool colorchng4=false;
  bool colorchng5=false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[100],

      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage()));
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
                  tag: Key(widget.catalog.id.toString()),
                  child: Image.network(widget.catalog.image,height: 200,width: 300,),
        ),
              SizedBox(height: 20,),

              Container(
                color: Colors.white70,
                    child: Column(
                      children: [

                        Center(
                          child: Text(widget.catalog.name,
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
                        Text(widget.catalog.price.toString(),
                          style: TextStyle(
                            fontFamily: "Preahvihear",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),

                        const Divider(),
                        SizedBox(height: 10,),



                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Color:",style: TextStyle(
                                fontFamily: "Preahvihear",
                                fontSize: 25,
                                color: Colors.black,
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 5,),

                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Row(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: Alignment.center,

                                width: 90,
                                height: 40,
                                child: Text(widget.catalog.color,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,

                                ),),
                              )
                            ],
                          ),
                        ),




                        SizedBox(height: 10,),


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
SizedBox(height: 5,),




                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(


                            children: [



                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Row(
                                  children: [

                                    InkWell(
                                      onTap:()
                                      {
                                        setState(() {
                                          colorchng1=true;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 40,
                                        color:colorchng1? Colors.black: Colors.grey,
                                        child: Text("32",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),),
                                      ),
                                    ),

                                    SizedBox(width: 15,),

                                    InkWell(
                                      onTap:()
                                      {
                                        setState(() {
                                          colorchng2=true;
                                        });
                                      },

                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 40,
                                        color:colorchng2? Colors.black: Colors.grey,
                                        child: Text("34",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),),
                                      ),
                                    ),

                                    SizedBox(width: 15,),

                                    InkWell(
                                      onTap:()
                                      {
                                        setState(() {
                                          colorchng3=true;
                                        });
                                      },


                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 40,
                                        color:colorchng3? Colors.black: Colors.grey,
                                        child: Text("36",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),),
                                      ),
                                    ),


                                    SizedBox(width: 15,),

                                    InkWell(
                                      onTap:()
                                      {
                                        setState(() {
                                          colorchng5=true;
                                        });
                                      },

                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 60,
                                          height: 40,
                                          color: colorchng5? Colors.black:Colors.grey,
                                          child: Text("38",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),),
                                        ),

                                    ),
                                  ],
                                ),
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
                              Text("Product Description:",style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Preahvihear",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 5,),

                        Padding(
                          padding: const EdgeInsets.only(left: 16),

                            child: Wrap(
                              children: [
                                Text("Easy to pair and comfortable to walk in",
                                  style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Preahvihear",
                                  color: Colors.black,
                                ),),
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



