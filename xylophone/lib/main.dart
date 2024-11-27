import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: TextButton(
              onPressed: (){
                final loadplayer = AudioCache();
                loadplayer.load('note1.wav');
                final player = AudioPlayer(
                );
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}