import 'package:flutter/material.dart';

class gridLayout extends StatelessWidget {
  gridLayout({
    super.key,
    this.itemCount,
    this.crossAxisCount = 2,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });
  final int? itemCount;
  final int crossAxisCount;
  double? mainAxisExtent;
  Widget Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: mainAxisExtent,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: itemBuilder);
  }
}
/*  
      ), */