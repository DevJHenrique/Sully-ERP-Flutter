import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sully/app/shared/theme.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Column(
        children: <Widget>[
          Text(
            "Lorem Ipson",
            style: selectedText,
          ),
          Text(
            "Lorem Ipson",
            style: selectedText,
          ),
          Text(
            "Lorem Ipson",
            style: selectedText,
          ),
          Text(
            "Lorem Ipson",
            style: selectedText,
          )
        ],
      ),
    );
  }
}
