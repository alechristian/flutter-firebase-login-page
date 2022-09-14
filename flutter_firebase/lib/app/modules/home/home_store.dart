import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final HomeRepository repository = Modular.get<HomeRepository>();

  ObservableFuture<void>? authState;
  ObservableFuture<void>? chamaBd;
  ObservableFuture<void>? readBd;

  @action
  getSignOut() async {
    authState = repository.signOut().asObservable();
  }

  @action
  postAddBd() async {
    chamaBd = repository.addData().asObservable();
  }
}
