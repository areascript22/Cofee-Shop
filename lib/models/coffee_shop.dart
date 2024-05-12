import 'package:coffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeShop extends ChangeNotifier {
  //Coffe for sale list
  final List<Coffee> _shop = [
    //black coffe
    Coffee(
      name: "Long Black",
      price: "4.10",
      imagePath: "img/coffee-cups.png",
    ),

    //latte
    Coffee(
      name: "Latte",
      price: "3.20 ",
      imagePath: "img/coffee-cups2.png",
    ),

    //expresso
    Coffee(
      name: "Expresso",
      price: "3.0",
      imagePath: "img/coffee-cups.png",
    ),

    //iced coffee
    Coffee(
      name: "Iced coffe",
      price: "3.75",
      imagePath: "img/coffee-cups2.png",
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //Remov item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
