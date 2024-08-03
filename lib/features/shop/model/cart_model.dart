import 'package:ecomorce/features/shop/model/products.dart';
import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier {
  List<dynamic> cart = [];
  final ProductProvider productProvider;

  CartProvider(this.productProvider);

  void addtoCart(index) {
    cart.add(index);
    notifyListeners();
  }

  void removeCart(index) {
    cart.remove(index);
    notifyListeners();
  }

  int calculateTotalPrice() {
    int total = 0;
    for (int index in cart) {
      total += productProvider.productsItmes[index].price;
    }
    return total;
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
