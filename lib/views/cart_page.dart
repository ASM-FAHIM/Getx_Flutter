import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controllers/cart_controller.dart';

class CartPage extends StatelessWidget {
   CartPage({Key? key}) : super(key: key);

  final cartController = Get.put(CartController());

  int item = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8CA6DB),
        title: const Center(
          child: Text("Cart",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetX<CartController>(
              builder: (controller) {
                return ListView.builder(
                    itemCount: controller.cartItems.length,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                //_progressBarActive == false?const CircularProgressIndicator():
                                Text(controller.cartItems[index].productName),

                              ),
                            ),

                            Text("Fork Lift "),

                            // SizedBox(width: 100,),

                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.remove)
                            ),
                            Text("$item"),
                            IconButton(

                                onPressed: (){},
                                icon: Icon(Icons.add)
                            ),

                          ],
                        ),
                      );
                    }
                );
              }
            ),
          ),

          SizedBox(height: 10,),

          FlatButton(
            color: Color(0xFF8CA6DB),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Order Confirmed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ));
            },
            child: Text("Add"),
          ),

        ],
      ),
    );
  }
}
