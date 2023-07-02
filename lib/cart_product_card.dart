import 'package:flutter/material.dart';

import 'cart_controller.dart';
import 'model/products.dart';

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.index,
    required this.quantity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
              height: 70, 
              width: 120, 
              image: NetworkImage(product.imageUrl)),
          const SizedBox(width: 10),
          Expanded(child: Text(product.name)),
          IconButton(onPressed: () {
            controller.removeProduct(product);
          }, icon: Icon(Icons.remove_circle)),
          Text("$quantity"),
          IconButton(onPressed: () {
            controller.addProduct(product);
          }, icon: Icon(Icons.add_circle)),
        ],
    )
    ,
    );
  }
}
