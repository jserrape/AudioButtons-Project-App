import 'dart:convert';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/services.dart' show rootBundle;

var arrTexto = [];
var arrFile = [];

void main() {
  runApp(MyApp());
  loadJSONfile();
}

// http://cogitas.net/parse-json-dart-flutter/
Future loadJSONfile() async {
  String jsonCrossword = await rootBundle.loadString('assets/data.json');
  Map decoded = jsonDecode(jsonCrossword);

  for (var word in decoded['sounds']) {
    arrTexto.add(word['text']);
    arrFile.add(word['soundURL']);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gentecilla buttons',
      home: RandomWords(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.grey,
    Colors.pinkAccent,
    Colors.blue,
    Colors.orangeAccent,
    Colors.purple
  ];

  // https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md
  static AudioPlayer advancedPlayer = new AudioPlayer();
  static AudioCache player = AudioCache(fixedPlayer: advancedPlayer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        title: Text('Gentecilla button'),
      ),
      body: _buildGridView(),
    );
  }

  Widget _buildGridView() {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: _generarArrayMaterial());
  }

  List<Widget> _generarArrayMaterial() {
    var arrWid = <Widget>[];
    for (var i = 0; i < arrTexto.length; i++) {
      arrWid.add(_crearMaterialContainer(i));
    }
    return arrWid;
  }

  Material _crearMaterialContainer(var i) {
    Random random = new Random();
    return Material(
      child: FloatingActionButton(
        backgroundColor: colors[random.nextInt(colors.length)],
        elevation: 5,
        onPressed: () => player.play(arrFile[i]),
        child: new Text(arrTexto[i],
                        textAlign: TextAlign.center,
                        style: new TextStyle( color: Colors.black,
                                              fontSize: 20.0)),
      ),
    );
  }

}
