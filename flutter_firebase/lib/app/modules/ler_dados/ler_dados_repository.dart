import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_store.dart';

class LerDadosRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> readData() async {
    await db.collection("users").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
  }
}
