// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$authloginAtom =
      Atom(name: 'HomeStoreBase.authlogin', context: context);

  @override
  ObservableFuture<void>? get authlogin {
    _$authloginAtom.reportRead();
    return super.authlogin;
  }

  @override
  set authlogin(ObservableFuture<void>? value) {
    _$authloginAtom.reportWrite(value, super.authlogin, () {
      super.authlogin = value;
    });
  }

  late final _$counterAtom =
      Atom(name: 'HomeStoreBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$loginUserAtom =
      Atom(name: 'HomeStoreBase.loginUser', context: context);

  @override
  String? get loginUser {
    _$loginUserAtom.reportRead();
    return super.loginUser;
  }

  @override
  set loginUser(String? value) {
    _$loginUserAtom.reportWrite(value, super.loginUser, () {
      super.loginUser = value;
    });
  }

  late final _$passwordUserAtom =
      Atom(name: 'HomeStoreBase.passwordUser', context: context);

  @override
  String? get passwordUser {
    _$passwordUserAtom.reportRead();
    return super.passwordUser;
  }

  @override
  set passwordUser(String? value) {
    _$passwordUserAtom.reportWrite(value, super.passwordUser, () {
      super.passwordUser = value;
    });
  }

  late final _$setLoginAndPasswordAsyncAction =
      AsyncAction('HomeStoreBase.setLoginAndPassword', context: context);

  @override
  Future setLoginAndPassword() {
    return _$setLoginAndPasswordAsyncAction
        .run(() => super.setLoginAndPassword());
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  dynamic setLoginUser(dynamic value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setLoginUser');
    try {
      return super.setLoginUser(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPasswordUser(dynamic value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setPasswordUser');
    try {
      return super.setPasswordUser(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
authlogin: ${authlogin},
counter: ${counter},
loginUser: ${loginUser},
passwordUser: ${passwordUser}
    ''';
  }
}
