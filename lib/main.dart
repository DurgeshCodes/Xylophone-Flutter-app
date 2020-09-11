import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Xylo();
  }
}

class Xylo extends StatefulWidget {
  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  int note = 1;

Expanded key({int note,Color color}){
  return  Expanded(
    child: FlatButton
      (
      onPressed: ()
      {
        final player = AudioCache();
        player.play('note$note.wav');

      },
      color: color,
      shape: new RoundedRectangleBorder
        (
        borderRadius: new BorderRadius.circular(10.0),

        ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>
            [
              key(note: 1,color: Colors.red),
              key(note: 2,color: Colors.orange),
              key(note: 3,color: Colors.yellow),
              key(note: 4,color: Colors.green),
              key(note: 5,color: Colors.blue),
              key(note: 6,color: Colors.indigo),
              key(note: 7,color: Colors.purple),
            ],

          ),
      )
    );
  }
}
