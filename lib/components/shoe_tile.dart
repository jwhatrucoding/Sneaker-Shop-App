// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;

  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });
  
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),          
            ),
          ),

          // price
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
            
                      ),
                    ),
            
                    const SizedBox(height: 5,),
            
                    // price
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      '\$' + shoe.price,
                      style: const TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),          

                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)  
                      ),
                      color: Colors.blue,
                    ),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),          
        ],
      ),
    );
  }
}