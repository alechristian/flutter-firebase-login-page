import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/login/login_store.dart';
// import 'package:flutter_firebase/app/modules/login/login_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginStore> {
  AppStore appStore = Modular.get<AppStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.person_rounded,
                    size: 180,
                    color: Color.fromRGBO(255, 202, 40, 1),
                  ),
                ],
              ),
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onChanged: store.setLoginUser,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45)),
                      hintText: 'Login',
                    ),
                  ),
                ),
              );
            }),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onChanged: store.setPasswordUser,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45)),
                      hintText: 'Password',
                    ),
                  ),
                ),
              );
            }),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.only(top: 16, right: 75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Color.fromRGBO(255, 202, 40, 1),
                      onPressed: () async {
                        //Chama o metodo para autenticar e depois a rota
                        store
                            .setLoginAndPassword()
                            .whenComplete(() => Modular.to.navigate('/home'));
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  ],
                ),
              );
            }),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  List<ReactionDisposer> disposers = [];

  @override
  void initState() {
    //Confere o estado da autentica????o
    appStore.getAuthState();
    super.initState();
    appStore.newToken();
    // reaction(
    //   (r) => store.authlogin != null,
    //   (_) {
    //     print(store.authlogin);
    //   },
    // );
  }
}
