import 'package:ecommerceshop/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Air Jordan 4 Red', price: '260', imagePath: 'lib/images_flutter/jordan4_red.jpg', description: 'Retro Classic! Jordan 4 Red'),
    Shoe(name: 'Air Jordan 4 Green', price: '240', imagePath: 'lib/images_flutter/jordan4_green.jpg', description: 'You already know it! Jordan 4 Green'),
    Shoe(name: 'Air Jordan 4 Blue', price: '230', imagePath: 'lib/images_flutter/jordan4_blue.jpg', description: 'Be YOU. Be BLUE.'),
    Shoe(name: 'Air Jordan 4 Travis', price: '500', imagePath: 'lib/images_flutter/jordan4_travis.jpg', description: 'Meet the TRAVIS'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}