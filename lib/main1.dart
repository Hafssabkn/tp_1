import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple ListView',
      home: const ListViewTest(),
    );
  }
}

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    var liste = ["LANGAGE JAVA", "LANGAGE KOTLIN", "LANGAGE DART", "LANGAGE SWIFT"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("M208_TP6"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: Center(child: Text(liste[0])),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: Center(child: Text(liste[1])),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: Center(child: Text(liste[2])),
          ),
          Container(
            height: 50,
            color: Colors.amber[50],
            child: Center(child: Text(liste[3])),
          ),
        ],
      ),
    );
  }
}
