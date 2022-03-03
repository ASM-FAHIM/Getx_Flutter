import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_cart_eshop/controllers/shop_controller.dart';
import 'package:getx_cart_eshop/views/shopping%20_page.dart';

class ShopNamePage extends StatelessWidget {
   ShopNamePage({Key? key}) : super(key: key);

  final ShopController shopController = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop List"),
          leading: IconButton(
            onPressed: () {
            Get.back();},
            icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: GetX<ShopController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.shopList.length,
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
                                        '${controller.shopList[index].shopName}'
                                      ),
                                      Text(
                                        '${controller.shopList[index].shopImage}',
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Get.to(() => ShoppingPage());
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
