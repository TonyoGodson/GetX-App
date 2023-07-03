import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart/cart_controller.dart';
import 'package:getx_cart/model/products.dart';
import 'package:getx_cart/product_detail_screen.dart';

class CatalogProductCard extends StatelessWidget {
  final  controller = Get.put(CartController());
  final cartController = Get.put(CartController());
  final int index;
  // final int quantity;
  // final Product product;
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          GestureDetector(
            onTap: (){
              Get.to(() => ProductDetailScreen( controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,));
            },
            child: Image(
              // radius: 50,
              // backgroundImage:
              height: 70,
              width: 120,
              image: NetworkImage(Product.products[index].imageUrl),
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(
            Product.products[index].name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),),
          SizedBox(width: 10),
          Expanded(child: Text("${Product.products[index].price}")),
            IconButton(onPressed: () {
              cartController.addProduct(Product.products[index]);
            }, icon: Icon(Icons.add_circle),),
        ],),
    );
  }
}
