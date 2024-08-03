import 'package:ecomorce/features/authentication/screen/screen_onboarding/onboarding.dart';
import 'package:ecomorce/features/shop/model/cart_model.dart';
import 'package:ecomorce/features/shop/model/products.dart';

import 'package:ecomorce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductProvider()),
      ChangeNotifierProvider(create: (context) => CartProvider(ProductProvider())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
