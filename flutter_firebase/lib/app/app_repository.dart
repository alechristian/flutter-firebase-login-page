import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_firebase/main.dart';

class AppRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  // var fcmToken = await FirebaseMessaging.instance.getToken();

  Future<void> authState() async {
    auth.authStateChanges().listen((event) {
      if (event == null) {
        print('Ainda não está logado');
      } else {
        print('Já está logado');
      }
    });
  }

  Future<void> addData() async {
    final user = <String, dynamic>{
      "nome": appStore.nome,
      "cidade": appStore.cidade,
      "contato": appStore.contato,
      "idade": appStore.idade,
    };
    await db.collection("users").add(user).then(
          (DocumentReference doc) => print(
              'Itens adicionados com sucesso!! ${doc.id} || ${doc.firestore} || ${doc.parent}'),
        );
  }

  Future<void> getTokenRefresh() async {
    //   var fcmToken = await FirebaseMessaging.instance.getToken();
    //   FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
    //     // if (fcmToken == null) {
    //     //   print('Unable to send FCM message, no token exists.');
    //     //   return;
    //     // } else {
    //     //   print('teste');
    //     // }

    //     print('token: ${fcmToken}');
    //     // TODO: If necessary send token to application server.
    //   }).onError((err) {
    //     // Error getting token.
    //     print("NAO funcionou o token");
    //   });
  }
}
