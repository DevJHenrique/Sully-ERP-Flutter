import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sully/app/modules/home/home_page.dart';
import 'components/collapsing_navigator_drawer/collapsing_navigator_drawer.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          color: Colors.red,
        ),
        body: Stack(
          children: [
            CollapsingNavigationDrawer(),
            Observer(builder: (_) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.only(left: controller.collapseMenu ? 210 : 70),
                child: ClipRRect(
                  child: HomePage(),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
                ),
              );
            }),
          ],
        ));
  }
}
