
import 'package:app_in_java/fragrance-catelog2.dart';
import 'package:app_in_java/fragrance-detail-page.dart';
import 'package:app_in_java/prodcuts-details-page.dart';
import 'package:flutter/material.dart';

import 'package:app_in_java/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
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

      body:  (CatelogModel2.products2.isNotEmpty)?
      Padding(
        padding: const EdgeInsets.all(12.0),

        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 15,

          ),
          itemBuilder: (context,index)
          {
            final item2=CatelogModel2.products2[index];


            return Card(

              shadowColor: Colors.grey,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

              child: InkWell(

                onTap: () => Navigator.push(context,MaterialPageRoute(
                    builder: (context)=> FragranceDetailPage(catalog2: item2,
                    ),),),

                child: GridTile(

                  header: Container(
                    child: Text(item2.name,
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
                      tag: Key(item2.id.toString()),

                      child: Container(
                          color: Colors.grey[200],
                          width: 300,
                          height: 500,
                          child: Image.network(item2.image))),



                  footer:  Container(
                    child: Text(item2.price,
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
            );
          },

          itemCount: CatelogModel2.products2.length,
        ),

      ):Center(
        child: CircularProgressIndicator(),
      ),







      drawer: Mydrawer(),
    );
  }
}

