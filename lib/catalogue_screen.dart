import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_screen.dart';
import 'catalog_products.dart';

class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog"), centerTitle: true,),
      body: SafeArea(
          child: Center(
            child: Column(
              children: [
              CatalogProducts(),
              ElevatedButton(
                  onPressed: ()  => Get.to(() => CartScreen()),
                  child: Text("Go to Cart"))
            ],),
          )),
    );
  }
}
