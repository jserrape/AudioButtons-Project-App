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
    );
  }
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

  Widget _buildSuggestions() {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: _generarArrayMaterial());
  }

  void _reproducirSonido(var n) {
    player.play(arrFile[n]);
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
      color: colors[random.nextInt(colors.length)],
      child: InkWell(
        onTap: () => _reproducirSonido(i),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Text(arrTexto[i]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gentecilla button'),
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}
