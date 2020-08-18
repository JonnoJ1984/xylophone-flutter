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
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note1.wav');
                  },
                  color: Color(0xffff0000),
                  //child: Text('Button1'),
                ),
              ),
              //Button2 Orange
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note2.wav');
                  },
                  color: Color(0xffff9100),
                  //child: Text('Button2'),
                ),
              ),
              //Button3 Yellow
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note3.wav');
                  },
                  color: Color(0xffffea00),
                  //child: Text('Button3'),
                ),
              ),
              //Button4 Green
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note4.wav');
                  },
                  color: Color(0xff00cc00),
                  //child: Text('Button4'),
                ),
              ),
              //Button5 Blue
              Expanded(
                child: FlatButton(
                  //Button5 Blue
                  onPressed: () {
                    playSound('note5.wav');
                  },
                  color: Color(0xff448aff),
                  //child: Text('Button5'),
                ),
              ),
              //Button6 Purple
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note6.wav');
                  },
                  color: Color(0xffaa00ff),
                  //child: Text('Button6'),
                ),
              ),
              //Button7 Pink
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound('note7.wav');
                  },
                  color: Color(0xffff4081),
                  //child: Text('Button7'),
                ),
              ),
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
//  void buildKey(){
//
//  }

}
