import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart_eshop/controllers/shoppingController.dart';

class ShoppingPage extends StatelessWidget {

  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white70,
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
                            margin: EdgeInsets.all(12.0),
                            child: Padding(
                                padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(controller.products[index].productName,style: TextStyle(fontSize: 24),),
                                          Text(controller.products[index].productDexcription,),
                                        ],
                                      ),
                                      Text('\$${controller.products[index].price.toString()}',
                                          style: TextStyle(fontSize: 24)),
                                    ],
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                    },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Text('Add to Cart'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                )),
            SizedBox(height: 20,),
            Text("Totla amount :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}
