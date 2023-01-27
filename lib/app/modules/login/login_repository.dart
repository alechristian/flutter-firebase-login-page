import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class LoginRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> authUser(String? loginUser, String? passwordUser) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: loginUser!, password: passwordUser!);
    } on FirebaseAuthException catch (e) {
      print(e);
      return excecoesMapeadas(e);
    }
  }

  void excecoesMapeadas(FirebaseAuthException e) {
    if (e.code == 'user-disabled') {
      if (kDebugMode) {
        print("usuario desabilitado");
      }
      //'O usuário informado esta desabilitado.'
    } else if (e.code == 'user-not-found') {
      if (kDebugMode) {
        print("O usuário informado não está cadastrado.");
      }
      //'O usuário informado não está cadastrado.'
    } else if (e.code == 'invalid-email') {
      if (kDebugMode) {
        print("O domínio do e-mail informado é inválido.");
      }
      //'O domínio do e-mail informado é inválido.'
    } else if (e.code == 'wrong-password') {
      if (kDebugMode) {
        print("A senha informada está incorreta.");
      }
      //'A senha informada está incorreta.'
    } else {
      if (kDebugMode) {
        print("Outro problema");
      }
      //Outro problema
    }
  }
}
