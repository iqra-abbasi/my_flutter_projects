import 'package:flutter/material.dart';



//this is that fil where we define our products and
//initialized our products




//second class create where we put our product data

class CatelogModel
{
  static List<Products> products

  //static final products
  =[

    Products(
      id: 1,
      name: "Pink Casual Sneakers",
      desc: "AT7133",
      price: 4000,
      color: "Pink",
      image: "https://m.media-amazon.com/images/I/61WE2HWdOiL._AC_UF1000,1000_QL80_.jpg",
    ),

    Products(
      id: 2,
      name: "White Casual Sneakers",
      desc: "AT7157",
      price:3500,
      color: "White",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz8IL8TraBoDkwRbWamh-nWihu_oJvxHa0CtsPgquSeWCHtfkR82xbsrs6N4TwVyQtG50&usqp=CAU",
    ),


    Products(
      id: 3,
      name: "White Casual Sneakers",
      desc: "AT7180",
      price: 3000,
      color: "White",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyTM_LfQ4rIL6z4FFsJny5kG97drUcR4E1dQ&usqp=CAU",
    ),


    Products(
      id: 4,
      name: "Black Casual Sneakers",
      desc: "AT7182",
      price: 3000,
      color: "Black",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSqAOTr-64rj_A00_H-_xDCGPQq-IdYVhXLg&usqp=CAU",
    ),


    Products(
      id: 5,
      name: "Black Casual Sneakers",
      desc: "AT7182",
      price: 3000,
      color: "Black",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKKjV4oWWVH-k0FF79xMetalCPOyYuX5WiUw&usqp=CAU",
    ),




    Products(
      id: 5,
      name: "Mehroon Casual Sneakers",
      desc: "AT7183",
      price: 3000,
      color: "Black",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpXpT31rG5zaawlrtv_UJe8N9j8RqVdsasPQ&usqp=CAU",
    ),

    Products(
      id: 6,
      name: "Ferozy Casual Sneakers",
      desc: "AT7184",
      price: 3500,
      color: "Black",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwO6EXaBZeJnzcTdFHVPuu_n_9_isdzeorA&usqp=CAU",
    ),

    Products(
      id: 7,
      name: "Brown Casual Sneakers",
      desc: "AT7186",
      price: 4000,
      color: "Brown",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Dt2FpOh_O1mE-MPDmc7lRZhFNJk4lPDUOy30-SLSVHTnTBbU6GYA-dVOg-zaisDHMJQ&usqp=CAU",
    ),

    Products(
      id: 8,
      name: "Yellow Casual Sneakers",
      desc: "AT7187",
      price:4000,
      color: "Yellow",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_t7W5ZMIEZ9QfL20EYnE-GEhwg8FSYneJKw&usqp=CAU",
    ),


    Products(
      id: 9,
      name: "Red Casual Sneakers",
      desc: "AT7188",
      price: 4000,
      color: "Red",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe5NqgWWYZVONf0WBKwv6riFcg30zMNHK1kg&usqp=CAU",
    ),


    Products(
      id: 10,
      name: "Purple Casual Sneakers",
      desc: "AT7188",
      price: 4000,
      color: "Purple",
      image: "https://i.pinimg.com/1200x/cf/b1/18/cfb118c308e62364e81b096343d85bc8.jpg",
    ),

    Products(
      id: 11,
      name: "Grey Casual Sneakers",
      desc: "AT7188",
      price: 4000,
      color: "Grey",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRJWSi-rhd5n31U9opO-nMbVWzMojQRxUsCA&usqp=CAU",
    ),


    Products(
      id: 12,
      name: "Silver Casual Sneakers",
      desc: "AT7188",
      price: 4000,
      color: "Silver",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGP-EXmWEfUuOEAY_EjNb5-UUK3lAm1G3gXA&usqp=CAU",
    ),


    Products(
      id: 13,
      name: "Pink Casual Sneakers",
      desc: "AT7198",
      price: 3000,
      color: "Silver",
      image: "https://stylo.pk/cdn/shop/products/AT717018_3.jpg?v=1680514564",
    ),



  ];


  //get through id
  Products getById(int id) =>
      products.firstWhere((element) => element.id ==id, orElse: null);




}





//first this class will create products
class Products
{


  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final  image;

  //create constructor
Products({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}





