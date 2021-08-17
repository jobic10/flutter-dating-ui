import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:dating_ui/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedImage(
            imageUrl: 'assets/images/anne.jpeg',
            size: Size(100, 100),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Roseline, 24',
                style: whiteNameTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/location_pin.png',
                width: 20,
                color: Colors.white,
              ),
              Text(
                " 82 Kilometers",
                style: whiteSubHeadingTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
