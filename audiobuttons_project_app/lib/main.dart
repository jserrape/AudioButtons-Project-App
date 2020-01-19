import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);


  // https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md
  static AudioCache player = AudioCache();
  var arrTexto = ['a','b','c','d','e'];
  var arrFile = ['a','b','c','d','e'];

  Widget _buildSuggestions() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Material(
          color: Colors.brown,
          child: InkWell(
            onTap: () => _reproducirSonido(), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 1'),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 2'),

            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 3'),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 4'),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 5'),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 6'),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Texto 7'),
            ),
          ),
        ),
      ],
    );
  }

  void _reproducirSonido(){
    // call this method when desired
    player.play('aTope.mp3');
  }

  Widget _buildRow(String pair) {
    return ListTile(
      title: Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}
