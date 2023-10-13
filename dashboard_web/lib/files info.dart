


import 'package:flutter/material.dart';



//this is that fil where we define our products and
//initialized our products




//second class create where we put our product data

class CatelogModel2
{

  static final products2=[

    Products2(
      id: 1,
      title: "Documents",
      numOfFiles: 1312,
      svgSrc: "assets/images/",
      totalStorage: "1.9GB",
      color: Colors.blue,
      percentage: 35,
    ),

    Products2(
      id: 2,
      title: "Documents",
      numOfFiles: 1312,
      svgSrc: "assets/images/",
      totalStorage: "1.9GB",
      color: Colors.blue,
      percentage: 35,
    ),


    Products2(
      id: 3,
      title: "Documents",
      numOfFiles: 1312,
      svgSrc: "assets/images/",
      totalStorage: "1.9GB",
      color: Colors.blue,
      percentage: 35,
    ),


    Products2(
      id: 4,
      title: "Documents",
      numOfFiles: 1312,
      svgSrc: "assets/images/",
      totalStorage: "1.9GB",
      color: Colors.blue,
      percentage: 35,

    ),




  ];
}





//first this class will create products
class Products2
{


final int id;
  final String svgSrc,title,totalStorage;
  final int numOfFiles,percentage;
  final Color color;


  //create constructor
  Products2({required this.id, required this.svgSrc, required this.title, required this.totalStorage, required this.numOfFiles,required this.percentage,required this.color});

}



