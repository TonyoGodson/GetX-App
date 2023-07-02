import 'package:get/get.dart';

import 'model/products.dart';

class CartController extends GetxController{
  // Add a dictionary to store the products in the cart
   var _products = {}.obs;
   void addProduct(Product product){
     if(_products.containsKey(product)){
       _products[product] += 1;
     }
     else{
       _products[product] = 1;
     }
     Get.snackbar(
         "Product added",
         "You have added the ${product.name} to the cart.",
       snackPosition: SnackPosition.BOTTOM,
       duration: Duration(seconds: 2),
     );
   }

  void removeProduct(Product product){
     if(_products.containsKey(product) && _products[product] == 1){
       _products.removeWhere((key, value) => key == product);
     }
     else _products[product] -= 1;
  }

  get products => _products;

  get productSubTotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}