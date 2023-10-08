import 'package:flutter/material.dart';



//this is that fil where we define our products and
//initialized our products




//second class create where we put our product data

class CatelogModel
{

  static final products=[

    Products(
      id: 1,
      name: "Pink Casual Sneakers",
      desc: "AT7133",
      price: "PKR4000",
      color: "#333505a",
      image: "https://m.media-amazon.com/images/I/61WE2HWdOiL._AC_UF1000,1000_QL80_.jpg",
    ),

    Products(
      id: 2,
      name: "White Casual Sneakers",
      desc: "AT7157",
      price:"PKR3500",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz8IL8TraBoDkwRbWamh-nWihu_oJvxHa0CtsPgquSeWCHtfkR82xbsrs6N4TwVyQtG50&usqp=CAU",
    ),


    Products(
      id: 3,
      name: "White Casual Sneakers",
      desc: "AT7180",
      price: "PKR3000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyTM_LfQ4rIL6z4FFsJny5kG97drUcR4E1dQ&usqp=CAU",
    ),


    Products(
      id: 4,
      name: "Black Casual Sneakers",
      desc: "AT7182",
      price: "PKR3000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSqAOTr-64rj_A00_H-_xDCGPQq-IdYVhXLg&usqp=CAU",
    ),


    Products(
      id: 5,
      name: "Black Casual Sneakers",
      desc: "AT7182",
      price: "PKR3000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKKjV4oWWVH-k0FF79xMetalCPOyYuX5WiUw&usqp=CAU",
    ),




    Products(
      id: 5,
      name: "Mehroon Casual Sneakers",
      desc: "AT7183",
      price: "PKR3000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpXpT31rG5zaawlrtv_UJe8N9j8RqVdsasPQ&usqp=CAU",
    ),

    Products(
      id: 6,
      name: "Ferozy Casual Sneakers",
      desc: "AT7184",
      price: "PKR3500",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwO6EXaBZeJnzcTdFHVPuu_n_9_isdzeorA&usqp=CAU",
    ),

    Products(
      id: 7,
      name: "Brown Casual Sneakers",
      desc: "AT7186",
      price: "PKR4000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Dt2FpOh_O1mE-MPDmc7lRZhFNJk4lPDUOy30-SLSVHTnTBbU6GYA-dVOg-zaisDHMJQ&usqp=CAU",
    ),

    Products(
      id: 8,
      name: "Yellow Casual Sneakers",
      desc: "AT7187",
      price: "PKR4000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_t7W5ZMIEZ9QfL20EYnE-GEhwg8FSYneJKw&usqp=CAU",
    ),


    Products(
      id: 9,
      name: "Red Casual Sneakers",
      desc: "AT7188",
      price: "PKR4000",
      color: "#333505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe5NqgWWYZVONf0WBKwv6riFcg30zMNHK1kg&usqp=CAU",
    ),











  ];
}





//first this class will create products
class Products
{


  final num id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final  image;

  //create constructor
Products({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}





