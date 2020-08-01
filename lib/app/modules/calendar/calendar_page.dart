import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'calendar_controller.dart';

class CalendarPage extends StatefulWidget {
  final String title;
  const CalendarPage({Key key, this.title = "Calendar"}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState
    extends ModularState<CalendarPage, CalendarController> {
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
