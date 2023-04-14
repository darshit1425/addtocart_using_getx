import 'package:addtocart_using_getx/screen/home_screen/modal/product_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeController {
  RxList<Product_model> product_model = <Product_model>[
    Product_model(
      price: "120 ",
      image: "🍉",
      name: "Watermelon",
    ),
    Product_model(
      price: "150",
      image: "🥭",
      name: "Mango",
    ),
    Product_model(
      price: "100",
      image: "🍇",
      name: "Graphs",
    ),
    Product_model(
      price: "60",
      image: "🥥",
      name: "Coconut",
    ),
    Product_model(
      price: "40",
      image: "🥝",
      name: "Kiwi",
    ),
    Product_model(
      price: "50",
      image: "🍊",
      name: "Orange",
    ),
    Product_model(
      price: "80",
      image: "🍍",
      name: "Pineapple",
    ),
    Product_model(
      price: "120",
      image: "🍓",
      name: "Strawberry",
    ),
    Product_model(
      price: "160",
      image: "🍒",
      name: "Cherries",
    ),
    Product_model(
      price: "25",
      image: "🍌",
      name: "Banana",
    ),
  ].obs;

  RxList<Product_model> Cart_list = <Product_model>[].obs;
}
