import 'package:flutter/material.dart';
import 'package:getx_cart/catalog_product_card.dart';
import 'package:getx_cart/model/products.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index){
          return CatalogProductCard(index: index);
        }));
  }
}
