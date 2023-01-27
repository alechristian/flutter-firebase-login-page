import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_firebase/app/modules/home/home_page.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeRepository()),
    Bind.singleton((i) => HomeStore()),
    Bind.singleton((i) => HomeModule()),
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const Home()),
  ];
}
