import 'package:flutter/material.dart';


class OrganizerDashboard extends StatefulWidget {
  @override
  _OrganizerDashboardState createState() => _OrganizerDashboardState();
}

class _OrganizerDashboardState extends State<OrganizerDashboard> {
  List<String> participants = ["Participant 1", "Participant 2", "Participant 3"]; // Liste des participants
  String announcement = ''; // Annonces et mises à jour

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tableau de bord de l\'organisateur'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Participants inscrits :'),
          Expanded(
            child: ListView.builder(
              itemCount: participants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(participants[index]),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Text('Annonces et mises à jour :'),
          TextFormField(
            onChanged: (value) {
              setState(() {
                announcement = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Nouvelle annonce ou mise à jour',
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Appeler la fonction de notification push du service Firebase
           (participants, announcement);
            },
            child: Text('Envoyer une notification aux participants'),
          ),
        ],
      ),
    );
  }
}
