import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  String texto = "Hello, World!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(texto),
          ElevatedButton(
            child: Text('muda texto!'),
            onPressed: () {
              setState(() {
                texto = "texto legal 123";
              });
            },
          ),
        ],
      ),
    );
  }
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Flutter App')),
        ),
        body: PaginaInicial(),
      ),
    );
  }
}
