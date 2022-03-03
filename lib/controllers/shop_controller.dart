import 'package:get/state_manager.dart';
import 'package:getx_cart_eshop/models/shop_list.dart';

class ShopController extends GetxController{
  var shopList = <ShopList> [].obs;

  @override
  void onInit() {
    fetchShopList();
    super.onInit();
  }


  void fetchShopList() async{
    await Future.delayed(const Duration(seconds: 2));
    var shopResult =
    [
      ShopList(
          id: 1,
          shopName: "Shop Name 1",
          shopImage: "Shop Image1",
      ),

      ShopList(
        id: 2,
        shopName: "Shop Name 2",
        shopImage: "Shop Image 2",
      ),

      ShopList(
        id: 3,
        shopName: "Shop Name 3",
        shopImage: "Shop Image 3",
      ),

      ShopList(
        id: 4,
        shopName: "Shop Name 4",
        shopImage: "Shop Image 4",
      ),
      ShopList(
        id: 5,
        shopName: "Shop Name 5",
        shopImage: "Shop Image 5",
      ),
      ShopList(
        id: 6,
        shopName: "Shop Name 6",
        shopImage: "Shop Image 6",
      ),
      ShopList(
        id: 7,
        shopName: "Shop Name 7",
        shopImage: "Shop Image 7",
      ),
      ShopList(
        id: 8,
        shopName: "Shop Name 8",
        shopImage: "Shop Image 8",
      ),
      ShopList(
        id: 9,
        shopName: "Shop Name 9",
        shopImage: "Shop Image 9",
      ),
      ShopList(
        id: 10,
        shopName: "Shop Name 10",
        shopImage: "Shop Image 10",
      ),

    ];

    shopList.value = shopResult ;
  }
}