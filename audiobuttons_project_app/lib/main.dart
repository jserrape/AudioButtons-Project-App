import 'dart:math';

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

  List colors = [Colors.red, Colors.green, Colors.yellow, Colors.grey, Colors.pinkAccent, Colors.blue, Colors.orangeAccent, Colors.purple];

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
      children: _generarArrayMaterial()
    );
  }

  void _reproducirSonido(var n){
    player.play(arrFile[n]);
  }

  List<Widget> _generarArrayMaterial(){
    var arrWid = <Widget>[];
    for(var i=0;i<arrTexto.length;i++){
      arrWid.add(_crearMaterialContainer(i));
    }
    return arrWid;
  }

  Material _crearMaterialContainer(var i){
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
