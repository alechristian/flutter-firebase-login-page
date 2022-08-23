import 'package:flutter_firebase/app/app_repository.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/home_autenticado/home_autenticado_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppRepository()),
    Bind.lazySingleton((i) => HomeAutenticadoStore()),
    Bind.singleton((i) => HomeStore()),
    Bind.singleton((i) => HomeModule()),
    Bind.singleton((i) => HomeRepository(i.get())),
    Bind.singleton((i) => HomeAutenticadoModule()),
    Bind.singleton((i) => Dio()),
    Bind.singleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/home',
        module: HomeModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/homeautenticado',
        module: HomeAutenticadoModule(), transition: TransitionType.fadeIn),
  ];
}
