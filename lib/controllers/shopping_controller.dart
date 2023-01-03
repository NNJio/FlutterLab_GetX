import 'package:flutter_lab_getx/models/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        productName: 'First',
        productImage: 'abd',
        productDescription:
            'You can tall some description about this is product',
        price: 30,
      ),
      Product(
        id: 1,
        productName: 'Second',
        productImage: 'abd',
        productDescription:
            'You can tall some description about this is product',
        price: 40,
      ),
      Product(
        id: 1,
        productName: 'Third',
        productImage: 'abd',
        productDescription:
            'You can tall some description about this is product',
        price: 50,
      ),
    ];
    products.assignAll(productResult);
  }
  // Widget build(BuildContext context) {}
}
