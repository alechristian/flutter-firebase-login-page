import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  AppStore appStore = Modular.get<AppStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login page')),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Realize aqui o seu Login",
                    style: TextStyle(fontSize: 20),
                  )
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
                      border: OutlineInputBorder(),
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
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
              );
            }),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () async {
              //Chama o metodo para autenticar e depois a rota
              store.setLoginAndPassword();
              Modular.to.navigate('/homeautenticado');
            },
            child: const Icon(Icons.login),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    //Confere o estado da autenticação
    appStore.getAuthState();
    super.initState();
  }
}
