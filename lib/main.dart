import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Xilophone'),
        ),
        body: Column(
          children: [
            criarBotaoXilofone(cor: Colors.red, numero: 1),
            criarBotaoXilofone(cor: Colors.orange, numero: 2),
            criarBotaoXilofone(cor: Colors.yellow, numero: 3),
            criarBotaoXilofone(cor: Colors.green, numero: 4),
            criarBotaoXilofone(cor: Colors.blue, numero: 5),
            criarBotaoXilofone(cor: Colors.indigo, numero: 6),
            criarBotaoXilofone(cor: Colors.purple, numero: 7),
          ],
        ),
      ),
    );
  }

  Widget criarBotaoXilofone({Color? cor, int? numero}) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {
          AudioCache player = AudioCache();
          player.play('note$numero.wav');
        },
        child: Ink(color: cor),
      ),
    );
  }
}
