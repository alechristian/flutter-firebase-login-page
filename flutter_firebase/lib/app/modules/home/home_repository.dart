import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_store.dart';
import 'home_store.dart';

class HomeRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> addData() async {
    final user = <String, dynamic>{
      "first": "Jonas",
      "last": "Augusto",
      "born": 2007,
      "cpf": "000.000.001-91"
    };
    await db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  Future<void> readData() async {
    await db.collection("users").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
  }
}
