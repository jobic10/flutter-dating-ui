import 'package:dating_ui/styleguides/colors.dart';
import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String? firstText, secondText;
  final bool hasImage;
  final String? imagePath;

  const ProfileCard({
    Key? key,
    this.firstText,
    this.secondText,
    this.hasImage = false,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        elevation: 12,
        child: hasImage
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath!,
                  color: primaryColor,
                  width: 25,
                  height: 25,
                  fit: BoxFit.fitHeight,
                ),
              )
            : _twoLineItem(),
      ),
    );
  }

  _twoLineItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            firstText!,
            style: titleStyle,
          ),
          Text(
            secondText!,
            style: subTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
