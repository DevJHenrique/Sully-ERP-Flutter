import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'finances_controller.dart';

class FinancesPage extends StatefulWidget {
  final String title;
  const FinancesPage({Key key, this.title = "Finances"}) : super(key: key);

  @override
  _FinancesPageState createState() => _FinancesPageState();
}

class _FinancesPageState
    extends ModularState<FinancesPage, FinancesController> {
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
