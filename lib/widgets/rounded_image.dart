import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageUrl;
  final Size size;
  const RoundedImage({
    Key? key,
    required this.imageUrl,
    this.size = const Size.fromWidth(120),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imageUrl,
        width: size.width,
        height: size.height,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
