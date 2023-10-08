import 'package:flutter/material.dart';



//this is that fil where we define our products and
//initialized our products




//second class create where we put our product data

class CatelogModel2
{

  static final products2=[

  Products2(
  id: 1,
  name: "Magnifiscents PR1012",
  gender:"Male",
  price: "PKR2500",
  desc: "Pr209",
  image: "https://stylo.pk/cdn/shop/files/PR1012_1_f8edc252-480f-4a56-b9b0-b04d2d6872d2_1024x1024.jpg?v=1684752812",
  ),

  Products2(
  id: 2,
  name: "Ardor PR1006",
  desc: "AT7157",
    gender:"female",
  price:"PKR2000",
  image: "https://m.media-amazon.com/images/I/41Cky19GFeS._AC_UF1000,1000_QL80_.jpg",
  ),


  Products2(
  id: 3,
  name: "Tempted PR1013",
  desc: "AT7180",
    gender:"Male",
  price: "PKR4000",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfgsOho8kyKQEV8RVFU0DvIjifUcd16KklQ&usqp=CAU",
  ),


  Products2(
  id: 4,
  name: "Inspiracy PR1011",
  desc: "AT7182",
    gender:"Female",
  price: "PKR4000",
  image: "https://cdn.shopify.com/s/files/1/0485/1459/7030/products/PR0018_1_160x.jpg?v=1661324754",
  ),


  Products2(
  id: 5,
  name: "Strange Vibes Pr0031 ",
  desc: "AT7182",
  price: "PKR4000",
    gender:"Male",
  image: "https://stylo.pk/cdn/shop/products/PR003110_3_1024x1024.webp?v=1672920115",
  ),




  Products2(
  id: 5,
  name: "Opus PR0013",
  desc: "AT7183",
    gender:"Female",
  price: "PKR2200",
  image: "https://static-01.daraz.pk/p/a2cfb22db2832ee7db10bf39c2d8b710.jpg",
  ),

  Products2(
  id: 6,
  name: "Aria PR0014",
  desc: "AT7184",
  price: "PKR2300",
    gender:"Male",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsx8x1g4ebeEwEZU664KVDAentUdaxF9iGMA&usqp=CAU",
  ),

  Products2(
  id: 7,
  name: "Wonder PR007",
  desc: "AT7186",
  price: "PKR2300",
    gender:"Female",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2VsBHUBrfsvTC-_KkUfwqWwRf3-K76tYwg&usqp=CAU",
  ),

  Products2(
  id: 8,
  name: "Casa PR0003",
  desc: "AT7187",
  price: "PKR3000",
    gender:"Male",
  image: "https://do9uy4stciz2v.cloudfront.net/-MPmaXxg1LJjKrZSqo-h/products_600/-NV-yHU1c8E1fJ1b05wY.jpg",
  ),


  Products2(
  id: 9,
  name: "Sweet Candy PR0032",
  desc: "AT7188",
  price: "PKR2000",
    gender:"Female",
  image: "https://icon-cosmetics.gr/wp-content/uploads/berry.jpg",
  ),


  Products2(
  id: 10,
  name: "Dirham PR0021",
  desc: "AT7188",
  price: "PKR3000",
    gender:"female",
  image: "https://asanbazaar.pk/cdn/shop/products/p13969-ard-al-zaafaran-dirham-perfume_1200x1200.jpg?v=1635158933",
  ),

  Products2(
  id: 11,
  name: "Blue Lady PR001",
  desc: "AT7188",
  price: "PKR2500",
    gender:"Female",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI8tzsph6SQ9RIjdanPJg8OaSQNlRNNUDB_A&usqp=CAU",
  ),


  Products2(
  id: 12,
  name: "Adorned PR0011",
  desc: "AT7188",
  price: "PK2200",
    gender:"female",
  image: "https://xcdn.next.co.uk/COMMON/Items/Default/Default/ItemImages/AltItemShot/C99478s.jpg",
  ),


    Products2(
      id: 13,
      name: "Romentic PR011",
      desc: "AT7188",
      gender:"Female",
      price: "PK2200",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdRiW39QwRq2V-E4c5TJeF2fYVwHfySumZ_f_Z4_dwuokaPgV8gEm3uC_bUNq8lFYIRkU&usqp=CAU",
    ),


  ];
}





//first this class will create products
class Products2
{


  final num id;
  final String name;
  final String desc;
  final String price;
  final String gender;
  final  image;

  //create constructor
  Products2({required this.id, required this.name, required this.desc, required this.price, required this.gender,required this.image});

}



