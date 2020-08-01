import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sully/app/modules/calendar/calendar_module.dart';
import 'package:sully/app/modules/configurations/configurations_module.dart';
import 'package:sully/app/modules/customer/customer_module.dart';
import 'package:sully/app/modules/finances/finances_module.dart';
import 'package:sully/app/modules/home/home_module.dart';
import 'package:sully/app/modules/nfe/nfe_module.dart';
import 'package:sully/app/modules/team/team_module.dart';
import 'components/custom_drawer/custom_drawer_widget.dart';
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
      body: Stack(
        children: <Widget>[
          CustomDrawerWidget(),
          Observer(builder: (_) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.only(left: controller.isCollapsed ? 210 : 70),
              child: Material(
                elevation: 3,
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
                child: ClipRRect(
                  child: IndexedStack(
                    index: controller.currentSelectedIndex,
                    children: [
                      RouterOutlet(module: HomeModule()),
                      RouterOutlet(module: FinancesModule()),
                      RouterOutlet(module: CalendarModule()),
                      RouterOutlet(module: TeamModule()),
                      RouterOutlet(module: CustomerModule()),
                      RouterOutlet(module: NfeModule()),
                      RouterOutlet(module: ConfigurationsModule()),
                    ],
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
