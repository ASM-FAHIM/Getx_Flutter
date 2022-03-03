import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/controllers/cart_controller.dart';
import 'package:getx_cart_eshop/controllers/shoppingController.dart';
import 'package:getx_cart_eshop/views/cart_page.dart';

class ShoppingPage extends StatelessWidget {

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
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
                                        '${controller.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          '${controller.products[index].productDexcription}'),
                                    ],
                                  ),
                                  Text('\$${controller.products[index].price}',
                                      style: TextStyle(fontSize: 24)),
                                ],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(controller.products[index]);
                                },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text('Add to Cart'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartController>(
                builder: (controller) {
                return Text(
                'Total amount: \$ ${controller.productPrice}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              );
            }
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.teal,
          icon: Icon(Icons.add_shopping_cart_outlined, size: 30,),
          onPressed: (){
          Get.to(()=> CartPage());
          },
          label: GetX<CartController>(
            builder: (controller) {
              return Text(controller.count.toString(),
                style: TextStyle(fontSize: 20),
              );
            }
          )),
    );
  }
}
