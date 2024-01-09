import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Fonction pour récupérer l'utilisateur actuel
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // Fonction pour connecter l'utilisateur avec email et mot de passe
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user;
    } catch (e) {
      print('Erreur de connexion : $e');
      return null;
    }
  }

  // Fonction pour déconnecter l'utilisateur
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
