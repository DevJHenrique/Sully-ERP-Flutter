import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'configurations_controller.dart';

class ConfigurationsPage extends StatefulWidget {
  final String title;
  const ConfigurationsPage({Key key, this.title = "Configurations"})
      : super(key: key);

  @override
  _ConfigurationsPageState createState() => _ConfigurationsPageState();
}

class _ConfigurationsPageState
    extends ModularState<ConfigurationsPage, ConfigurationsController> {
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
