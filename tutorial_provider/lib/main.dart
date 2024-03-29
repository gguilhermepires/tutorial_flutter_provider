import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/screens/dashboard.dart';

import 'models/saldo.dart';
import 'models/transferencias.dart';

void main() => runApp(
  // ChangeNotifierProvider(create: (context) => Saldo(11),
  // child:BytebankApp() ,)
  MultiProvider(
  providers: [
      ChangeNotifierProvider(create: (context) => Saldo(0)),
      ChangeNotifierProvider(create: (context) => Transferencias())
  ],
  child:BytebankApp() ,)
);

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
