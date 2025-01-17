// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:ecommerceshop/components/cart_items.dart';
import 'package:ecommerceshop/models/cart.dart';
import 'package:ecommerceshop/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  
  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
      builder:(context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text('My Cart', style: 
              TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 10,),

            Expanded(
              child: 
                ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                // get each shoe
                Shoe individualShoe = value.getUserCart()[index];

                // return cart item
                return CartItem(shoe: individualShoe);
              },),
            ),
        
            
          ],
        ),
      ),
    );
  }
}