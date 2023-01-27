import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_page.dart';
import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_repository.dart';
import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LerDadosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LerDadosStore()),
    Bind.lazySingleton((i) => LerDadosRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const LerDadosPage()),
  ];
}
