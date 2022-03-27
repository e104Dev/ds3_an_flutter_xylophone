import 'package:ds3_an_flutter_xylophone/pages/xylophone.dart';
import 'package:flutter/material.dart';

import 'pages/tbbt_jokenpo.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Xylophone(),
    );
  }
}
