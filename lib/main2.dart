import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple ListView',
      home: ListViewBuilderTest(),
    );
  }
}

class ListViewBuilderTest extends StatelessWidget {
   ListViewBuilderTest({super.key});

  final List<String> jours = [
    "Dimanche",
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, 
        title: Text("M208_TP6",
        )
      ),
      body: ListView.builder(
        itemCount: jours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jours[index], style: TextStyle(fontSize: 30)),
            subtitle: Text('Tâches à faire le ${jours[index]}'),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                jours[index][0],
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
            ),
          );
        },
      ),
    );
  }
}
