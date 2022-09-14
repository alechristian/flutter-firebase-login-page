import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_store.dart';
import 'package:flutter_firebase/app/modules/home/home_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends ModularState<Home, HomeStore> {
  AppStore appStore = Modular.get<AppStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            store.getSignOut();
            Modular.to.navigate('/login');
          },
        ),
        backgroundColor: const Color.fromRGBO(12, 45, 72, 1),
      ),
      body: Observer(builder: (_) {
        return Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Icon(
              Icons.app_registration_rounded,
              size: 150,
              color: Color.fromRGBO(247, 150, 52, 1),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 320,
                      height: 50,
                      child: TextField(
                        onChanged: appStore.setNome,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
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
                        onChanged: appStore.setCidade,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              borderSide: BorderSide(color: Colors.black45)),
                          hintText: 'cidade',
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
                        onChanged: appStore.setContato,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
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
                        onChanged: appStore.setIdade,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              borderSide: BorderSide(color: Colors.black45)),
                          hintText: 'Idade',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(247, 150, 52, 1),
        onPressed: () async {
          // appStore.printDados();
          // appStore.imputDados();
          Modular.to.navigate("/lerdados");
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
