import 'package:flutter/material.dart';

class LerDadosPage extends StatefulWidget {
  final String title;
  const LerDadosPage({Key? key, this.title = 'LerDadosPage'}) : super(key: key);
  @override
  LerDadosPageState createState() => LerDadosPageState();
}
class LerDadosPageState extends State<LerDadosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}