import 'package:firebase_auth/firebase_auth.dart';

class AppRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> authState() async {
    auth.authStateChanges().listen((event) {
      if (event == null) {
        print('Ainda não está logado');
      } else {
        print('Já está logado');
      }
    });
  }
}
