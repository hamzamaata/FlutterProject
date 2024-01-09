import 'package:flutter/material.dart';
import 'screens/create_event.dart';
import 'screens/event_registration.dart';
import 'screens/organizer_dashboard.dart';
import 'screens/event_promotion.dart';
import 'screens/event_results.dart';
import 'services/firebase_service.dart';
import 'utils/authentication.dart';
import 'utils/push_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Votre Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrganizerDashboard(),
    );
  }
}

class EventResultPage {
}
