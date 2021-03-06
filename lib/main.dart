import 'package:dating_ui/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating UI',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      home: ProfilePage(),
    );
  }
}
