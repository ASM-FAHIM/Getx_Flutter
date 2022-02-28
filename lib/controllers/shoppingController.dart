import 'package:get/get.dart';
import 'package:getx_cart_eshop/models/product.dart';

class ShoppingController extends GetxController{

  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }


  void fetchProducts() async{
    await Future.delayed(Duration(seconds: 2));
    var productResult =
    [
      Product(
          id: 1,
          productName: "productName1",
          productImage: "productImage1",
          productDexcription: "productDexcription1",
          price: 30
      ),

      Product(
          id: 2,
          productName: "productName2",
          productImage: "productImage3",
          productDexcription: "productDexcription2",
          price: 30
      ),

      Product(
          id: 3,
          productName: "productName3",
          productImage: "productImage3",
          productDexcription: "productDexcription3",
          price: 50
      ),

      Product(
          id: 4,
          productName: "productName4",
          productImage: "productImage4",
          productDexcription: "productDexcription4",
          price: 60
      ),

      Product(
          id: 5,
          productName: "productName5",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
    ];

    products.value = productResult ;
  }
}
