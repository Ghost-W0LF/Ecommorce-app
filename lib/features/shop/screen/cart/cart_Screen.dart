import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/features/shop/model/cart_model.dart';
import 'package:ecomorce/features/shop/model/products.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var productList = context.read<ProductProvider>().productsItmes;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Consumer<CartProvider>(
        builder: (context, ins, child) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: ins.cart.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          leading: Image(
                            height: 400,
                            image: AssetImage(
                                productList[ins.cart[index]].image.toString()),
                          ),
                          title: Row(
                            children: [
                              Text(productList[ins.cart[index]]
                                  .label
                                  .toString()),
                              const SizedBox(
                                width: 30,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_back_ios,
                                        size: 10,
                                      )),
                                  Text(
                                    " (×)1",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_forward_ios,
                                          size: 10)),
                                  Text(
                                      "रु ${productList[ins.cart[index]].price.toString()}"),
                                ],
                              )
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              ins.removeCart(index);
                            },
                          ),
                        );
                      }),
                ),
                //
                //
                //Fotter
                //
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: THelperFunction.screenWidth(),
                    height: 130,
                    decoration: BoxDecoration(
                      color: Tcolors.darkGrey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Total \n${ins.calculateTotalPrice()}",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.shopping_cart_checkout_outlined,
                              size: TSize.iconlg,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}
