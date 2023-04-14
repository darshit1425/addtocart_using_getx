import 'package:addtocart_using_getx/screen/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart_Sceen extends StatefulWidget {
  const Cart_Sceen({Key? key}) : super(key: key);

  @override
  State<Cart_Sceen> createState() => _Cart_SceenState();
}

class _Cart_SceenState extends State<Cart_Sceen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: const Text("Shopping product"),
        ),
        body: Center(
          child: Obx(
            () => ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                      "${homeController.Cart_list[index].image}",
                      style: TextStyle(fontSize: 40),
                    ),
                    title: Text("${homeController.Cart_list[index].name}"),
                    subtitle: Text("${homeController.Cart_list[index].price}"),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      homeController.Cart_list.removeAt(index);
                    },
                  );
                },
                itemCount: homeController.Cart_list.length),
          ),
        ),
      ),
    );
  }
}
