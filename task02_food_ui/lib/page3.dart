
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:task02_food_ui/drawer.dart';

import 'foodCatalog.dart';
import 'fooddetailPage.dart';

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
        title: Text("Hello! Welcome To Food Panda"),
      ),







//use of gradle

      body:  (Prdoducts.products.isNotEmpty)?
      Padding(
        padding: const EdgeInsets.all(20.0),

        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 30,

          ),
          itemBuilder: (context,index)
          {

            final item2=Prdoducts.products[index];


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
                        fontSize: 20,
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
                        fontSize: 16,
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

          itemCount:Prdoducts.products.length,
        ),

      ):Center(
        child: CircularProgressIndicator(),
      ),



      drawer: MyDrawer(),

    );


  }
}

