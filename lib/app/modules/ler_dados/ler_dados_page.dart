import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/modules/ler_dados/ler_dados_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LerDadosPage extends StatefulWidget {
  final String title;
  const LerDadosPage({Key? key, this.title = 'LerDadosPage'}) : super(key: key);
  @override
  LerDadosPageState createState() => LerDadosPageState();
}

class LerDadosPageState extends ModularState<LerDadosPage, LerDadosStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                store.getReadData();
              },
              child: Text("teste"))
        ],
      ),
    );
  }
}
