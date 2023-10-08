import 'package:app_in_java/catelog.dart';
import 'package:app_in_java/drawer.dart';
import 'package:app_in_java/products-display.dart';
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

      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Hello! Welcome to Fashion.pk"),
      ),




      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

            ),
            itemBuilder: (context,index)
        {
          final item=CatelogModel.products[index];

          return Card(

            shadowColor: Colors.pink,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            child: GridTile(

              header: Container(
                  child: Text(item.name,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              ),

                child: Image.network(item.image,),

              footer:  Container(
                child: Text(item.price,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },

          itemCount: CatelogModel.products.length,
        ),
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
