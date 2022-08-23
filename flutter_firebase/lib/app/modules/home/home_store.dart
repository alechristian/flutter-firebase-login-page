import 'package:flutter_firebase/app/modules/home/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final HomeRepository repository = Modular.get<HomeRepository>();

  @observable
  ObservableFuture<void>? authlogin;

  ObservableFuture<void>? signOut;

  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }

  @observable
  String? loginUser = "";

  @observable
  String? passwordUser = "";

  @action
  setLoginUser(value) => loginUser = value;

  @action
  setPasswordUser(value) => passwordUser = value;

  @action
  setLoginAndPassword() async {
    authlogin = repository.authUser(loginUser, passwordUser).asObservable();
  }
}
