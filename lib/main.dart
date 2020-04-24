import 'package:flutter/material.dart';
import 'package:flutterapp/screens/telefone_detalhe_screen.dart';
import 'package:flutterapp/screens/telefone_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telefones Celulares',
      theme: new ThemeData(
        // primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TelefoneScreen(),
        '/celular_detalhes': (context) => TelefoneDetalhesScreen(),
      },
    );
  }
}
