import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple ListView',
      home: ListViewSeparatedTest(),
    );
  }
}

class Jour {
  final String intitule;
  final String description;

  Jour({required this.intitule, required this.description});
}

class DetailJour extends StatelessWidget {
  final String title;
  final String description;

  const DetailJour({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détail du jour'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Bonjour $title\n\n$description",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ListViewSeparatedTest extends StatelessWidget {
  ListViewSeparatedTest({super.key});

  final List<Jour> jours = [
    Jour(intitule: "Dimanche", description: "Repos et préparation de la semaine"),
    Jour(intitule: "Lundi", description: "Courses, réunion et sport"),
    Jour(intitule: "Mardi", description: "Travail sur le projet Flutter"),
    Jour(intitule: "Mercredi", description: "Étude et révision des cours"),
    Jour(intitule: "Jeudi", description: "Préparation des présentations"),
    Jour(intitule: "Vendredi", description: "Sport et organisation"),
    Jour(intitule: "Samedi", description: "Sortie entre amis et détente"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("M208_TP6"),
      ),
      body: ListView.separated(
        itemCount: jours.length,
        itemBuilder: (context, index) {
          final jour = jours[index];
          return ListTile(
            title: Text(jour.intitule, style: TextStyle(fontSize: 30)),
            subtitle: Text('Tâches à faire le ${jour.intitule}'),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                jour.intitule[0],
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailJour(title: jour.intitule, description: jour.description),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20, 
            alignment: Alignment.center,
            color: Colors.orange,
            child: Icon(
              Icons.add_a_photo,
              size: 20,
            ),
          );
        },
      ),
    );
  }

}
