import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/views/shop_page.dart';
import 'package:getx_cart_eshop/views/shopping%20_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.white70
      ),
      home:  ShopNamePage(),
    );
  }
}

