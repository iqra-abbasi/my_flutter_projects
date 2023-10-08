import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  bool ischecked=false;
  bool ischecked1=false;
  bool ischecked2=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // backgroundColor: Color(0xfFE9EBEA),

      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Cart",
                    style: TextStyle(
                      fontSize: 20,
                    ),),

          Badge(
            child: Icon(Icons.shopping_cart_outlined,
                size: 26,
                color: Colors.black,),
          ),
                  ],
                ),
              ),






              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: ischecked,
                        activeColor: Colors.orange,
                        onChanged: (value)
                        {
                          setState(() {
                            ischecked=value!;//means write now value is null
                          });

                        }
                    ),



                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                         // color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),

                    child: ListTile(
                      leading: Container(
                          width: 70,
                          height: 120,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(

                            fit: BoxFit.fill,
                            image:AssetImage("assets/images/chair1.jpg",),
                          ),

                        ),

                      ),
                      title: Text("Minimalist Chair",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Preahvihear",

                        ),
                      ),


                      subtitle: Text("5000",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),),


                      trailing: Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("- 2 +",
                        style: TextStyle(
                          fontSize: 13,
                        ),),
                      ),
                    ),



                      ),
                ),


                  ],
                ),
              ),








              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: ischecked2,
                        activeColor: Colors.orange,
                        onChanged: (value)
                        {
                          setState(() {
                            ischecked2=value!;//means write now value is null
                          });

                        }
                    ),





                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: ListTile(
                          leading: Container(
                            width: 70,
                            height: 120,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(

                                fit: BoxFit.fill,
                                image:AssetImage("assets/images/chair3.jpg",),
                              ),

                            ),

                          ),
                          title: Text("Elegent White Chair",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Preahvihear",

                            ),
                          ),


                          subtitle: Text("5000",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),),


                          trailing: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text("- 1 +",
                              style: TextStyle(
                                fontSize: 13,
                              ),),
                          ),
                        ),



                      ),
                    ),


                  ],
                ),
              ),










              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: ischecked1,
                        activeColor: Colors.orange,
                        onChanged: (value)
                        {
                          setState(() {
                            ischecked1=value!;//means write now value is null
                          });

                        }
                    ),





                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: ListTile(
                          leading: Container(
                            width: 70,
                            height: 120,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(

                                fit: BoxFit.fill,
                                image:AssetImage("assets/images/chair2.jpg",),
                              ),

                            ),

                          ),
                          title: Text("Vintage Chair",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Preahvihear",

                            ),
                          ),


                          subtitle: Text("4000",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),),


                          trailing: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text("- 1 +",
                              style: TextStyle(
                                fontSize: 13,
                              ),),
                          ),
                        ),



                      ),
                    ),


                  ],
                ),
              ),








              ClipRRect(
                borderRadius: BorderRadius.only(topRight:Radius.circular(80),topLeft: Radius.circular(80)),
                child: Container(
                  width: 400,
                  height: 300,
                  color: Colors.white,

                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 30.0,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Selected Items",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: ' Preahvihear',
                            ),),

                            Text("1900",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),),
                          ],
                        ),
                      ),





                      Padding(
                        padding: const EdgeInsets.only(top: 15.0,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Shipping Fee",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: ' Preahvihear',
                              ),),

                            Text("500",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                              ),),
                          ],
                        ),
                      ),


                      Divider(),






                      Padding(
                        padding: const EdgeInsets.only(top: 30.0,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Subtotal",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: ' Preahvihear',
                              ),),

                            Text("2400",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                      ),



                      SizedBox(height: 30,),


                      ElevatedButton(
                          onPressed: ()
                          {

                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content:Text("not supported yet")));
                            },
                          child:Text("Checkout",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),

                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                          minimumSize:MaterialStateProperty.all(Size(250, 60)),
                          shape: MaterialStateProperty.all(StadiumBorder()),
                        ),

                      ),







                    ],

                  ),
                ),
              )















            ],
          ),
        ),
      ),
    );
  }
}
