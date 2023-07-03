import 'package:flutter/material.dart';
import 'package:getx_cart/home.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';
import 'cart_screen.dart';
import 'model/products.dart';

class ProductDetailScreen extends StatelessWidget {

  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  ProductDetailScreen({
    Key? key,
    required this.controller,
    required this.product,
    required this.index,
    required this.quantity
  }) : super(key: key);

  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    int quant;
    if(quantity == 0){
      quant = 0;
    }
    else {
      quant = quantity;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => Home());
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Product Name"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Column(
            children: [
              Image(
                  height: MediaQuery.of(context).size.width * .6,
                  width: MediaQuery.of(context).size.width * .8,
                  image: NetworkImage(Product.products[index].imageUrl)),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Product.products[index].name,
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text("${Product.products[index].price}"),
                  ]),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {
                    controller.removeProduct(product);
                  }, icon: Icon(Icons.remove_circle)),
                  Text("$quant"),
                  IconButton(onPressed: () {
                    controller.addProduct(product);
                  }, icon: Icon(Icons.add_circle)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )),
                  SizedBox(width: 10),
                  // Text("${controller.productSubTotal2}"),
                ],
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Padding(padding: EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
                onPressed: ()  => Get.to(() => CartScreen()),
                child: Text("Go to Cart")),
          )
        ]),
      ),
    );
  }
}
