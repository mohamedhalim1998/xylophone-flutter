import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class SoundButton extends StatelessWidget {
  final String sound;
  final Color color;

  final AudioCache player;

  SoundButton(this.sound, this.color, this.player);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          player.play(sound);
        },
        color: color,
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SoundButton("note1.wav", Colors.red, player),
              SoundButton("note2.wav", Colors.orange, player),
              SoundButton("note3.wav", Colors.yellow, player),
              SoundButton("note4.wav", Colors.green, player),
              SoundButton("note5.wav", Colors.blue, player),
              SoundButton("note6.wav", Colors.teal, player),
              SoundButton("note7.wav", Colors.purple, player),
            ],
          ),
        ),
      ),
    );
  }
}
