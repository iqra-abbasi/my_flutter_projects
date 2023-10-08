import 'package:flutter/material.dart';



//this is that fil where we define our products and
//initialized our products




//second class create where we put our product data

class Prdoducts
{

  static final products=[

    Data(
      id: 1,
      name: "Pizza",
      price: "1000",
      desc: "Delicious Italic Pizza",
      image:"https://recipesblob.oetker.in/assets/d8a4b00c292a43adbb9f96798e028f01/1272x764/pizza-pollo-arrostojpg.jpg",

    ),

    Data(
      id: 2,
      name: "Biryani",
      price: "300",
      desc: "Delicious Karachi Biryani",
      image: "https://butteroverbae.com/wp-content/uploads/2020/10/karachi-chicken-biryani-11.jpg",
    ),

    Data(
      id: 3,
      name: "Pasta",
      price: "1000",
      desc: "Delicious Italic Pasta",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlF3OnVG6z-q7EBWdMV4nUsrP2qsvieKD-A&usqp=CAU",
    ),



    Data(
      id: 4,
      name: "Burger",
      price: "500",
      desc: "Delicious Italic Burger",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVtxbD1D-VaNLEckkF5erMwB1T-DZ8pdaaGA&usqp=CAU",
    ),



    Data(
      id: 5,
      name: "Pizza",
      price: "1000",
      desc: "Delicious Italic Pizza",
      image:"https://recipesblob.oetker.in/assets/d8a4b00c292a43adbb9f96798e028f01/1272x764/pizza-pollo-arrostojpg.jpg",

    ),

    Data(
      id: 6,
      name: "Biryani",
      price: "300",
      desc: "Delicious Karachi Biryani",
      image: "https://butteroverbae.com/wp-content/uploads/2020/10/karachi-chicken-biryani-11.jpg",
    ),

    Data(
      id: 7,
      name: "Pasta",
      price: "1000",
      desc: "Delicious Italic Pasta",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBlF3OnVG6z-q7EBWdMV4nUsrP2qsvieKD-A&usqp=CAU",
    ),



    Data(
      id: 8,
      name: "Burger",
      price: "500",
      desc: "Delicious Italic Burger",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVtxbD1D-VaNLEckkF5erMwB1T-DZ8pdaaGA&usqp=CAU",
    ),



  ];
}





//first this class will create products
class Data
{


  final num id;
  final String name;
  final String desc;
  final String price;
  final  image;

  //create constructor
  Data({required this.id, required this.name, required this.desc, required this.price,required this.image});

}



