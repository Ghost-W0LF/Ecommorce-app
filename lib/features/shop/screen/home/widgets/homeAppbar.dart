import 'package:ecomorce/common/Widgets/custom_Appbar.dart';
import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/features/shop/model/cart_model.dart';
import 'package:ecomorce/features/shop/screen/cart/cart_Screen.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

class homeAppbar extends StatelessWidget {
  const homeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartProvider>().cart;
    bool dark = THelperFunction.isDarkMode(context);
    return CustomAppbar(
      havebackarrow: false,
      actionIcon: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          custom_container(
            height: 20,
            width: 20,
            rds: 10,
            color: Tcolors.black,
            child: Text(
              "${cart.length}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(const CartScreen());
            },
            icon: Icon(
              Icons.shopping_cart_checkout,
              color: dark ? Tcolors.primaryBackground : Tcolors.white,
              size: 25,
            ),
          )
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(TText.homeAppbarTitle,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white)),
          Text(TText.homeAppbarSubTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: dark ? Tcolors.primaryBackground : Tcolors.white)),
        ],
      ),
    );
  }
}
