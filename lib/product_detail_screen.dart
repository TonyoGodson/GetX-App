import 'package:flutter/material.dart';
import 'package:getx_cart/home.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {Get.to(() => Home());},
            icon: Icon(Icons.arrow_back_ios)),
        title: Text("Product Name"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Image(
              height: MediaQuery.of(context).size.width*.6,
              width: MediaQuery.of(context).size.width*.8,
              image: NetworkImage("https://thumbs.dreamstime.com/z/guava-fruit-leaves-isolated-white-background-89872885.jpg")),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Text("Product Name", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            Text("Price"),
          ]),
          Row(children: [
            IconButton(
                onPressed: (){}, icon: Icon(Icons.remove_circle)),
            Text("Price"),
            IconButton(
                onPressed: (){}, icon: Icon(Icons.add_circle)),
          ],)
      ],),
    ),
    );
  }
}
