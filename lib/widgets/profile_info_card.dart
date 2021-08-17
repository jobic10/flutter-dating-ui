import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Widget widget;

  const ProfileInfoCard(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.widget})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
          bottom: 24,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: widget,
              alignment: Alignment.topRight,
            ),
            Text(
              firstText,
              style: titleStyle,
            ),
            Text(
              secondText,
              style: subTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
