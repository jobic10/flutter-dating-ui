import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:flutter/material.dart';

class SuperLikedScreen extends StatelessWidget {
  const SuperLikedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'SELECT',
              style: actionMenuStyle,
            ),
          ),
        ],
      ),
    );
  }
}
