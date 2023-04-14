import 'package:addtocart_using_getx/screen/home_screen/controller/home_controller.dart';
import 'package:addtocart_using_getx/screen/home_screen/modal/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product_View extends StatefulWidget {
  const Product_View({Key? key}) : super(key: key);

  @override
  State<Product_View> createState() => _Product_ViewState();
}

class _Product_ViewState extends State<Product_View> {
  HomeController homeController = Get.put(HomeController());
  int index = Get.arguments;

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text("product details"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 200,
                width: 300,

                // color: Colors.black,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade500, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Text(
                      "${homeController.product_model[index].image}",
                      style: TextStyle(fontSize: 80),
                    ),
                    Text(
                      "${homeController.product_model[index].name}",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${homeController.product_model[index].price}",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Product_model p1 = homeController.product_model[index];
                homeController.Cart_list.add(p1);
                Get.back();
              },
              child: Text("add to cart"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
