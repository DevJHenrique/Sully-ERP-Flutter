import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'team_controller.dart';

class TeamPage extends StatefulWidget {
  final String title;
  const TeamPage({Key key, this.title = "Team"}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends ModularState<TeamPage, TeamController> {
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
