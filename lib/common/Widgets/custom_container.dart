import 'package:ecomorce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_container extends StatefulWidget {
  custom_container(
      {super.key,
      this.height = 400,
      this.width = double.infinity,
      this.rds = 0.0,
      this.child,
      this.color = Tcolors.transparent,
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

  @override
  State<custom_container> createState() => _custom_containerState();
}

class _custom_containerState extends State<custom_container> {
  //final Padding? pad;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.edg,
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.rds),
        border: Border.all(color: widget.bcolor, width: widget.bwidth),
        color: widget.color,
      ),
      child: widget.child,
    );
  }
}
