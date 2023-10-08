import 'package:app_in_java/catelog.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {

  //const ProductDisplay({super.key, required Products item});


//create an object through which we access data
  final Products product;

  const ProductDisplay({super.key, required this.product});



  @override
  Widget build(BuildContext context) {



      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(

          //color: Colors.pinkAccent,
         // shape: StadiumBorder(),

          child: ListTile(

            leading: Image.network(product.image),
            title: Text(product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),),
            subtitle: Text(product.desc),
            trailing: Text(product.price.toString(),
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.5,),



            onTap: ()
            {

            },

    ),
        ),
      );
  }
}
