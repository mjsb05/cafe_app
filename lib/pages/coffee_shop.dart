import 'package:cafe_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop {
  // coffe for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
        name: "Long Black",
        price: "4.10",
        imagePath: "lib/images/blacklong.png"),

    //latte
    Coffee(name: "Latte", price: "4.20", imagePath: "lib/images/blacklong.png"),

    // espresso
    Coffee(
        name: "Esoresso", price: "3.50", imagePath: "lib/images/blacklong.png"),

    // iced coffee
    Coffee(
        name: "Iced Coffee",
        price: "4.10",
        imagePath: "lib/images/blacklong.png")
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCrt => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
