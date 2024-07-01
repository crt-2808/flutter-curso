import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  Future <void> playSound (int sounNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$sounNumber.wav'));
  }

  Expanded buildKey(
    {
      Color expected_color = Colors.white,
      int soundNumber = 0,
    }
  ){
    return Expanded(
      child: Container(
        color: expected_color,
        child: InkWell(
        onTap: () {
          playSound(soundNumber);
            },
          ),
        ),
      );  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(expected_color: Colors.red, soundNumber:1),
                buildKey(expected_color: Colors.orange, soundNumber:2),
                buildKey(expected_color: Colors.yellow, soundNumber:3),
                buildKey(expected_color: Colors.green, soundNumber:4),
                buildKey(expected_color: Colors.teal, soundNumber:5),
                buildKey(expected_color: Colors.blue, soundNumber:6),
                buildKey(expected_color: Colors.purple, soundNumber:7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
