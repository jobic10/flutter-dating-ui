import 'package:dating_ui/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RoundedImage(
            imageUrl: 'assets/images/anne.jpeg',
            size: Size(100, 100),
          ),
        ],
      ),
    );
  }
}
