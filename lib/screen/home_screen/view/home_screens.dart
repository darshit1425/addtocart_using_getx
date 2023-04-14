import 'package:addtocart_using_getx/screen/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Product",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "cart");
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],

        ),
        body: Center(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.toNamed("productView",arguments: index);
                  },
                  leading: Text(
                    "${homeController.product_model[index].image}",
                    style: TextStyle(fontSize: 40),
                  ),
                  title: Text("${homeController.product_model[index].name}"),
                  subtitle:
                      Text("${homeController.product_model[index].price}"),
                );
              },
              itemCount: homeController.product_model.length),
        ),
      ),
    );
  }
}
