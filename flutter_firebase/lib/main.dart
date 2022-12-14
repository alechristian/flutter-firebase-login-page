import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app/app_module.dart';
import 'app/app_widget.dart';

AppStore appStore = Modular.get<AppStore>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // appStore.getToken();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
