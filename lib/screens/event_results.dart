import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class EventResultsPage extends StatefulWidget {
  @override
  _EventResultsPageState createState() => _EventResultsPageState();
}

class _EventResultsPageState extends State<EventResultsPage> {
  List<String> participants = ["Participant 1", "Participant 2", "Participant 3"]; // Liste des participants
  Map<String, int> results = {}; // Résultats des participants

  @override
  void initState() {
    super.initState();
    // Appeler la fonction de récupération des résultats du service Firebase
    results = FirebaseService.getEventResults();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Résultats des événements'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Classement :'),
          Expanded(
            child: ListView.builder(
              itemCount: participants.length,
              itemBuilder: (context, index) {
                final participant = participants[index];
                final score = results[participant] ?? 0;

                return ListTile(
                  title: Text(participant),
                  subtitle: Text('Score: $score'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
