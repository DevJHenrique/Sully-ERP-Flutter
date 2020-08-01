import 'finances_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'finances_page.dart';

class FinancesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FinancesController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => FinancesPage()),
      ];

  static Inject get to => Inject<FinancesModule>.of();
}
