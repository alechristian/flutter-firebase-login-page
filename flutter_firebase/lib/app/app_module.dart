import 'package:flutter_firebase/app/app_repository.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_repository.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/home_autenticado/home_autenticado_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppRepository()),
    Bind.singleton((i) => HomeStore()),
    Bind.singleton((i) => AppStore()),
    Bind.singleton((i) => HomeModule()),
    Bind.singleton((i) => HomeRepository()),
    Bind.singleton((i) => HomeAutenticadoStore()),
    Bind.singleton((i) => HomeAutenticadoRepository()),
    Bind.singleton((i) => HomeAutenticadoModule()),
    Bind.singleton((i) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/home',
        module: HomeModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/homeautenticado',
        module: HomeAutenticadoModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/lerdados',
        module: LerDadosModule(), transition: TransitionType.fadeIn),
  ];
}
