import 'package:ecomorce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_container extends StatelessWidget {
  custom_container(
      {super.key,
      this.height = 400,
      this.width = double.infinity,
      this.rds = 0.0,
      this.child,
      this.color = Tcolors.accent,
      this.bcolor = Tcolors.transparent,
      this.bwidth = 0,

      //this.pad,
      this.edg});
  final double height;
  final double width;
  final double rds;
  final Widget? child;
  final EdgeInsets? edg;
  final color;

  final bcolor;
  final double bwidth;

  //final Padding? pad;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edg,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(rds),
        border: Border.all(color: bcolor, width: bwidth),
        color: color,
      ),
      child: child,
    );
  }
}
