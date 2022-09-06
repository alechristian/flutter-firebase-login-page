import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home_autenticado/home_autenticado_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            store.getSignOut();
            Modular.to.navigate('/home/home');
          },
        ),
        backgroundColor: const Color.fromRGBO(12, 45, 72, 1),
      ),
      body: Observer(builder: (_) {
        return Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.app_registration_rounded,
              size: 150,
              color: Color.fromRGBO(247, 150, 52, 1),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                      // onChanged:
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Colors.black45)),
                        hintText: 'Nome',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                      // onChanged: store
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Colors.black45)),
                        hintText: 'Sobrenome',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                      // onChanged:
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Colors.black45)),
                        hintText: 'Contato',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 320,
                    height: 50,
                    child: TextField(
                      // onChanged:
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(color: Colors.black45)),
                        hintText: 'Endereço',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(247, 150, 52, 1),
        onPressed: () async {},
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
