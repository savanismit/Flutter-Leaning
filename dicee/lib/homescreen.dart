import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int LeftDiceIndex = 1;
  int RightDiceIndex = 1;
  void roll() {
    setState(() {
      LeftDiceIndex = Random().nextInt(6)+1;
      RightDiceIndex = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                      image: AssetImage('images/dice-png-$LeftDiceIndex.png')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                      image: AssetImage('images/dice-png-$RightDiceIndex.png')),
                ))
              ],
            ),
            OutlinedButton(
              onPressed: roll,
              child: const Text('Roll'),
            )
          ],
        ),
      ),
    );
  }
}
