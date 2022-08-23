import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeAutenticado extends StatefulWidget {
  const HomeAutenticado({Key? key}) : super(key: key);

  @override
  State<HomeAutenticado> createState() => _HomeAutenticadoState();
}

class _HomeAutenticadoState
    extends ModularState<HomeAutenticado, HomeAutenticadoStore> {
  AppStore appStore = Modular.get<AppStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Parabéns! Você logou no App"),
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "VOCE ESTA AUTENTICADO!!!",
              style: TextStyle(fontSize: 15),
            )
          ],
        )
      ]),
      // Desloga do App
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          store.getSignOut();
          Modular.to.navigate('/home/home');
        },
        child: const Icon(Icons.exit_to_app),
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
