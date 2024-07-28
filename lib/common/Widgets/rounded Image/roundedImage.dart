import 'package:flutter/material.dart';

class roundedImage extends StatefulWidget {
  roundedImage({
    super.key,
    this.height,
    this.borderRadius = 20,
    this.width,
    required this.imageUrl,
  });
  final double? height, width;
  final String imageUrl;
  final double borderRadius;

  @override
  State<roundedImage> createState() => _roundedImageState();
}

class _roundedImageState extends State<roundedImage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius)),
        child: Image(fit: BoxFit.contain, image: AssetImage(widget.imageUrl)),
      ),
    );
  }
}
