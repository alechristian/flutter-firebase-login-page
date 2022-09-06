import 'package:mobx/mobx.dart';

part 'ler_dados_store.g.dart';

class LerDadosStore = _LerDadosStoreBase with _$LerDadosStore;
abstract class _LerDadosStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}