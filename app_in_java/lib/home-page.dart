import 'package:app_in_java/cart-page.dart';
import 'package:app_in_java/catelog.dart';
import 'package:app_in_java/drawer.dart';
import 'package:app_in_java/prodcuts-details-page.dart';
import 'package:app_in_java/products-display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {


//this is used to generate list itself instead of repeating items
   // final dummyCatalog=List.generate(10, (index) => CatelogModel.products[0]);



    return Scaffold(

     // backgroundColor: Colors.white70,
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        title: Text("Hello! Welcome to Fashion.pk"),
      ),







//use of gradle

      body:  (CatelogModel.products.isNotEmpty)?
      Padding(
        padding: const EdgeInsets.all(12.0),

        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 15

            ),
            itemBuilder: (context,index)
        {
          final item=CatelogModel.products[index];


          return Card(

            shadowColor: Colors.grey,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),

            child: InkWell(

         onTap: () => Navigator.push(context, MaterialPageRoute(
             builder: (context) => ProductsDetailPage(catalog: item,
             ),),),


              child: Container(
                height: 400,
                child: GridTile(

                  header: Container(
                      child: Text(item.name,
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  ),



                      child: Hero(
                        tag: Key(item.id.toString()),

                          child: Container(
                            color: Colors.grey[200],
                            width: 300,
                              height: 500,
                              child: Image.network(item.image,
                              height: 500,
                              width: 300,))),



                  footer:  Container(
                    child: Text(item.price.toString(),
                      style: TextStyle(
                        fontFamily: "Preahvihear",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ),
            ),
          );
        },

          itemCount: CatelogModel.products.length,
        ),

    ):Center(
    child: CircularProgressIndicator(),
    ),









//use of list view
      //just call catelog and item widgets class here to show on screen

     /* body: (CatelogModel.products.isNotEmpty)?
      ListView.builder(
        //product length
        itemCount:CatelogModel.products.length,
          //how to display
          itemBuilder: (context,index)
        {
          return ProductDisplay(
            product: CatelogModel.products[index],);

        },

      ):Center(
        child: CircularProgressIndicator(),
      ),

      */

      drawer: Mydrawer(),
    );
  }
}
