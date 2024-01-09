import 'package:flutter/material.dart';
import '../services/firebase_service.dart';

class EventPromotionPage extends StatefulWidget {
  @override
  _EventPromotionPageState createState() => _EventPromotionPageState();
}

class _EventPromotionPageState extends State<EventPromotionPage> {
  String promotionText = ''; // Texte pour la promotion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotion d\'événements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {
                  promotionText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Texte de la promotion',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Appeler la fonction de partage sur les médias sociaux du service Firebase
                FirebaseService.shareOnSocialMedia(promotionText);
              },
              child: Text('Partager sur les médias sociaux'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Appeler la fonction d'invitation d'amis du service Firebase
                FirebaseService.inviteFriends();
              },
              child: Text('Inviter des amis'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Appeler la fonction de suivi des performances avec Firebase Analytics
                FirebaseService.trackPromotionPerformance(promotionText);
              },
              child: Text('Suivi des performances de promotion'),
            ),
          ],
        ),
      ),
    );
  }
}
