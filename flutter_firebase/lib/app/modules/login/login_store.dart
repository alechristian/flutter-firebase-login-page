import 'package:flutter_firebase/app/modules/login/login_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final LoginRepository repository = Modular.get<LoginRepository>();

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
