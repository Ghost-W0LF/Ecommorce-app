import 'package:ecomorce/features/shop/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Consumer<CartProvider>(
      builder: (context, ins, child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
              itemCount: ins.cart.length,
              itemBuilder: (context, index) {
                return ListTile();
              }),
        );
      },
    ));
  }
}
