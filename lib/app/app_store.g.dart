// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on AppStoreBase, Store {
  late final _$nomeAtom = Atom(name: 'AppStoreBase.nome', context: context);

  @override
  String? get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String? value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$cidadeAtom = Atom(name: 'AppStoreBase.cidade', context: context);

  @override
  String? get cidade {
    _$cidadeAtom.reportRead();
    return super.cidade;
  }

  @override
  set cidade(String? value) {
    _$cidadeAtom.reportWrite(value, super.cidade, () {
      super.cidade = value;
    });
  }

  late final _$contatoAtom =
      Atom(name: 'AppStoreBase.contato', context: context);

  @override
  String? get contato {
    _$contatoAtom.reportRead();
    return super.contato;
  }

  @override
  set contato(String? value) {
    _$contatoAtom.reportWrite(value, super.contato, () {
      super.contato = value;
    });
  }

  late final _$idadeAtom = Atom(name: 'AppStoreBase.idade', context: context);

  @override
  String? get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(String? value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$getAuthStateAsyncAction =
      AsyncAction('AppStoreBase.getAuthState', context: context);

  @override
  Future getAuthState() {
    return _$getAuthStateAsyncAction.run(() => super.getAuthState());
  }

  late final _$newTokenAsyncAction =
      AsyncAction('AppStoreBase.newToken', context: context);

  @override
  Future<void> newToken() {
    return _$newTokenAsyncAction.run(() => super.newToken());
  }

  late final _$imputDadosAsyncAction =
      AsyncAction('AppStoreBase.imputDados', context: context);

  @override
  Future imputDados() {
    return _$imputDadosAsyncAction.run(() => super.imputDados());
  }

  late final _$AppStoreBaseActionController =
      ActionController(name: 'AppStoreBase', context: context);

  @override
  dynamic setNome(dynamic value) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCidade(dynamic value) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.setCidade');
    try {
      return super.setCidade(value);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setContato(dynamic value) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.setContato');
    try {
      return super.setContato(value);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIdade(dynamic value) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.setIdade');
    try {
      return super.setIdade(value);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic printDados() {
    final _$actionInfo = _$AppStoreBaseActionController.startAction(
        name: 'AppStoreBase.printDados');
    try {
      return super.printDados();
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
cidade: ${cidade},
contato: ${contato},
idade: ${idade}
    ''';
  }
}
