import 'package:flutter/material.dart';
import 'package:rivas/galeriadecarros.dart';

void main() {
  runApp(TetosApp());
} //funcion principal

class TetosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Tetos Cars',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: PaginaInicial());
  }
} //clase Tetos App Widgets sin estado
