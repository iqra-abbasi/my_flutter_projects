
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text("Cart Page"),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.cart,
            color: Colors.teal[800],
            size: 100,),

            SizedBox(height: 30,),

            Text("YOUR CART IS EMPTY",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),),


            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("There is no items added in your Cart.Shop more to add products to your cart",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),),
            )
          ],
        ),
      ),
    );
  }
}


