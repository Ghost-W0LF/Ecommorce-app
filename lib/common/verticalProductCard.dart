// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecomorce/common/Widgets/rounded%20Image/roundedImage.dart';
import 'package:ecomorce/features/shop/model/cart_model.dart';
import 'package:ecomorce/features/shop/model/products.dart';
import 'package:ecomorce/utils/constants/colors.dart';

import 'package:ecomorce/utils/constants/sizes.dart';

import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerticalProductCard extends StatefulWidget {
  VerticalProductCard({
    super.key,
    required this.image,
    required this.companyName,
    this.isVerified = false,
    this.price,
    this.ind,
    this.showFavourite = true,
  });
  final String image;
  final String companyName;
  bool isVerified;
  String? price;
  final int? ind;
  bool showFavourite;

  @override
  State<VerticalProductCard> createState() => _VerticalProductCardState();
}

class _VerticalProductCardState extends State<VerticalProductCard> {
  @override
  Widget build(BuildContext context) {
    var favourites = context.watch<ProductProvider>().favourites;
    var cart = context.watch<CartProvider>().cart;
    bool dark = THelperFunction.isDarkMode(context);
    return Consumer<ProductProvider>(
      builder: (BuildContext context, ins, child) {
        return Container(
            //height: TSize.productCardHeight,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: dark
                    ? Tcolors.darkGrey.withOpacity(0.1)
                    : Tcolors.LightGrey.withOpacity(0.1),
                border: Border.all(
                  color: dark
                      ? Tcolors.LightGrey.withOpacity(0.1)
                      : Tcolors.darkerGrey.withOpacity(0.1),
                ),
                boxShadow: [
                  BoxShadow(
                      color: dark
                          ? Tcolors.LightGrey.withOpacity(0.1)
                          : Tcolors.darkerGrey.withOpacity(0.1),
                      blurRadius: 50,
                      spreadRadius: 7,
                      offset: const Offset(0, 2)),
                ]), //BoxShadow
            //
            //
            //

            child: Stack(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: roundedImage(
                      imageUrl: widget.image,
                      width: 180,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.companyName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: dark ? Tcolors.white : Tcolors.darkerGrey,
                            ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: widget.isVerified
                            ? Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: TSize.md,
                              )
                            : null,
                      )
                    ],
                  ),
                  SizedBox(
                    height: TSize.productCardHeight * 0.2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "रु ${widget.price}",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          if (cart.contains(widget.ind)) {
                            context.read<CartProvider>().removeCart(widget.ind);
                          } else {
                            context.read<CartProvider>().addtoCart(widget.ind);
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Tcolors.darkGrey),
                            child: cart.contains(widget.ind)
                                ? Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                      )
                    ],
                  )
                ]),
                Positioned(
                  right: 2,
                  child: widget.showFavourite
                      ? IconButton(
                          onPressed: () {
                            if (favourites.contains(widget.ind)) {
                              context
                                  .read<ProductProvider>()
                                  .removeFavourite(widget.ind);
                            } else {
                              context
                                  .read<ProductProvider>()
                                  .addToFavrouite(widget.ind);
                              print(favourites);
                            }
                          },
                          icon: ImageIcon(
                            AssetImage("assets/images/Heart.png"),
                            // ignore: collection_methods_unrelated_type
                            color: favourites.contains(widget.ind)
                                ? Colors.red
                                : Colors.grey.withOpacity(0.4),
                          ))
                      : Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                )
              ],
            ));
        ;
      },
    );
  }
}
