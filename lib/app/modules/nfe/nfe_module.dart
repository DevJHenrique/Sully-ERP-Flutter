import 'nfe_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'nfe_page.dart';

class NfeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NfeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NfePage()),
      ];

  static Inject get to => Inject<NfeModule>.of();
}
