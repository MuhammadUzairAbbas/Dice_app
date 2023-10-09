import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 3;
  int rightDice = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              child: Ink.image(
                image: AssetImage('image/dice$leftDice.png'),
                height: 150,
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                }); 
              },
              child: Ink.image(
                image: AssetImage('image/dice$rightDice.png'),
                height: 150,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
