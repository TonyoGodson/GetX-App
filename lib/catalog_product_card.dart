import 'package:flutter/material.dart';
import 'package:getx_cart/model/products.dart';

class CatalogProductCard extends StatelessWidget {
  final int index;
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Image(
            // radius: 50,
            // backgroundImage:
            height: 70,
            width: 120,
            image: NetworkImage(Product.products[index].imageUrl),
          )
        ],),
    );
  }
}
