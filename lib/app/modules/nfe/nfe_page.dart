import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'nfe_controller.dart';

class NfePage extends StatefulWidget {
  final String title;
  const NfePage({Key key, this.title = "Nfe"}) : super(key: key);

  @override
  _NfePageState createState() => _NfePageState();
}

class _NfePageState extends ModularState<NfePage, NfeController> {
  //use 'controller' variable to access controller

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
