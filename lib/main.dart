import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget builtKey({int keyNumber, Color keyColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(keyNumber);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
        ),
        child: Container(
          color: keyColor,
        ),
      ),
    );
  }

  void playSound(int keyNumber) {
    final player = AudioCache();
    player.play("note$keyNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone",
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(keyColor: Colors.red, keyNumber: 1),
              builtKey(keyColor: Colors.yellow, keyNumber: 2),
              builtKey(keyColor: Colors.green, keyNumber: 3),
              builtKey(keyColor: Colors.teal, keyNumber: 4),
              builtKey(keyColor: Colors.blue, keyNumber: 5),
              builtKey(keyColor: Colors.purple, keyNumber: 6),
              builtKey(keyColor: Colors.orange, keyNumber: 7),
            ],
          ),
      ),
    );
  }
}
