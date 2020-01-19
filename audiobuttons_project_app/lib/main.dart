import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

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
  final _biggerFont = const TextStyle(fontSize: 18.0);


  // https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md
  static AudioPlayer advancedPlayer = new AudioPlayer();
  static AudioCache player = AudioCache(fixedPlayer: advancedPlayer);


  var arrTexto = [
    'Aquavit',
    'aTope',
    'bolas',
    'BurguesTomas',
    'caillou',
    'callate',
    'DejadmeTranquilo',
    'DentroDelPecho',
    'DiariodeBitácora',
    'ElBebercio',
    'elRecuento',
    'ElvisBorracho',
    'esLaPollisima',
    'esperar',
    'estudiar',
    'follen',
    'gilipollasTeReviento',
    'golpeDeEstado',
    'gorda',
    'hola',
    'laCenaMama',
    'laCosaNoVaAsi',
    'malditoLisiado',
    'Manueeeee',
    'MasAquavit',
    'Mayday',
    'meHanFollao',
    'MuchasGracias',
    'noPuedoBeberMas',
    'OsQuiero',
    'OsQuieroMucho',
    'patoAlfa',
    'piratas',
    'pota0',
    'pota1',
    'pota2',
    'pota3',
    'QuiénVive',
    'robertoRacista',
    'robertoSeDisculpa',
    'SeguiremosInformando',
    'SeHaRascado',
    'telefonoMaltrato',
    'titular',
    'Victoria',
    'YaTuSabes',
    'YoNoVoyBorracho'];

  var arrFile = [
    'Aquavit.mp3',
    'aTope.mp3',
    'bolas.mp3',
    'BurguesTomas.mp3',
    'caillou.mp3',
    'callate.mp3',
    'DejadmeTranquilo.mp3',
    'DentroDelPecho.mp3',
    'DiariodeBitácora.mp3',
    'ElBebercio.mp3',
    'elRecuento.mp3',
    'ElvisBorracho.mp3',
    'esLaPollisima.mp3',
    'esperar.mp3',
    'estudiar.mp3',
    'follen.mp3',
    'gilipollasTeReviento.mp3',
    'golpeDeEstado.mp3',
    'gorda.mp3',
    'hola.mp3',
    'laCenaMama.mp3',
    'laCosaNoVaAsi.mp3',
    'malditoLisiado.mp3',
    'Manueeeee.mp3',
    'MasAquavit.mp3',
    'Mayday.mp3',
    'meHanFollao.mp3',
    'MuchasGracias.mp3',
    'noPuedoBeberMas.mp3',
    'OsQuiero.mp3',
    'OsQuieroMucho.mp3',
    'patoAlfa.mp3',
    'piratas.mp3',
    'pota0.mp3',
    'pota1.mp3',
    'pota2.mp3',
    'pota3.mp3',
    'QuiénVive.mp3',
    'robertoRacista.mp3',
    'robertoSeDisculpa.mp3',
    'SeguiremosInformando.mp3',
    'SeHaRascado.mp3',
    'telefonoMaltrato.mp3',
    'titular.mp3',
    'Victoria.mp3',
    'YaTuSabes.mp3',
    'YoNoVoyBorracho.mp3'];

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
            onTap: () => _reproducirSonido(0),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[0]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(1),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[1]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(2),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[2]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(3),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[3]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(4),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[4]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(5),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[5]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(6),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[6]),
            ),
          ),
        ),
        Material(
          color: Colors.brown,
          child: InkWell(
            onTap: () => _reproducirSonido(7),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[7]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(8),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[8]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(9),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[9]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(10),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[10]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(11),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[11]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(12),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[12]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(13),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[13]),
            ),
          ),
        ),
        Material(
          color: Colors.brown,
          child: InkWell(
            onTap: () => _reproducirSonido(14),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[14]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(15),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[15]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(16),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[16]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(17),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[17]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(18),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[18]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(19),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[19]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(20),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[20]),
            ),
          ),
        ),
        ///////////////////////////
        ////////////////////////
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(21),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[21]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(22),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[22]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(23),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[23]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(24),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[24]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(25),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[25]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(26),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[26]),
            ),
          ),
        ),
        Material(
          color: Colors.brown,
          child: InkWell(
            onTap: () => _reproducirSonido(27),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[27]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(28),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[28]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(29),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[29]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(30),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[30]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(31),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[31]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(32),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[32]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(33),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[33]),
            ),
          ),
        ),
        Material(
          color: Colors.brown,
          child: InkWell(
            onTap: () => _reproducirSonido(34),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[34]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(35),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[35]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(36),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[36]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(37),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[37]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(38),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[38]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(39),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[39]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(40),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[40]),
            ),
          ),
        ),
        ////////////////////////////////
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(41),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[41]),
            ),
          ),
        ),
        Material(
          color: Colors.redAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(42),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[42]),
            ),
          ),
        ),
        Material(
          color: Colors.amberAccent,
          child: InkWell(
            onTap: () => _reproducirSonido(43),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[43]),
            ),
          ),
        ),
        Material(
          color: Colors.purple,
          child: InkWell(
            onTap: () => _reproducirSonido(44),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[44]),
            ),
          ),
        ),
        Material(
          color: Colors.green,
          child: InkWell(
            onTap: () => _reproducirSonido(45),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[45]),
            ),
          ),
        ),
        Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () => _reproducirSonido(46),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Text(arrTexto[46]),
            ),
          ),
        ),
      ],
    );
  }

  void _reproducirSonido(var n){

    player.play(arrFile[n]);
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
