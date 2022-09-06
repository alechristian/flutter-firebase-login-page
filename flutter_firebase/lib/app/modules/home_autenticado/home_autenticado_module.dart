import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_repository.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_page.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeAutenticadoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeAutenticadoRepository()),
    Bind.singleton((i) => HomeAutenticadoStore()),
    Bind.singleton((i) => HomeAutenticadoModule()),
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const HomeAutenticado()),
  ];
}
