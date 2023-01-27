import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'ler_dados_store.g.dart';

class LerDadosStore = _LerDadosStoreBase with _$LerDadosStore;

abstract class _LerDadosStoreBase with Store {
  final LerDadosRepository repository = Modular.get<LerDadosRepository>();
  ObservableFuture<void>? readBd;

  @action
  getReadData() async {
    readBd = repository.readData().asObservable();
  }
}
