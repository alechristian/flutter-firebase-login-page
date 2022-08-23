import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeRepository {
  final Dio dio;

  FirebaseAuth auth = FirebaseAuth.instance;

  HomeRepository(this.dio);
  final appStore = Modular.get<AppStore>();

  Future<void> authUser(String? loginUser, String? passwordUser) async {
    auth
        .signInWithEmailAndPassword(email: loginUser!, password: passwordUser!)
        .then((value) => print('Loguei'))
        .catchError((onError) => print(onError));
  }
}
