import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int index) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildKey({Color color, int index, String note}) {
    return Expanded(
//                width: double.infinity,
      child: FlatButton(
        onPressed: () {
          playSound(index);
        },
        color: color,
        child: Text('$note'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, index: 1, note: ''),
            buildKey(color: Colors.orange, index: 2,note: ''),
            buildKey(color: Colors.yellow, index: 3,note: ''),
            buildKey(color: Colors.lightGreen, index: 4,note: ''),
            buildKey(color: Colors.green, index: 5,note: ''),
            buildKey(color: Colors.blue, index: 6,note: ''),
            buildKey(color: Colors.purple, index: 7,note: ''),
          ],
        )),
      ),
    );
  }
}
