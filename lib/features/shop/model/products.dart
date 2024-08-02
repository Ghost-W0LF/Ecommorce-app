import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:flutter/material.dart';

class Products {
  Products({this.image, this.label, this.price, this.subtitle});
  final String? label;
  final String? image;
  final int? price;
  final String? subtitle;
}

class ProductProvider extends ChangeNotifier {
  List<Products> productsItmes = [
    Products(label: "Shose", image: TImage.shoes1, price: 3000, subtitle: ""),
    Products(
        label: "CrossBow", image: TImage.crossBow, price: 4000, subtitle: ""),
    Products(label: "Bike", image: TImage.bike, price: 4500, subtitle: ""),
    Products(label: "Airpod", image: TImage.airpod, price: 1000, subtitle: ""),
    Products(label: "Chair", image: TImage.chair, price: 500, subtitle: ""),
  ];

  List<dynamic> favourites = [];
  List<dynamic> Cart = [];

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
