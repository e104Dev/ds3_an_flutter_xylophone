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
          title: Text('Flutter Xilophone'),
        ),
        body: Column(
          children: [
            criarBotaoXilofone(Colors.red),
            criarBotaoXilofone(Colors.orange),
            criarBotaoXilofone(Colors.yellow),
            criarBotaoXilofone(Colors.green),
            criarBotaoXilofone(Colors.blue),
            criarBotaoXilofone(Colors.indigo),
            criarBotaoXilofone(Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget criarBotaoXilofone(Color cor) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.black38,
        onTap: () {},
        child: Ink(color: cor),
      ),
    );
  }
}
