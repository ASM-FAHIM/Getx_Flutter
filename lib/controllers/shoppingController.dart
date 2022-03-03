import 'package:get/get.dart';
import 'package:getx_cart_eshop/models/productList.dart';

class ShoppingController extends GetxController{

  var productList = <ProductList>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductList();
  }


  void fetchProductList() async{
    await Future.delayed(const Duration(seconds: 2));
    var productResult =
    [
      ProductList(
          id: 1,
          productName: "productName1",
          productImage: "productImage1",
          productDexcription: "productDexcription1",
          price: 30
      ),
      ProductList(
          id: 2,
          productName: "productName2",
          productImage: "productImage2",
          productDexcription: "productDexcription2",
          price: 30
      ),
      ProductList(
          id: 3,
          productName: "productName3",
          productImage: "productImage3",
          productDexcription: "productDexcription3",
          price: 50
      ),
      ProductList(
          id: 4,
          productName: "productName4",
          productImage: "productImage4",
          productDexcription: "productDexcription4",
          price: 60
      ),
      ProductList(
          id: 5,
          productName: "productName5",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 6,
          productName: "productName6",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 7,
          productName: "productName7",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 8,
          productName: "productName8",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 9,
          productName: "productName9",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 10,
          productName: "productName10",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 11,
          productName: "productName11",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 12,
          productName: "productName12",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 13,
          productName: "productName13",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 14,
          productName: "productName14",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 15,
          productName: "productName15",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 16,
          productName: "productName16",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 17,
          productName: "productName17",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 18,
          productName: "productName18",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 19,
          productName: "productName19",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 20,
          productName: "productName20",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 21,
          productName: "productName21",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 22,
          productName: "productName22",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 23,
          productName: "productName23",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 24,
          productName: "productName24",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 25,
          productName: "productName25",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 26,
          productName: "productName26",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 27,
          productName: "productName27",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 28,
          productName: "productName28",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 29,
          productName: "productName29",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 30,
          productName: "productName30",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),
      ProductList(
          id: 31,
          productName: "productName31",
          productImage: "productImage5",
          productDexcription: "productDexcription5",
          price: 100
      ),


    ];

    productList.value = productResult ;
  }
}


