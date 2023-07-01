import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cart/cart_controller.dart';
import 'package:getx_cart/model/products.dart';

class CatalogProductCard extends StatelessWidget {

  final cartController = Get.put(CartController());
  final int index;
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Image(
            // radius: 50,
            // backgroundImage:
            height: 70,
            width: 120,
            image: NetworkImage(Product.products[index].imageUrl),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(Product.products[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),),
          SizedBox(width: 10),
          Expanded(child: Text("${Product.products[index].price}")),
            IconButton(onPressed: () {
              cartController.addProduct(Product.products[index]);
            }, icon: Icon(Icons.add_circle),),
        ],),
    );
  }
}
