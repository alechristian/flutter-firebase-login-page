import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_firebase/app/app_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  final AppRepository repository = Modular.get<AppRepository>();
  ObservableFuture<void>? authState;
  ObservableFuture<void>? token;
  var fcmToken = FirebaseMessaging.instance.getToken();
  ObservableFuture<void>? adicionaDados;

  @action
  getAuthState() async {
    authState = repository.authState().asObservable();
  }

  @action
  Future<void> newToken() async {
    var token = await FirebaseMessaging.instance.getToken();
    print(token);
  }

  @observable
  String? nome;

  @observable
  String? cidade;

  @observable
  String? contato;

  @observable
  String? idade;

  @action
  setNome(value) => nome = value;

  @action
  setCidade(value) => cidade = value;

  @action
  setContato(value) => contato = value;

  @action
  setIdade(value) => idade = value;

  @action
  printDados() {
    print('nome: ${nome}');
    print('cidade: ${cidade}');
    print('contato: ${contato}');
    print('idade: ${idade}');
  }

  @action
  imputDados() async {
    adicionaDados = repository.addData().asObservable();
  }
}
