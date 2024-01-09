import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class EventRegistrationPage extends StatefulWidget {
  @override
  _EventRegistrationPageState createState() => _EventRegistrationPageState();
}

class _EventRegistrationPageState extends State<EventRegistrationPage> {
  List<String> events = ["Event 1", "Event 2", "Event 3"]; // Liste des événements

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription aux événements'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(events[index]),
            trailing: ElevatedButton(
              onPressed: () {
                // Appeler la fonction d'inscription du service Firebase
                FirebaseService.registerForEvent(events[index]);
              },
              child: Text('S\'inscrire'),
            ),
          );
        },
      ),
    );
  }
}
