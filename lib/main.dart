// import 'package:ecommerceshop/pages/home_page.dart';
import 'package:ecommerceshop/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // deactivate debug banner 
      debugShowCheckedModeBanner: false,
      // makes white screen
      home: IntroPage(), 
    );
  }
}