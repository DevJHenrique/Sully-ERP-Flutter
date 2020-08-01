import 'configurations_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'configurations_page.dart';

class ConfigurationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfigurationsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ConfigurationsPage()),
      ];

  static Inject get to => Inject<ConfigurationsModule>.of();
}
