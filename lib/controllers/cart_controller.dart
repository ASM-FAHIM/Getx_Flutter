import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/models/product.dart';

class CartController extends GetxController{

  var cartItems = <Product> [].obs;
  int get count => cartItems.length;

  //if we want to add manually by using dartLang
  double get productPrice =>
      cartItems.fold(0, (previousValue, element) =>
      previousValue+element.price
      );
  addToCart(Product product) {
    cartItems.add(product);
  }
}


