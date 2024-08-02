import 'package:ecomorce/common/layout/gridLayout.dart';
import 'package:ecomorce/common/verticalProductCard.dart';
import 'package:ecomorce/features/shop/model/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var favourite = context.watch<ProductProvider>().favourites;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: SingleChildScrollView(
        child: Consumer<ProductProvider>(
          builder: (context, ins, child) {
            return gridLayout(
                itemCount: favourite.length,
                itemBuilder: (_, index) => VerticalProductCard(
                      showFavourite: false,
                      ind: index,
                      image:
                          ins.productsItmes[favourite[index]].image.toString(),
                      companyName:
                          ins.productsItmes[favourite[index]].label.toString(),
                      isVerified: true,
                      price:
                          ins.productsItmes[favourite[index]].price.toString(),
                    ));
          },
        ),
      ),
    );
  }
}
