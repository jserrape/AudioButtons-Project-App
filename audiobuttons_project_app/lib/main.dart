import 'package:flutter/material.dart';

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
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => print("Container pressed"), // handle your onTap here
            child: Container(height: 200, width: 200),
          ),
        ),
      ],
    );
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
