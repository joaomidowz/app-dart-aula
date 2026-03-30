import 'package:flutter/material.dart';

void main () {
  runApp(MeuApp());
}

class MeuApp extends StatlessWidget {
  MeuApp((super.key));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Flutter App')),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Hello, World!'), Icon(Icons.favorite, color: Colors.red)],
          ),
        ),
      ),
    )
  );
}