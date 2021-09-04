import 'package:dicee/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dicee());
}

class Dicee extends StatelessWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
