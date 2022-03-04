import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/controllers/cart_controller.dart';
import 'package:getx_cart_eshop/controllers/shoppingController.dart';
import 'package:getx_cart_eshop/views/cart_page.dart';

class ShoppingPage extends StatelessWidget {

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

   ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          // IconButton(
          //     onPressed: (){
          //       Get.to(()=> CartPage());
          //     },
          //   icon: Icon(Icons.add_shopping_cart_outlined, size: 30,),
          // ),
          FloatingActionButton.extended(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.add_shopping_cart_outlined,
                size: 25,),
              onPressed: (){
                Get.to(()=> CartPage());
              },
              label: GetX<CartController>(
                  builder: (controller) {
                    return Text(controller.count.toString(),
                      style: TextStyle(fontSize: 20),
                    );
                  }
              ),
            elevation: 0,
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.productList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child  : Card(
                          color: Colors.white70,
                          margin: const EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.productList[index].productName}',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        Text(
                                            '${controller.productList[index].productDexcription}'),
                                      ],
                                    ),
                                    Text("BDT: "+'${controller.productList[index].price}',
                                        style: TextStyle(fontSize: 24)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          cartController
                              .addToCart(controller.productList[index]
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            GetX<CartController>(
                builder: (controller) {
                return Text(
                'Total amount: BDT= ${controller.productTotalPrice}',
                style: TextStyle(fontSize: 20, color: Colors.black),
              );
            }
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
