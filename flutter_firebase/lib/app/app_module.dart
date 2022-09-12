import 'package:flutter_firebase/app/app_repository.dart';
import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/login/login_repository.dart';
import 'package:flutter_firebase/app/modules/login/login_store.dart';
import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppRepository()),
    Bind.singleton((i) => AppStore()),
    Bind.singleton((i) => LoginStore()),
    Bind.singleton((i) => LoginModule()),
    Bind.singleton((i) => LoginRepository()),
    Bind.singleton((i) => HomeStore()),
    Bind.singleton((i) => HomeRepository()),
    Bind.singleton((i) => HomeModule()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/login',
        module: LoginModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/home',
        module: HomeModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/lerdados',
        module: LerDadosModule(), transition: TransitionType.fadeIn),
  ];
}
