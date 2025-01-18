import 'package:ecommerceshop/models/cart.dart';
import 'package:ecommerceshop/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        // deactivate debug banner 
        debugShowCheckedModeBanner: false,
        // intro page
        home: IntroPage(), 
      ),
    );
  }
}