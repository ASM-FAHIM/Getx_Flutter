import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/models/productList.dart';

class CartController extends GetxController{

  var cartItems = <ProductList> [].obs;
  int get count => cartItems.length;
  int item = 0;

  //if we want to add manually by using dartLang
  double get productTotalPrice =>
      cartItems.fold(0, (previousValue, element) =>
      previousValue+element.price
      );
  addToCart(ProductList product) {
    cartItems.add(product);
  }
}


