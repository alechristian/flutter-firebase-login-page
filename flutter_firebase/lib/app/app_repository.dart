import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class AppRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
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
