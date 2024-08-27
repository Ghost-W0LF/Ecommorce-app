import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:flutter/material.dart';

class Products {
  Products({this.image, this.label,required this.price, this.subtitle});
  final String? label;
  final String? image;
  final int price;
  final String? subtitle;
}

class ProductProvider extends ChangeNotifier {
  List<Products> productsItmes = [
 
    Products(
        label: "Apple Watch", image: TImage.watch, price: 60000, subtitle: ""),
    Products(
        label: "Gramophone",
        image: TImage.gramophone,
        price: 48000,
        subtitle: ""),
    Products(
        label: "Beige Men Sweater",
        image: TImage.sweater,
        price: 1800,
        subtitle: ""),
    Products(
        label: "Apple MacBook pro",
        image: TImage.macbook,
        price: 500,
        subtitle: ""),
    Products(
        label: "Iphone 13", image: TImage.iphone, price: 190000, subtitle: ""),
    Products(
        label: "Nicon D5500",
        image: TImage.camera,
        price: 130000,
        subtitle: ""),
  ];

  List<dynamic> favourites = [];
  List<int> Cart = [];

  void addToFavrouite(index) {
    favourites.add(index);
    notifyListeners();
  }

  void removeFavourite(index) {
    favourites.remove(index);
    notifyListeners();
  }
  


  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
