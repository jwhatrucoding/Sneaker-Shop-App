// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:ecommerceshop/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('lib/images_flutter/nike_logo.jpg', height: 240,),
            ),

            const SizedBox(height: 24),
          
            // title
            const Text(
              "Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
        
            const SizedBox(height: 20),

            // sub title
            const Text(
              "Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(              
                color: Colors.grey,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 48),
        
            // start now button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'Shop now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16, 
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}