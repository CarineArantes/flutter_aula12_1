import 'package:flutter/material.dart';
import 'package:flutter_pagina/mes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<String> meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(title: const Text('Meses')),
          body: ListView.builder(
            itemCount: meses.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(meses[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mes(meses[index]),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
