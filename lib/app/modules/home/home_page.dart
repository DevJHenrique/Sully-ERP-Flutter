import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/collapsing_navigator_drawer/collapsing_navigator_drawer.dart';
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
        drawer: Container(
          color: Colors.red,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 70),
              child: Column(
                children: <Widget>[
                  Text('Texto de Teste'),
                  Text('Texto de Teste'),
                  Text('Texto de Teste'),
                  Text('Texto de Teste'),
                ],
              ),
            ),
            CollapsingNavigationDrawer(),
          ],
        ));
  }
}
