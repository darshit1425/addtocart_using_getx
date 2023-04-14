import 'package:addtocart_using_getx/screen/cart_screen/cart_screens.dart';
import 'package:addtocart_using_getx/screen/home_screen/view/home_screens.dart';
import 'package:addtocart_using_getx/screen/product_view/product_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => Home_Screen(),
        'productView': (p0) => Product_View(),
        'cart': (p0) => Cart_Sceen(),
      },
    ),
  );
}
