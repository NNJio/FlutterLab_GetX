import 'package:flutter_lab_getx/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItem = <Product>[].obs;

  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);
  int get count => cartItem.length;
  addToCart(Product product) {
    cartItem.add(product);
  }
}
