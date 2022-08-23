import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_store.dart';

class HomeAutenticadoRepository {
  final Dio dio;
  HomeAutenticadoRepository(this.dio);
  final appController = Modular.get<AppStore>();

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
