import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  final player = AudioCache();

  Widget createXylophoneButton(int noteNumber, Color color) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            player.play('note$noteNumber.wav');
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createXylophoneButton(1, Colors.red),
                createXylophoneButton(2, Colors.orange),
                createXylophoneButton(3, Colors.yellow),
                createXylophoneButton(4, Colors.green),
                createXylophoneButton(5, Colors.teal),
                createXylophoneButton(6, Colors.blue),
                createXylophoneButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
