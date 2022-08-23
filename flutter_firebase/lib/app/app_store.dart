import 'package:flutter_firebase/app/app_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  final AppRepository repository = Modular.get<AppRepository>();
  ObservableFuture<void>? authState;

  @action
  getAuthState() async {
    authState = repository.authState().asObservable();
  }
}
