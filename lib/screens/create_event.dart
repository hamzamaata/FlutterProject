import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class CreateEventPage extends StatefulWidget {
  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final TextEditingController eventNameController = TextEditingController();

  // Vous pouvez ajouter d'autres contrôleurs pour les autres champs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Création d\'événements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: eventNameController,
              decoration: InputDecoration(labelText: 'Nom de l\'événement'),
            ),
            // Ajoutez d'autres champs ici
            ElevatedButton(
              onPressed: () {
                // Appeler la fonction de création d'événement du service Firebase
                FirebaseService.createEvent(eventNameController.text);
              },
              child: Text('Créer l\'événement'),
            ),
          ],
        ),
      ),
    );
  }
}
