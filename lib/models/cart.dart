import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        imagePath: 'assets/images/2a2d83a7-5508-41f6-89c5-41df693cd7ff.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Air Jordan',
        price: '1,350'),
    Shoe(
        imagePath: 'assets/images/913bcc8e-541d-4f42-9f34-eaacf1dfbb1b.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Air Jordan',
        price: '1,530'),
    Shoe(
        imagePath: 'assets/images/99209b21-d6a8-4df7-acda-2d6b46bc2e63.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Black Air',
        price: '2,300'),
    Shoe(
        imagePath: 'assets/images/89572137-c50b-4cdf-806f-e1703aff4054.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Green Air',
        price: '1,500'),
    Shoe(
        imagePath: 'assets/images/a162ca4b-a442-4182-bfa0-4be07063e623.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Sport Air',
        price: '1,250'),
    Shoe(
        imagePath:
            'assets/images/air-max-alpha-trainer-5-mens-training-shoes-7LjRM6 (1).jpg',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Air Max',
        price: '1,600'),
    Shoe(
        imagePath:
            'assets/images/air-max-alpha-trainer-5-mens-training-shoes-7LjRM6.jpg',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Air Max 2',
        price: '2,200'),
    Shoe(
        imagePath: 'assets/images/b6e5eb17-35f9-4dde-86dc-d8fb9e01bd98.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Gold Air',
        price: '2,000'),
    Shoe(
        imagePath: 'assets/images/f0621b1c-b0f8-41a4-bfbb-dc13412f9590.webp',
        description: 'This brand provides the user comfort and lightness.',
        name: 'Pink Air',
        price: '1,550'),
  ];
  // List of items in user cart
  List<Shoe> userCart = [];
  // Get list of shoes sale
  List<Shoe> getShoesList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from user Cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
