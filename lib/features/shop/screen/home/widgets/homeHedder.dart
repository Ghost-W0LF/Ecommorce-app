// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:ecomorce/common/Widgets/custom_searchBar.dart';
import 'package:ecomorce/common/Widgets/sectionTitle/sectionTitle.dart';
import 'package:ecomorce/features/shop/screen/home/widgets/homeAppbar.dart';
import 'package:ecomorce/features/shop/screen/home/widgets/textImage.dart';


import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:ecomorce/utils/constants/text_String.dart';
import 'package:flutter/material.dart';

class homeHeadder extends StatelessWidget {
  const homeHeadder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageIcon = [
      "assets/images/logo/clothes.png",
      "assets/images/logo/eletronic.png",
      "assets/images/logo/Furniture.png",
      "assets/images/logo/jwel.png",
      "assets/images/logo/machine.png",
      "assets/images/logo/sport.png",
    ];
    List<String> imageText = [
      "Clothes",
      "Electronic",
      "Furniture",
      "Jwel",
      "machiniery",
      "Sports"
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      homeAppbar(),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: TSize.defaultSpace - 5),
          child: searchBar()),
      SizedBox(
        height: 34,
      ),
      sectionTitel(
        label: TText.popularCatog,
        TextColor: Colors.white,
      ),
      SizedBox(
        height: 10,
      ),
      //TEXT IMAGE WITH horizontal SCROLL
      textImage(imageIcon: imageIcon, imageText: imageText)
      ,
      
    ]);
  }
}
