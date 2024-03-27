import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNum) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNum.wav'));
}

Expanded buildKey({Color color = Colors.red, int soundNum = 1}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
      ),
      onPressed: () {
        playSound(soundNum);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.blue, soundNum: 5),
              buildKey(color: Colors.purple, soundNum: 6),
              buildKey(color: Colors.white, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// function with {}
// void main(){
// Greet(greeting: 'whats up', person:'Mahin' );
// }
//void Greet({String person, String greeting}){
// print('$greeting $person')}
