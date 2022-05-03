import 'package:flutter/material.dart';

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

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widgets con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/carro1.png",
    "assets/images/carro2.png",
    "assets/images/carro3.png",
    "assets/images/carro4.png",
    "assets/images/carro5.png",
    "assets/images/carro6.png",
    "assets/images/carro1.png",
    "assets/images/carro2.png",
    "assets/images/carro3.png",
    "assets/images/carro4.png",
    "assets/images/carro5.png",
    "assets/images/carro6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
