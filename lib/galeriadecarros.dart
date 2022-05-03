import 'package:flutter/material.dart';
import 'package:rivas/main.dart';

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
