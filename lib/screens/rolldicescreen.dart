import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int activeDiceFace = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/6/62/Kismet-Ace.png',
    'https://upload.wikimedia.org/wikipedia/commons/6/6d/Kismet-Deuce.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f2/Kismet-Trey.png',
    'https://upload.wikimedia.org/wikipedia/commons/1/11/Kismet-Four.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8e/Kismet-Five.png',
    'https://upload.wikimedia.org/wikipedia/commons/4/4e/Kismet-Six.png',
    'https://bestanimations.com/media/dice/33774869rolling-dice-gif-11.gif'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.red.shade600,
            Colors.orange.shade600,
            Colors.yellow.shade600,
            Colors.green.shade600,
            Colors.blue.shade600,
            Colors.indigo.shade600,
            Colors.purple.shade600,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Roll A Dice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: 10,
                ),
              ),
              Image.network(diceImage[activeDiceFace]),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    activeDiceFace = ranNum;
                  });
                  print('Button Pressed');
                },
                child: const Text(
                  'Roll!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
