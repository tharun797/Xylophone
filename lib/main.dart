import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  Expanded buildKey({required int soundNumber, required Color colour}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: colour),
        onPressed: () {
          final player = AudioPlayer();
          player.play(
            AssetSource('note$soundNumber.wav'),
          );
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, colour: Colors.red),
              buildKey(soundNumber: 2, colour: Colors.orange),
              buildKey(soundNumber: 3, colour: Colors.yellow),
              buildKey(soundNumber: 4, colour: Colors.green),
              buildKey(soundNumber: 5, colour: Colors.lightGreen),
              buildKey(soundNumber: 6, colour: Colors.blue),
              buildKey(soundNumber: 7, colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
