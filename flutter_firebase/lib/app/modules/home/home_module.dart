import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => HomeModule()),
    Bind.lazySingleton((i) => HomeRepository(i.get())),
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
  ];
}
