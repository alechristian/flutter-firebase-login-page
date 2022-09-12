import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      //'O usuário informado esta desabilitado.'
    } else if (e.code == 'user-not-found') {
      //'O usuário informado não está cadastrado.'
    } else if (e.code == 'invalid-email') {
      //'O domínio do e-mail informado é inválido.'
    } else if (e.code == 'wrong-password') {
      //'A senha informada está incorreta.'
    } else {
      //Outro problema
    }
  }
}
