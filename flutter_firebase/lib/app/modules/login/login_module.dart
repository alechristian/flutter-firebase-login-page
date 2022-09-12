import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/login/login_page.dart';
import 'package:flutter_firebase/app/modules/login/login_repository.dart';
import 'package:flutter_firebase/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => LoginModule()),
    Bind.lazySingleton((i) => LoginRepository()),
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LoginPage()),
    ChildRoute('/login', child: (_, args) => const LoginPage()),
  ];
}
