import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_products.dart';
import 'cart_total.dart';
import 'catalog_products.dart';
import 'catalogue_screen.dart';
import 'home.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        centerTitle: true,
        leading: IconButton(onPressed:(){
          Get.to(() => Home());
        }, icon: Icon(
            Icons.arrow_back_ios, ),)),
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CartProducts(),
                    CartTotal(),
                    // ElevatedButton(
                    //     onPressed: ()  => Get.to(() => CartScreen()),
                    //     child: Text("Go to Cart"))
                  ],),
              ),
          )),
    );
  }
}
