import 'package:flutter/material.dart';
import 'package:tik_toe/pages/game_page.dart';

void main() {
  runApp(TikToe());
}

class TikToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}
