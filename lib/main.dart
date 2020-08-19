import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff000000),
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Button1 Red
              buildKey(1, Colors.red),
              //Button2 Orange
              buildKey(2, Colors.orange),
              //Button3 Yellow
              buildKey(3, Colors.yellow),
              //Button4 Green
              buildKey(4, Colors.lightGreenAccent[700]),
              //Button5 Blue
              buildKey(5, Colors.blue),
              //Button6 Purple
              buildKey(6, Colors.purple),
              //Button7 Pink
              buildKey(7, Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }

  //plays the sound when a button is pressed using audioplayers package
  void playSound(String note) {
    final player = AudioCache();
    player.play(note);
  }

  //builds each of the keys of the instrument
  Expanded buildKey(int soundNum, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound('note$soundNum.wav');
        },
        color: color,
        //child: Text('Button1'),
      ),
    );
  }
}
