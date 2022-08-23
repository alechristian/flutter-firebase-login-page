import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_autenticado_store.g.dart';

class HomeAutenticadoStore = _HomeAutenticadoStoreBase
    with _$HomeAutenticadoStore;

abstract class _HomeAutenticadoStoreBase with Store {
  final HomeAutenticadoRepository repository =
      Modular.get<HomeAutenticadoRepository>();

  ObservableFuture<void>? authState;

  @action
  getSignOut() async {
    authState = repository.signOut().asObservable();
  }
}