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
  int counter = 0;
  final TextEditingController _textEditingController = TextEditingController();
  String nome = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(texto),
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: 'Clique aqui para digitar seu nome',
            ),
          ),
          ElevatedButton(
            child: Text('Clique em mim!!'),
            onPressed: () {
              nome = _textEditingController.text;
              setState(() {
                if (nome.isEmpty) {
                  texto = "Hello, World!";
                } else {
                  texto = "Olá, $nome!";
                }
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
