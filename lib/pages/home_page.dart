
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:ecommerceshop/components/bottom_nav_bar.dart';
import 'package:ecommerceshop/pages/cart_page.dart';
import 'package:ecommerceshop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  
  // variable
  // this selected index is to control the bottom nav bar
  int _selectIndex = 0;
  

  //method
  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    const ShopPage(),

    CartPage(),
  ];

  //UI



  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu
              ));
          }
        ),
          // backgroundColor: Colors.transparent,
          elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
      ),
      body: _pages[_selectIndex],
    );
  }
}
