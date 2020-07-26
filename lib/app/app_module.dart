import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:sully/app/app_widget.dart';

import 'modules/start/start_controller.dart';
import 'modules/home/home_controller.dart';
import 'modules/start/start_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
        Bind((i) => StartController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StartModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
