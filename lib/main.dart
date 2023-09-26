import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/rolldicescreen.dart';

void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDiceScreen(),
    );
  }
}
